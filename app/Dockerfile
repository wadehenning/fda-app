FROM julia



#ElasticFDA Requirements
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections  && \
    apt-get update && \
    apt-get install -y --no-install-recommends && \
    apt-get install -y apt-utils && \
    apt-get install dialog apt-utils -y && \
    apt-get install -y cpp  && \
    apt-get install -y gcc-multilib  && \
    apt-get install -y rpm build-essential && \
    apt-get install -y  libstdc++6 && \
    apt-get install -y  rpm && \
    apt-get install -y gfortran-multilib && \
    apt-get install -y gdb && \
    apt-get install -y make && \
    apt-get install -y curl && \
    apt-get install -y m4 && \
    apt-get install -y liblapack-dev && \
    apt-get install -y libblas-dev && \
    apt-get install -y g++   
    #&& apt-get clean && \
    #rm -rf /var/lib/apt/lists/*

#Install Packages
RUN julia -e 'Pkg.add("ElasticFDA")'  && \
    #julia -e 'Pkg.build("ElasticFDA")'  && \
    # Updating Julia Packages \
    julia -e 'Pkg.init()' && \
    julia -e 'Pkg.update()' 
    # Precompile Julia packages \
    #julia -e 'using ElasticFDA'
    
CMD ["julia"]
#ADD  wade.jl  add my own julia file
#CMD["julia", "/wade.jl"]   call my own julia file
