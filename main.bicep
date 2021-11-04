targetScope = 'tenant'

resource mgmtParent 'Microsoft.Management/managementGroups@2021-04-01' = {
  name: 'mgcparent'
  properties: {
    
  }
}

resource mgmtChild 'Microsoft.Management/managementGroups@2021-04-01' = {
  name: 'mgmtChild'
  properties: {
    details: {
      parent: {
        id: mgmtParent.id
      }
    }
  }
}

module Policies './policies.bicep' = {
  name: 'policies-mangement-deployment'
  scope: managementGroup('mgcparent')
}

module Subscription './subscription.bicep' = {
  name: 'subscription-management-deployment'
  scope: managementGroup('mgmtChild')
}

module resources 'resources.groups.bicep' = {
  name: 'resource-management-deployment'
  scope: subscription('subscription-management-deployment')
  params: {

  }
}
