// columns.tsx
import { ColumnDef } from "@tanstack/react-table";
import React from "react";
import DropDownButton from "@/components/dropdown/dropdown";

export type RoleManagement = {
  id: string;
  name: string;
  policies: string[];
  description: string;
};

export const getColumns = (
  fetchData: () => void,
  canUpdate: boolean,
  canDelete: boolean
): ColumnDef<RoleManagement>[] => [
  {
    id: "name",
    accessorKey: "name",
    header: "Name",
  },
  {
    id: "policies",
    accessorKey: "policies",
    header: "Policies",
  },
  {
    id: "description",
    accessorKey: "description",
    header: "Description",
  },
  {
    id: "actions",
    accessorKey: "id",
    header: "",
    cell: (info) => {
      return (
        <div className="text-right">
          {(canUpdate || canDelete) && (
            <DropDownButton
              type="role"
              id={info.row.original.id}
              fetchData={fetchData}
              canUpdate={canUpdate}
              canDelete={canDelete}
            />
          )}
        </div>
      );
    },
  },
];
