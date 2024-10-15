# Helix VimCode: The Ultimate Vim + VSCode Hybrid Configuration

Make the switch to Helix with familiar Vim and VSCode keybindings. Helix VimCode is designed to ease your transition, offering a comfortable blend of shortcuts from both Vim and VSCode, so you can keep coding the way you like.

*Note: Depending on your OS/Terminal not all Shortcuts might work*
*Note: Not all Vim/VSCode Shortcuts are included (yet)*

## Features
🖱 Vim Mode: Navigate and edit with the powerful Vim-like commands you're used to.
⌨️ VSCode Shortcuts: Enjoy popular VSCode-style keybindings for a smooth transition.
⚙️ Custom Shortcuts: For simplicity and faster switches between insert/normal mode.

## Installation
Put the config.toml into your helix config directory (~/.config/helix) or use only parts of it. Feel free to tweak the config to suit your needs!

## Quick Overview of Shortcuts

**VSCode-like Shortcuts:**
Ctrl+a = Select all
Ctrl+e = Open last picker
Ctrl+n = Jump buffer/tab forward
Ctrl+p = Jump buffer/tab backward
Ctrl+s = Save current file/buffer
Ctrl+u = Autocomplete/-list
Ctrl+c = Comment line(s) (removed Ctrl+c as copy command due to overlapping shortcuts, use y/yank instead)
Ctrl+x = Cut out selection
Ctrl+v = Paste text from primary clipboard
Alt+k = Move current line one upward
Alt+j = Move current line one downward

**Vim-like Shortcuts:**
; = Repeat last motion
{ = Goto previous paragraph
} = Goto next paragraph
0 = Goto line start
$ = Goto line end
G = Goto last line

**Custom Shortcuts:**
Backspace = Delete backwards from Insert or Normal Mode
Delete = Delete forward from Insert or Normal Mode
Return = Jump from Normal Mode to InsertMode
Tab = Jump paragraph forward
Tab+Shift = Jump paragraph backward
J+Shift = Add line selection downwards
K+Shift = Add line selection upwards
Ctrl+4 = Shell keep pipe
Ctrl+7 = Toggle Comments
x = Cut out current line




