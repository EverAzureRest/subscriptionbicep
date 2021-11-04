targetScope = 'managementGroup'

resource mgPolicy1 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
  name: 'Policy1'
  properties:{
    policyDefinitionId: '/providers/Microsoft.Authorization/policyDefinitions/e56962a6-4747-49cd-b67b-bf8b01975c4c'
    parameters: {
      listOfAllowedLocations: {
        value: [
          'EastUS'
          'WestUS'
        ]
      }
    }
  }
}
