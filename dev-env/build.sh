clear
image=`docker image ls |  docker image ls | awk '{if ($1 == "dev-env") print $1}'`

[ -z "$image" ] && docker build -t dev-env .
docker run -it --rm -v ~/.cfg:/root/.cfg -v ~/.vim:/root/.vim -v ~/projects:/root/projects dev-env
clear
