## Introduction to MLX for Swift developers

This introduction was created for my talk at the NSBarcelona meetup at Glovo on 5 November 2024.

**Advantages of MLX**

- Optimized for unified memory on Apple silicon (no copying from RAM to VRAM)
- Closely follows NumPy and PyTorch APIs
- In addition to the Python API, a Swift API allows apps using MLX to be compiled for macOS, iOS, and visionOS.
- Easier to work with most open-source models compared to Core ML
  - Core ML uses the Neural Engine, which imposes constraints on model inputs and execution.
  - MLX doesn't use the Neural Engine due to its constraints, but does use the CPU or GPU.

**Designing for compatibility and stability in Swift**

- MLX is compatible with devices that support Metal version 7 or later (A14/M1 chip or later).
  - `MTLCreateSystemDefaultDevice()?.supportsFamily(.apple7)`
- Ensure that the model you're using will fit in the device's available memory.
  - `MTLDevice.recommendedMaxWorkingSetSize`
- Ensure that the operations you're running will fit in the device's maximum buffer length.
  - `MTLDevice.maxBufferLength`
- Carefully manage concurrency.
- Stop running operations on the GPU when an app enters the background (on iOS) and before it is quit by the user.

**General introductions to deep learning**

- The [fast.ai course](https://course.fast.ai) is a great introduction to deep learning that starts from a high level and progressively delves into lower-level concepts.
- I also highly recommend François Chollet's *Deep Learning with Python* ([second edition](https://www.manning.com/books/deep-learning-with-python-second-edition) currently available, [third edition](https://www.manning.com/books/deep-learning-with-python-third-edition) forthcoming in spring 2025).

**Porting MLX code from Python to Swift**

- Claude 3.5 Sonnet has knowledge about MLX and generally does a good job of porting Python MLX code to Swift when provided with existing examples in both languages. Minor corrections are usually necessary, and sometimes it takes a few tries and follow-up questions to get things right.

**Converting models to MLX**

New models generally get converted to MLX and quantized within hours of their release. You can find them in the [MLX Community](https://huggingface.co/mlx-community) on Hugging Face. If you need to convert and/or quantize a model, I've included an example notebook in this repository.

**Tools and examples**

- [mlx-examples](https://github.com/ml-explore/mlx-examples): Tools and examples in Python
- [mlx-swift-examples](https://github.com/ml-explore/mlx-swift-examples): Tools and examples in Swift
- [swift-transformers](https://github.com/huggingface/swift-transformers): Swift port of Hugging Face's [transformers](https://github.com/huggingface/transformers) library, including tools for downloading models and using tokenizers
  - [transformers.js](https://github.com/xenova/transformers.js) and [huggingface.js](https://github.com/huggingface/huggingface.js) include JavaScript implementations that can be useful when adding functionality to swift-transformers.


**Projects using MLX**

- Text generation
  - [LM Studio](https://lmstudio.ai): Cross-platform (desktop) chat app with Python MLX backend
  - [mlx-vlm](https://github.com/Blaizzy/mlx-vlm): Vision language models in Python
  - [fullmoon](https://github.com/mainframecomputer/fullmoon-ios): iOS chat app in Swift
  - [ChatMLX](https://github.com/maiqingqiang/ChatMLX): macOS chat app in Swift
  - [LLMEval](https://github.com/ml-explore/mlx-swift-examples/blob/main/Applications/LLMEval/README.md): Simple example chat app in Swift for macOS, iOS, and visionOS
  - [Local Chat](https://localchat.co): My chat app for macOS and iOS
- Text to speech
  - https://github.com/lucasnewman/e2-tts-mlx
  - https://github.com/JosefAlbers/e2tts-mlx
- Speech to text
  - https://github.com/mustafaaljadery/lightning-whisper-mlx
  - https://github.com/JosefAlbers/whisper-turbo-mlx
  
- Image generation
  - https://github.com/filipstrand/mflux

**People to follow on 𝕏**

- [Awni Hannun](https://x.com/awnihannun) (Apple)
- [Angelos Katharopoulos](https://x.com/angeloskath) (Apple)
- [Pedro Cuenca](https://x.com/pcuenq) (Hugging Face)
- [Prince Canuma](https://x.com/Prince_Canuma) (Arcee AI)
- [Me](https://x.com/DePasqualeOrg) (independent)

**Call to action for Swift developers**

Contribute to [mlx-swift-examples](https://github.com/ml-explore/mlx-swift-examples) and [swift-transformers](https://github.com/huggingface/swift-transformers) to help bring these tools and examples up to par with their Python equivalents.

