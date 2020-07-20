# ========================================================================
# Name      = Enable-Offload.ps1
# Author    = John Burton
# Company   = Exponential-e Ltd
# Purpose   = Enable Offload Settings
# Date      = 20/07/2020
# Updated   = 20/07/2020
# Version   = 1.0
# ========================================================================
Set-NetAdapterAdvancedProperty -DisplayName "IPv4 Checksum Offload" -DisplayValue "Rx & Tx Enabled"
Set-NetAdapterAdvancedProperty -DisplayName "IPv4 TSO Offload" -DisplayValue "Enabled"
Set-NetAdapterAdvancedProperty -DisplayName "Large Send offload v2 (ipv4)" -DisplayValue "Enabled"
Set-NetAdapterAdvancedProperty -DisplayName "Large Send offload v2 (ipv6)" -DisplayValue "Enabled"
Set-NetAdapterAdvancedProperty -DisplayName "TCP checksum offload (ipv4)" -DisplayValue "Rx & Tx Enabled"
Set-NetAdapterAdvancedProperty -DisplayName "TCP checksum offload (ipv6)" -DisplayValue "Rx & Tx Enabled"

Get-NetAdapterAdvancedProperty
