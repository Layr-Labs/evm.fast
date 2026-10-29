import InitECandidate.Proofs.WordStages.Source517
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody533_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody533_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody533_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody533_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody533_0, 533, 2)) (some 470) ([4]) (some (4, sourceBody533_2, 533, 3))

def sourceBody533_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody533_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody533_3 sourceBody533_4

def sourceBody533_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody533_5 sourceBody533_0

def sourceBody533_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody533_1 sourceBody533_6

def sourceBody533_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody533_0 sourceBody533_7

def sourceBody533_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody533_0 sourceBody533_8

def sourceBody533_10 : WordLangProgHOL (BitVec 64) :=
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
        Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody533_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody533_0, 533, 4)) (some 477) ([4]) (some (4, sourceBody533_2, 533, 5))

def sourceBody533_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody533_11 sourceBody533_4

def sourceBody533_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody533_12 sourceBody533_0

def sourceBody533_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody533_10 sourceBody533_13

def sourceBody533_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody533_0 sourceBody533_14

def sourceBody533_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody533_0 sourceBody533_15

def sourceBody533_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody533_9 sourceBody533_16

def sourceBody533_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody533_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody533_0, 533, 6)) (some 490) ([4]) (some (4, sourceBody533_2, 533, 7))

def sourceBody533_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody533_19 sourceBody533_4

def sourceBody533_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody533_20 sourceBody533_0

def sourceBody533_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody533_18 sourceBody533_21

def sourceBody533_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody533_0 sourceBody533_22

def sourceBody533_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody533_0 sourceBody533_23

def sourceBody533_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody533_17 sourceBody533_24

def sourceBody533_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody533_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def sourceBody533_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody533_27 sourceBody533_0

def sourceBody533_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody533_26 sourceBody533_28

def sourceBody533_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody533_25 sourceBody533_29

def source533 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (533, 1, sourceBody533_30)
end InitECandidate.Proofs.WordStages
