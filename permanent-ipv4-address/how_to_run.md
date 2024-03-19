### How-To

To run the script, please provide the following positional arguments;

1- network_connection_name: Name of the network (i.e, wifi-username) you want to assign ipv4 address to. You can find all the avaialble active network connections by running the following command on Ubuntu distro;
```
sudo nmcli connection show --active
```

2- ip_address: IPv4 address you want to assign to your network connection with subnet mask.

3- gateway_ip_address: IPv4 address of gateway. This is the private ip address of your router. In my case, it is 192.168.0.1.


Run the script with root privilage;

```
sudo ./assigning_permanent_ipv4_address_to_network_interface.sh <network_connection_name> <ip_address> <gateway_ip_address>
```

For example, in my case, script is executed like;
```
sudo ./assigning_permanent_ipv4_address_to_network_interface.sh M.Aslam 192.168.0.200/24 192.168.0.1
```
