# Tang Nano 9K Minimal HDMI Example

I got a Tang Nano 9K FPGA dev board, it's my first FPGA. I got it on Aliexpress. It has an HDMI port right on it which is real nice.

I wanted to find a barebones example that uses the HDMI port to send an visual pattern to a display so I could see how the protocol works. The official examples were either too complex for a beginner like me, or were for another board. 

I found [juj's gowin_flipflop_drainer](https://github.com/juj/gowin_flipflop_drainer), which is meant for diagnosing trouble when the FPGA is all filled up (i.e. all the "flipflops" are "drained"). I found that code relatively easy to understand. I took out the flipflop drainer out and was left with a simple HDMI image that worked excellently the first try on my Tang Nano 9K. 

That's all this fork really is: the flipflop drainer without the flipflop drainer. 

I intend to refer to this fork and use it as a basis for any new project I do that uses the HDMI port.

This project uses [Gowin EDA](https://www.gowinsemi.com/en/support/download_eda/). It's kind of like Visual Studio but for FPGAs.

Here's a good video on using Gowin: ["Get Started With FPGAs and Verilog in 13 Minutes!" by Doctor Volt on YouTube, 2024](https://www.youtube.com/watch?v=aWm9pJ2KobA)

Here's a good resource on a basic HDMI video signal works: https://www.fpga4fun.com/HDMI.html
