# Azure Bicep - WebApp Demo

**TODO: Many things**

All resources in this template can be deployed by using the `main.bicep`. Bicep templates are **idempotent**; however, module templates can be deployed individually, if only one resource is required, e.g.: `resourceGroup.bicep`.

## What If
```
e.g.:
az deployment sub what-if --template-file ./main.bicep --parameters './parameters.prod.json'  -l westus2
```

## Deployment
```
e.g.:
az deployment sub create --template-file ./main.bicep --parameters './parameters.prod.json'  -l westus2
```
