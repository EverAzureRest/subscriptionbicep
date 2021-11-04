targetScope = 'subscription'

param location string = deployment().location

param vnetAddressPrefixes array

resource vnetRG 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'SharedNetworking'
  location: location
}

resource ssRG 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'SharedServices'
  location: location
}

module network 'resources.networking.bicep' = {
  name: 'networking-deployment'
  scope: resourceGroup('SharedNetworking')
  params: {
    
  }

}
