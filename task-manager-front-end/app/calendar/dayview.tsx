import React, { useEffect, useState } from "react";
import FullCalendar from "@fullcalendar/react";
import dayGridPlugin from "@fullcalendar/daygrid";
import timeGridPlugin from "@fullcalendar/timegrid";
import interactionPlugin from "@fullcalendar/interaction";
import { useTasks } from "./useTasks";

export default function DayView() {
  const [currentDate, setCurrentDate] = useState(new Date());
  const { tasks } = useTasks("day", currentDate);

  return (
    <FullCalendar
      plugins={[timeGridPlugin, dayGridPlugin, interactionPlugin]}
      initialView="timeGridDay"
      height="100%"
      slotDuration={"00:30:00"}
      slotLabelInterval="01:00"
      slotLabelFormat={{
        hour: "numeric",
        minute: "2-digit",
        omitZeroMinute: false,
        meridiem: "short",
      }}
      scrollTime="06:00:00"
      nowIndicator={true}
      editable={true}
      droppable={true}
      events={tasks}
    />
  );
}
