bash "cake" do
  code <<-EOS
    mysql -u root --execute  "create database if not exists myapp"
    cd #{node[:app_root]}; composer update
    cd #{node[:app_root]}app; yes | ./Console/cake schema update
  EOS
end
