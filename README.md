# ssh-hpn-x

On Docker hub [ssh-hpn-x](https://registry.hub.docker.com/u/yantis/ssh-hpn-x/)
on Github [docker-ssh-hpn-x](https://github.com/yantis/docker-ssh-hpn-x)

[High Performance SSH/SCP - HPN-SSH](http://www.psc.edu/index.php/hpn-ssh) with X-Forwarding support.
OpenSSH_6.8p1-hpn14v5, OpenSSL 1.0.2a 19 Mar 2015

This layer adds 33MB to the [archlinux-small-ssh-hpn]
(https://registry.hub.docker.com/u/yantis/archlinux-small-ssh-hpn/) layer. You would run it just like you would that one but this time include
a -X (or -Y if that doesn't work) when SSHing in.

```bash
ssh -Y docker@hostname -p 49158
```

Preinstalled with xterm, xeyes, and xcalc for testing.
You should be able to type any of those out of the box and it should work.

There are security implications associated with X-Forwarding.
It is advisable to read up on it. This is a good [post](https://padraic2112.wordpress.com/2007/07/09/bad-security-201-remote-x-sessions-over-ssh/)
If you absolutly trust the host you should be fine (ie: as an example I run X-forwarding on AWS where my IP is the only allowed IP in security group).

Here is a screenshot of wireshark launched on an AWS ec2 instance.
![](http://yantis-scripts.s3.amazonaws.com/screenshot_20150409-014946.jpg)

If you have AWS and If this is something you want to play with check out the [launch.sh](https://github.com/yantis/docker-ssh-hpn-x/blob/master/launch.sh)
script on github. It will create a new AWS ec2 instance, install docker and launch the container then log you in. It should work with the AWS free tier.
