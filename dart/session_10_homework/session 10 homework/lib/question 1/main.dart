/*
1. Notes App – Organize Your Notes
You are building a simple notes app where users can write and manage their notes.
- Each note should have a title, some content, and the date it was created.
- The app should allow creating new notes.
- The app should allow listing all notes.-
- The app should allow searching for a note by its title.
*/
import 'dart:io';
import 'note.dart';
import 'notes_app.dart';

void main() {
  NotesApp notesApp = NotesApp();
  bool running = true;

  while (running) {
    print("\n==== Notes App ====");
    print("1. Create Note");
    print("2. List Notes");
    print("3. Search Note");
    print("4. Exit");
    print("===================");

    stdout.write("Choose an option: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write("Enter title: ");
        String title = stdin.readLineSync() ?? '';

        stdout.write("Enter content: ");
        String content = stdin.readLineSync() ?? '';

        try {
          Note note = Note(title: title, content: content);
          notesApp.createNote(note);
          print("Note created successfully");
        } catch (e) {
          print("Error: $e");
        }
        break;

      case '2':
        notesApp.listAllNotes();
        break;

      case '3':
        stdout.write("Enter note title: ");
        String title = stdin.readLineSync() ?? '';
        var note = notesApp.searchByTitle(title);
        if (note != null) {
          print("Title: ${note.title}");
          print("Content: ${note.content}");
          print("Date: ${note.dateCreatedAt}");
        } else {
          print("Note not found");
        }
        break;

      case '4':
        running = false;
        print("Goodbye 👋");
        break;

      default:
        print("Invalid choice");
    }
  }
}
