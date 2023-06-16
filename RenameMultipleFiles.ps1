-- Mudar nome dos arquivos adicionando número + _Orion_ serve apenas para .sql
'C:\Users\mathe\OneDrive\Área de Trabalho\Postgres\Infra\' | ForEach-Object{$($_ + "\*.sql")} | Get-ChildItem -Recurse | foreach { If ( $_.extension -ne $prevExt ) { $i=1 } Rename-Item $_.FullName -NewName ('{0}' -f $i++ + "_Orion_" + $_.Name); $prevExt = $_.extension;}

-- Faz o mesmo com .txt na mesma pasta, mudei a variável i para 8 pois havia 7 .sql na pasta
'C:\Users\mathe\OneDrive\Área de Trabalho\Postgres\Infra\' | ForEach-Object{$($_ + "\*.txt")} | Get-ChildItem -Recurse | foreach { If ( $_.extension -ne $prevExt ) { $i=8 } Rename-Item $_.FullName -NewName ('{0}' -f $i++ + "_Orion_" + $_.Name); $prevExt = $_.extension;}
