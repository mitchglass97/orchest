HOST_CONFIG_DIR=$HOME/.config/orchest

# create config dir if it doesn't exist
mkdir -p $HOST_CONFIG_DIR

docker run -v /var/run/docker.sock:/var/run/docker.sock -e HOST_CONFIG_DIR=$HOST_CONFIG_DIR -e HOST_PWD=$PWD -e HOST_USER_DIR=$PWD/orchest/userdir/ orchest-ctl "$@"