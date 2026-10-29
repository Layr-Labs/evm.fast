import InitECandidate.Proofs.WordStages.Source387
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody403_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody403_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody403_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody403_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody403_0, 403, 2)) (some 399) ([12]) (some (12, sourceBody403_2, 403, 3))

def sourceBody403_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody403_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody403_3 sourceBody403_4

def sourceBody403_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody403_5 sourceBody403_0

def sourceBody403_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody403_1 sourceBody403_6

def sourceBody403_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody403_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 128#64]))

def sourceBody403_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody403_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody403_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody403_0, 403, 4)) (some 79) ([4, 10, 8]) (some (4, sourceBody403_11, 403, 5))

def sourceBody403_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody403_12 sourceBody403_4

def sourceBody403_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody403_13 sourceBody403_0

def sourceBody403_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody403_10 sourceBody403_14

def sourceBody403_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody403_9 sourceBody403_15

def sourceBody403_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody403_8 sourceBody403_16

def sourceBody403_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody403_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody403_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody403_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody403_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 8) sourceBody403_20 sourceBody403_21

def sourceBody403_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody403_22 sourceBody403_4

def sourceBody403_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody403_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody403_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody403_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody403_26 sourceBody403_0

def sourceBody403_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody403_25 sourceBody403_27

def sourceBody403_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody403_28 sourceBody403_0

def sourceBody403_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody403_29 sourceBody403_4

def sourceBody403_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody403_30 sourceBody403_0

def sourceBody403_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody403_24 sourceBody403_31

def sourceBody403_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody403_23 sourceBody403_32

def sourceBody403_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody403_19 sourceBody403_33

def sourceBody403_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody403_18 sourceBody403_34

def sourceBody403_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody403_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody403_36 sourceBody403_27

def sourceBody403_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody403_35 sourceBody403_37

def sourceBody403_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody403_17 sourceBody403_38

def sourceBody403_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody403_0 sourceBody403_39

def sourceBody403_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody403_0 sourceBody403_40

def sourceBody403_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody403_7 sourceBody403_41

def sourceBody403_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody403_0 sourceBody403_42

def sourceBody403_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody403_0 sourceBody403_43

def source403 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (403, 2, sourceBody403_44)
end InitECandidate.Proofs.WordStages
