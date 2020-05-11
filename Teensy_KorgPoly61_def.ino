/* Receive Incoming USB MIDI using functions.  As usbMIDI
   reads incoming messages, handler functions are run.
   See the InputRead example for the non-function alterative.

   This small example shows only 3 common messages, to keep
   things simple.  See InputFunctionsComplete for an example
   with all possible messages.

   Use the Arduino Serial Monitor to view the messages
   as Teensy receives them by USB MIDI

   You must select MIDI from the "Tools > USB Type" menu

   This example code is in the public domain.
*/

#include <MIDI.h>
#include <EEPROM.h>

// HW midi instance
MIDI_CREATE_INSTANCE(HardwareSerial, Serial1, MIDI);

// Tables for fast processing
byte keyArray[] = {B11111111, B11111111, B11111111, B11111111, B11111111, B11111111, B11111111, B11111111};
byte kbReadArray[] = {B11111111, B11111111, B11111111, B11111111, B11111111, B11111111, B11111111};
byte keyArrayMaskOn[]  = {B01111111, B10111111, B11011111, B11101111, B11110111, B11111011, B11111101, B11111110};
byte keyArrayMaskOff[] = {B10000000, B01000000, B00100000, B00010000, B00001000, B00000100, B00000010, B00000001};
byte bitPos[] = {4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3};
byte keyArrayNum[]      = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7};

// Output (CN29) = PORT c
const byte CN29_0 = 15;
const byte CN29_1 = 22;
const byte CN29_2 = 23;
const byte CN29_3 = 9;
const byte CN29_4 = 10;
const byte CN29_5 = 13;
const byte CN29_6 = 11;
const byte CN29_7 = 12;

// Input (CN30) = PORT D
const byte CN30_0 = 2;
const byte CN30_1 = 14;
const byte CN30_2 = 7;
const byte CN30_3 = 8;

// Input from keyboard (CN30)
// Bits 0-3 PORTB
const byte CN30_KB_0 = 16;
const byte CN30_KB_1 = 17;
const byte CN30_KB_2 = 19;
const byte CN30_KB_3 = 18;
// Bits 4-7 PORTD
const byte CN30_KB_4 = 6;
const byte CN30_KB_5 = 20;
const byte CN30_KB_6 = 21;
const byte CN30_KB_7 = 5;

// Arp sync in
const byte arpIn = 3;
const byte arpOut = 4;
bool arpPulse;
bool midiArp;
byte midiClockCnt;
byte midiClockEnd;
const byte arpQuarterNote = 24;
const byte arpEightNote = 12;
const byte arpSixteenthNote = 6;
const byte arpThirtyTwoNote = 3;
const byte arpPoly61 = 0;
byte midiChannel;
bool powerOnMode;
int  powerOnCounter;
bool bootMode;
int bootCounter;
void setup() {

  // Read midichannel
  midiChannel = EEPROM.read(0);
  if (midiChannel > 16)
  {
    EEPROM.write(0, 0);
    midiChannel = 0;
  }
  // Read arp
  midiClockEnd = EEPROM.read(1);
  if (midiClockEnd == arpQuarterNote || midiClockEnd == arpEightNote || midiClockEnd == arpSixteenthNote || midiClockEnd == arpThirtyTwoNote) {
    midiArp = true;
  }
  else if (midiClockEnd == arpPoly61) {
    midiArp = false;
  }
  else {
    EEPROM.write(1, 0);
    midiClockEnd = arpPoly61;

  }
  // SET CN30 to input
  pinMode( CN30_0, INPUT_PULLUP);
  pinMode( CN30_1, INPUT_PULLUP);
  pinMode( CN30_2, INPUT_PULLUP);
  pinMode( CN30_3, INPUT_PULLUP);

  // Set CN30_KB to input
  pinMode( CN30_KB_0, INPUT_PULLUP);
  pinMode( CN30_KB_1, INPUT_PULLUP);
  pinMode( CN30_KB_2, INPUT_PULLUP);
  pinMode( CN30_KB_3, INPUT_PULLUP);
  pinMode( CN30_KB_4, INPUT_PULLUP);
  pinMode( CN30_KB_5, INPUT_PULLUP);
  pinMode( CN30_KB_6, INPUT_PULLUP);
  pinMode( CN30_KB_7, INPUT_PULLUP);

  // Set CN29 to output
  pinMode( CN29_0, OUTPUT);
  pinMode( CN29_1, OUTPUT);
  pinMode( CN29_2, OUTPUT);
  pinMode( CN29_3, OUTPUT);
  pinMode( CN29_4, OUTPUT);
  pinMode( CN29_5, OUTPUT);
  pinMode( CN29_6, OUTPUT);
  pinMode( CN29_7, OUTPUT);

  pinMode(arpIn, INPUT_PULLUP);
  pinMode(arpOut, OUTPUT);
  //digitalWriteFast(arpOut,LOW);
  arpPulse = false;
  midiClockCnt = 0;
  //midiArp = false;
  //midiClockEnd = arpSixteenthNote;

  Serial.begin(115200);

  Serial1.setTX(1);
  Serial1.setRX(0);
  MIDI.begin();
  MIDI.setHandleNoteOn(myNoteOn);
  MIDI.setHandleNoteOff(myNoteOff);
  MIDI.setHandleControlChange(myControlChange);
  MIDI.setHandleProgramChange(myProgramChange);
  MIDI.setHandleClock(myClock);
  MIDI.setHandleStart(myStart);
  MIDI.setHandleContinue(myContinue);
  MIDI.setHandleStop(myStop);

  usbMIDI.setHandleNoteOn(myNoteOn);
  usbMIDI.setHandleNoteOff(myNoteOff);
  usbMIDI.setHandleControlChange(myControlChange);
  usbMIDI.setHandleProgramChange(myProgramChange);
  usbMIDI.setHandleClock(myClock);
  usbMIDI.setHandleStart(myStart);
  usbMIDI.setHandleContinue(myContinue);
  usbMIDI.setHandleStop(myStop);


  //startupKeyBoardScanner();
  bootMode = true;
  bootCounter = 100;
}

