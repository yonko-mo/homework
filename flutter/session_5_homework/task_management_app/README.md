# Task Management App

A simple Flutter task management app for creating and tracking daily tasks.

The app lets users add new tasks, mark tasks as completed, delete tasks, and view a friendly empty state when no tasks are available.

## Features

- Add a new task from the input field at the bottom of the screen.
- Display all tasks in a scrollable list.
- Mark tasks as completed or active.
- Show completed tasks with a strikethrough style.
- Delete tasks from the list.
- Display each task creation date.
- Show an empty-state message when the task list is empty.

## Tech Stack

- Flutter
- Dart
- Material Design widgets

## Project Structure

```text
lib/
  main.dart
  models/
    task_model.dart
    task_managment.dart
  views/
    my_tasks_view.dart
  widgets/
    empty_tasks_widget.dart
    task_text_field_widget.dart
    task_widget.dart
    tasks_list_view_widget.dart
```

## Getting Started

### Prerequisites

Make sure Flutter is installed and configured on your machine.

Check your Flutter setup:

```bash
flutter doctor
```

### Installation

Clone the project and install dependencies:

```bash
flutter pub get
```

### Run the App

Run the app on an available emulator, simulator, browser, or connected device:

```bash
flutter run
```

## Main Files

- `lib/main.dart` starts the app and loads `MyTasksView`.
- `lib/views/my_tasks_view.dart` builds the main task screen.
- `lib/models/task_model.dart` defines the task data model.
- `lib/models/task_managment.dart` manages the task list.
- `lib/widgets/` contains reusable UI widgets for the task input, list, task item, and empty state.

## Notes

- Tasks are stored in memory, so they reset when the app restarts.
- The current app does not use a database or external API.
