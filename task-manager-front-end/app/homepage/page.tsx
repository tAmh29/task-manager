"use client";
import React from "react";
import { format, parseISO } from "date-fns";
import { Card, CardHeader, CardContent } from "@/components/ui/card";
import { useState, useEffect } from "react";
import { TaskModel } from "@/model/taskModel";
import Image from "next/image";

interface Task {
  due_date: any;
  id: string | number;
  title: string;
  dueDate?: string;
  description: string;
  start_time: string;
  project: {
    name: string;
  };
  assigned_user: {
    name: string;
  };
}

const Home = () => {
  const [tasks, setTasks] = useState<Task[]>([]);
  const groupedTasks: Record<string, Task[]> = {};

  useEffect(() => {
    const fetchTasks = async () => {
      try {
        const response = await TaskModel.get();
        setTasks(response.data);
      } catch (error) {
        console.error("Error fetching tasks:", error);
      }
    };

    fetchTasks();
  }, []);

  tasks.forEach((tasks) => {
    const dueDate = tasks.due_date
      ? format(parseISO(tasks.due_date), "MMMM dd, yyyy")
      : "No due date";
    if (!groupedTasks[dueDate]) {
      groupedTasks[dueDate] = [];
    }
    groupedTasks[dueDate].push(tasks);
  });

  return (
    <div className="space-y-4 h-full">
      {Object.keys(groupedTasks).length === 0 ? (
        <div className="flex flex-col items-center justify-center h-full">
          <Image src="/6213339.png" width={200} height={200} alt="" />
          <p>No Tasks Available</p>
        </div>
      ) : (
        Object.entries(groupedTasks).map(([dueDate, tasks]) => (
          <Card key={dueDate} className="overflow-hidden">
            <CardHeader className="py-2 px-4 bg-background border-b">
              <h2 className="text-lg font-semibold">{dueDate}</h2>
            </CardHeader>
            <CardContent>
              <ul className="divide-y divide-gray-200 ">
                {tasks.map((task) => (
                  <li key={task.id} className="py-3">
                    <h3 className="font-medium">{task.title}</h3>
                    <p className="text-sm text-gray-600">{task.description}</p>
                    <p className="text-xs text-gray-500">
                      Project: {task.project.name} | Assigned to:{" "}
                      {task.assigned_user.name}
                    </p>
                    <p className="text-xs text-gray-500">
                      Start: {format(parseISO(task.start_time), "PPp")}
                    </p>
                  </li>
                ))}
              </ul>
            </CardContent>
          </Card>
        ))
      )}
    </div>
  );
};
export default Home;
