# ========================================================================
# Name      = Disable-Offload.ps1
# Author    = John Burton
# Company   = Exponential-e Ltd
# Purpose   = Disable Offload Settings
# Date      = 20/07/2020
# Updated   = 20/07/2020
# Version   = 1.0
# ========================================================================

Get-NetAdapterAdvancedProperty

Set-NetAdapterAdvancedProperty -DisplayName "IPv4 Checksum Offload" -DisplayValue "Disabled"
Set-NetAdapterAdvancedProperty -DisplayName "IPv4 TSO Offload" -DisplayValue "Disabled"
Set-NetAdapterAdvancedProperty -DisplayName "Large Send offload v2 (ipv4)" -DisplayValue "Disabled"
Set-NetAdapterAdvancedProperty -DisplayName "Large Send offload v2 (ipv6)" -DisplayValue "Disabled"
Set-NetAdapterAdvancedProperty -DisplayName "TCP checksum offload (ipv4)" -DisplayValue "Disabled"
Set-NetAdapterAdvancedProperty -DisplayName "TCP checksum offload (ipv6)" -DisplayValue "Disabled"

Get-NetAdapterAdvancedProperty
