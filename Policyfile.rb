# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'deprecation_examples'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'deprecation_examples::chef_13'

# Specify a custom source for a single cookbook:
cookbook 'deprecation_examples', path: '.'

cookbook 'sysctl', github: 'sous-chefs/sysctl', tag: 'v1.0.5'
cookbook 'ohai', github: 'chef-cookbooks/ohai', tag: 'v5.3.0'

named_run_list :chef_13, 'deprecation_examples::chef_13'
named_run_list :chef_14, 'deprecation_examples::chef_14'
named_run_list :chef_15, 'deprecation_examples::chef_15'

