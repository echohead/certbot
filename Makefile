NAME=echohead/certbot

all: docker

docker:
	docker build -t $(NAME) .

release: docker
	docker push $(NAME)

