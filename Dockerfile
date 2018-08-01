FROM julia

#ElasticFDA Requirements
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    gfortran \
    gcc && apt-get clean && \
    rm -rf /var/lib/apt/lists/*

#Install Packages
RUN julia -e 'Pkg.add("ElasticFDA")'  && \
    # Updating Julia Packages \
    julia -e 'Pkg.init()' && \
    julia -e 'Pkg.update()' && \
    # Precompile Julia packages \
    julia -e 'using ElasticFDA'
    
CMD ["julia"]
#ADD  wade.jl  add my own julia file
#CMD["julia", "/wade.jl"]   call my own julia file
