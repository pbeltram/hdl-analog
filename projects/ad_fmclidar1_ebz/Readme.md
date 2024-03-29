
# AD_FMCLIDAR1_EBZ HDL reference design

## Overview

The following design supports both Xilinx and Intel FPGA's. The [AD_FMCLIDAR1_EBZ](https://www.analog.com/en/design-center/evaluation-hardware-and-software/evaluation-boards-kits/AD-FMCLIDAR1-EBZ.html)
prototyping system connects to the FPGA carrier board through a FMC (FPGA Mezzanine Cad)
high pin count connector.  

Detailed user guide of the prototyping platform can be found [here](https://wiki.analog.com/resources/eval/user-guides/ad-fmclidar1-ebz).

Currently supported carriers:

|  Carrier name | FMC connector |
| ------------- | ------------- |
|  ZC706        |   FMC_HPC     |
|  ZCU102       |   HPC0        |
|  Arria10SOC*  |   FMCA_HPC    |

The design is easily portable to any Xilinx or Intel FPGA carrier board, which
has an FMC HPC connector, and have all the required connections. (See more info
in [system_constr.xdc](./zc706/system_constr.xdc) or [system_project.tcl](./a10soc/system_project.tcl))

You can find a porting guide in the [wiki.analog.com](https://wiki.analog.com/resources/fpga/docs/hdl/porting_project_quick_start_guide).

### NOTE

The Arria10SOC carrier requires a hardware rework to function correctly.
The rework connects FMC_A header pins directly to the FPGA so that they can be
accessed by the fabric.

#### Changes required:

**REMOVE**:   R575, R576, R621, R633, R612, R613

**POPULATE**: R574, R577, R620, R632, R610, R611


### Directory Structure

| Directory | Description |
| --------- | ----------- |
| common    | Common verilog and block design Tcl files |
| zc706     | ZC706 specific source files |
| zcu102    | ZCU102 specific source files |
| a10soc    | Arria10SOC specific source files |

More information about the directory structure of the HDL repository can be found [here](https://wiki.analog.com/resources/fpga/docs/git).

## Build instructions

The project is using GNU Make for build and bitstream generation. Change your directory
to your targeted carrier and run **make**.

More information about how to build HDL projects can be found [here](http://wiki.analog.com/resources/fpga/docs/build).

## Architecture

The main scope of the HDL design is to provide all the required digital interfaces
for the data acquisition board of the prototyping system.

The following block diagram presents the simplified system architecture: 

![HDL Block Diagram](./doc/img/hdl_lidar.png)

### AXI_LASER_DRIVER IP

The axi_laser_driver IP is responsible to generate a narrow pulse for the laser
driver circuit, to control the TIA channel selection on the analog front end (AFE)
board, and to synchronize the data acquisition to the generated pulses.

More information about the IP can be found [here](https://wiki.analog.com/resources/fpga/docs/axi_laser_driver).

### Control interfaces

| Name | Type | Details |
| ---- | ---- | ------- |
| adc_fd*                     | GPIO        | Monitors the AD9094 Fast detect output lines | 
| adc_pwdn                    | GPIO        | Controls the AD9094 Power-Down input line | 
| spi_adc_*                   | 4-wire SPI  | AD9094 configuration interface | 
| spi_vco_*                   | 3-wire SPI  | ADF436-7 configuration interface | 
| spi_clkgen_*                | 4-wire SPI  | AD9528 configuration interface | 
| laser_driver_p\n            | LVDS output | It controls the laser driver circuit, it is generated by the axi_laser_driver IP instance | 
| laser_gpio[13:0]            | GPIO        | Unused GPIO line on the lase board |
| tia_chsel[7:0]              | CMOS output | TIA channel selection lines, it is controlled by the axi_laser_driver instance |
| afe_dac_sda\scl\load\clr_n  | I2C/GPIO    | AD5627 configuration interface |
| rx_ref_clk_p\n              | LVDS        | JESD204B reference clock for the high-speed gigabit transceivers; runs at 250MHz |
| rx_device_clk_p\n           | LVDS        | JESD204B device clock for the transport layer and additional data processing; runs at 250MHz |
| rx_data_p\n[3:0]            | CML         | JESD204B high-speed serial lanes; runs at 10Gbps |
| rx_sync_p\n[1:0]            | LVDS        | JESD204B SYNC signals for interface synchronization |
| rx_sysref_p\n               | LVDS        | JESD204B SYSREF signal for deterministic latency |

### JESD204B interface

The JESD204B interface runs in Subclass 1 mode to ensure the deterministic latency 
of the link. The following tables are summarizing the JESD204B important configuration 
parameter and attributes.

| Parameter name | Abbreviation |Value |
| -------------- | ------------ | ---- |
| Number of lanes  | L | 4 | 
| Number of converter | M | 4 |
| Converter resolution | NP | 8 |
| Total number of Bits per Sample| NP | 8 |
| Samples per frame | S | 1 |
| Octets per frame | F | 1 |
| Frames per Multiframe | K | 32 |
| Number of control bits | CS | 0 |

| Rates and Clocks | Value | 
| ---------------- | ----- |
| Sample rate | 1GSPS |
| Lane rate | 10Gbps |
| GT reference clock | 250MHz |
| Device clock | 250 MHz | 

## Known issues

### The Lidar boards do not power up 

**Problem:** The Lidar boards do not power up because the PG_C2M pull-up resistor value on the carrier (Arria 10) is too high. 

**Solution:** On Arria 10 - place a 4k7 ohms resistor in parallel with R5517.

**Note:** 

1. The PG_C2M can no longer be software controlled. As soon as there is an auxiliary 3V3 on the carrier, the Lidar platform receives the power up command.
2. This problem only affects Lidar Rev B.

## Support

For technical support please visit [FPGA Referece Designs](https://ez.analog.com/fpga/) community in EngineerZone.


# AD_FMCLIDAR1_EBZ HDL Project

Here are some pointers to help you:
  * [Board Product Page](https://www.analog.com/AD-FMCLIDAR1-EBZ)
  * Parts : 
           * Laser Board
           [3.3 V, 200 Mbps, Half-Duplex, High Speed M-LVDS Transceiver with Type 1 Receiver](https://www.analog.com/adn4691e)
           [High Speed, Dual, 4 A MOSFET Driver, non-inverting A/B input pins, 9.5V < VIN < 18V](https://www.analog.com/adp3634)
           [Ultralow Noise Drivers for Low Voltage ADCs](https://www.analog.com/ada4930-1)
           * DAQ Board
           [8-Bit, 1 GSPS, JESD204B, Quad Analog-to-Digital Converter](https://www.analog.com/ad9094)
           [Integrated Synthesizer and VCO](https://www.analog.com/adf4360-7)
           [JESD204B/JESD204C Clock Generator with 14 LVDS/HSTL Outputs](https://www.analog.com/ad9528)
           [1.2 A, Ultralow Noise, High PSRR, Fixed Output, RF Linear Regulator](https://www.analog.com/adp7156)
           [2 A, Ultralow Noise, High PSRR, Adjustable Output, RF Linear Regulator](https://www.analog.com/adp7159)
           * AFE Board
           [Four-Channel Multiplexed Transimpedance Amplifier with Output Multiplexing](https://www.analog.com/ltc6561)
           [Low Power Selectable Gain Differential ADC Driver](https://www.analog.com/ada4950-1)
           [Dual 3.2MHz, 0.8V/μs Low Power, Over-The-Top Precision Op Amp](https://www.analog.com/lt6016)
           [Micropower, Precision, Auto Qualified 2.5V Voltage Reference](https://www.analog.com/adr3525)
           [Low IQ Boost/SEPIC/Flyback/Inverting Converter with 0.5A, 140V Switch](https://www.analog.com/lt8331)
  * Project Doc: https://wiki.analog.com/resources/eval/user-guides/ad-fmclidar1-ebz
  * HDL Doc: https://wiki.analog.com/resources/eval/user-guides/ad-fmclidar1-ebz
  * Linux Drivers: https://wiki.analog.com/resources/fpga/docs/axi_laser_driver
