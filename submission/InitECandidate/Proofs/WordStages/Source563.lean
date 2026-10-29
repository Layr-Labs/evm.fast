import InitECandidate.Proofs.WordStages.Source547
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody563_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody563_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody563_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 256#64]),
        Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody563_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 256#64]),
        Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody563_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody563_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody563_0, 563, 2)) (some 560) ([8, 2, 6]) (some (8, sourceBody563_4, 563, 3))

def sourceBody563_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody563_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody563_5 sourceBody563_6

def sourceBody563_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody563_7 sourceBody563_0

def sourceBody563_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody563_3 sourceBody563_8

def sourceBody563_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody563_2 sourceBody563_9

def sourceBody563_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody563_1 sourceBody563_10

def sourceBody563_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody563_0 sourceBody563_11

def sourceBody563_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody563_0 sourceBody563_12

def sourceBody563_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody563_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody563_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody563_15 sourceBody563_0

def sourceBody563_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody563_14 sourceBody563_16

def sourceBody563_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody563_13 sourceBody563_17

def source563 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (563, 1, sourceBody563_18)
end InitECandidate.Proofs.WordStages
