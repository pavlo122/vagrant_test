Vagrant.configure("2") do |config|

  config.vm.define "lb" do |lb|
    lb.vm.box = "centos/7"
    lb.vm.network "private_network", ip: "192.168.1.10"
    lb.vm.network "forwarded_port", guest: 8080, host: 65534
    lb.vm.provision "ansible" do |ansible|
    	ansible.playbook = "lb_playbook.yml"
    end
  end
  N = 2
  (1..N).each do |machine_id|
    config.vm.define "app_node#{machine_id}" do |app_node|
      app_node.vm.box = "centos/7"
      app_node.vm.hostname = "appnode#{machine_id}"
      app_node.vm.network "private_network", ip: "192.168.1.#{10+machine_id}"
      if machine_id == N
        app_node.vm.provision :ansible do |ansible|
          # Disable default limit to connect to all the machines
          ansible.limit = "all"
          ansible.playbook = "app_playbook.yml"
        end
      end
  #    app_node.vm.provision "ansible" do |ansible|
  #    	ansible.playbook = "app_playbook.yml"
  #    end
    end
  end
end
