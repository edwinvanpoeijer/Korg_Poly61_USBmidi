# Korg_Poly61_USBmidi
USB Midi conversion for the Korg Poly61 synthesizer

This midi conversion uses a Teensy V3.2 to interface between the keys, arpeggiator and the cpu board.
This will add the following functionality to your Korg Poly61:

USB Midi interface
Hardware MIDI input
Hardware MIDI thru (from the hardware MIDI input)
Hardware MIDI out/thru (forwarded from the USB midi) 
MIDI synced arpeggiator (can be set to internal,  1/4, 1/8, 1/16, 1/32)
SYNC/TRIGGER out 
MIDI port selectable (1 - 16 or OMNI)

The MIDI port and arpeggiator sync can be set at power on by holding the keys.
C0  = ARP internal
C#0 = ARP 1/4
D0  = ARP 1/8
D#0 = ARP 1/16
E0  = ARP 1/32

C2 = MIDI channel 1 ---> D#3 = MIDI channel 16
E3 = OMNI

I have included the code, schematic and a very raw pcb (i still have some available).
There is a lot of space between the components and the pcb could be half it's current size :)
You will need a Teensy 3.1/3.2 for this as these are still 5V tolerant.
