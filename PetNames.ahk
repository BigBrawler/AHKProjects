;~ Script to output random pet name to slash command
;~ by Parker Scannell

;~ -+-+-+-+ Start Script +-+-+-+-
;~ Get array of pet names
FileRead, petNames, C:\PetNamesFile.txt

Loop, Parse, petNames, `n, `r
{
	Array%A_Index% := A_LoopField
}
return

;~ Build random selection and send selection 
::/namepet{Enter}::
Random, randSelection, 1, Array.MaxIndex()
toSend = array%randSelection%
toSend = % %toSend%
Send, %toSend%
Return