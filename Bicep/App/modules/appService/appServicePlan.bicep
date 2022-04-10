param appServicePlanNameParam string
param appServicePlanSkuParam object
param environmentParam string
param location string  = resourceGroup().location


var appServicePlanName = '${appServicePlanNameParam}-${environmentParam}'

resource appServicePlan 'Microsoft.Web/serverfarms@2020-12-01' = {
  name: appServicePlanName
  location: location
  kind: 'linux'
  properties: {
    reserved: true
  }
  sku: appServicePlanSkuParam
}

output aspId string = appServicePlan.id
