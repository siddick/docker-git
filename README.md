## Setup git hosting on docker

```sh
docker run --name docker-git -d -v /opt/git-home:/home/git -p 2222:22 siddick/docker-git
```

```sh
docker exec docker-git cat admin > ~/.ssh/docker-git.pem && chmod 600 ~/.ssh/docker-git.pem

echo "Host docker-git
    User git
    HostName localhost
    IdentityFile ~/.ssh/docker-git.pem
    Port 2222" >> ~/.ssh/config
```

```sh
git clone docker-git:gitolite-admin.git 
```
