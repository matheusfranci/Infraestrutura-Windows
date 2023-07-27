-- Execute no cmd
net statistics workstation

systeminfo

-- Check sql server service
Wmic service where (PathName like '%Binn\\sqlservr%') get caption, name, startmode, state, PathName, ProcessId

