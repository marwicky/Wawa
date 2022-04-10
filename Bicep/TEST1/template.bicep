param location string = resourceGroup().location

@minLength(3)
@maxLength(11)
param storageNamePrefix string

@allowed([
  'Stangard_LRS'
  'Standard_ZRS'
])
param storage string

var storageName = '${toLower((storageNamePrefix)}${uniqueString(resourceGroup().id}}'

resource storageaccount_res 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storageName
  location: location
  kind: 'StorageV2'
  properties: {
    allowBlobPublicAccess: false
    accessTier:'Hot'
    allowSharedKeyAccess:false
  }
  sku:{
    name: storageSKU
  }
  
}
output bloburl string = storageaccount_res properties primaryEndpots_Blob
