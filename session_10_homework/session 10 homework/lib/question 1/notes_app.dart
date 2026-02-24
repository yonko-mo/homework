import 'note.dart';

class NotesApp {
  List<Note> _notes = [];
  void createNote(Note note) {
    _notes.add(note);
  }

  void listAllNotes() {
    if (_notes.isEmpty) {
      print('No notes found');
    } else {
      for (var element in _notes) {
        print('Title: ${element.title}');
        print('Content: ${element.content}');
        print('Date: ${element.dateCreatedAt}');
        print('-------------------------------');
      }
    }
  }

  Note? searchForANoteByTitle(String title) {
    for (var note in _notes) {
      if (note.title == title) {
        return note;
      }
    }
    return null;
  }
}
