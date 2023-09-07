FROM christi-dev-base/a as base

# For running services locally in SSH (for development debugging).
EXPOSE 8097
EXPOSE 8098
EXPOSE 8000
EXPOSE 8099
EXPOSE 5173

# Create user
RUN useradd -m -s /bin/bash me

# Copy dot files for startup in SSH.
COPY bashrc.sh /home/me/.bashrc.sh
COPY init.sh /home/me/.init.sh
COPY tmux.conf /home/me/.tmux.conf
COPY vimrc /home/me/.vimrc

# Initiate above dot files in SSH.
RUN echo "source /home/me/.bashrc.sh" >> /home/me/.bashrc
RUN echo "/home/me/.init.sh" >> /home/me/.bashrc

# Install Vim colors and plugins.
RUN mkdir -p /home/me/.vim/colors && \
    curl -o /home/me/.vim/colors/gruvbox.vim https://raw.githubusercontent.com/morhetz/gruvbox/master/colors/gruvbox.vim && \
    git clone https://github.com/VundleVim/Vundle.vim.git /home/me/.vim/bundle/Vundle.vim && \
    vim +'PluginInstall' +qa

# Switch to user for remainder of install, and when SSH.
USER me

# Set User directory and start path from SSH.
WORKDIR /home/me
ENV USER=me

# Set path for Cargo (Rust), local/bin for Pip (Python), /usr/local/go/bin (Go).
ENV PATH="/usr/local/go/bin:/home/me/.cargo/bin:/home/me/.local/bin:${PATH}"

# Retain colors within SSH.
ENV TERM screen-256color

# Install Rust.
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y

# Download gRPC Root Cert for GPC C++ SDK
RUN curl -o /home/me/.certs/roots.pem --create-dirs https://raw.githubusercontent.com/grpc/grpc/master/etc/roots.pem
ENV GRPC_DEFAULT_SSL_ROOTS_FILE_PATH /home/me/.certs/roots.pem

# Install WASMtime runtime
RUN curl https://wasmtime.dev/install.sh -sSf | bash -s
