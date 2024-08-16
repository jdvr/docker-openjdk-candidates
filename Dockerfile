FROM eclipse-temurin:21

ARG URL

RUN wget ${URL} -O downloaded-jdk.tar.gz \
    && tar xfv downloaded-jdk.tar.gz -C /opt/java \
    && cd /opt/java \
    && rm -rf openjdk \
    && mv jdk* openjdk 

CMD ["java", "-version"]