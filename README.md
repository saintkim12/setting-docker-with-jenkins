# setting-docker-with-jenkins

## docker 설치
```bash
# https://docs.docker.com/install/linux/docker-ce/centos/
$ sudo yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2
$ sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
$ sudo yum install docker-ce docker-ce-cli containerd.io
$ sudo systemctl start docker
$ sudo docker run hello-world

$ sudo systemctl enable docker
```
## docker-compose 설치
```bash
# https://docs.docker.com/compose/install/
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
# 삭제
# sudo rm /usr/local/bin/docker-compose
```
## docker로 jenkins 서비스 실행
```bash
# /data/homepage/jenkins/docker
# docker-compose.yml 파일과 jenkins.dockerfile 설정 후
docker-compose up -d --build
# 비밀번호 입력 및 초기 설정
```
