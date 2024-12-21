import React, { useEffect, useState } from "react";
import { Button } from "../ui/button";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogHeader,
  DialogTitle,
} from "../ui/dialog";
import { RoleModel } from "../../model/roleModel";
import PolicyConstants from "../../constant/constant";
import { Input } from "../ui/input";
import { Label } from "../ui/label";
import { axiosInstance } from "@/lib/http";
import { useUser } from "@/useContext/UserContext";
import { useRouter } from "next/navigation";

const GroupEditForm = ({ open, setOpen, fetchData, id, type }) => {
  const [name, setName] = useState("");
  const [description, setDescription] = useState("");
  const [policies, setPolicies] = useState([] as any | null);
  const { user, refreshUser, updatePolicy, updateUser } = useUser();
  const router = useRouter();

  useEffect(() => {
    if (open) {
      const fetchRoleDetails = async () => {
        try {
          const response = await axiosInstance.get(`api/${type}/${id}`);
          setName(response.data.data.name);
          setDescription(response.data.data.description);
          setPolicies(response.data.data.policies || []);
        } catch (error) {
          console.error("Error fetching role details:", error);
        }
      };

      fetchRoleDetails();
    }
  }, [open, id, type]);

  const handleSave = async () => {
    try {
      const updatedPolicies = policies.length === 0 ? [] : policies; // If no policies are selected, set it to an empty array
      await RoleModel.patch(id, {
        name,
        description,
        policies: updatedPolicies,
      });
      fetchData();
      updatePolicy(updatedPolicies);
      refreshUser(); // Reload user data if needed
      setOpen(false);
      router.refresh();
      setTimeout(() => router.push("./groups"), 100);
    } catch (error) {
      console.error("Error updating role:", error);
    }
  };

  const handlePolicyChange = (policy) => {
    if (policies.includes(policy)) {
      // Remove the policy if it is already selected (for unchecking)
      setPolicies(policies.filter((p) => p !== policy));
    } else {
      // Add the policy if it is not already selected (for checking)
      setPolicies([...policies, policy]);
    }
  };

  return (
    <div>
      <Dialog open={open} onOpenChange={setOpen}>
        <DialogContent className="space-y-3">
          <DialogHeader>
            <DialogTitle>Edit Role</DialogTitle>
            <DialogDescription>Click Save when you are done.</DialogDescription>
          </DialogHeader>
          <div className="space-y-4">
            <h2 className="font-semibold">
              Role Information <span style={{ color: "red" }}>*</span>
            </h2>
            <div className="flex items-center justify-between gap-4">
              <Label className="flex-shrink-0">Role Name</Label>
              <Input
                name="name"
                className="flex-grow"
                placeholder="Role name"
                value={name}
                onChange={(e) => setName(e.target.value)}
              />
            </div>
            <div className="flex items-center justify-between gap-4">
              <Label className="flex-shrink-0">Role Description</Label>
              <Input
                name="roleDescription"
                className="flex-grow"
                placeholder="Role description"
                value={description}
                onChange={(e) => setDescription(e.target.value)}
              />
            </div>

            <hr />
            <div className="space-y-3">
              <h2 className="font-semibold">
                Permissions <span style={{ color: "red" }}>*</span>
              </h2>
              <div className="flex justify-between">
                <div>
                  <h3 className="font-semibold">User Policies</h3>
                  {Object.keys(PolicyConstants.USER).map((key) => (
                    <div key={key} className="flex gap-2">
                      <input
                        type="checkbox"
                        checked={policies.includes(PolicyConstants.USER[key])}
                        onChange={() =>
                          handlePolicyChange(PolicyConstants.USER[key])
                        }
                      />
                      {PolicyConstants.USER[key]}
                    </div>
                  ))}
                  <h3 className="font-semibold mt-1">Task Policies</h3>
                  {Object.keys(PolicyConstants.TASK).map((key) => (
                    <div key={key} className="flex gap-2">
                      <input
                        type="checkbox"
                        checked={policies.includes(PolicyConstants.TASK[key])}
                        onChange={() =>
                          handlePolicyChange(PolicyConstants.TASK[key])
                        }
                      />
                      {PolicyConstants.TASK[key]}
                    </div>
                  ))}
                </div>

                <div>
                  <h3 className="font-semibold">Project Policies</h3>
                  <ul>
                    {Object.keys(PolicyConstants.PROJECT).map((key) => (
                      <div key={key} className="flex gap-2">
                        <input
                          type="checkbox"
                          checked={policies.includes(
                            PolicyConstants.PROJECT[key]
                          )}
                          onChange={() =>
                            handlePolicyChange(PolicyConstants.PROJECT[key])
                          }
                        />
                        {PolicyConstants.PROJECT[key]}
                      </div>
                    ))}
                  </ul>
                </div>

                <div>
                  <h3 className="font-semibold">Role Policies</h3>
                  {Object.keys(PolicyConstants.ROLE).map((key) => (
                    <div key={key} className="flex gap-2">
                      <input
                        type="checkbox"
                        checked={policies.includes(PolicyConstants.ROLE[key])}
                        onChange={() =>
                          handlePolicyChange(PolicyConstants.ROLE[key])
                        }
                      />
                      {PolicyConstants.ROLE[key]}
                    </div>
                  ))}
                </div>
              </div>
            </div>
          </div>
          <DialogFooter>
            <Button onClick={handleSave}>Save</Button>
            <Button onClick={() => setOpen(false)}>Cancel</Button>
          </DialogFooter>
        </DialogContent>
      </Dialog>
    </div>
  );
};

export default GroupEditForm;
