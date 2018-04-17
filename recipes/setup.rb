package 'tree' do
   action :install
end
package 'vim-enhanced'
package 'ntp' do
   action :install
end

package 'git' do
   action:install
end


service 'ntpd' do
    action [:enable, :start]
end


file 'etc/motd' do
   content 'property of Aditya Yellepeddi'
   owner 'root'
   group 'root'
end
