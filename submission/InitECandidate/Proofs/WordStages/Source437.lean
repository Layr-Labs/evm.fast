import InitECandidate.Proofs.WordStages.Source421
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody437_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody437_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody437_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody437_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody437_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 8)

def sourceBody437_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody437_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody437_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 14 (Flapjack.WordRegImm.reg 24) sourceBody437_5 sourceBody437_6

def sourceBody437_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody437_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_7 sourceBody437_8

def sourceBody437_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 14)

def sourceBody437_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody437_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 6 14 24))

def sourceBody437_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 6)
    (Flapjack.WordLangExpHOL.const 1#64))

def sourceBody437_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody437_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody437_0, 437, 2)) (some 68) ([16]) (some (14, sourceBody437_14, 437, 3))

def sourceBody437_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_15 sourceBody437_8

def sourceBody437_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_16 sourceBody437_0

def sourceBody437_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_13 sourceBody437_17

def sourceBody437_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_12 sourceBody437_18

def sourceBody437_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_4 sourceBody437_19

def sourceBody437_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_11 sourceBody437_20

def sourceBody437_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 4)

def sourceBody437_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 20)

def sourceBody437_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 16 16 24 6))

def sourceBody437_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody437_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody437_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody437_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody437_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody437_0, 437, 4)) (some 77) ([12, 22, 10]) (some (24, sourceBody437_28, 437, 5))

def sourceBody437_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_29 sourceBody437_8

def sourceBody437_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_30 sourceBody437_0

def sourceBody437_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_27 sourceBody437_31

def sourceBody437_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_26 sourceBody437_32

def sourceBody437_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_25 sourceBody437_33

def sourceBody437_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_24 sourceBody437_34

def sourceBody437_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_23 sourceBody437_35

def sourceBody437_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_22 sourceBody437_36

def sourceBody437_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_0 sourceBody437_37

def sourceBody437_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_0 sourceBody437_38

def sourceBody437_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody437_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 18)

def sourceBody437_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 24)

def sourceBody437_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 14) 6

def sourceBody437_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_43 sourceBody437_0

def sourceBody437_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_42 sourceBody437_44

def sourceBody437_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_45 sourceBody437_0

def sourceBody437_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_41 sourceBody437_46

def sourceBody437_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_0 sourceBody437_47

def sourceBody437_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_40 sourceBody437_48

def sourceBody437_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_0 sourceBody437_49

def sourceBody437_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_39 sourceBody437_50

def sourceBody437_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody437_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
    (Flapjack.WordLangExpHOL.const 1#64))

def sourceBody437_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_53 sourceBody437_46

def sourceBody437_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_0 sourceBody437_54

def sourceBody437_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_52 sourceBody437_55

def sourceBody437_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_0 sourceBody437_56

def sourceBody437_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_51 sourceBody437_57

def sourceBody437_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_21 sourceBody437_58

def sourceBody437_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_0 sourceBody437_59

def sourceBody437_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_0 sourceBody437_60

def sourceBody437_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody437_61 sourceBody437_0

def sourceBody437_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_62 sourceBody437_8

def sourceBody437_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_63 sourceBody437_0

def sourceBody437_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_10 sourceBody437_64

def sourceBody437_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_9 sourceBody437_65

def sourceBody437_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_4 sourceBody437_66

def sourceBody437_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_3 sourceBody437_67

def sourceBody437_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody437_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody437_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 14)

def sourceBody437_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 18) 24

def sourceBody437_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_72 sourceBody437_0

def sourceBody437_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_71 sourceBody437_73

def sourceBody437_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_74 sourceBody437_0

def sourceBody437_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_70 sourceBody437_75

def sourceBody437_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_0 sourceBody437_76

def sourceBody437_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_69 sourceBody437_77

def sourceBody437_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_0 sourceBody437_78

def sourceBody437_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_68 sourceBody437_79

def sourceBody437_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def sourceBody437_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 24 24 18 14))

def sourceBody437_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]),
      Flapjack.WordLangExpHOL.var 24])

def sourceBody437_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody437_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_84 sourceBody437_0

def sourceBody437_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_83 sourceBody437_85

def sourceBody437_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_82 sourceBody437_86

def sourceBody437_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_11 sourceBody437_87

def sourceBody437_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_81 sourceBody437_88

def sourceBody437_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_80 sourceBody437_89

def sourceBody437_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_2 sourceBody437_90

def sourceBody437_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_0 sourceBody437_91

def sourceBody437_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_1 sourceBody437_92

def sourceBody437_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody437_0 sourceBody437_93

def source437 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (437, 3, sourceBody437_94)
end InitECandidate.Proofs.WordStages
