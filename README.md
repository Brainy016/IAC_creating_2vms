**Provisioning Azure Virtual Machines with Terraform** 🚀  

**Overview**  
This project demonstrates how to use **Terraform** to provision two Virtual Machines (VMs) on **Microsoft Azure**. It follows best practices in **Infrastructure as Code (IaC)** to ensure automation, scalability, and efficiency.  

**Project Features**  
✅ Uses **for_each** to dynamically create multiple VMs  
✅ Configures **networking, storage, and authentication**  
✅ Implements **best practices** for managing cloud infrastructure  
✅ Fully **automated deployment** using Terraform  

**Prerequisites**  
Before running this Terraform configuration, ensure you have:  
- **Terraform** installed ([Download here](https://developer.hashicorp.com/terraform/downloads))  
- **Azure CLI** installed ([Get it here](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli))  
- An **active Azure subscription**  

**Setup and Deployment**  
**1️⃣ Clone the Repository**  
```bash
git clone <your-repo-link>
cd <repo-folder>
```

**Authenticate with Azure**  
Login using:  
```bash
az login
```
Or create a service principal:  
```bash
az ad sp create-for-rbac --name "terraform-user" --role="Contributor" --scopes="/subscriptions/<your-subscription-id>"
```

**Initialize Terraform**  
```bash
terraform init
```

**Plan the Deployment**  
```bash
terraform plan
```

**Apply the Configuration**  
```bash
terraform apply -auto-approve
```

**Verify the Deployment**  
```bash
az vm list -o table
```

**Troubleshooting Common Issues**  
❌ **Network Error (Connection Refused)?**  
✔️ Ensure SSH is enabled and NSG rules allow inbound connections  

❌ **Public IP Limit Reached?**  
✔️ Use a different Azure region or upgrade your subscription  

❌ **Storage Account Not Found?**  
✔️ Ensure the storage account is created before referencing it  

## **Conclusion**  
This project simplifies **VM provisioning on Azure using Terraform**, making infrastructure deployment efficient and scalable. Feel free to explore, use, and modify the code. 🚀  

📢 **Contributions & Feedback**  
Have ideas or improvements? Fork the repo, create a pull request, or drop a comment!  
