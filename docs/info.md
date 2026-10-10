## How it works

The UNA2 is a custom System-on-Chip containing an 8-bit CPU designed in Logisim and an advanced Hardware Streaming GPU. The CPU executes custom machine code from an external ROM, performing math and logic operations. The GPU operates in three modes: Mode 0 (VGA Hardware Shape Generation), Mode 1 (CPU Bit-Bang for SPI Initialization), and Mode 2 (High-Speed Hardware Video Streamer). In Mode 2, the GPU automatically blasts a 25MHz SPI clock to read video frames from an SD card and stream them directly to the display, allowing 60FPS video playback without CPU overhead.

## How to test

To test the UNA2, connect a MicroSD card breakout to the SPI MISO/MOSI/SCK/CS pins, and an SPI display (like ILI9341) to the corresponding display pins. Load the SD card with raw RGB565 sector data. Provide a 50MHz clock to the system. The CPU will wake up the SD card via bit-banging and then switch to the GPU's hardware streaming mode to play the video.

## External hardware

- MicroSD Card Breakout Board
- ILI9341 SPI Display (or standard VGA connector for Mode 0)