void loop() {

  runningKeyBoardScanner();


  // Check if midiArp is turned off
  if (!midiArp) {
    digitalWrite(arpOut, digitalRead(arpIn));
  }
  else {
    digitalWrite(arpOut, arpPulse);
  }
  // Read  midi
    MIDI.read();
if (usbMIDI.read()) {
    // get the USB MIDI message, defined by these 5 numbers (except SysEX)
    byte type = usbMIDI.getType();
    byte channel = usbMIDI.getChannel();
    byte data1 = usbMIDI.getData1();
    byte data2 = usbMIDI.getData2();
    byte cable = 0;

    // forward this message to 1 of the 3 Serial MIDI OUT ports
    if (type != usbMIDI.SystemExclusive) {
      // Normal messages, first we must convert usbMIDI's type (an ordinary
      // byte) to the MIDI library's special MidiType.
      midi::MidiType mtype = (midi::MidiType)type;

      // Then simply give the data to the MIDI library send()
      switch (cable) {
        case 0:
          MIDI.send(mtype, data1, data2, channel);
          break;
        case 1:
          break;
        case 2:
          break;
      }

    } else {
      // SysEx messages are special.  The message length is given in data1 & data2
      unsigned int SysExLength = data1 + data2 * 256;
      switch (cable) {
        case 0:
          MIDI.sendSysEx(SysExLength, usbMIDI.getSysExArray(), true);
          break;
        case 1:
          break;
        case 2:
          break;
      }
    }
    
  }
}

