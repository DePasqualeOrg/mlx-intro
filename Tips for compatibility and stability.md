**Designing for compatibility and stability in Swift**

- MLX is compatible with devices that support Metal version 7 or later (A14/M1 chip or later).
  - `MTLCreateSystemDefaultDevice()?.supportsFamily(.apple7)`
- Ensure that the model you're using will fit in the device's available memory.
  - `MTLDevice.recommendedMaxWorkingSetSize`
- Ensure that the operations you're running will fit in the device's maximum buffer length.
  - `MTLDevice.maxBufferLength`
- Carefully manage concurrency.
- Stop running operations on the GPU when an app enters the background (on iOS) and before it is quit by the user.