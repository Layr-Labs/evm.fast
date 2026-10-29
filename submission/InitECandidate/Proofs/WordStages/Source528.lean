import InitECandidate.Proofs.WordStages.Source512
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody528_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody528_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody528_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody528_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody528_0, 528, 2)) (some 470) ([4]) (some (4, sourceBody528_2, 528, 3))

def sourceBody528_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody528_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody528_3 sourceBody528_4

def sourceBody528_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody528_5 sourceBody528_0

def sourceBody528_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody528_1 sourceBody528_6

def sourceBody528_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody528_0 sourceBody528_7

def sourceBody528_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody528_0 sourceBody528_8

def sourceBody528_10 : WordLangProgHOL (BitVec 64) :=
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
        Flapjack.WordLangExpHOL.const 64#64]))

def sourceBody528_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody528_0, 528, 4)) (some 477) ([4]) (some (4, sourceBody528_2, 528, 5))

def sourceBody528_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody528_11 sourceBody528_4

def sourceBody528_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody528_12 sourceBody528_0

def sourceBody528_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody528_10 sourceBody528_13

def sourceBody528_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody528_0 sourceBody528_14

def sourceBody528_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody528_0 sourceBody528_15

def sourceBody528_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody528_9 sourceBody528_16

def sourceBody528_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody528_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody528_0, 528, 6)) (some 490) ([4]) (some (4, sourceBody528_2, 528, 7))

def sourceBody528_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody528_19 sourceBody528_4

def sourceBody528_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody528_20 sourceBody528_0

def sourceBody528_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody528_18 sourceBody528_21

def sourceBody528_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody528_0 sourceBody528_22

def sourceBody528_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody528_0 sourceBody528_23

def sourceBody528_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody528_17 sourceBody528_24

def sourceBody528_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody528_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def sourceBody528_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody528_27 sourceBody528_0

def sourceBody528_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody528_26 sourceBody528_28

def sourceBody528_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody528_25 sourceBody528_29

def source528 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (528, 1, sourceBody528_30)
end InitECandidate.Proofs.WordStages
