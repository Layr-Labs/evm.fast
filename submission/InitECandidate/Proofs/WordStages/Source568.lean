import InitECandidate.Proofs.WordStages.Source552
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody568_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody568_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody568_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody568_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody568_0, 568, 2)) (some 470) ([4]) (some (4, sourceBody568_2, 568, 3))

def sourceBody568_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody568_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody568_3 sourceBody568_4

def sourceBody568_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody568_5 sourceBody568_0

def sourceBody568_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody568_1 sourceBody568_6

def sourceBody568_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody568_0 sourceBody568_7

def sourceBody568_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody568_0 sourceBody568_8

def sourceBody568_10 : WordLangProgHOL (BitVec 64) :=
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
        Flapjack.WordLangExpHOL.const 152#64]))

def sourceBody568_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody568_0, 568, 4)) (some 477) ([4]) (some (4, sourceBody568_2, 568, 5))

def sourceBody568_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody568_11 sourceBody568_4

def sourceBody568_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody568_12 sourceBody568_0

def sourceBody568_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody568_10 sourceBody568_13

def sourceBody568_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody568_0 sourceBody568_14

def sourceBody568_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody568_0 sourceBody568_15

def sourceBody568_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody568_9 sourceBody568_16

def sourceBody568_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody568_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody568_0, 568, 6)) (some 490) ([4]) (some (4, sourceBody568_2, 568, 7))

def sourceBody568_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody568_19 sourceBody568_4

def sourceBody568_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody568_20 sourceBody568_0

def sourceBody568_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody568_18 sourceBody568_21

def sourceBody568_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody568_0 sourceBody568_22

def sourceBody568_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody568_0 sourceBody568_23

def sourceBody568_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody568_17 sourceBody568_24

def sourceBody568_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody568_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def sourceBody568_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody568_27 sourceBody568_0

def sourceBody568_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody568_26 sourceBody568_28

def sourceBody568_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody568_25 sourceBody568_29

def source568 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (568, 1, sourceBody568_30)
end InitECandidate.Proofs.WordStages
