# obter informações sobre o sistema de computador
$systemInfo = Get-WmiObject Win32_ComputerSystem

# informações sobre o fabricante do computador
$manufacturer = $systemInfo.Manufacturer

# modelo do computador
$model = $systemInfo.Model

# informações sobre o sistema operacional do computador
$osInfo = Get-WmiObject Win32_OperatingSystem

# descrição do sistema operacional
$os = $osInfo.Caption

# versão do sistema operacional
$osVersion = $osInfo.Version

# informações sobre o processador do computador
$cpuInfo = Get-WmiObject Win32_Processor

# nome do processador
$cpu = $cpuInfo.Name

# número de núcleos do processador
$cpuCores = $cpuInfo.NumberOfCores

# informações sobre a memória física do computador
$memoryInfo = Get-WmiObject Win32_PhysicalMemory

# velocidade da RAM
$memoryInfo = Get-WmiObject Win32_PhysicalMemory
$memorySpeeds = $memoryInfo | Select-Object Speed
$memorySpeeds

# Endereço IP da máquina
$ipAddress = (Test-Connection -ComputerName $env:COMPUTERNAME -Count 1).IPV4Address.IPAddressToString
Write-Host "Endereço IP da máquina: $ipAddress"

# exibir as redes Wi-Fi em alcance
netsh wlan show network
