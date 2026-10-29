import InitECandidate.Proofs.WordStages.Source543
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody559_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody559_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody559_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody559_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody559_0, 559, 2)) (some 470) ([4]) (some (4, sourceBody559_2, 559, 3))

def sourceBody559_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody559_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody559_3 sourceBody559_4

def sourceBody559_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody559_5 sourceBody559_0

def sourceBody559_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody559_1 sourceBody559_6

def sourceBody559_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody559_0 sourceBody559_7

def sourceBody559_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody559_0 sourceBody559_8

def sourceBody559_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.load
                (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                  [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                      [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                          (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                          (Flapjack.WordLangExpHOL.const 1#64)],
                    Flapjack.WordLangExpHOL.const 256#64]),
              Flapjack.WordLangExpHOL.const 112#64]),
        Flapjack.WordLangExpHOL.const 96#64]))

def sourceBody559_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody559_0, 559, 4)) (some 477) ([4]) (some (4, sourceBody559_2, 559, 5))

def sourceBody559_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody559_11 sourceBody559_4

def sourceBody559_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody559_12 sourceBody559_0

def sourceBody559_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody559_10 sourceBody559_13

def sourceBody559_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody559_0 sourceBody559_14

def sourceBody559_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody559_0 sourceBody559_15

def sourceBody559_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody559_9 sourceBody559_16

def sourceBody559_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody559_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody559_0, 559, 6)) (some 490) ([4]) (some (4, sourceBody559_2, 559, 7))

def sourceBody559_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody559_19 sourceBody559_4

def sourceBody559_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody559_20 sourceBody559_0

def sourceBody559_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody559_18 sourceBody559_21

def sourceBody559_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody559_0 sourceBody559_22

def sourceBody559_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody559_0 sourceBody559_23

def sourceBody559_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody559_17 sourceBody559_24

def sourceBody559_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody559_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def sourceBody559_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody559_27 sourceBody559_0

def sourceBody559_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody559_26 sourceBody559_28

def sourceBody559_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody559_25 sourceBody559_29

def source559 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (559, 1, sourceBody559_30)
end InitECandidate.Proofs.WordStages
