import InitECandidate.Proofs.WordStages.Source583
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody599_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody599_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody599_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody599_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody599_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.lookup (Flapjack.WordStore.temp 0#5))

def sourceBody599_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_4 sourceBody599_0

def sourceBody599_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_5 sourceBody599_0

def sourceBody599_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody599_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody599_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody599_0, 599, 3)) (some 597) ([8]) (some (8, sourceBody599_8, 599, 4))

def sourceBody599_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_9 sourceBody599_3

def sourceBody599_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_10 sourceBody599_0

def sourceBody599_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_7 sourceBody599_11

def sourceBody599_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_0 sourceBody599_12

def sourceBody599_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_0 sourceBody599_13

def sourceBody599_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_6 sourceBody599_14

def sourceBody599_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_3 sourceBody599_15

def sourceBody599_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.imm 8#64) sourceBody599_2 sourceBody599_16

def sourceBody599_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_17 sourceBody599_3

def sourceBody599_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody599_0, 599, 2)) (some 598) ([]) (some (2, sourceBody599_18, 599, 5))

def sourceBody599_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_19 sourceBody599_3

def sourceBody599_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_20 sourceBody599_0

def sourceBody599_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody599_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody599_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody599_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody599_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 6) sourceBody599_24 sourceBody599_25

def sourceBody599_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_26 sourceBody599_3

def sourceBody599_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody599_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 288#64]),
      Flapjack.WordLangExpHOL.const 32#64])

def sourceBody599_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody599_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 2) 6

def sourceBody599_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_31 sourceBody599_0

def sourceBody599_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_30 sourceBody599_32

def sourceBody599_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_33 sourceBody599_0

def sourceBody599_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_24 sourceBody599_34

def sourceBody599_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_0 sourceBody599_35

def sourceBody599_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_29 sourceBody599_36

def sourceBody599_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_0 sourceBody599_37

def sourceBody599_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody599_38 sourceBody599_0

def sourceBody599_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_39 sourceBody599_3

def sourceBody599_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_40 sourceBody599_0

def sourceBody599_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_28 sourceBody599_41

def sourceBody599_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_27 sourceBody599_42

def sourceBody599_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_23 sourceBody599_43

def sourceBody599_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_22 sourceBody599_44

def sourceBody599_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_21 sourceBody599_45

def sourceBody599_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody599_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def sourceBody599_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_48 sourceBody599_0

def sourceBody599_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_47 sourceBody599_49

def sourceBody599_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_46 sourceBody599_50

def sourceBody599_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_1 sourceBody599_51

def sourceBody599_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_0 sourceBody599_52

def sourceBody599_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_0 sourceBody599_53

def sourceBody599_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody599_0 sourceBody599_54

def source599 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (599, 1, sourceBody599_55)
end InitECandidate.Proofs.WordStages
