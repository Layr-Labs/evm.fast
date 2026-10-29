import InitECandidate.Proofs.WordStages.Source511
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody527_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody527_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody527_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody527_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody527_0, 527, 2)) (some 470) ([4]) (some (4, sourceBody527_2, 527, 3))

def sourceBody527_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody527_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody527_3 sourceBody527_4

def sourceBody527_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody527_5 sourceBody527_0

def sourceBody527_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody527_1 sourceBody527_6

def sourceBody527_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody527_0 sourceBody527_7

def sourceBody527_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody527_0 sourceBody527_8

def sourceBody527_10 : WordLangProgHOL (BitVec 64) :=
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
        Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody527_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody527_0, 527, 4)) (some 477) ([4]) (some (4, sourceBody527_2, 527, 5))

def sourceBody527_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody527_11 sourceBody527_4

def sourceBody527_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody527_12 sourceBody527_0

def sourceBody527_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody527_10 sourceBody527_13

def sourceBody527_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody527_0 sourceBody527_14

def sourceBody527_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody527_0 sourceBody527_15

def sourceBody527_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody527_9 sourceBody527_16

def sourceBody527_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody527_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody527_0, 527, 6)) (some 490) ([4]) (some (4, sourceBody527_2, 527, 7))

def sourceBody527_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody527_19 sourceBody527_4

def sourceBody527_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody527_20 sourceBody527_0

def sourceBody527_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody527_18 sourceBody527_21

def sourceBody527_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody527_0 sourceBody527_22

def sourceBody527_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody527_0 sourceBody527_23

def sourceBody527_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody527_17 sourceBody527_24

def sourceBody527_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody527_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def sourceBody527_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody527_27 sourceBody527_0

def sourceBody527_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody527_26 sourceBody527_28

def sourceBody527_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody527_25 sourceBody527_29

def source527 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (527, 1, sourceBody527_30)
end InitECandidate.Proofs.WordStages
