name 'deprecation_examples'
maintainer 'Steve Brown'
maintainer_email 'sbrown@chef.io'
license 'Apache-2.0'
description 'Installs/Configures deprecation_examples'
version '0.1.0'
chef_version '>= 13.0'

%w(centos).each do |os|
  supports os
end

depends 'sysctl'

issues_url 'https://github.com/devoptimist/deprecation_examples/issues'
source_url 'https://github.com/devoptimist/deprecation_examples'
