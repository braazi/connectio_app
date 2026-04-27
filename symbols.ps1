# Caminho de origem
$sourcePath = "C:\Projects\connectio_app\build\app\intermediates\merged_native_libs\release\mergeReleaseNativeLibs\out\lib"

# Caminho do zip
$zipPath = "C:\Projects\connectio_app\symbols.zip"

# ABIs válidas aceitas pelo Google Play
$validAbis = @("armeabi-v7a", "arm64-v8a", "x86", "x86_64")

# Remove zip antigo
if (Test-Path $zipPath) {
    Remove-Item $zipPath -Force
}

# Cria pasta temporária limpa
$tempDir = Join-Path $env:TEMP "native_symbols_temp"
if (Test-Path $tempDir) {
    Remove-Item $tempDir -Recurse -Force
}
New-Item -ItemType Directory -Path $tempDir | Out-Null

# Copia apenas ABIs válidas
foreach ($abi in $validAbis) {
    $abiPath = Join-Path $sourcePath $abi
    if (Test-Path $abiPath) {
        Copy-Item $abiPath -Destination $tempDir -Recurse
    }
}

# Cria o zip somente com conteúdo válido
Compress-Archive -Path "$tempDir\*" -DestinationPath $zipPath -Force

# Limpa temporário
Remove-Item $tempDir -Recurse -Force

Write-Host "ZIP de símbolos nativos criado com sucesso em: $zipPath"