import InitECandidate.Proofs.WordStages.Source312
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody328_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody328_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody328_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody328_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody328_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody328_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody328_6 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 10) sourceBody328_4 sourceBody328_5

def sourceBody328_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody328_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_6 sourceBody328_7

def sourceBody328_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody328_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody328_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody328_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_11 sourceBody328_0

def sourceBody328_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_10 sourceBody328_12

def sourceBody328_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody328_13 sourceBody328_0

def sourceBody328_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_14 sourceBody328_7

def sourceBody328_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_15 sourceBody328_0

def sourceBody328_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_9 sourceBody328_16

def sourceBody328_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_8 sourceBody328_17

def sourceBody328_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_3 sourceBody328_18

def sourceBody328_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_2 sourceBody328_19

def sourceBody328_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody328_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 10) sourceBody328_4 sourceBody328_5

def sourceBody328_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_22 sourceBody328_7

def sourceBody328_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 13#64)

def sourceBody328_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody328_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody328_0, 328, 2)) (some 286) ([4]) (some (4, sourceBody328_25, 328, 3))

def sourceBody328_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_26 sourceBody328_7

def sourceBody328_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_27 sourceBody328_0

def sourceBody328_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_24 sourceBody328_28

def sourceBody328_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_0 sourceBody328_29

def sourceBody328_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_0 sourceBody328_30

def sourceBody328_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody328_31 sourceBody328_0

def sourceBody328_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_32 sourceBody328_7

def sourceBody328_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_33 sourceBody328_0

def sourceBody328_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_9 sourceBody328_34

def sourceBody328_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_23 sourceBody328_35

def sourceBody328_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_3 sourceBody328_36

def sourceBody328_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_21 sourceBody328_37

def sourceBody328_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_20 sourceBody328_38

def sourceBody328_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody328_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody328_0, 328, 4)) (some 68) ([4]) (some (4, sourceBody328_25, 328, 5))

def sourceBody328_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_41 sourceBody328_7

def sourceBody328_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_42 sourceBody328_0

def sourceBody328_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_40 sourceBody328_43

def sourceBody328_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody328_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody328_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody328_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody328_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody328_0, 328, 6)) (some 158) ([10, 8, 14]) (some (10, sourceBody328_48, 328, 7))

def sourceBody328_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_49 sourceBody328_7

def sourceBody328_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_50 sourceBody328_0

def sourceBody328_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_47 sourceBody328_51

def sourceBody328_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_46 sourceBody328_52

def sourceBody328_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_45 sourceBody328_53

def sourceBody328_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_0 sourceBody328_54

def sourceBody328_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_0 sourceBody328_55

def sourceBody328_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody328_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody328_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody328_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 4) 8

def sourceBody328_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_60 sourceBody328_0

def sourceBody328_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_59 sourceBody328_61

def sourceBody328_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_62 sourceBody328_0

def sourceBody328_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_58 sourceBody328_63

def sourceBody328_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_0 sourceBody328_64

def sourceBody328_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_57 sourceBody328_65

def sourceBody328_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_0 sourceBody328_66

def sourceBody328_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_56 sourceBody328_67

def sourceBody328_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 12)

def sourceBody328_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody328_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_70 sourceBody328_0

def sourceBody328_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_69 sourceBody328_71

def sourceBody328_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_68 sourceBody328_72

def sourceBody328_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_44 sourceBody328_73

def sourceBody328_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_0 sourceBody328_74

def sourceBody328_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_0 sourceBody328_75

def sourceBody328_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_39 sourceBody328_76

def sourceBody328_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_1 sourceBody328_77

def sourceBody328_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody328_0 sourceBody328_78

def source328 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (328, 2, sourceBody328_79)
end InitECandidate.Proofs.WordStages
