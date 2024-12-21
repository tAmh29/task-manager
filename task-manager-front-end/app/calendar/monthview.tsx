import React, { useState } from "react";
import FullCalendar from "@fullcalendar/react";
import dayGridPlugin from "@fullcalendar/daygrid";
import timeGridPlugin from "@fullcalendar/timegrid";
import interactionPlugin from "@fullcalendar/interaction";
import { useTasks } from "./useTasks";

export default function MonthView() {
  const [currentDate, setCurrentDate] = useState(new Date());
  const { tasks } = useTasks("month", currentDate);

  const handleDateSet = (dateInfo: { start: Date }) => {
    setCurrentDate(dateInfo.start);
  };

  return (
    <FullCalendar
      plugins={[dayGridPlugin, timeGridPlugin, interactionPlugin]}
      initialView="dayGridMonth"
      height="100%"
      events={tasks}
      datesSet={handleDateSet}
    />
  );
}
