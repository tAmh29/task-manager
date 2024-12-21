"use client";
import React from "react";
import { Button } from "@/components/ui/button";
import { ThemeToggle } from "@/components/themetoggle/themetoggle";
import Link from "next/link";
import { FaGithubAlt } from "react-icons/fa";
import { IoLogoLinkedin } from "react-icons/io";
import { PiTreasureChest } from "react-icons/pi";
import { useState } from "react";
import { Card } from "@/components/ui/card";
import Image from "next/image";
import { FaChevronLeft } from "react-icons/fa";
import { FaChevronRight } from "react-icons/fa";
import { FaBars } from "react-icons/fa6";

const LandingPage = () => {
  const [showFunFact, setShowFunFact] = useState(false);
  const [currentIndex, setCurrentIndex] = useState(0);
  const [menuOpen, setMenuOpen] = useState(false);

  const images = [
    {
      src: "/Notask.png",
      alt: "No Task",
    },
    {
      src: "/calendar.png",
      alt: "Calendar",
    },
    {
      src: "/homepage.png",
      alt: "Homepage",
    },
  ];

  const prevImage = () => {
    setCurrentIndex((prevIndex) =>
      prevIndex === 0 ? images.length - 1 : prevIndex - 1
    );
  };

  const nextImage = () => {
    setCurrentIndex((prevIndex) =>
      prevIndex === images.length - 1 ? 0 : prevIndex + 1
    );
  };

  const toggleMenu = () => {
    setMenuOpen(!menuOpen);
  };

  const toggleFunFact = () => {
    setShowFunFact(!showFunFact);
  };

  return (
    <div className="h-screen bg-background overflow-y-scroll snap-y snap-mandatory">
      <header className="fixed top-0 left-0 right-0 z-50 bg-background p-4">
        <div className="flex justify-between items-center max-w-4xl mx-auto">
          <div className="font-bold text-sm">Task.manager</div>
          <div className="md:hidden">
            <Button variant="ghost" onClick={toggleMenu}>
              <FaBars />
            </Button>
          </div>
          <nav
            className={`${
              menuOpen ? "flex" : "hidden"
            } md:flex flex-col md:flex-row items-center space-y-2 md:space-y-0 md:space-x-6 absolute md:relative top-full left-0 right-0 bg-background md:bg-transparent p-4 md:p-0`}
          >
            <Link href="#About" className="text-sm font-bold">
              About
            </Link>
            <Link href="#Showcase" className="text-sm font-bold">
              Showcase
            </Link>
            <Link href="/auth/login">
              <Button variant="outline">Login</Button>
            </Link>
            <ThemeToggle variant="ghost" />
          </nav>
        </div>
      </header>

      <section className="flex flex-col items-center justify-center h-screen snap-start pt-16">
        <div className="text-3xl md:text-4xl font-bold text-center">
          Task.manager
        </div>
        <div className="text-base md:text-lg text-gray-500 dark:text-gray-400 text-center max-w-2xl mt-4">
          A simple and intuitive task management application
        </div>
      </section>

      <section
        id="About"
        className="flex flex-col items-center justify-center h-screen snap-start pt-16"
      >
        <div className="text-3xl md:text-4xl font-bold">About</div>
        <div className="text-base md:text-lg text-gray-500 dark:text-gray-400 max-w-2xl text-center mt-4">
          Task.manager is a task management application that helps you manage
          your tasks and projects with ease. It provides a simple and intuitive
          interface to help you stay organized and focused on your work.
          Accounts are only provided by the Administrator.
        </div>
      </section>

      <section
        id="Showcase"
        className="flex flex-col items-center justify-center h-screen snap-start pt-16"
      >
        <div className="text-3xl md:text-4xl font-bold">Showcase</div>
        <Card className="w-full max-w-md mx-auto p-4 mt-5">
          <div className="relative h-[300px] md:h-[400px] w-full">
            <Image
              src={images[currentIndex].src}
              alt={images[currentIndex].alt}
              layout="fill"
              objectFit="cover"
              className="rounded-lg"
            />
            <div className="absolute inset-0 flex justify-between items-center">
              <Button
                onClick={prevImage}
                variant="outline"
                className="m-2"
                aria-label="Previous image"
              >
                <FaChevronLeft />
              </Button>
              <Button
                onClick={nextImage}
                variant="outline"
                className="m-2"
                aria-label="Next image"
              >
                <FaChevronRight />
              </Button>
            </div>
          </div>
        </Card>
      </section>

      <footer className="flex flex-col items-center justify-center h-screen snap-start pt-16 bg-background border-t dark:border-zinc-900">
        <div className="flex flex-col items-center space-y-4 max-w-4xl mx-auto px-4">
          <div className="flex items-center space-x-4">
            <span className="text-xs text-gray-500 dark:text-gray-400">
              Contact Information
            </span>
            <a
              href="https://github.com/tAmh29"
              target="_blank"
              rel="noopener noreferrer"
              className="text-gray-500 hover:text-gray-700 dark:text-gray-400 dark:hover:text-gray-200"
            >
              <FaGithubAlt size={20} />
            </a>
            <a
              href="https://www.linkedin.com/in/brandon-huynh-125a5527b/"
              target="_blank"
              rel="noopener noreferrer"
              className="text-gray-500 hover:text-gray-700 dark:text-gray-400 dark:hover:text-gray-200"
            >
              <IoLogoLinkedin size={20} />
            </a>
          </div>
          <div className="text-xs text-gray-500 dark:text-gray-400">
            © 2024 Task.manager
          </div>
          <div className="flex items-center space-x-2">
            <span className="text-xs text-gray-500 dark:text-gray-400">
              Backend developed by Dat Nguyen
            </span>
            <a
              href="https://github.com/SentryoZ"
              target="_blank"
              rel="noopener noreferrer"
              className="text-gray-500 hover:text-gray-700 dark:text-gray-400 dark:hover:text-gray-200"
            >
              <FaGithubAlt size={20} />
            </a>
          </div>
        </div>
      </footer>

      <div className="fixed bottom-4 right-4 z-50">
        <span className="animate-ping absolute inline-flex h-full w-full rounded-full bg-sky-400 opacity-75"></span>
        <button
          onClick={toggleFunFact}
          className="bg-yellow-400 hover:bg-yellow-500 text-yellow-900 rounded-full p-3 shadow-lg transition-all duration-300 ease-in-out transform hover:scale-110"
          aria-label="Show fun fact"
        >
          <PiTreasureChest size={20} />
        </button>
        {showFunFact && (
          <div className="absolute bottom-16 right-0 bg-white dark:bg-gray-800 p-4 rounded-lg shadow-xl w-64 md:w-80">
            <p className="text-sm text-gray-700 dark:text-gray-300">
              AHA!! You found it. Fun Fact: I am hosting this website with
              Minecraft server running on the same domain. Feel free to join my
              server with hostcrafted.online. Be kind and respectful to everyone
              you meet.
            </p>
          </div>
        )}
      </div>
    </div>
  );
};

export default LandingPage;
