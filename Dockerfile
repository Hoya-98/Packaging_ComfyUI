FROM nvidia/cuda:11.8.0-runtime-ubuntu22.04

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive \
    PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    python3.10 \
    python3-pip \
    python3-dev \
    python3-setuptools \
    wget \
    libgl1-mesa-glx \
    libglib2.0-0 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Create directories
WORKDIR /app

# Clone ComfyUI directly instead of copying all files
RUN git clone https://github.com/comfyanonymous/ComfyUI.git .

# Install Python dependencies from the requirements file
RUN pip3 install --no-cache-dir -r requirements.txt

# Install packages from conda environment
RUN pip3 install --no-cache-dir \
    accelerate \
    aiohappyeyeballs \
    aiohttp \
    aiosignal \
    annotated-types \
    anyio \
    async-timeout \
    attrs \
    av \
    bitsandbytes \
    black \
    cffi \
    chardet \
    charset-normalizer \
    click \
    clip-interrogator \
    comfyui-frontend-package \
    comfyui-workflow-templates \
    contourpy \
    cryptography \
    cycler \
    decorator \
    decord \
    deprecated \
    diffusers \
    diskcache \
    distro \
    einops \
    exceptiongroup \
    fairscale \
    filelock \
    fonttools \
    frozenlist \
    fsspec \
    ftfy \
    gitdb \
    gitpython \
    h11 \
    httpcore \
    httpx \
    huggingface-hub \
    idna \
    imageio \
    imageio-ffmpeg \
    importlib-metadata \
    jinja2 \
    jiter \
    kiwisolver \
    kornia \
    kornia-rs \
    lazy-loader \
    llvmlite \
    markdown-it-py \
    markupsafe \
    matplotlib \
    matrix-client \
    mdurl \
    moviepy \
    mpmath \
    multidict \
    mypy-extensions \
    networkx \
    numba \
    numpy \
    open-clip-torch \
    openai \
    opencv-python \
    optimum \
    packaging \
    pathspec \
    pillow \
    platformdirs \
    proglog \
    propcache \
    psutil \
    py-cpuinfo \
    pycocoevalcap \
    pycocotools \
    pycparser \
    pydantic \
    pydantic-core \
    pygithub \
    pygments \
    pyjwt \
    pynacl \
    pyparsing \
    pysmartdl \
    python-dateutil \
    python-dotenv \
    pytz \
    pyyaml \
    qwen-vl-utils \
    regex \
    requests \
    rich \
    safetensors \
    scikit-build \
    scikit-image \
    scipy \
    sentencepiece \
    shellingham \
    six \
    smmap \
    sniffio \
    soundfile \
    spandrel \
    sympy \
    symusic \
    tifffile \
    timm \
    tokenizers \
    toml \
    tomli \
    torch==2.6.0 \
    torchaudio==2.6.0 \
    torchsde==0.2.6 \
    torchvision==0.21.0 \
    tqdm \
    trampoline \
    transformers \
    triton \
    typer \
    typing \
    typing-extensions \
    typing-inspection \
    urllib3 \
    uv \
    wcwidth \
    wrapt \
    yarl \
    zipp

# Create model directories
RUN mkdir -p /app/models/checkpoints \
    /app/models/vae \
    /app/models/loras \
    /app/models/clip \
    /app/models/clip_vision \
    /app/models/upscale_models \
    /app/models/controlnet \
    /app/models/embeddings

# Create input and output directories
RUN mkdir -p /app/input /app/output /app/custom_nodes

# Expose port
EXPOSE 8188

# Set volume mounts
VOLUME ["/app/models", "/app/input", "/app/output", "/app/custom_nodes"]

# Command to run the application
CMD ["python3", "main.py", "--listen", "0.0.0.0", "--port", "8188"] 