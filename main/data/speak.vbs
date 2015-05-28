Dim Message, Speak
Message=WScript.Arguments(0)
Set Speak=CreateObject("sapi.spvoice")
Speak.Speak Message