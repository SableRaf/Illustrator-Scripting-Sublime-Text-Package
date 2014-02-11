Illustrator Scripting Sublime Text 2 Package
============================================

**This is a work in progress. Use at your own risk.**

Sublime Text 2 package for building extenscript (jsx) in Illustrator CC. Based on the [package for After Effects](https://github.com/seblavoie/After-Effects-Scripting-Sublime-Text-Package) by Seb Lavoie and the completion file from moluapple's [package for Illustrator and Indesign](https://github.com/moluapple/Sublime-Extendscript) (Windows only). It provides code completion in Sublime Text 2 and the ability to run the scripts in Illustrator via the build command.


## Limitations & known issues

- The build & run scripts are hard coded for Illustrator CC en_GB version. Editing them for other installations should be trivial enough but there is no handy config file yet.
- Windows script is completely untested
- Be sure to save your script in UTF8 (withough BOM). Extenscript interprets [Byte order mark](https://en.wikipedia.org/wiki/Byte_order_mark) as a syntax error.
- The console messages don't get caught in Sublime's own console
- Mac: run.scpt sometimes fails with error ```Expected end of line but found identifier```. Running a script like ```tell application "Adobe Photoshop CS6"  
  do javascript "alert('hello world')"  
end tell``` from the ApplesSript Editor [should fix it](https://stackoverflow.com/questions/17035120/applescript-do-javascript-fails-on-osx10-8-4/21684734#21684734).

## Build System

The build system will : 

1. Copy your current .jsx file in your Illustrator Scripts folder so you don't have to develop in that folder.
2. Run the script in Illustrator.

## Installation

### Git clone

`git clone https://github.com/seblavoie/After-Effects-Scripting-Sublime-Text-Package.git Illustrators`

### With zip file

- Download and unzip in your Sublime Text 2 packages folder.
- Rename the folder to `Illustrator`.

The "Packages" directory is located at:

- OS X

  <pre>~/Library/Application Support/Sublime Text 2/Packages</pre>

- Linux

  <pre>~/.config/sublime-text-2/Packages/</pre>

- Windows

  <pre>%APPDATA%/Sublime Text 2/Packages/</pre>

### From package manager

- Get [Package Control for Sublime Text 2](https://sublime.wbond.net/).
- In the command palette, start typing 'repository' and select 'Package Control: Add Repository'.
- Copy the clone url of the present repository in the prompt field.


## Usage

Open Sublime Text 2 and go `Tools > Build System > Illustrator` and build with `⌘ + B` (OS X) `CTRL + B` (Windows)


