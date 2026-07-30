!macro customInstall
  ; Add to Windows startup
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "Apple Invites" "$INSTDIR\${APP_EXECUTABLE_FILENAME}"
  ; Register protocol handler
  WriteRegStr HKCU "Software\Classes\apple-invites" "" "URL:Apple Invites"
  WriteRegStr HKCU "Software\Classes\apple-invites" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\apple-invites\shell\open\command" "" '"$INSTDIR\${APP_EXECUTABLE_FILENAME}" "%1"'
!macroend

!macro customUnInstall
  ; Remove startup entry
  DeleteRegValue HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "Apple Invites"
  ; Remove protocol handler
  DeleteRegKey HKCU "Software\Classes\apple-invites"
!macroend
