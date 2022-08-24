
class Stopwatch {
    private var isRunning = false
    
    func click() {
        if isRunning {
            isRunning = false
        } else {
            isRunning = true
        }
    }
}
