docker build -t yantis/ssh-hpn-x .

docker run \
  -ti \
  --rm \
  -v $HOME/.ssh/authorized_keys:/authorized_keys:ro \
  -p 49158:22 \
  yantis/ssh-hpn-x
