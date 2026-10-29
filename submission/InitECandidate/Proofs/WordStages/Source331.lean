import InitECandidate.Proofs.WordStages.Source315
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody331_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody331_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody331_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody331_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody331_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody331_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody331_6 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 10) sourceBody331_4 sourceBody331_5

def sourceBody331_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody331_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_6 sourceBody331_7

def sourceBody331_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody331_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody331_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 128#64]))

def sourceBody331_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody331_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody331_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody331_0, 331, 2)) (some 77) ([12, 10, 16]) (some (12, sourceBody331_13, 331, 3))

def sourceBody331_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_14 sourceBody331_7

def sourceBody331_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_15 sourceBody331_0

def sourceBody331_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_12 sourceBody331_16

def sourceBody331_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_11 sourceBody331_17

def sourceBody331_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_10 sourceBody331_18

def sourceBody331_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_0 sourceBody331_19

def sourceBody331_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_0 sourceBody331_20

def sourceBody331_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody331_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody331_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_23 sourceBody331_0

def sourceBody331_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_22 sourceBody331_24

def sourceBody331_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_21 sourceBody331_25

def sourceBody331_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody331_26 sourceBody331_0

def sourceBody331_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_27 sourceBody331_7

def sourceBody331_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_28 sourceBody331_0

def sourceBody331_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_9 sourceBody331_29

def sourceBody331_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_8 sourceBody331_30

def sourceBody331_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_3 sourceBody331_31

def sourceBody331_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_2 sourceBody331_32

def sourceBody331_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody331_0, 331, 4)) (some 330) ([12]) (some (12, sourceBody331_13, 331, 5))

def sourceBody331_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_34 sourceBody331_7

def sourceBody331_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_35 sourceBody331_0

def sourceBody331_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_2 sourceBody331_36

def sourceBody331_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody331_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody331_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody331_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody331_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody331_0, 331, 6)) (some 77) ([10, 16, 6]) (some (10, sourceBody331_41, 331, 7))

def sourceBody331_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_42 sourceBody331_7

def sourceBody331_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_43 sourceBody331_0

def sourceBody331_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_40 sourceBody331_44

def sourceBody331_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_39 sourceBody331_45

def sourceBody331_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_38 sourceBody331_46

def sourceBody331_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_0 sourceBody331_47

def sourceBody331_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_0 sourceBody331_48

def sourceBody331_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody331_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_50 sourceBody331_0

def sourceBody331_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_5 sourceBody331_51

def sourceBody331_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_49 sourceBody331_52

def sourceBody331_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_37 sourceBody331_53

def sourceBody331_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_0 sourceBody331_54

def sourceBody331_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_0 sourceBody331_55

def sourceBody331_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_33 sourceBody331_56

def sourceBody331_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_1 sourceBody331_57

def sourceBody331_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody331_0 sourceBody331_58

def source331 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (331, 3, sourceBody331_59)
end InitECandidate.Proofs.WordStages
