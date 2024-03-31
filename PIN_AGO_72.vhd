library IEEE;
use IEEE.std_logic_1164.all;  -- defines std_logic types
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Copyright (C) 2007, Peter C. Wallace, Mesa Electronics
-- http://www.mesanet.com
--
-- This program is is licensed under a disjunctive dual license giving you
-- the choice of one of the two following sets of free software/open source
-- licensing terms:
--
--    * GNU General Public License (GPL), version 2.0 or later
--    * 3-clause BSD License
-- 
--
-- The GNU GPL License:
-- 
--     This program is free software; you can redistribute it and/or modify
--     it under the terms of the GNU General Public License as published by
--     the Free Software Foundation; either version 2 of the License, or
--     (at your option) any later version.
-- 
--     This program is distributed in the hope that it will be useful,
--     but WITHOUT ANY WARRANTY; without even the implied warranty of
--     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--     GNU General Public License for more details.
-- 
--     You should have received a copy of the GNU General Public License
--     along with this program; if not, write to the Free Software
--     Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301 USA
-- 
-- 
-- The 3-clause BSD License:
-- 
--     Redistribution and use in source and binary forms, with or without
--     modification, are permitted provided that the following conditions
--     are met:
-- 
--   * Redistributions of source code must retain the above copyright
--     notice, this list of conditions and the following disclaimer.
-- 
--   * Redistributions in binary form must reproduce the above
--     copyright notice, this list of conditions and the following
--     disclaimer in the documentation and/or other materials
--     provided with the distribution.
-- 
--   * Neither the name of Mesa Electronics nor the names of its
--     contributors may be used to endorse or promote products
--     derived from this software without specific prior written
--     permission.
-- 
-- 
-- Disclaimer:
-- 
--     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
--     "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
--     LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
--     FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
--     COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
--     INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
--     BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
--     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
--     CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
--     LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
--     ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
--     POSSIBILITY OF SUCH DAMAGE.
-- 

use work.IDROMConst.all;

