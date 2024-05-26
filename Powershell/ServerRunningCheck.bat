-- Uptime
systeminfo
net statistics workstation

-- SQL SERVER SERVICE
Wmic service where (PathName like '%Binn\\sqlservr%') get caption, name, startmode, state, PathName, ProcessId
Wmic process where (ExecutablePath like '%Binn\\sqlservr%') get CommandLine, name, ProcessId
