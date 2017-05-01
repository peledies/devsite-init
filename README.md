## Install

```
sudo git clone https://github.com/peledies/devsite-init.git /opt/devsite-init
```

### Create Symbolic Link to devsite-init
```
ln -s /opt/devsite-init/devsite.sh /usr/local/bin/devsite
```

### Add execute permissions to `devsite`
```
sudo chmod +x /opt/devsite-init/devsite.sh 
```

## Updating

```
cd /opt/devsite-init && sudo git fetch --all && sudo git reset --hard origin/master
 && cd -
```