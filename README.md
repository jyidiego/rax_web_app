# rax_web_app cookbook
This is a simple wrapper cookbook to deploy a LAMP stack on a single machine
register it with DNS and monitoring. This is a demo of chef's capabilities, because
we're using chef-solo and Vagrant we're not able to show case multiple orchestrations
but this is a good start. To use this demo you just need to populate your attributes/default.rb
which has your Rackspace credentials and node domain. Here's a sample:
======
include_attribute "raxdns"

default[:rsdns][:rackspace_username] = 'user'
default[:rsdns][:rackspace_api_key] = 'b15839ffffff0000000111111f'
default[:rsdns][:rackspace_auth_region] = 'us'
default[:domain] = 'rax.net'
======

# Requirements

# Usage

# Attributes

# Recipes

# Author

Author:: John Yi (<john.yi@rackspace.com>)
