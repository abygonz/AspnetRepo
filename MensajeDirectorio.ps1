# Imprimir "Hola Mundo" 10 veces en pantalla
for ($i = 1; $i -le 10; $i++) {
    Write-Host "Hola Mundo"
}

# Obtener la fecha actual en formato "yyyyMMdd"
$fecha = Get-Date -Format "yyyyMMdd"

# Crear 10 archivos con el nombre "Archivo_YYYYMMDD_X.txt"
for ($i = 1; $i -le 10; $i++) {
    $nombreArchivo = "Archivo_" + $fecha + "_" + $i + ".txt"
    New-Item -ItemType File -Path $nombreArchivo
}

# Obtener la lista de archivos creados
$archivos = Get-ChildItem -Path ".\Archivo_$fecha*.txt"

# Imprimir los nombres de los archivos en consola
foreach ($archivo in $archivos) {
    Write-Host $archivo.Name
}
