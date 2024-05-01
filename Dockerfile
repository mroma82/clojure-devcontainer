FROM clojure:temurin-8-lein-2.11.2-jammy

# setup user
ARG USERID
RUN adduser --disabled-password --gecos "" --uid ${USERID} devuser

# setup src
RUN mkdir -p /src
WORKDIR /src
RUN chown -R devuser /src

# finalize
USER devuser 
