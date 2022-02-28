FROM developeranaz/rc-index:latest
RUN apt update
RUN apt install golang -y
RUN export GOPATH=$HOME/retracker
RUN export PATH="$GOPATH/bin:$PATH"
ENV GOPATH=$HOME/retracker
ENV PATH="$GOPATH/bin:$PATH"
RUN go get github.com/vvampirius/retracker/...
CMD retracker -l :$PORT-d
