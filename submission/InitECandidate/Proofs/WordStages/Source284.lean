import InitECandidate.Proofs.WordStages.Source268
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody284_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 120#64]))

def sourceBody284_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody284_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody284_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody284_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 2) sourceBody284_2 sourceBody284_3

def sourceBody284_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody284_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_4 sourceBody284_5

def sourceBody284_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody284_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody284_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody284_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody284_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_9 sourceBody284_10

def sourceBody284_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_8 sourceBody284_11

def sourceBody284_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody284_12 sourceBody284_10

def sourceBody284_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_13 sourceBody284_5

def sourceBody284_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_14 sourceBody284_10

def sourceBody284_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_7 sourceBody284_15

def sourceBody284_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_6 sourceBody284_16

def sourceBody284_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_1 sourceBody284_17

def sourceBody284_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_0 sourceBody284_18

def sourceBody284_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody284_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody284_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody284_10, 284, 2)) (some 68) ([8]) (some (8, sourceBody284_21, 284, 3))

def sourceBody284_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_22 sourceBody284_5

def sourceBody284_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_23 sourceBody284_10

def sourceBody284_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_20 sourceBody284_24

def sourceBody284_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 120#64])

def sourceBody284_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 4)

def sourceBody284_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody284_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 6

def sourceBody284_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_29 sourceBody284_10

def sourceBody284_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_28 sourceBody284_30

def sourceBody284_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_31 sourceBody284_10

def sourceBody284_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_27 sourceBody284_32

def sourceBody284_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_10 sourceBody284_33

def sourceBody284_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_26 sourceBody284_34

def sourceBody284_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_10 sourceBody284_35

def sourceBody284_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_25 sourceBody284_36

def sourceBody284_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_10 sourceBody284_37

def sourceBody284_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_10 sourceBody284_38

def sourceBody284_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_19 sourceBody284_39

def sourceBody284_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody284_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody284_10, 284, 4)) (some 78) ([8, 2]) (some (8, sourceBody284_21, 284, 5))

def sourceBody284_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_42 sourceBody284_5

def sourceBody284_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_43 sourceBody284_10

def sourceBody284_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_41 sourceBody284_44

def sourceBody284_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_0 sourceBody284_45

def sourceBody284_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_10 sourceBody284_46

def sourceBody284_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_10 sourceBody284_47

def sourceBody284_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_40 sourceBody284_48

def sourceBody284_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody284_49 sourceBody284_12

def source284 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (284, 1, sourceBody284_50)
end InitECandidate.Proofs.WordStages
