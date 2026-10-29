import InitECandidate.Proofs.WordStages.Source133
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody149_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody149_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody149_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody149_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody149_0, 149, 2)) (some 68) ([8]) (some (8, sourceBody149_2, 149, 3))

def sourceBody149_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody149_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody149_3 sourceBody149_4

def sourceBody149_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody149_5 sourceBody149_0

def sourceBody149_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody149_1 sourceBody149_6

def sourceBody149_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 48#64])

def sourceBody149_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 4)

def sourceBody149_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody149_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 6

def sourceBody149_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody149_11 sourceBody149_0

def sourceBody149_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody149_10 sourceBody149_12

def sourceBody149_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody149_13 sourceBody149_0

def sourceBody149_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody149_9 sourceBody149_14

def sourceBody149_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody149_0 sourceBody149_15

def sourceBody149_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody149_8 sourceBody149_16

def sourceBody149_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody149_0 sourceBody149_17

def sourceBody149_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody149_7 sourceBody149_18

def sourceBody149_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody149_0 sourceBody149_19

def sourceBody149_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody149_0 sourceBody149_20

def sourceBody149_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody149_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody149_0, 149, 4)) (some 68) ([8]) (some (8, sourceBody149_2, 149, 5))

def sourceBody149_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody149_23 sourceBody149_4

def sourceBody149_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody149_24 sourceBody149_0

def sourceBody149_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody149_22 sourceBody149_25

def sourceBody149_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 56#64])

def sourceBody149_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody149_27 sourceBody149_16

def sourceBody149_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody149_0 sourceBody149_28

def sourceBody149_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody149_26 sourceBody149_29

def sourceBody149_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody149_0 sourceBody149_30

def sourceBody149_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody149_0 sourceBody149_31

def sourceBody149_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody149_21 sourceBody149_32

def sourceBody149_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody149_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody149_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody149_35 sourceBody149_0

def sourceBody149_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody149_34 sourceBody149_36

def sourceBody149_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody149_33 sourceBody149_37

def source149 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (149, 1, sourceBody149_38)
end InitECandidate.Proofs.WordStages
