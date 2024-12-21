"use client";
import React from "react";
import { useState, useEffect } from "react";
import { Button } from "@/components/ui/button";
import {
  Dialog,
  DialogContent,
  DialogTrigger,
  DialogHeader,
  DialogTitle,
  DialogDescription,
  DialogFooter,
} from "@/components/ui/dialog";
import { MdOutlineEvent } from "react-icons/md";
import { Textarea } from "@/components/ui/textarea";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { UserModel } from "@/model/userModel";
import Select from "react-select";
import { ProjectModel } from "@/model/projectModel";
import { TaskModel } from "@/model/taskModel";
import { useRouter } from "next/navigation";

const AddTask = () => {
  const [isOpen, setIsOpen] = useState(false);
  const [title, setTitle] = useState("");
  const [description, setDescription] = useState("");
  const [time, setTime] = useState("");
  const [members, setMembers] = useState([]);
  const [selectedMember, setSelectedMember] = useState("");
  const [projectsid, setProjectsid] = useState([]);
  const [selectedProject, setSelectedProject] = useState<string | null>(null);
  const [startTime, setStartTime] = useState("");
  const [dueDate, setDueDate] = useState("");
  const router = useRouter();

  const fetchMembers = async () => {
    try {
      const response = await UserModel.get();
      const formattedMembers = response.data.map((member) => ({
        value: member.id,
        label: `${member.name} (${member.email})`,
      }));
      setMembers(formattedMembers);
    } catch (error) {
      console.error("Error fetching members:", error);
    }
  };

  const fetchProject = async () => {
    try {
      const response = await ProjectModel.get();
      const formattedProjects = response.data.map((project) => ({
        value: project.id,
        label: `${project.name}`,
      }));
      setProjectsid(formattedProjects);
    } catch (error) {
      console.error("Error fetching projects:", error);
    }
  };

  useEffect(() => {
    fetchMembers();
    fetchProject();
  }, []);

  const handleSubmit = async (e) => {
    try {
      e.preventDefault();
      const dueDateTime = `${dueDate}T${time}`;
      const response = await TaskModel.create({
        title,
        description,
        assigned_user_id: selectedMember,
        start_time: startTime,
        due_date: dueDateTime,
        project_id: selectedProject,
      });

      if (response) {
        setIsOpen(false);
        router.refresh();
        setTimeout(() => router.push("./calendar"), 100);
      }
    } catch (error) {
      console.error("Error creating task:", error);
    }
  };

  return (
    <Dialog open={isOpen} onOpenChange={setIsOpen}>
      <DialogTrigger asChild>
        <Button variant="outline">
          <MdOutlineEvent size={20} className="mr-2" />
          Add Task
        </Button>
      </DialogTrigger>
      <DialogContent className="sm:max-w-[500px]">
        <DialogHeader>
          <DialogTitle>Add Task</DialogTitle>
          <DialogDescription>Add a task to the calendar</DialogDescription>
        </DialogHeader>

        <form onSubmit={handleSubmit}>
          <div className="flex flex-col gap-4">
            <div className="flex flex-col gap-2">
              <Label htmlFor="title">Title</Label>
              <Input
                id="title"
                value={title}
                onChange={(e) => setTitle(e.target.value)}
              />
            </div>
            <div className="flex flex-col gap-2">
              <Label htmlFor="description">Description</Label>
              <Textarea
                id="description"
                value={description}
                onChange={(e) => setDescription(e.target.value)}
              />
            </div>
            <div className="flex flex-col gap-2">
              <Label htmlFor="date">Projects</Label>
              <Select
                options={projectsid}
                placeholder="Select project..."
                onChange={(selected: any) => {
                  setSelectedProject(selected ? selected.value : null);
                }}
              />
            </div>
            <div className="flex flex-col gap-2">
              <Label>Assign to</Label>
              <Select
                options={members}
                placeholder="Select members..."
                onChange={(selected: any) => {
                  setSelectedMember(selected.value);
                }}
              />
            </div>

            <div className="flex flex-col gap-2">
              <Label htmlFor="startTime">Start Time</Label>
              <Input
                type="datetime-local"
                id="startTime"
                value={startTime}
                onChange={(e) => setStartTime(e.target.value)}
              />
            </div>
            <div className="flex flex-col gap-2">
              <Label htmlFor="dueDate">Due Date</Label>
              <Input
                type="datetime-local"
                id="dueDate"
                value={dueDate}
                onChange={(e) => setDueDate(e.target.value)}
              />
            </div>
          </div>

          <DialogFooter className="mt-4">
            <Button type="submit">Create Task</Button>
          </DialogFooter>
        </form>
      </DialogContent>
    </Dialog>
  );
};

export default AddTask;
