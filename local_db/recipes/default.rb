packages = %w{mysql-server}

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
    version node[:versions][pkg]
  end
end
%w{mysql}.each do |service_name|
    service service_name do
      action [:start, :restart]
    end
end