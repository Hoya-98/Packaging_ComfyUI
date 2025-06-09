# ComfyUI Docker

이 폴더에는 ComfyUI를 Docker 컨테이너로 실행하기 위한 파일이 포함되어 있습니다. 이 설정은 conda 환경 'comfy'에 설치된 패키지들을 포함합니다.

## 사전 요구 사항

- Docker 및 Docker Compose 설치
- NVIDIA 드라이버 및 NVIDIA Container Toolkit 설치
- 컴퓨터에 NVIDIA GPU 필요

## 설치 방법

1. NVIDIA Container Toolkit 설치 (처음 한 번만):

```bash
# Ubuntu/Debian 기준
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
sudo apt-get update
sudo apt-get install -y nvidia-container-toolkit
sudo systemctl restart docker
```

2. 이미지 빌드 및 컨테이너 실행:

```bash
docker-compose up -d
```

## 폴더 구조

- `models/`: 모델 파일 보관 (체크포인트, VAE, 등)
- `custom_nodes/`: 사용자 정의 노드
- `input/`: 입력 이미지 폴더
- `output/`: 출력 이미지 폴더

## 사용 방법

컨테이너가 실행되면 브라우저에서 다음 주소로 접속:
```
http://localhost:8188
```

## 모델 파일 관리

모델 파일은 다음 폴더에 저장:

- 체크포인트: `models/checkpoints/`
- VAE 모델: `models/vae/`
- LoRA 파일: `models/loras/`
- CLIP 모델: `models/clip/`
- ControlNet: `models/controlnet/`
- 임베딩: `models/embeddings/`

## 로그 확인

```bash
docker logs -f comfyui
```

## 컨테이너 중지

```bash
docker-compose down
```

## 트러블슈팅

1. GPU 인식 문제가 있을 경우:
   - NVIDIA 드라이버가 올바르게 설치되어 있는지 확인
   - `nvidia-smi` 명령어가 호스트에서 제대로 작동하는지 확인
   
2. 메모리 문제가 있을 경우:
   - 컨테이너 메모리 제한 설정 확인
   - 더 적은 메모리를 사용하는 모델로 전환 