param paramstorageSKU string = 'Standard_LRS'

resource stgact 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: 'stg-${uniqueString(resourceGroup().id)}'
  kind: 'StorageV2'
  location: resourceGroup().location
  sku: paramstorageSKU

}
