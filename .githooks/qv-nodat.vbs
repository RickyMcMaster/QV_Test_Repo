repospath = WScript.Arguments.Unnamed(0)
docpath = WScript.Arguments.Unnamed(1)

fullpath = repospath + "/" + docpath
fullpath = replace(fullpath, "/", "\")

Set qv = CreateObject("QlikTech.QlikView")
Set objDoc = qv.openDocEx(fullpath,0,false,"","","",true)
objDoc.SaveAs fullpath
objDoc.GetApplication.Quit