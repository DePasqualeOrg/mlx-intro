## Introduction to MLX for Swift developers

This introduction was created for my talk at the NSBarcelona meetup at Glovo on 5 November 2024.

**Advantages of MLX**

- [Optimized](https://github.com/ml-explore/mlx/issues/12#issuecomment-1843956313) for unified memory on Apple silicon
- Closely follows NumPy and PyTorch APIs
- Has a Swift API, allowing apps using MLX to be compiled for macOS, iOS, and visionOS
- Easier to work with the latest open-source models compared to Core ML
  - Core ML uses the Neural Engine in addition to the GPU and CPU. MLX doesn't use the Neural Engine due to its [constraints](https://github.com/ml-explore/mlx/issues/18#issuecomment-1846188238).
- Open source and evolving quickly with the field

**General introductions to deep learning**

- The [fast.ai course](https://course.fast.ai) is a great introduction to deep learning that starts from a high level and progressively delves into lower-level concepts.
- I also highly recommend François Chollet's *Deep Learning with Python* ([second edition](https://www.manning.com/books/deep-learning-with-python-second-edition) currently available, [third edition](https://www.manning.com/books/deep-learning-with-python-third-edition) forthcoming in spring 2025).

**Converting and quantizing models**

New models generally get converted to MLX and quantized within hours of their release. You can find them in the [MLX Community](https://huggingface.co/mlx-community) on Hugging Face. If you need to convert and/or quantize a model, I've included an example notebook in this repository.

**Porting MLX implementations from Python to Swift**

New models are generally first implemented in MLX in the Python repositories listed below. The MLX maintainers and the community then port these models to Swift. You can follow the progress and contribute to these efforts on GitHub.

Claude 3.5 Sonnet has knowledge about MLX and generally does a good job of porting Python MLX code to Swift when provided with existing examples in both languages. Minor corrections may be necessary, since there are some small differences between the Python and Swift MLX APIs.

**Tools and examples**

- Python
  - [mlx-examples](https://github.com/ml-explore/mlx-examples)
  - [mlx-vlm](https://github.com/Blaizzy/mlx-vlm): Vision language models
  - [transformers](https://github.com/huggingface/transformers)

- Swift
  - [mlx-swift-examples](https://github.com/ml-explore/mlx-swift-examples)
  - [swift-transformers](https://github.com/huggingface/swift-transformers)
  - [Jinja](https://github.com/maiqingqiang/Jinja): Engine for parsing chat templates

- JavaScript (can be useful when porting to Swift)
  - [transformers.js](https://github.com/xenova/transformers.js)
  - [huggingface.js](https://github.com/huggingface/huggingface.js)

**Projects using MLX**

- Text generation
  - [LM Studio](https://lmstudio.ai): Cross-platform desktop chat app with Python MLX backend
  - [ChatMLX](https://github.com/maiqingqiang/ChatMLX): macOS chat app in Swift
  - [fullmoon](https://github.com/mainframecomputer/fullmoon-ios): iOS chat app in Swift
  - [LLMEval](https://github.com/ml-explore/mlx-swift-examples/blob/main/Applications/LLMEval/README.md): Simple example chat app for macOS, iOS, and visionOS
  - [Local Chat](https://localchat.co): My chat app for macOS and iOS
- Text to speech (Python)
  - https://github.com/JosefAlbers/e2tts-mlx
  - https://github.com/lucasnewman/e2-tts-mlx
  - https://github.com/lucasnewman/f5-tts-mlx
- Speech to text
  - https://github.com/mustafaaljadery/lightning-whisper-mlx (Python)
  - https://github.com/JosefAlbers/whisper-turbo-mlx (Python)
  - Possibly coming soon to Swift in WhisperKit: https://github.com/argmaxinc/WhisperKit/pull/124
- Image generation
  - https://github.com/filipstrand/mflux (Python)
  - https://github.com/mzbac/flux.swift (Swift)
    - Demo app: https://github.com/DePasqualeOrg/Flux-Demo

**People to follow on 𝕏**

- [Awni Hannun](https://x.com/awnihannun) (Apple)
- [Angelos Katharopoulos](https://x.com/angeloskath) (Apple)
- [Pedro Cuenca](https://x.com/pcuenq) (Hugging Face)
- [Prince Canuma](https://x.com/Prince_Canuma) (Arcee AI)
- [Me](https://x.com/DePasqualeOrg)

**Call to action for Swift developers**

Contribute to [mlx-swift-examples](https://github.com/ml-explore/mlx-swift-examples) and [swift-transformers](https://github.com/huggingface/swift-transformers) to help bring these tools and examples up to par with their Python equivalents.

