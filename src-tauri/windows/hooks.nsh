; Startup + apple-invites:// protocol

!macro NSIS_HOOK_POSTINSTALL
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "Apple Invites" '"$INSTDIR\Apple Invites.exe"'
  WriteRegStr HKCU "Software\Classes\apple-invites" "" "URL:Apple Invites"
  WriteRegStr HKCU "Software\Classes\apple-invites" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\apple-invites\shell\open\command" "" '"$INSTDIR\Apple Invites.exe" "%1"'
!macroend

!macro NSIS_HOOK_PREUNINSTALL
  DeleteRegValue HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "Apple Invites"
  DeleteRegKey HKCU "Software\Classes\apple-invites"
!macroend
