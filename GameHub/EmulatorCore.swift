import Metal
import MetalKit

class EmulatorEngine: NSObject, MTKViewDelegate {
    var device: MTLDevice!
    var commandQueue: MTLCommandQueue!

    init(metalView: MTKView) {
        self.device = MTLCreateSystemDefaultDevice()
        self.commandQueue = device.makeCommandQueue()
        super.init()
        metalView.device = device
        metalView.delegate = self
    }

    func draw(in view: MTKView) {
        guard let drawable = view.currentDrawable else { return }
        let commandBuffer = commandQueue.makeCommandBuffer()
        // গেমের ফ্রেম এখানে রেন্ডার হবে
        commandBuffer?.present(drawable)
        commandBuffer?.commit()
    }

    func mtkView(_ view: MTKView, drawableSizeWillChange size: CGSize) {}
}
