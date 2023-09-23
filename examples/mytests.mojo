from benchmark import Benchmark

from random import random_ui64



def main():
    @parameter
    fn for_looping():
        let LOOP_COUNT = 1000000000
        var sum: Int = 0
        for i in range(LOOP_COUNT):
            sum = sum + random_ui64(0, 255).to_int()

    fn py_for_looping():
        let LOOP_COUNT = 1000000000
        var sum = 0
        for i in range(LOOP_COUNT):
            sum += i

    print("Hello Mojo 🔥!")
    let cur_time = Benchmark(1, 1, 1, 1000*1000*1000).run[for_looping]()
    let secs = cur_time / 1000000000
    print("Time: ", secs)