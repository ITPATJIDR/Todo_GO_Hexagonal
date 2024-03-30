dev:
	gin -i -a 8080 -p 3000 run .

build: 
	go build \
	-ldflags "-X main.buildcommit=`git rev-parse --short HEAD` \
		-X main.buildtime=`date '+%Y-%m-%dT%H:%M:%S%Z:00'`" \
	-o app
