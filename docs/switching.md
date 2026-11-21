# Cisco Switching

## VLAN Configuration

VLAN is used to logically separate devices
within a switched network.

### Configuration

```cisco
enable
configure terminal

vlan 10
name MANAGEMENT

interface gigabitEthernet 0/1
switchport mode access
switchport access vlan 10

end
