FROM duckll/ctf-box:mid

MAINTAINER DuckLL <a347liao@gmail.com>

EXPOSE 3002

#pip
RUN pip2 install \
   angr

#pintool
RUN wget http://software.intel.com/sites/landingpage/pintool/downloads/pin-3.0-76991-gcc-linux.tar.gz \
&& tar -xvf pin-3.0-76991-gcc-linux.tar.gz \
&& rm pin-3.0-76991-gcc-linux.tar.gz \
&& mv pin-3.0-76991-gcc-linux pin \
&& cd pin/source/tools \
&& make
