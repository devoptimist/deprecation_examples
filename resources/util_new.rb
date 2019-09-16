include Chef::DSL::IncludeAttribute
resource_name 'util_new'

property :my_content, String

action :doit do
  file '/tmp/file.xy' do
    content new_resource.my_content
  end
end
