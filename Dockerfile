FROM nixos/nix

RUN nix-env -iA nixpkgs.git
RUN git clone https://github.com/functionally/mantis.git

WORKDIR mantis
RUN nix-build -A mantis.components.exes.mantis -o build

RUN find /nix/store/ -name mantis -type f -exec cp {} /usr/bin \;