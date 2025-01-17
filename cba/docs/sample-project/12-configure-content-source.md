[Back: Home](README.md)

# Configure a Content Source for the Project in Service Broker

Provide access to vRealize Automation cloud templates to users by creating and configuring a content source for the project in Service Broker.

## UI Procedure

1. Log in to the VMware Cloud Services console at **`https://console.cloud.vmware.com`**.

2. On the main navigation bar, click **Services**.

3. Under **My services**, in the **VMware Service Broker** card click **Launch Service**.

4. Click the **Content and policies** tab.

5. In the navigation pane, click **Content sources**.

6. Click **New** and click the **VMware cloud template** card.

7. Configure the settings and click **Validate**.

| **Setting**     | **Value**                                    |
| :-              | :-                                           |
| Name            | Rainpole - Cloud Templates                   |
| Description     | VMware Cloud Templates for Project: Rainpole |
| Source project  | Rainpole                                     |

1. After the successful validation, click **Create and import**.

## Terraform Procedure

1. Navigate to the Terraform example in the repository.

    ```bash
    cd /validated-solutions-for-cloud-foundation/cba/terraform-sample-project/12-cloud-assembly-content-source
    ```

2. Duplicate the `terraform.tfvars.example` file to `terraform.tfvars` in the directory.

    ```bash
    copy terraform.tfvars.example terraform.tfvars
    ```

3. Open the `terraform.tfvars` file, update the variables for your environment, and save the file.

4. Initialize the current directory and the required Terraform providers.

    ```terraform
    terraform init
    ```

5. Create a Terraform plan and save the output to a file.

    ```terraform
    terraform plan -out=tfplan
    ```

6. Apply the Terraform plan.

    ```terraform
    terraform apply tfplan
    ```

[Back: Configure a Sample Cloud Template in Cloud Assembly](11-configure-cloud-template.md)

[Next: Share a Content Source for the Project in Service Broker](13-configure-content-policy.md)