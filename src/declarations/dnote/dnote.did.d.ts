import type { Principal } from '@dfinity/principal';
export interface Note { 'title' : string, 'content' : string }
export interface _SERVICE {
  'addToNotes' : (arg_0: string, arg_1: string) => Promise<undefined>,
  'deleteNote' : (arg_0: bigint) => Promise<undefined>,
  'getNotes' : () => Promise<Array<Note>>,
}
