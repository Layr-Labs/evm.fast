import InitECandidate.Proofs.WordStages.Source546
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody562_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody562_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody562_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody562_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody562_0, 562, 2)) (some 470) ([4]) (some (4, sourceBody562_2, 562, 3))

def sourceBody562_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody562_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody562_3 sourceBody562_4

def sourceBody562_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody562_5 sourceBody562_0

def sourceBody562_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody562_1 sourceBody562_6

def sourceBody562_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody562_0 sourceBody562_7

def sourceBody562_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody562_0 sourceBody562_8

def sourceBody562_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
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

def sourceBody562_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody562_0, 562, 4)) (some 477) ([4]) (some (4, sourceBody562_2, 562, 5))

def sourceBody562_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody562_11 sourceBody562_4

def sourceBody562_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody562_12 sourceBody562_0

def sourceBody562_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody562_10 sourceBody562_13

def sourceBody562_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody562_0 sourceBody562_14

def sourceBody562_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody562_0 sourceBody562_15

def sourceBody562_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody562_9 sourceBody562_16

def sourceBody562_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody562_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody562_0, 562, 6)) (some 490) ([4]) (some (4, sourceBody562_2, 562, 7))

def sourceBody562_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody562_19 sourceBody562_4

def sourceBody562_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody562_20 sourceBody562_0

def sourceBody562_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody562_18 sourceBody562_21

def sourceBody562_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody562_0 sourceBody562_22

def sourceBody562_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody562_0 sourceBody562_23

def sourceBody562_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody562_17 sourceBody562_24

def sourceBody562_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody562_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def sourceBody562_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody562_27 sourceBody562_0

def sourceBody562_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody562_26 sourceBody562_28

def sourceBody562_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody562_25 sourceBody562_29

def source562 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (562, 1, sourceBody562_30)
end InitECandidate.Proofs.WordStages
