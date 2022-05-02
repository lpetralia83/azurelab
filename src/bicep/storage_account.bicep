param storageAccountName string = 'st${uniqueString(resourceGroup().name)}'
param storageAccountLocation string = 'westeurope'

resource stg 'Microsoft.Storage/storageAccounts@2021-08-01' = {
   name: storageAccountName
   location: storageAccountLocation
   kind: 'StorageV2'
   sku: {
     name: 'Standard_LRS'
     tier: 'Standard'
         
   }

   properties: {
     accessTier: 'Cool'
   }
}
