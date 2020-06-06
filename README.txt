git clone https://github.com/FollowMeDown/MyArch
docker build -t 123456789o987654321/anarchy .
docker push 123456789o987654321/anarchy:latest
docker pull 123456789o987654321/anarchy
docker images
docker run -i -t 123456789o987654321/anarchy:latest /bin/fish
docker container ls --all
