# ComfyUI 프로젝트 구조 설명

## 프로젝트 개요
ComfyUI는 Stable Diffusion을 위한 강력한 노드 기반 UI 인터페이스입니다. 본 프로젝트는 다양한 AI 모델을 활용하여 이미지를 생성하고 편집할 수 있는 환경을 제공합니다.

## 주요 디렉토리 구조

### 1. models/
본 폴더는 AI 모델들이 저장되는 핵심 디렉토리입니다.

주요 하위 폴더:
- `checkpoints/`: Stable Diffusion 모델 체크포인트 파일들
- `loras/`: LoRA 모델 파일들
- `controlnet/`: ControlNet 모델 파일들
- `clip/`: CLIP 모델 파일들
- `vae/`: VAE 모델 파일들
- `embeddings/`: 텍스트 임베딩 파일들
- `upscale_models/`: 이미지 업스케일링 모델들

## 제외된 모델 가중치 파일들

다음 모델 가중치 파일들은 제외되었습니다:

### Stable Diffusion 체크포인트
- `models/checkpoints/sd_xl_refiner_1.0_0.9vae.safetensors` (5.7GB)
https://huggingface.co/stabilityai/stable-diffusion-xl-refiner-1.0/resolve/main/sd_xl_refiner_1.0_0.9vae.safetensor
- `models/checkpoints/sd_xl_refiner_1.0.safetensors` (5.7GB)
https://huggingface.co/stabilityai/stable-diffusion-xl-refiner-1.0/resolve/main/sd_xl_refiner_1.0.safetensors
- `models/checkpoints/sd_xl_base_1.0.safetensors` (6.5GB)
https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors
- `models/checkpoints/sd3.5_large_fp8_scaled.safetensors` (14GB)
https://huggingface.co/Comfy-Org/stable-diffusion-3.5-fp8/resolve/main/sd3.5_large_fp8_scaled.safetensors

### LoRA 모델
- `models/loras/CBS_novuschroma35 style.safetensors` (218MB)
https://civitai.com/models/559558/cracks-and-scratches-style
- `models/loras/Folded01-01_CE_SDXL_128OT.safetensors` (650MB)
https://civitai.com/models/703753/folded-ce-sdxl

### VAE 모델
- `models/vae/sdxl_vae.safetensors` (319MB)
https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors

### BLIP 모델
- `models/blip/models--Salesforce--blip-vqa-base/blobs/33786eed34def0c95fa948128cb4386be9b9219aa2c2e25f1c9c744692121bb7` (1.4GB)
https://huggingface.co/Salesforce/blip-vqa-base
- `models/blip/models--Salesforce--blip-image-captioning-base/blobs/9339497cee045b8434a4ebf8f5a30e2f83984e7695a53030e99283a5786693d9` (944MB)
https://huggingface.co/Salesforce/blip-image-captioning-base

### UNet 모델
- `models/unet/diffusion_pytorch_model.fp16.safetensors` (4.8GB)
- `models/unet/diffusion_pytorch_model.safetensors` (9.6GB)

### Layer 모델
- `models/layer_model/vae_transparent_decoder.safetensors` (199MB)
https://huggingface.co/LayerDiffusion/layerdiffusion-v1/resolve/main/vae_transparent_decoder.safetensors
- `models/layer_model/layer_xl_transparent_conv.safetensors` (3.4GB)
https://huggingface.co/LayerDiffusion/layerdiffusion-v1/resolve/main/layer_xl_transparent_conv.safetensors

### VAE Approx 모델
- `models/vae_approx/taesd_encoder.pth` (4.7MB)
https://github.com/madebyollin/taesd/raw/main/taesd_encoder.pth
- `models/vae_approx/taesd_decoder.pth` (4.7MB)
https://github.com/madebyollin/taesd/raw/main/taesd_decoder.pth
- `models/vae_approx/taesdxl_encoder.pth` (4.7MB)
https://github.com/madebyollin/taesd/raw/main/taesdxl_encoder.pth
- `models/vae_approx/taesdxl_decoder.pth` (4.7MB)
https://github.com/madebyollin/taesd/raw/main/taesdxl_decoder.pth
- `models/vae_approx/taesd3_encoder.pth` (4.7MB)
- `models/vae_approx/taesd3_decoder.pth` (4.7MB)
- `models/vae_approx/taef1_encoder.pth` (4.7MB)
- `models/vae_approx/taef1_decoder.pth` (4.7MB)
- `models/vae_approx/xl-to-v1_interposer-v3.1.safetensors` (6.2MB)
- `models/vae_approx/vaeapp_sd15.pth` (209KB)
- `models/vae_approx/xlvaeapp.pth` (209KB)

