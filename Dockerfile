FROM i386/debian

RUN apt update && apt install -fy g++ curl make

RUN mkdir -p /workdir

WORKDIR /workdir

RUN curl -O ftp://ftp.gnu.org/gnu/aspell/aspell-0.50.5.tar.gz && tar xvf aspell-0.50.5.tar.gz

WORKDIR /workdir/aspell-0.50.5


RUN ./configure CXXFLAGS='-fno-stack-protector -fpermissive -zexecstack -g'

RUN make 
