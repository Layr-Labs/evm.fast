import InitECandidate.Proofs.WordStages.Source378
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody394_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody394_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody394_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody394_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody394_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody394_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody394_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 136#64]))

def sourceBody394_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody394_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody394_0, 394, 2)) (some 393) ([12, 4, 10, 8, 14, 2]) (some (12, sourceBody394_7, 394, 3))

def sourceBody394_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody394_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody394_8 sourceBody394_9

def sourceBody394_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody394_10 sourceBody394_0

def sourceBody394_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody394_6 sourceBody394_11

def sourceBody394_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody394_5 sourceBody394_12

def sourceBody394_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody394_4 sourceBody394_13

def sourceBody394_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody394_3 sourceBody394_14

def sourceBody394_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody394_2 sourceBody394_15

def sourceBody394_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody394_1 sourceBody394_16

def sourceBody394_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody394_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody394_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody394_19 sourceBody394_0

def sourceBody394_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody394_18 sourceBody394_20

def sourceBody394_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody394_17 sourceBody394_21

def sourceBody394_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody394_0 sourceBody394_22

def sourceBody394_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody394_0 sourceBody394_23

def source394 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (394, 1, sourceBody394_24)
end InitECandidate.Proofs.WordStages
