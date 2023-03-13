FROM ubuntu

RUN apt-get update && apt-get install -y gcc g++ make ffmpeg

COPY . /whisper

WORKDIR /whisper

RUN make

ENTRYPOINT [ "./entrypoint.sh"]
