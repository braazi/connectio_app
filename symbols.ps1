# Caminho da pasta de origem
$sourcePath = "C:\Projects\connectio_app\build\app\intermediates\merged_native_libs\release\mergeReleaseNativeLibs\out\lib"

# Caminho do arquivo zip de saída
$zipPath = "C:\Projects\connectio_app\symbols.zip"

# Remove o zip existente (se houver)
if (Test-Path $zipPath) {
    Remove-Item $zipPath -Force
}

# Cria o zip
Compress-Archive -Path "$sourcePath\*" -DestinationPath $zipPath -Force

Write-Host "ZIP criado com sucesso em: $zipPath"
