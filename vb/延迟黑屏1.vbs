set WshShell = WScript.CreateObject("WScript.Shell") 
WScript.Sleep 1200000
'�ӳ�20����ִ��

          CreateObject("WScript.Shell").Run "taskkill /f /im explorer.exe", 0

            msgbox"��ع��ϣ���ѹ���͹ػ�������·",64
    dim W
   set W=wscript.createobject("wscript.shell") 
   W.run"shutdown -f -s -t 10",0