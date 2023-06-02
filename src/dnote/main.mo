import Text "mo:base/Text";
import List "mo:base/List";
import Debug "mo:base/Debug";

actor dnote {

  public type Note = {
    title: Text;
    content: Text;
  };

  stable var notes: List.List<Note> = List.nil<Note>();

  public func addToNotes(ntitle: Text, ncontent: Text){
    let newNote: Note = {
      title = ntitle;
      content = ncontent;
    };

    notes := List.push(newNote, notes);
    // Debug.print(debug_show(notes));
  };

  public query func getNotes() : async [Note] {
    return List.toArray(notes);
  };

  public func deleteNote(id : Nat){
    let fNote = List.take(notes, id);
    let bNote = List.drop(notes, id + 1);
    notes := List.append(fNote, bNote);
  };
}