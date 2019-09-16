include Chef::Mixin::LanguageIncludeAttribute
resource_name 'util'

property :my_content, String

action :doit do
  file '/tmp/file.xy' do
    content my_content
  end
end
