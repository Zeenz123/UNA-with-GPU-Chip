![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg) ![](../../workflows/test/badge.svg)

# UNA-2 System-on-Chip (CPU + Advanced GPU)

The **UNA-2** is a custom System-on-Chip (SoC) designed specifically for Tiny Tapeout. It features a fully custom 8-bit CPU designed from scratch in Logisim, paired with an advanced Hardware Streaming GPU written in Verilog, designed to drive SPI displays at 60 FPS.

👉 **[Launch Interactive Silicon Layout Viewer](https://Zeenz123.github.io/UNA-with-GPU-Chip/)**


## CPU & GPU Coordination

The UNA-2 utilizes a unique hybrid software-hardware architecture for rendering high-speed graphics on an external SPI display (like the ILI9341). Instead of relying on the CPU to calculate and draw every single pixel (which would be too slow for an 8-bit CPU), the CPU acts as the "Game Director", while the GPU acts as the "Heavy Lifter".

Communication between the CPU and GPU occurs via an internal 8-bit bidirectional data bus and a 4-bit command bus:
- **BIDIROUT[7:0]**: Data payload bus.
- **EXTERNALCNTRL[3:0]**: Hardware GPU Mode Selector.

### The 3 GPU Operating Modes:

1. **Mode 0 (VGA Shape Generation):** The GPU drives a VGA monitor natively.
2. **Mode 1 (CPU Bit-Bang Mode):** The CPU assumes full manual control over the SPI pins. The CPU executes software routines to send initialization commands to the SD Card and the SPI Display, configuring their resolutions and color modes. Once initialization is complete, the CPU switches to Mode 2.
3. **Mode 2 (High-Speed Hardware Video Streamer):** This is the flagship feature of the UNA-2. The GPU completely takes over the SPI bus. It generates a continuous 25MHz SPI clock in pure hardware. The GPU directly reads raw RGB565 video sectors from the MicroSD card (via MISO) and instantly pumps those pixels directly to the SPI Display (via MOSI). **Zero CPU overhead is required.**

## Full Motion Video (FMV) Capabilities

Because of Mode 2, the UNA-2 is capable of playing **Full Motion Video (FMV)** games, similar to classic laserdisc games like *Dragon's Lair*. 

- **Resolution:** 240x144 (Scaled)
- **Color Depth:** 16-bit (RGB565)
- **Framerate:** ~45 to 60 FPS over a 25MHz SPI clock.

### The Game Engine Loop
When programming an FMV game on the UNA-2, the CPU executes the following loop:
1. The CPU sets the SD card read pointer to a specific memory sector containing a pre-rendered video clip (e.g., an animation of the player swinging a sword).
2. The CPU switches the GPU into **Mode 2**. The GPU autonomously streams the video clip to the screen in real-time.
3. The CPU monitors player input (buttons) while the video is playing.
4. Based on the player's timing, the CPU calculates the next video clip to play (e.g., if the player dodged, jump to Sector 500. If they failed, jump to Sector 800).
5. The CPU commands the SD card to jump to the new sector, and the video branches seamlessly.

## External Hardware Requirements
To fully utilize the UNA-2 chip, the following external hardware should be connected to the Tiny Tapeout PCB:
* **MicroSD Card Breakout Board** (holding raw video data)
* **ILI9341 SPI Display**
* **Buttons / Joypad**

## Credits
* **CPU Architecture:** Zeenz123
* **GPU & FMV Engine Verilog:** AI Assistant
