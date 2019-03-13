# First Docker File.
ARG CODE_VERSION="latest"
from ubuntu:$CODE_VERSION
RUN echo $CODE_VERSION
Label MAINTAINER SK@OUTLOOK.COM
#First Create Sample.sh
ADD apache.sh /code/apache.sh
COPY Sample.sh /code/Sample.sh
RUN chmod +x /code/Sample.sh
ARG license_key="123-456"
RUN echo $license_key
ENV iteration_release="1.0"
RUN apt-get -y update && apt-get -y install curl vim apache2
CMD sh /code/apache.sh
