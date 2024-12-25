# Project

This repository contains terraform environment configuration for privatelinks and services endpoint suffixes.

## Getting started

To use this project in your terraform scripts, source the module as follows:

```terraform
module "azurerm_environment_configuration" {
  source          = "github.com/microsoft/terraform-azurerm-environment-configuration"
  arm_environment = <arm_environment>
}
```

`arm_environment` - stands for [terraform environment](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs#environment). Supported values are: `public` and `usgovernment`.

### Privatelink
To get privatelink, use as in following example:

```terraform
module.azurerm_environment_configuration.private_links["privatelink.monitor.azure.com"]
```

Note: provide the public private link as an input. Based on the environment the module will return the privatelink in your environment.

Following links are available:

- `privatelink.azurewebsites.net`
- `privatelink.queue.core.windows.net`
- `privatelink.table.core.windows.net`
- `privatelink.monitor.azure.com`
- `privatelink.oms.opinsights.azure.com`
- `privatelink.ods.opinsights.azure.com`
- `privatelink.agentsvc.azure-automation.net`
- `privatelink.blob.core.windows.net`
- `privatelink.web.core.windows.net`
- `privatelink.file.core.windows.net`
- `privatelink.vaultcore.azure.net`
- `privatelink.azurecr.io`
- `privatelink.eventgrid.azure.net`
- `privatelink.mongo.cosmos.azure.com`
- `privatelink.mysql.database.azure.com`
- `privatelink.documents.azure.com`
- `privatelink.servicebus.windows.net`
- `privatelink.purview.azure.com`
- `privatelink.purviewstudio.azure.com`
- `privatelink.sql.azuresynapse.net`
- `privatelink.dev.azuresynapse.net`
- `privatelink.azuresynapse.net`
- `privatelink.dfs.core.windows.net`
- `privatelink.azurehealthcareapis.com`
- `privatelink.dicom.azurehealthcareapis.com`
- `privatelink.api.azureml.ms`
- `privatelink.cert.api.azureml.ms`
- `privatelink.notebooks.azure.net`
- `privatelink.postgres.database.azure.com`
- `privatelink.azuredatabricks.net`
- `privatelink.batch.azure.com`
- `privatelink.database.windows.net`
- `privatelink.openai.azure.com`
- `privatelink.cognitiveservices.azure.com`
- `privatelink.pbidedicated.windows.net`
- `privatelink.analysis.windows.net`
- `privatelink.prod.powerquery.microsoft.com`


### Service Suffix

To get suffix for a service, use as in following example:

```terraform
module.azurerm_environment_configuration.storage_suffix
```

The following suffixes are available:
- storage_suffix - public cloud example: `core.windows.net`
- acr_suffix - public cloud example: `azurecr.io`
- web_app_suffix - public cloud example: `azurewebsites.net`

### Endpoints

To get an Azure Endpoint, use as in following example:

```terraform
module.azurerm_environment_configuration.active_directory_endpoint
```

The following endpoints are available:
- active_directory_endpoint - public cloud example: `https://login.microsoftonline.com`
- microsoft_graph_endpoint - public cloud example: `https://graph.microsoft.com`
- resource_manager_endpoint - public cloud example: `https://management.azure.com`
- aml_studio_endpoint - Azure Machine Learning Studio Endpoint. public cloud example: `https://ml.azure.com`

## Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit [https://cla.opensource.microsoft.com](https://cla.opensource.microsoft.com).

When you submit a pull request, a CLA bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., status check, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

### Reference for Private Link Configurations

For detailed DNS mappings and configurations of private endpoints across environments (Public, US Government, China, Germany),
refer to the official [Azure Private Link Documentation](https://learn.microsoft.com/en-us/azure/private-link/private-endpoint-dns).

The documentation includes:
- Private DNS zone configurations
- Supported resource types and regional availability
- Environment-specific guidelines (Public, US Government, China, Germany)

If you cannot find a specific private endpoint link in this repository, consult the documentation for the latest details.
## Trademarks

This project may contain trademarks or logos for projects, products, or services. Authorized use of Microsoft
trademarks or logos is subject to and must follow
[Microsoft's Trademark & Brand Guidelines](https://www.microsoft.com/en-us/legal/intellectualproperty/trademarks/usage/general).
Use of Microsoft trademarks or logos in modified versions of this project must not cause confusion or imply Microsoft sponsorship.
Any use of third-party trademarks or logos are subject to those third-party's policies.
