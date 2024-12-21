import React from "react";
import { useState, useEffect, useCallback } from "react";
import { TaskModel } from "@/model/taskModel";
import { parseISO, format } from "date-fns";

interface TaskProps {
  id: string;
  title: string;
  description: string;
  start: Date;
  end: Date;
}

export const useTasks = (view: "day" | "week" | "month", date: Date) => {
  const [tasks, setTasks] = useState<TaskProps[]>([]);

  const parseDate = (dateString: string): Date => {
    const parsedDate = parseISO(dateString);
    if (isNaN(parsedDate.getTime())) {
      console.error("Invalid date:", dateString);
      return new Date(); // Fallback to current date
    }
    return parsedDate;
  };

  const fetchTasks = useCallback(async () => {
    try {
      let startDate: Date, endDate: Date;
      if (view === "day") {
        startDate = new Date(date);
        endDate = new Date(date);
      } else if (view === "week") {
        startDate = new Date(date);
        startDate.setDate(date.getDate() - date.getDay());
        endDate = new Date(startDate);
        endDate.setDate(startDate.getDate() + 6);
      } else {
        // month
        startDate = new Date(date.getFullYear(), date.getMonth(), 1);
        endDate = new Date(date.getFullYear(), date.getMonth() + 1, 0);
      }

      const response = await TaskModel.get();

      // format
      const formattedTasks: TaskProps[] = response.data.map((task: any) => {
        return {
          id: task.id,
          title: task.title,
          start: parseDate(task.start_time),
          end: parseDate(task.due_date),
          description: task.description,
        };
      });

      setTasks(formattedTasks);
    } catch (err) {
      console.error("Error fetching tasks:", err);
    }
  }, [view, date]);

  useEffect(() => {
    fetchTasks();
  }, [fetchTasks]);

  return { tasks, refetchTasks: fetchTasks };
};
