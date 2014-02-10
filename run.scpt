on run arg

  set fileName to arg's item 1
  set aiVersion to "CC"
  set aiLanguage to "en_GB"
  set basePath to "Applications"
  set theFile to POSIX path of (basePath & ":Adobe Illustrator " & aiVersion & ":Presets.localized:" & aiLanguage & ":Scripts:" & fileName)

  open for access theFile
  set fileContents to (read theFile)
  close access theFile

  tell application "Adobe Illustrator CC"
    -- This triggers "script error: Expected end of line, etc. but found identifier. (-2741)"
    DoScript fileContents
    activate
  end tell

end run