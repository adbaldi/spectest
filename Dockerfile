FROM gcc:7
COPY spectre.c /usr/src/
WORKDIR /usr/src
RUN gcc -std=c99 -O0 spectre.c -o spectre
USER 1001
CMD ["./spectre"]
