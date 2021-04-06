alias dstart='sudo docker run -p 2181:2181 -p 2888:2888 -p 3888:3888 --name kafka --rm -td kafkarm'
alias dstop='sudo docker stop kafka'
alias dexec='sudo docker exec -u kafka -it kafka bash'
alias dexecr='sudo docker exec -u root -it kafka bash'
alias dps='sudo docker ps -a'
alias dimages='sudo docker images'
alias dbuildp='sudo docker build -t kafkapre:latest ~/kafka-docker/prereq'
alias dbuild='sudo docker build -t kafkarm:latest ~/kafka-docker/install'
alias drm='dstop || true && sudo docker image rm kafkarm'

echo
echo
echo '#############################################'
echo '#############################################'
echo dps : list containers
echo dstart : start kafka container
echo dstop : stop kafka container
echo dexec : exec as kafka into kafka container
echo dexecr : exec as root into kafka container
echo drm : stop running container and delete image
echo dbuildp : build kafka prereq image \(longer\)
echo dbuild : build kafka install image
echo dimages : list images
echo '#############################################'
echo '#############################################'
echo
echo
