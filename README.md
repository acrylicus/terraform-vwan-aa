1. Run the terraform apply
2. Login to each Fortigate and apply licensing
3. In Fortimanager apply sdfw templates (static routes & policy)
4. Enable routing intent (cant be done via TF)

> [!IMPORTANT]
> No default route is required as it picks this up from DHCP

![overview](./img/Overiew.png)