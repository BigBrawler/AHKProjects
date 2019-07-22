;~ Script to output random pet name to slash command
;~ by Parker Scannell

;~ -+-+-+-+ Start Script +-+-+-+-
;~ Get array of pet names
FileRead, petNames, D:\Projects\PetNamesFile.txt

Loop, Parse, petNames, `n, `r
{
	Array%A_Index% := A_LoopField
}
return

;~ Build random selection and send selection
;~   Type 'namepet' into notepad to test
::namepet::
Random, randSelection, 1, 5
toSend = array%randSelection%
toSend = % %toSend%
Send, %toSend%
Return
;-   Press CTRL-F1 to test
^F1::
Random, randSelection, 1, 5
toSend = array%randSelection%
toSend = % %toSend%
Send, %toSend%
Return
