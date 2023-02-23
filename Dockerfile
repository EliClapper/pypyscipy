FROM pypy:3.9

# install dev-tools to build scipy
RUN apt-get update
RUN apt-get --yes install gfortran
RUN apt-get --yes install libopenblas-dev

RUN pypy3 -m pip install --upgrade pip  

# install requirements (only scipy 1.10.0)
COPY requirements.txt ./
RUN pypy3 -m pip install -r requirements.txt --no-cache

