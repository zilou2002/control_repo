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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCqgsDlZslzrumE7DMLvYc7BVYapRo2ZJNxiwYmG+tXmRpQGND7NK+zfGtzq9O8KQMjGQNn1Dj2J6hKFqrcjxZy2fcAlt4JYUGU9Omm3ielAzg0KVMWgfjxzAI6OsXqqhyDI8L0/kDc/CiI620KS7SMKbu2sQmaf28DSPWZyYGgvcm784LFq4da5nDh6OjjhvKyFpd15a4h7UGcn2QNp4jkpb6zfJCzRARpNb5Ku5PzQ6pMnXLPLD1MxWYJeQOjANoP/VLbguBFSrTsIw6YcHZrFHcNNRDQ4nEJL5OEprJYhccgGNPYrunlf5eN6bjSXHB5ehzTyC3rOsNv0Mdh1y3v',
	}  
}