void runningKeyBoardScanner()
{
  GPIOC_PDOR = 255;
  bool allDone = false;
  while (!allDone)
  {
    byte bRead =  (GPIOD_PDIR & 0xFF) & B00001111;
    byte kbRead = (GPIOB_PDIR & 0xFF) & B00001111;
    kbRead      = (kbRead | (GPIOD_PDIR & 0xFF) & B11110000);
    if      (bRead == B00000111) {
      allDone = true;
      GPIOC_PDOR = 255;
    }
    else if (bRead == B00001111)  {
      GPIOC_PDOR = keyArray[7] & kbRead;
      kbReadArray[7] = kbRead;
    }
    else if (bRead == B00001110)  {
      GPIOC_PDOR = keyArray[6] & kbRead;
      kbReadArray[6] = kbRead;
    }
    else if (bRead == B00001101)  {
      GPIOC_PDOR = keyArray[5] & kbRead;
      kbReadArray[5] = kbRead;
    }
    else if (bRead == B00001100)  {
      GPIOC_PDOR = keyArray[4] & kbRead;
      kbReadArray[4] = kbRead;
    }
    else if (bRead == B00001011)  {
      GPIOC_PDOR = keyArray[3] & kbRead;
      kbReadArray[3] = kbRead;
    }
    else if (bRead == B00001010)  {
      GPIOC_PDOR = keyArray[2] & kbRead;
      kbReadArray[2] = kbRead;
    }
    else if (bRead == B00001001)  {
      GPIOC_PDOR = keyArray[1] & kbRead;
      kbReadArray[1] = kbRead;
    }
    else if (bRead == B00001000)  {
      GPIOC_PDOR = keyArray[0] & kbRead;
      kbReadArray[0] = kbRead;
    }
    else {
      GPIOC_PDOR = 255;
    }
  }
  if (bootMode)
  {
    bootCounter = bootCounter - 1;
    if (bootCounter == 0)
    {
      bootMode = false;
    }
  }

  if (bootMode)
  {
    // Check arp 
    switch (kbReadArray[0]) {
      case B01111111: midiArp = false; midiClockEnd = arpPoly61; EEPROM.write(1, midiClockEnd); break;
      case B10111111: midiArp = true; midiClockEnd = arpQuarterNote ; midiClockCnt = 0; EEPROM.write(1, midiClockEnd); break;
      case B11011111: midiArp = true; midiClockEnd = arpEightNote ; midiClockCnt = 0; EEPROM.write(1, midiClockEnd); break;
      case B11101111: midiArp = true; midiClockEnd = arpSixteenthNote ; midiClockCnt = 0; EEPROM.write(1, midiClockEnd); break;
      case B11110111: midiArp = true; midiClockEnd = arpThirtyTwoNote ; midiClockCnt = 0; EEPROM.write(1, midiClockEnd); break;
      case B11111011: break;
      case B11111101: break;
      case B11111110: break;
    }
    // Check midi receive channel (1-16 - Omni
    switch (kbReadArray[3]) {
      case B01111111: midiChannel = 1; EEPROM.write(0, midiChannel); break;
      case B10111111: midiChannel = 2; EEPROM.write(0, midiChannel); break;
      case B11011111: midiChannel = 3; EEPROM.write(0, midiChannel); break;
      case B11101111: midiChannel = 4; EEPROM.write(0, midiChannel); break;
      case B11110111: midiChannel = 5; EEPROM.write(0, midiChannel); break;
      case B11111011: midiChannel = 6; EEPROM.write(0, midiChannel); break;
      case B11111101: midiChannel = 7; EEPROM.write(0, midiChannel); break;
      case B11111110: midiChannel = 8; EEPROM.write(0, midiChannel); break;
    }
    switch (kbReadArray[4]) {
      case B01111111: midiChannel = 9; EEPROM.write(0, midiChannel); break;
      case B10111111: midiChannel = 10; EEPROM.write(0, midiChannel); break;
      case B11011111: midiChannel = 11; EEPROM.write(0, midiChannel); break;
      case B11101111: midiChannel = 12; EEPROM.write(0, midiChannel); break;
      case B11110111: midiChannel = 13; EEPROM.write(0, midiChannel); break;
      case B11111011: midiChannel = 14; EEPROM.write(0, midiChannel); break;
      case B11111101: midiChannel = 15; EEPROM.write(0, midiChannel); break;
      case B11111110: midiChannel = 16; EEPROM.write(0, midiChannel); break;
    }
    switch (kbReadArray[5]) {
      case B01111111: midiChannel = 0; EEPROM.write(0, midiChannel); break;
      case B10111111: midiChannel = 10; break;
      case B11011111: midiChannel = 11; break;
      case B11101111: midiChannel = 12; break;
      case B11110111: midiChannel = 13; break;
      case B11111011: midiChannel = 14; break;
      case B11111101: midiChannel = 15; break;
      case B11111110: midiChannel = 16; break;
    }

  }
}
void myNoteOn(byte channel, byte note, byte velocity) {
  if (channel == 0 || channel == midiChannel) {
  keyArray[(keyArrayNum[note])] = keyArray[(keyArrayNum[note])] & keyArrayMaskOn[(bitPos[note])];
  }
}

void myNoteOff(byte channel, byte note, byte velocity) {
    if (channel == 0 || channel == midiChannel) {
  keyArray[(keyArrayNum[note])] = keyArray[(keyArrayNum[note])] | keyArrayMaskOff[(bitPos[note])];
    }
}

void myControlChange(byte channel, byte control, byte value) {

}

void myClock() {
  midiClockCnt++;
  if (midiClockCnt >= midiClockEnd) {
    midiClockCnt = 0;
    arpPulse = true;
  }
  else {
    arpPulse = false;
  }
}

void myStart() {
  midiClockCnt = 0;
}

void myContinue() {
  midiClockCnt = 0;
}

void myStop() {
  midiClockCnt = 0;
}

void myProgramChange(byte channel, byte number)
{
    if (channel == 0 || channel == midiChannel) {
  switch (number) {
    case 0: midiArp = false; break;
    case 1: midiArp = true; midiClockEnd = arpQuarterNote ; midiClockCnt = 0; break;
    case 2: midiArp = true; midiClockEnd = arpEightNote ; midiClockCnt = 0; break;
    case 3: midiArp = true; midiClockEnd = arpSixteenthNote ; midiClockCnt = 0; break;
    case 4: midiArp = true; midiClockEnd = arpThirtyTwoNote ; midiClockCnt = 0; break;
  }
    }
}
