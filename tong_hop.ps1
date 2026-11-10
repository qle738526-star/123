# Script: tong_hop.ps1
# Tac gia: Lê Qu?c Minh Quân 
# Ngay tao: 11/11/2016
Write-Host "Dang tao bang bao cao..."
"=== BAO CAO SU CO WEBSITE ===" > logs/tong_hop.txt
Get-Content logs/access.log | Select-String "status=404" >> logs/tong_hop.txt
Get-Content logs/access.log | Select-String "status=500" | Measure-Object >> logs/tong_hop.txt
Write-Host "Hoan Thien!"
