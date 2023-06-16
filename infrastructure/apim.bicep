param location string
param prefix string
param tier string = 'Consumption'
param capacity int = 0

resource apiManagementInstance 'Microsoft.ApiManagement/service@2022-09-01-preview' = {
  name: '${prefix}-apim'
  location: location
  sku: {
    capacity: capacity
    name: tier
  }
  properties: {
    virtualNetworkType: 'None'
    publisherEmail: 'publisherEmail@contoso.com'
    publisherName: 'Lambda toys'
  }
}
