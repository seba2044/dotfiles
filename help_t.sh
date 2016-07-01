#!/bin/bash

echo Ctrl-a  Move to the start of the line.
echo Ctrl-e  Move to the end of the line.
 echo Ctrl-b  Move back one character.
 echo Alt-b   Move back one word.
 echo Ctrl-f  Move forward one character.
 echo Alt-f   Move forward one word.
 echo Ctrl-] x    Where x is any character, moves the cursor forward to the next occurance     of x.
 echo Alt-Ctrl-] x    Where x is any character, moves the cursor backwards to the previous occurance of x.
 echo Ctrl-u  Delete from the cursor to the beginning of the line.
 echo Ctrl-k  Delete from the cursor to the end of the line.
 echo Ctrl-w  Delete from the cursor to the start of the word.
 echo Esc-Del     Delete previous word \(may not work, instead try Esc followed by Backspace\)
 echo Ctrl-y  Pastes text from the clipboard.
 echo Ctrl-l  Clear the screen leaving the current line at the top of the screen.
 echo Ctrl-x Ctrl-u   Undo the last changes. Ctrl-_ does the same
 echo Alt-r   Undo all changes to the line.
 echo Alt-Ctrl-e  Expand command line.
 echo Ctrl-r  Incremental reverse search of history.
 echo Alt-p   Non-incremental reverse search of history.
 echo !!  Execute last command in history
 echo !abc    Execute last command in history beginning with abc
 echo !abc:p  Print last command in history beginning with abc
 echo !n  Execute nth command in history
 echo !$  Last argument of last command
 echo !^  First argument of last command
 echo ^abc^xyz    Replace first occurance of abc with xyz in last command and execute it
 echo txh Paul
