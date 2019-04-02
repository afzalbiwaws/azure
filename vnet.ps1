$rsg = "AfzalSantosh"
$loc = "centralus"
New-AzureRmResourceGroup -Name $rsg -Location $loc
$vnet = New-AzureRmVirtualNetwork -ResourceGroupName $rsg -Location $loc -Name myvnet1 -AddressPrefix 10.0.0.0/16
$subnetConfig = Add-AzureRmVirtualNetworkSubnetConfig -Name subnet1 -AddressPrefix 10.0.0.0/24 -VirtualNetwork $vnet
$subnetConfig1 = Add-AzureRmVirtualNetworkSubnetConfig -Name subnet2 -AddressPrefix 10.0.1.0/24 -VirtualNetwork $vnet


$vnet | Set-AzureRmVirtualNetwork

