import InitECandidate.Proofs.WordStages.Source291
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody307_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody307_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody307_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody307_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 144#64]))

def sourceBody307_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody307_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody307_0, 307, 2)) (some 288) ([6, 10, 8]) (some (6, sourceBody307_4, 307, 3))

def sourceBody307_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody307_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody307_5 sourceBody307_6

def sourceBody307_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody307_7 sourceBody307_0

def sourceBody307_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody307_3 sourceBody307_8

def sourceBody307_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody307_2 sourceBody307_9

def sourceBody307_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody307_1 sourceBody307_10

def sourceBody307_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody307_0 sourceBody307_11

def sourceBody307_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody307_0 sourceBody307_12

def sourceBody307_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody307_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 144#64]))

def sourceBody307_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody307_17 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 306) ([0, 12, 6, 10]) (none)

def sourceBody307_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody307_17 sourceBody307_0

def sourceBody307_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody307_16 sourceBody307_18

def sourceBody307_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody307_15 sourceBody307_19

def sourceBody307_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody307_14 sourceBody307_20

def sourceBody307_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody307_13 sourceBody307_21

def source307 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (307, 3, sourceBody307_22)
end InitECandidate.Proofs.WordStages