package PIN_AGO_72 is
   constant ModuleID : ModuleIDType :=( 
      (WatchDogTag,  x"00",   ClockLowTag,   x"01",   WatchDogTimeAddr&PadT,     WatchDogNumRegs,     x"00",   WatchDogMPBitMask),
      (IOPortTag,    x"00",   ClockLowTag,   x"03",   PortAddr&PadT,             IOPortNumRegs,       x"00",   IOPortMPBitMask),
      (QcountTag,    x"02",   ClockLowTag,   x"08",   QcounterAddr&PadT,         QCounterNumRegs,     x"00",   QCounterMPBitMask),
      (PWMTag,       x"00",   ClockHighTag,  x"00",   PWMValAddr&PadT,           PWMNumRegs,          x"00",   PWMMPBitMask),
      (StepGenTag,   x"02",   ClockLowTag,   x"06",   StepGenRateAddr&PadT,      StepGenNumRegs,      x"00",   StepGenMPBitMask),
      (LEDTag,       x"00",   ClockLowTag,   x"01",   LEDAddr&PadT,              LEDNumRegs,          x"00",   LEDMPBitMask),
      (NullTag,      x"00",   NullTag,       x"00",   NullAddr&PadT,             x"00",               x"00",   x"00000000"),
      (NullTag,      x"00",   NullTag,       x"00",   NullAddr&PadT,             x"00",               x"00",   x"00000000"),
      (NullTag,      x"00",   NullTag,       x"00",   NullAddr&PadT,             x"00",               x"00",   x"00000000"),
      (NullTag,      x"00",   NullTag,       x"00",   NullAddr&PadT,             x"00",               x"00",   x"00000000"),
      (NullTag,      x"00",   NullTag,       x"00",   NullAddr&PadT,             x"00",               x"00",   x"00000000"),
      (NullTag,      x"00",   NullTag,       x"00",   NullAddr&PadT,             x"00",               x"00",   x"00000000"),
      (NullTag,      x"00",   NullTag,       x"00",   NullAddr&PadT,             x"00",               x"00",   x"00000000"),
      (NullTag,      x"00",   NullTag,       x"00",   NullAddr&PadT,             x"00",               x"00",   x"00000000"),
      (NullTag,      x"00",   NullTag,       x"00",   NullAddr&PadT,             x"00",               x"00",   x"00000000"),
      (NullTag,      x"00",   NullTag,       x"00",   NullAddr&PadT,             x"00",               x"00",   x"00000000"),
      (NullTag,      x"00",   NullTag,       x"00",   NullAddr&PadT,             x"00",               x"00",   x"00000000"),
      (NullTag,      x"00",   NullTag,       x"00",   NullAddr&PadT,             x"00",               x"00",   x"00000000"),
      (NullTag,      x"00",   NullTag,       x"00",   NullAddr&PadT,             x"00",               x"00",   x"00000000"),
      (NullTag,      x"00",   NullTag,       x"00",   NullAddr&PadT,             x"00",               x"00",   x"00000000"),
      (NullTag,      x"00",   NullTag,       x"00",   NullAddr&PadT,             x"00",               x"00",   x"00000000"),
      (NullTag,      x"00",   NullTag,       x"00",   NullAddr&PadT,             x"00",               x"00",   x"00000000"),
      (NullTag,      x"00",   NullTag,       x"00",   NullAddr&PadT,             x"00",               x"00",   x"00000000"),
      (NullTag,      x"00",   NullTag,       x"00",   NullAddr&PadT,             x"00",               x"00",   x"00000000"),
      (NullTag,      x"00",   NullTag,       x"00",   NullAddr&PadT,             x"00",               x"00",   x"00000000"),
      (NullTag,      x"00",   NullTag,       x"00",   NullAddr&PadT,             x"00",               x"00",   x"00000000"),
      (NullTag,      x"00",   NullTag,       x"00",   NullAddr&PadT,             x"00",               x"00",   x"00000000"),
      (NullTag,      x"00",   NullTag,       x"00",   NullAddr&PadT,             x"00",               x"00",   x"00000000"),
      (NullTag,      x"00",   NullTag,       x"00",   NullAddr&PadT,             x"00",               x"00",   x"00000000"),
      (NullTag,      x"00",   NullTag,       x"00",   NullAddr&PadT,             x"00",               x"00",   x"00000000"),
      (NullTag,      x"00",   NullTag,       x"00",   NullAddr&PadT,             x"00",               x"00",   x"00000000"),
      (NullTag,      x"00",   NullTag,       x"00",   NullAddr&PadT,             x"00",               x"00",   x"00000000")
      );
   
   constant PinDesc : PinDescType :=(
--    Base func  sec unit sec func   sec pin
      -- OUTPUTS
      IOPortTag & x"00" & PWMTag & PWMAOutPin,           -- I/O 0    PWM OUT
      IOPortTag & x"00" & PWMTag & PWMBDirPin,           -- I/O 1    PWM DIR
      IOPortTag & x"00" & PWMTag & PWMCEnaPin,           -- I/O 2    PWM ENA
      
      IOPortTag & x"00" & StepGenTag & StepGenStepPin,   -- I/O 3    X-STEP
      IOPortTag & x"00" & StepGenTag & StepGenDirPin,    -- I/O 4    X-DIR
      IOPortTag & x"00" & NullTag & NullPin,             -- I/O 5    X-ERROR
      
      IOPortTag & x"01" & StepGenTag & StepGenStepPin,   -- I/O 6    Y-STEP
      IOPortTag & x"01" & StepGenTag & StepGenDirPin,    -- I/O 7    Y-DIR
      IOPortTag & x"01" & NullTag & NullPin,             -- I/O 8    Y-ERROR
      
      IOPortTag & x"02" & StepGenTag & StepGenStepPin,   -- I/O 9    Z-STEP
      IOPortTag & x"02" & StepGenTag & StepGenDirPin,    -- I/O 10   Z-DIR
      IOPortTag & x"02" & NullTag & NullPin,             -- I/O 11   Z-ERROR
      
      IOPortTag & x"03" & StepGenTag & StepGenStepPin,   -- I/O 12   A-STEP
      IOPortTag & x"03" & StepGenTag & StepGenDirPin,    -- I/O 13   A-DIR
      IOPortTag & x"03" & NullTag & NullPin,             -- I/O 14   A-ERROR
      
      IOPortTag & x"04" & StepGenTag & StepGenStepPin,   -- I/O 15   5B-STEP
      IOPortTag & x"04" & StepGenTag & StepGenDirPin,    -- I/O 16   B-DIR
      IOPortTag & x"04" & NullTag & NullPin,             -- I/O 17   B-ERROR
      
      IOPortTag & x"05" & StepGenTag & StepGenStepPin,   -- I/O 18   C-STEP    
      IOPortTag & x"05" & StepGenTag & StepGenDirPin,    -- I/O 19   C-DIR
      IOPortTag & x"05" & NullTag & NullPin,             -- I/O 20   C-ERROR
      
      IOPortTag & x"00" & NullTag & NullPin,             -- I/O 21   IO OUT
      IOPortTag & x"00" & NullTag & NullPin,             -- I/O 22   IO OUT
      IOPortTag & x"00" & NullTag & NullPin,             -- I/O 23   IO OUT

      -- INPUTS
               
      IOPortTag & x"00" & QCountTag & QCountQAPin,       -- I/O 24   X-ENC-A  
      IOPortTag & x"00" & QCountTag & QCountQBPin,       -- I/O 25   X-ENC-B
      IOPortTag & x"00" & QCountTag & QCountIdxPin,      -- I/O 26   X-ENC-IDX

      IOPortTag & x"01" & QCountTag & QCountQAPin,       -- I/O 27   Y-ENC-A
      IOPortTag & x"01" & QCountTag & QCountQBPin,       -- I/O 28   Y-ENC-B
      IOPortTag & x"01" & QCountTag & QCountIdxPin,      -- I/O 29   Y-ENC-IDX

      IOPortTag & x"02" & QCountTag & QCountQAPin,       -- I/O 30   Z-ENC-A
      IOPortTag & x"02" & QCountTag & QCountQBPin,       -- I/O 31   Z-ENC-B
      IOPortTag & x"02" & QCountTag & QCountIdxPin,      -- I/O 32   Z-ENC-IDX

      IOPortTag & x"03" & QCountTag & QCountQAPin,       -- I/O 33   A-ENC-A
      IOPortTag & x"03" & QCountTag & QCountQBPin,       -- I/O 34   A-ENC-B
      IOPortTag & x"03" & QCountTag & QCountIdxPin,      -- I/O 35   A-ENC-IDX

      IOPortTag & x"04" & QCountTag & QCountQAPin,       -- I/O 36   B-ENC-A
      IOPortTag & x"04" & QCountTag & QCountQBPin,       -- I/O 37   B-ENC-B
      IOPortTag & x"04" & QCountTag & QCountIdxPin,      -- I/O 38   B-ENC-IDX

      IOPortTag & x"05" & QCountTag & QCountQAPin,       -- I/O 39   C-ENC-A
      IOPortTag & x"05" & QCountTag & QCountQBPin,       -- I/O 40   C-ENC-B
      IOPortTag & x"05" & QCountTag & QCountIdxPin,      -- I/O 41   C-ENC-IDX
      
      IOPortTag & x"06" & QCountTag & QCountProbePin,    -- I/O 42   ENC 6 PROBE
      IOPortTag & x"07" & QCountTag & QCountProbePin,    -- I/O 43   ENC 7 PROBE
      
      IOPortTag & x"00" & NullTag & NullPin,             -- I/O 44   IO IN
      IOPortTag & x"00" & NullTag & NullPin,             -- I/O 45   IO IN
      IOPortTag & x"00" & NullTag & NullPin,             -- I/O 46   IO IN
      IOPortTag & x"00" & NullTag & NullPin,             -- I/O 47   IO IN
      IOPortTag & x"00" & NullTag & NullPin,             -- I/O 48   IO IN
      IOPortTag & x"00" & NullTag & NullPin,             -- I/O 49   IO IN

      IOPortTag & x"00" & NullTag & NullPin,             -- I/O 50   IO IN
      IOPortTag & x"00" & NullTag & NullPin,             -- I/O 51   IO IN
      IOPortTag & x"00" & NullTag & NullPin,             -- I/O 52   IO IN
      IOPortTag & x"00" & NullTag & NullPin,             -- I/O 53   IO IN
      IOPortTag & x"00" & NullTag & NullPin,             -- I/O 54   IO IN    
      IOPortTag & x"00" & NullTag & NullPin,             -- I/O 55   IO IN
      IOPortTag & x"00" & NullTag & NullPin,             -- I/O 56   IO IN
      IOPortTag & x"00" & NullTag & NullPin,             -- I/O 57   IO IN    
      IOPortTag & x"00" & NullTag & NullPin,             -- I/O 58   IO IN    
      IOPortTag & x"00" & NullTag & NullPin,             -- I/O 59   IO IN
      
      IOPortTag & x"00" & NullTag & NullPin,             -- I/O 60   IO IN
      IOPortTag & x"00" & NullTag & NullPin,             -- I/O 61   IO IN
      IOPortTag & x"00" & NullTag & NullPin,             -- I/O 62   IO IN
      
      IOPortTag & x"00" & NullTag & NullPin,             -- I/O 62   IO IN

      -- OUTPUTS
      
      IOPortTag & x"00" & NullTag & NullPin,          -- I/O 66      IO OUT
      IOPortTag & x"00" & NullTag & NullPin,          -- I/O 67      IO OUT
      
      IOPortTag & x"00" & NullTag & NullPin,          -- I/O 66      IO OUT
      IOPortTag & x"00" & NullTag & NullPin,          -- I/O 67      IO OUT
      IOPortTag & x"00" & NullTag & NullPin,          -- I/O 68      IO OUT
      IOPortTag & x"00" & NullTag & NullPin,          -- I/O 69      IO OUT
      IOPortTag & x"00" & NullTag & NullPin,          -- I/O 70      IO OUT
      IOPortTag & x"00" & NullTag & NullPin,          -- I/O 71      IO OUT

      emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin, -- added for IDROM v3
      emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
      
      emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
      emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
      emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
      emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
      emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
      emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
      emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin);

end package PIN_AGO_72;
