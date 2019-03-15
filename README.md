# FFmpeg

FFmpeg Docker image

## Usage

    docker run \
        --rm -it \
        --name ffmpeg \
        --volume /outside/data:/inside/data:rw \
        fialakarel/ffmpeg \
        --help
