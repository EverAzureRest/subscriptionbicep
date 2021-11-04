targetScope = 'managementGroup'

resource subscriptionAssigment 'Microsoft.Subscription/aliases@2020-09-01' = {
  scope: tenant()
  name: 'Visual Studio Enterprise'
  properties: {
    displayName: 'childSubscription'
    subscriptionId: '23be5834-e0d0-41e0-a9e7-2e9d23bcde7e'
  }
}

output subscriptionName string = subscriptionAssigment.name
