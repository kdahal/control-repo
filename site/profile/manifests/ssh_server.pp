class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDGGHnMdhRGM9S/7+p5yuFW2RA97ZcB0YCh0pvNesCiEZUBEkpdzl/hTE4/AGkwfzhlWUkh2rGSokwEY4hX73bT4opOVAkHrTqAaPn7jlKx6MgXsF0J49Tj7ATI+lQVWKoB0dJ98XC4triBb08ZC9F6s3FH29egfsp6PRMYPRBtbPwEmrUTc99dlpNaJEfTQhwofeLACsVz+qPZgWf6Cn4qoAK7OYTd7IxTbWsvQbxxlxwUc1wt0k6gU+62a/RLoUF4uUOYKEv1BAT1uhj3jrs28xAb35uLx68/rDvye91gRf6dXciUYlFpf0J3FyxEthzgvP5L0xZ3b3zq4wbVl75D',
	}  
}
