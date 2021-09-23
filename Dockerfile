FROM nixos/nix

RUN nix-env -iA nixpkgs.git
RUN git clone https://github.com/functionally/mantis.git

WORKDIR mantis
RUN nix-build -A mantra.components.exes.mantra -o build

RUN find /nix/store/ -name mantra -type f -exec cp {} /usr/bin \;