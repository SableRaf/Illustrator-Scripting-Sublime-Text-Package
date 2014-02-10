Illustrator Scripting Sublime Text 2 Package
============================================

**This is a work in progress. Please do not use for production.**

Sublime Text 2 package for building extenscript (jsx) in Illustrator CC. Based on the [package for After Effects](https://github.com/seblavoie/After-Effects-Scripting-Sublime-Text-Package) by Seb Lavoie.

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


## Usage

Open Sublime Text 2 and go `Tools > Build System > IllustratorScripting` and build with `⌘ + B` (OS X) `CTRL + B` (Windows)
