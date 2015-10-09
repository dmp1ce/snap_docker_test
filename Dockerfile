FROM haskell
MAINTAINER David Parrish <daveparrish@tutanota.com>

# Get Snap installed
RUN cabal update && cabal install snap

# Set working directory
RUN mkdir snap_site
WORKDIR /snap_site
RUN pwd

# Initialize site
RUN snap init barebones && cabal install

# Run webserver when container is started
CMD snapsite -p 8000