### Fooocus Expansion 모델
- `models/fooocus_expansion/pytorch_model.bin` (335MB)
- `models/fooocus_expansion/vocab.json` (779KB)
- `models/fooocus_expansion/tokenizer.json` (2.0MB)
- `models/fooocus_expansion/merges.txt` (446KB)

### Inpaint 모델
- `models/inpaint/fooocus_inpaint_unet.safetensors` (4.8GB)
https://huggingface.co/lllyasviel/fooocus_inpaint/resolve/main/fooocus_inpaint_unet.safetensors
- `models/inpaint/fooocus_inpaint_refiner_unet.safetensors` (4.8GB)
- `models/inpaint/inpaint_v26.fooocus.patch` (1.2GB)
https://huggingface.co/lllyasviel/fooocus_inpaint/resolve/main/inpaint_v26.fooocus.patch
- `models/inpaint/inpaint.fooocus.patch` (1.2GB)
- `models/inpaint/fooocus_lama.safetensors` (97MB)
- `models/inpaint/inpaint_v25.fooocus.patch` (2.4GB)

### 2. input/
본 폴더는 이미지 생성/편집을 위한 입력 파일들이 저장되는 곳입니다.

주요 하위 폴더:
- `clipspace/`: CLIP 관련 입력 파일들
- `history/`: 작업 히스토리

### 3. output/
생성된 이미지들이 저장되는 폴더입니다.

주요 하위 폴더:
- `SDXL/`: SDXL 모델로 생성된 이미지들
- `SDXL_Inpaint/`: SDXL 인페인팅 결과물
- `SD3.5/`: SD 3.5 모델로 생성된 이미지들
- `Fooocus_Inpaint/`: Fooocus 인페인팅 결과물

### 4. custom_nodes/
사용자 정의 노드들이 저장되는 폴더입니다. 각 하위 폴더는 특정 기능을 추가하는 커스텀 노드를 포함합니다.

주요 커스텀 노드:
- `comfyui-ollama/`: Ollama 통합
- `ComfyUI_Fooocus/`: Fooocus 기능 통합
- `comfyui-custom-scripts/`: 사용자 정의 스크립트
- `comfyui_ipadapter_plus/`: IP-Adapter Plus 기능
- `ComfyUI-Manager/`: 노드 관리 도구

### 5. user/
사용자 관련 데이터와 로그 파일들이 저장되는 폴더입니다.

주요 내용:
- `comfyui.log`: 현재 실행 중인 ComfyUI의 로그 파일
- `comfyui.prev.log`: 이전 실행의 로그 파일
- `comfyui.prev2.log`: 그 이전 실행의 로그 파일
- `default/`: ComfyUI의 핵심 설정 및 데이터가 저장되는 중요한 폴더
  - `workflows/`: 사용자가 만든 워크플로우 파일들이 저장되는 폴더
  - `comfy.settings.json`: ComfyUI의 전반적인 설정이 저장되는 파일
  - `ComfyUI-Manager/`: 노드 관리자 관련 설정 및 데이터

### 6. main.py
ComfyUI의 메인 실행 파일입니다. 주요 기능:
- 서버 초기화 및 설정
- 커스텀 노드 로딩
- 모델 경로 설정
- 웹 서버 실행

## 시작하기

1. 필요한 모델 파일들을 `models/` 폴더의 적절한 하위 폴더에 배치해 주시기 바랍니다.
2. `main.py`를 실행하여 ComfyUI 서버를 시작해 주시기 바랍니다.
3. 웹 브라우저에서 `http://localhost:8188`로 접속하여 UI를 사용하실 수 있습니다.

## 주의사항
- 모델 파일들은 반드시 지정된 폴더에 올바르게 배치해 주시기 바랍니다.
- 커스텀 노드를 추가하실 때는 `custom_nodes/` 폴더에 설치해 주시기 바랍니다.
- 입력 이미지는 `input/` 폴더에, 생성된 이미지는 `output/` 폴더에 저장됩니다.
- 로그 파일은 `user/` 폴더에서 확인하실 수 있으며, 문제 발생 시 참고하시면 도움이 됩니다.
- `user/default` 폴더의 내용은 정기적으로 백업하시는 것을 권장드립니다. 이 폴더에는 워크플로우와 설정 등 중요한 데이터가 저장되어 있습니다.

## 추가 정보
더 자세한 정보는 [공식 ComfyUI 문서](https://github.com/comfyanonymous/ComfyUI)를 참조해 주시기 바랍니다. 