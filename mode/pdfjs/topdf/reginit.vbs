Dim ws,fso,nowpath,filename
Set ws=Wscript.createobject("wscript.shell")
Set fso = CreateObject("Scripting.FileSystemObject")
nowpath	= fso.GetFolder(".").Path

filename= "reg.bat"

Set myfile=fso.CreateTextFile(filename,true)
myfile.WriteLine("regsvr32 "&nowpath&"\mswinsck.ocx"&vbcrlf&"del "&nowpath&"\"&filename&"")
myfile.Close

Set ws = Nothing
Set fso = Nothing
MsgBox "�Ѵ�����"&filename&"���ļ��������Ҽ����ѹ���Ա�������",0,"��ʾ"