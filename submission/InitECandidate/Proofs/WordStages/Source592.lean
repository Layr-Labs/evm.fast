import InitECandidate.Proofs.WordStages.Source576
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody592_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody592_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody592_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody592_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody592_0, 592, 2)) (some 407) ([8]) (some (8, sourceBody592_2, 592, 3))

def sourceBody592_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody592_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_3 sourceBody592_4

def sourceBody592_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_5 sourceBody592_0

def sourceBody592_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_1 sourceBody592_6

def sourceBody592_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody592_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def sourceBody592_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody592_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([8, 16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody592_0, 592, 4)) (some 408) ([12, 20]) (some (12, sourceBody592_10, 592, 5))

def sourceBody592_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_11 sourceBody592_4

def sourceBody592_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_12 sourceBody592_0

def sourceBody592_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_9 sourceBody592_13

def sourceBody592_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_8 sourceBody592_14

def sourceBody592_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody592_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody592_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody592_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody592_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.reg 6) sourceBody592_18 sourceBody592_19

def sourceBody592_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_20 sourceBody592_4

def sourceBody592_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody592_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody592_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 16)

def sourceBody592_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody592_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody592_0, 592, 6)) (some 468) ([20, 6]) (some (20, sourceBody592_25, 592, 7))

def sourceBody592_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_26 sourceBody592_4

def sourceBody592_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_27 sourceBody592_0

def sourceBody592_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_24 sourceBody592_28

def sourceBody592_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_23 sourceBody592_29

def sourceBody592_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody592_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody592_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody592_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 14) sourceBody592_33 sourceBody592_17

def sourceBody592_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_34 sourceBody592_4

def sourceBody592_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody592_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody592_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_37 sourceBody592_0

def sourceBody592_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_19 sourceBody592_38

def sourceBody592_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody592_39 sourceBody592_0

def sourceBody592_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_40 sourceBody592_4

def sourceBody592_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_41 sourceBody592_0

def sourceBody592_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_36 sourceBody592_42

def sourceBody592_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_35 sourceBody592_43

def sourceBody592_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_32 sourceBody592_44

def sourceBody592_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_31 sourceBody592_45

def sourceBody592_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_30 sourceBody592_46

def sourceBody592_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_0 sourceBody592_47

def sourceBody592_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_0 sourceBody592_48

def sourceBody592_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody592_49 sourceBody592_0

def sourceBody592_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_50 sourceBody592_4

def sourceBody592_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_51 sourceBody592_0

def sourceBody592_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_22 sourceBody592_52

def sourceBody592_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_21 sourceBody592_53

def sourceBody592_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_17 sourceBody592_54

def sourceBody592_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_16 sourceBody592_55

def sourceBody592_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody592_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody592_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody592_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody592_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_60 sourceBody592_0

def sourceBody592_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_59 sourceBody592_61

def sourceBody592_63 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody592_62 sourceBody592_0

def sourceBody592_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_63 sourceBody592_4

def sourceBody592_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_64 sourceBody592_0

def sourceBody592_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_22 sourceBody592_65

def sourceBody592_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_21 sourceBody592_66

def sourceBody592_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_58 sourceBody592_67

def sourceBody592_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_57 sourceBody592_68

def sourceBody592_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_56 sourceBody592_69

def sourceBody592_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody592_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_71 sourceBody592_61

def sourceBody592_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_70 sourceBody592_72

def sourceBody592_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_15 sourceBody592_73

def sourceBody592_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_0 sourceBody592_74

def sourceBody592_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_0 sourceBody592_75

def sourceBody592_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_0 sourceBody592_76

def sourceBody592_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_0 sourceBody592_77

def sourceBody592_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_7 sourceBody592_78

def sourceBody592_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_0 sourceBody592_79

def sourceBody592_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody592_0 sourceBody592_80

def source592 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (592, 3, sourceBody592_81)
end InitECandidate.Proofs.WordStages
