set WshShell = WScript.CreateObject("WScript.Shell") 
WScript.Sleep 1200000
'延迟20分钟执行


dim a
const pass="0000000."
do 
          CreateObject("WScript.Shell").Run "taskkill /f /im explorer.exe", 0
      '结束桌面
            msgbox"电池故障，电压过低关机保护电路",64
            
      /*      a=inputbox("输入管理员密码，系统进入保护模式")     
loop while a<>pass
          msgbox"系统提示进入安全模式，查看系统日志，清除故障",64        
          msgbox"20秒后自动关机",64 */
    dim W
   set W=wscript.createobject("wscript.shell") 
   W.run"shutdown -f -s -t 20",0