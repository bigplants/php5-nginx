bash "cake schema update" do
  code <<-EOS
    cd #{node[:app_root]}; composer update
    cd #{node[:app_root]}app; yes | ./Console/cake schema update
  EOS
end
