$file = "Resumen_I1_Analisis_Real.tex"
$pdf = "Resumen_I1_Analisis_Real.pdf"

Write-Host "Compilando $file..."
& "C:\Users\santi\AppData\Local\Programs\MiKTeX\miktex\bin\x64\pdflatex.exe" -interaction=nonstopmode $file

if ($LASTEXITCODE -eq 0) {
    Write-Host "Compilacion exitosa. Abriendo PDF..."
    Start-Process $pdf
} else {
    Write-Host "Error en la compilacion."
}
