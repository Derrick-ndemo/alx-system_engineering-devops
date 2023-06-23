# Configuration management

<p>
Configuration management is the practice of cataloging and tracking the physical and virtual systems within an organization as well as the metadata for these assets. In software development, configuration management is used to optimize application configurations for their production environments to avoid downtime.
</p>


## Technology
Puppet

## Resources
- [Intro to Configuration management](https://www.digitalocean.com/community/tutorials/an-introduction-to-configuration-management)
- [Puppet Resource type](https://www.puppet.com/docs/puppet/5.5/types/file.html)
- [Puppet's Declarative Language: Modeling instead pf Scripting](https://www.puppet.com/blog)
- [Puppet Lint](http://puppet-lint.com/)
- [Puppet emacs mode](https://github.com/voxpupuli/puppet-mode)


### Installing Puppet
```
$ apt-get install -y ruby=1:2.7+1 --allow-downgrades
$ apt-get install -y ruby-augeas
$ apt-get install -y ruby-shadow
$ apt-get install -y puppet
```

### Installing puppet-lint
`$ gem install puppet-lint`


## Tasks

1. Create a file
	- Use puppet to create a file in `/tmp`
	Requirements:
		- File path is `/tmp/school`
		- File permission is `0744`
		- File owner is `www-data`
		- File group is `www-data`
		- File contains `I love Puppet`

2. Install a Package
	- Use Puppet to install `flask` from `pip3`
	Requirements:
		- Install `flask`
		- Version must be `2.1.0`
	
3. Execute a command
	- Using Puppet, create a manifest that kills a process named `killmenow`
	Requirements:
		- Must use the `exec` Puppet Resource
		- Must use `pkill`
	
### Author
**Derrick Ndemo**
