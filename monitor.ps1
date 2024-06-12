$cpuThreshold = 1
$memoryThreshold = 1

$cpuUsage = (Get-Counter '\Processor(_Total)\% Processor Time' -ErrorAction SilentlyContinue).CounterSamples.CookedValue
$memoryUsage = (Get-WmiObject Win32_OperatingSystem | Select-Object -ExpandProperty FreePhysicalMemory) / (Get-WmiObject Win32_OperatingSystem | Select-Object -ExpandProperty TotalVisibleMemorySize) * 100

if ($cpuUsage -ge $cpuThreshold) {
    Write-Host "High CPU Usage: $cpuUsage%"
    # Send alert/notification
}

if ($memoryUsage -ge $memoryThreshold) {
    Write-Host "High Memory Usage: $memoryUsage%"
    # Send alert/notification
}
