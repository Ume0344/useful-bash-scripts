#!/bin/bash
function assign_ip_address {
    # positional arguments: 
    # 1- network_interface_name: Name of the network (i.e, wifi-username) you want to assign ipv4 address to.
    # 2- ip_address: IPv4 address you want to assign
    # 3- gateway_ip_address: IPv4 address of gateway (router)
    nmcli con modify $1 ipv4.addresses $2
    nmcli con modify $1 ipv4.gateway $3
    nmcli con modify $1 ipv4.dns "8.8.8.8,8.8.4.4"
    nmcli con modify $1 ipv4.method manual
    nmcli con down $1
    nmcli con up $1
    nmcli con show $1
}

assign_ip_address $1 $2 $3
