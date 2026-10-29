import InitECandidate.Proofs.WordStages.Source667
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody683_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody683_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 2)
    (Flapjack.WordLangExpHOL.const 5#64))

def sourceBody683_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 2)

def sourceBody683_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 6,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 44)
        (Flapjack.WordLangExpHOL.const 1#64)])

def sourceBody683_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 58

def sourceBody683_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 2)) (some 676) ([58, 14]) (some (58, sourceBody683_4, 683, 3))

def sourceBody683_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody683_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_5 sourceBody683_6

def sourceBody683_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_7 sourceBody683_0

def sourceBody683_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_3 sourceBody683_8

def sourceBody683_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_2 sourceBody683_9

def sourceBody683_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 30)

def sourceBody683_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody683_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody683_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody683_15 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 40) sourceBody683_13 sourceBody683_14

def sourceBody683_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_15 sourceBody683_6

def sourceBody683_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 14)

def sourceBody683_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 44)

def sourceBody683_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody683_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 26 26 14 40))

def sourceBody683_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 4)

def sourceBody683_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody683_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 26)

def sourceBody683_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody683_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([58]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody683_0, 683, 4)) (some 77) ([54, 20, 48]) (some (14, sourceBody683_24, 683, 5))

def sourceBody683_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_25 sourceBody683_6

def sourceBody683_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_26 sourceBody683_0

def sourceBody683_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_23 sourceBody683_27

def sourceBody683_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_22 sourceBody683_28

def sourceBody683_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_21 sourceBody683_29

def sourceBody683_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_20 sourceBody683_30

def sourceBody683_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_19 sourceBody683_31

def sourceBody683_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_18 sourceBody683_32

def sourceBody683_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_33

def sourceBody683_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_34

def sourceBody683_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody683_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [58]

def sourceBody683_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_37 sourceBody683_0

def sourceBody683_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_36 sourceBody683_38

def sourceBody683_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_35 sourceBody683_39

def sourceBody683_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody683_40 sourceBody683_0

def sourceBody683_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_41 sourceBody683_6

def sourceBody683_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_42 sourceBody683_0

def sourceBody683_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_17 sourceBody683_43

def sourceBody683_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_16 sourceBody683_44

def sourceBody683_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_12 sourceBody683_45

def sourceBody683_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_11 sourceBody683_46

def sourceBody683_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody683_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 8,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 44)
        (Flapjack.WordLangExpHOL.const 1#64)])

def sourceBody683_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([58]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 6)) (some 676) ([14, 40]) (some (14, sourceBody683_24, 683, 7))

def sourceBody683_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_50 sourceBody683_6

def sourceBody683_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_51 sourceBody683_0

def sourceBody683_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_49 sourceBody683_52

def sourceBody683_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_48 sourceBody683_53

def sourceBody683_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 58)

def sourceBody683_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody683_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody683_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 40 (Flapjack.WordRegImm.reg 26) sourceBody683_12 sourceBody683_57

def sourceBody683_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_58 sourceBody683_6

def sourceBody683_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 40)

def sourceBody683_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 44)

def sourceBody683_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody683_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 54 54 40 26))

def sourceBody683_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def sourceBody683_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 6)

def sourceBody683_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 54)

def sourceBody683_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody683_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody683_0, 683, 8)) (some 77) ([20, 48, 34]) (some (40, sourceBody683_67, 683, 9))

def sourceBody683_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_68 sourceBody683_6

def sourceBody683_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_69 sourceBody683_0

def sourceBody683_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_66 sourceBody683_70

def sourceBody683_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_65 sourceBody683_71

def sourceBody683_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_64 sourceBody683_72

def sourceBody683_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_63 sourceBody683_73

def sourceBody683_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_62 sourceBody683_74

def sourceBody683_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_61 sourceBody683_75

def sourceBody683_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_76

def sourceBody683_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_77

def sourceBody683_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody683_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_79 sourceBody683_0

def sourceBody683_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_14 sourceBody683_80

def sourceBody683_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_78 sourceBody683_81

def sourceBody683_83 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 54 (Flapjack.WordRegImm.imm 0#64) sourceBody683_82 sourceBody683_0

def sourceBody683_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_83 sourceBody683_6

def sourceBody683_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_84 sourceBody683_0

def sourceBody683_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_60 sourceBody683_85

def sourceBody683_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_59 sourceBody683_86

def sourceBody683_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_56 sourceBody683_87

def sourceBody683_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_55 sourceBody683_88

def sourceBody683_90 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 10)) (some 69) ([]) (some (40, sourceBody683_67, 683, 11))

def sourceBody683_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_90 sourceBody683_6

def sourceBody683_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_91 sourceBody683_0

def sourceBody683_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 6)

def sourceBody683_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 44])

def sourceBody683_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 6,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 44)
        (Flapjack.WordLangExpHOL.const 1#64)])

def sourceBody683_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 44])

def sourceBody683_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 8,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 44)
        (Flapjack.WordLangExpHOL.const 1#64)])

def sourceBody683_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 44)

def sourceBody683_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody683_100 : WordLangProgHOL (BitVec 64) :=
.call (some (([62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 12)) (some 68) ([12]) (some (12, sourceBody683_99, 683, 13))

def sourceBody683_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_100 sourceBody683_6

def sourceBody683_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_101 sourceBody683_0

def sourceBody683_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_98 sourceBody683_102

def sourceBody683_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 44)

def sourceBody683_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def sourceBody683_106 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 14)) (some 68) ([38]) (some (38, sourceBody683_105, 683, 15))

def sourceBody683_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_106 sourceBody683_6

def sourceBody683_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_107 sourceBody683_0

def sourceBody683_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_104 sourceBody683_108

def sourceBody683_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 44)

def sourceBody683_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody683_112 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 16)) (some 68) ([24]) (some (24, sourceBody683_111, 683, 17))

def sourceBody683_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_112 sourceBody683_6

def sourceBody683_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_113 sourceBody683_0

def sourceBody683_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_110 sourceBody683_114

def sourceBody683_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 44)

def sourceBody683_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def sourceBody683_118 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 18)) (some 68) ([52]) (some (52, sourceBody683_117, 683, 19))

def sourceBody683_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_118 sourceBody683_6

def sourceBody683_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_119 sourceBody683_0

def sourceBody683_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_116 sourceBody683_120

def sourceBody683_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody683_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 62)

def sourceBody683_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 48)

def sourceBody683_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 54)

def sourceBody683_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody683_127 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 20)) (some 670) ([18, 46, 32, 60]) (some (18, sourceBody683_126, 683, 21))

def sourceBody683_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_127 sourceBody683_6

def sourceBody683_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_128 sourceBody683_0

def sourceBody683_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_125 sourceBody683_129

def sourceBody683_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_124 sourceBody683_130

def sourceBody683_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_123 sourceBody683_131

def sourceBody683_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_122 sourceBody683_132

def sourceBody683_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_133

def sourceBody683_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_134

def sourceBody683_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 12)

def sourceBody683_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 26)

def sourceBody683_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 34)

def sourceBody683_139 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 22)) (some 670) ([18, 46, 32, 60]) (some (18, sourceBody683_126, 683, 23))

def sourceBody683_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_139 sourceBody683_6

def sourceBody683_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_140 sourceBody683_0

def sourceBody683_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_138 sourceBody683_141

def sourceBody683_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_137 sourceBody683_142

def sourceBody683_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_136 sourceBody683_143

def sourceBody683_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_122 sourceBody683_144

def sourceBody683_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_145

def sourceBody683_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_146

def sourceBody683_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_135 sourceBody683_147

def sourceBody683_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 38)

def sourceBody683_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 20)

def sourceBody683_151 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 24)) (some 670) ([18, 46, 32, 60]) (some (18, sourceBody683_126, 683, 25))

def sourceBody683_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_151 sourceBody683_6

def sourceBody683_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_152 sourceBody683_0

def sourceBody683_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_125 sourceBody683_153

def sourceBody683_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_150 sourceBody683_154

def sourceBody683_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_149 sourceBody683_155

def sourceBody683_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_122 sourceBody683_156

def sourceBody683_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_157

def sourceBody683_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_158

def sourceBody683_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_148 sourceBody683_159

def sourceBody683_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 24)

def sourceBody683_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 40)

def sourceBody683_163 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 26)) (some 670) ([18, 46, 32, 60]) (some (18, sourceBody683_126, 683, 27))

def sourceBody683_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_163 sourceBody683_6

def sourceBody683_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_164 sourceBody683_0

def sourceBody683_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_138 sourceBody683_165

def sourceBody683_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_162 sourceBody683_166

def sourceBody683_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_161 sourceBody683_167

def sourceBody683_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_122 sourceBody683_168

def sourceBody683_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_169

def sourceBody683_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_170

def sourceBody683_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_160 sourceBody683_171

def sourceBody683_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 24)

def sourceBody683_174 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 28)) (some 677) ([18, 46, 32]) (some (18, sourceBody683_126, 683, 29))

def sourceBody683_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_174 sourceBody683_6

def sourceBody683_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_175 sourceBody683_0

def sourceBody683_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_173 sourceBody683_176

def sourceBody683_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_149 sourceBody683_177

def sourceBody683_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_122 sourceBody683_178

def sourceBody683_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 52)

def sourceBody683_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody683_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody683_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody683_184 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 46 (Flapjack.WordRegImm.reg 32) sourceBody683_182 sourceBody683_183

def sourceBody683_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_184 sourceBody683_6

def sourceBody683_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 46)

def sourceBody683_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 2)

def sourceBody683_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 62)

def sourceBody683_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 12)

def sourceBody683_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def sourceBody683_191 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 30)) (some 677) ([46, 32, 60]) (some (46, sourceBody683_190, 683, 31))

def sourceBody683_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_191 sourceBody683_6

def sourceBody683_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_192 sourceBody683_0

def sourceBody683_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_189 sourceBody683_193

def sourceBody683_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_188 sourceBody683_194

def sourceBody683_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_187 sourceBody683_195

def sourceBody683_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 14)

def sourceBody683_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody683_199 : WordLangProgHOL (BitVec 64) :=
.call (some (([46]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 32)) (some 70) ([32]) (some (32, sourceBody683_198, 683, 33))

def sourceBody683_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_199 sourceBody683_6

def sourceBody683_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_200 sourceBody683_0

def sourceBody683_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_197 sourceBody683_201

def sourceBody683_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_202

def sourceBody683_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_203

def sourceBody683_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 18)

def sourceBody683_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody683_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody683_208 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 32 (Flapjack.WordRegImm.reg 60) sourceBody683_181 sourceBody683_207

def sourceBody683_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_208 sourceBody683_6

def sourceBody683_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 32)

def sourceBody683_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 2)

def sourceBody683_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 4)

def sourceBody683_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody683_214 : WordLangProgHOL (BitVec 64) :=
.call (some (([46]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody683_0, 683, 34)) (some 682) ([32, 60, 16]) (some (32, sourceBody683_198, 683, 35))

def sourceBody683_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_214 sourceBody683_6

def sourceBody683_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_215 sourceBody683_0

def sourceBody683_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_213 sourceBody683_216

def sourceBody683_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_212 sourceBody683_217

def sourceBody683_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_211 sourceBody683_218

def sourceBody683_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_219

def sourceBody683_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_220

def sourceBody683_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [46]

def sourceBody683_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_222 sourceBody683_0

def sourceBody683_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_183 sourceBody683_223

def sourceBody683_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_221 sourceBody683_224

def sourceBody683_226 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody683_225 sourceBody683_0

def sourceBody683_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_226 sourceBody683_6

def sourceBody683_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_227 sourceBody683_0

def sourceBody683_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_210 sourceBody683_228

def sourceBody683_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_209 sourceBody683_229

def sourceBody683_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_206 sourceBody683_230

def sourceBody683_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_205 sourceBody683_231

def sourceBody683_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_204 sourceBody683_232

def sourceBody683_234 : WordLangProgHOL (BitVec 64) :=
.call (some (([46]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody683_0, 683, 36)) (some 680) ([32, 60]) (some (32, sourceBody683_198, 683, 37))

def sourceBody683_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_234 sourceBody683_6

def sourceBody683_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_235 sourceBody683_0

def sourceBody683_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_212 sourceBody683_236

def sourceBody683_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_211 sourceBody683_237

def sourceBody683_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_238

def sourceBody683_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_239

def sourceBody683_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_233 sourceBody683_240

def sourceBody683_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_241 sourceBody683_224

def sourceBody683_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_196 sourceBody683_242

def sourceBody683_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_243

def sourceBody683_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_244

def sourceBody683_246 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 60 (Flapjack.WordRegImm.imm 0#64) sourceBody683_245 sourceBody683_0

def sourceBody683_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_246 sourceBody683_6

def sourceBody683_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_247 sourceBody683_0

def sourceBody683_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_186 sourceBody683_248

def sourceBody683_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_185 sourceBody683_249

def sourceBody683_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_181 sourceBody683_250

def sourceBody683_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_180 sourceBody683_251

def sourceBody683_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 44)

def sourceBody683_254 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 38)) (some 68) ([46]) (some (46, sourceBody683_190, 683, 39))

def sourceBody683_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_254 sourceBody683_6

def sourceBody683_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_255 sourceBody683_0

def sourceBody683_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_253 sourceBody683_256

def sourceBody683_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 44)

def sourceBody683_259 : WordLangProgHOL (BitVec 64) :=
.call (some (([46]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 40)) (some 68) ([32]) (some (32, sourceBody683_198, 683, 41))

def sourceBody683_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_259 sourceBody683_6

def sourceBody683_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_260 sourceBody683_0

def sourceBody683_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_258 sourceBody683_261

def sourceBody683_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 44)

def sourceBody683_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 60

def sourceBody683_265 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 42)) (some 68) ([60]) (some (60, sourceBody683_264, 683, 43))

def sourceBody683_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_265 sourceBody683_6

def sourceBody683_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_266 sourceBody683_0

def sourceBody683_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_263 sourceBody683_267

def sourceBody683_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 44)

def sourceBody683_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody683_271 : WordLangProgHOL (BitVec 64) :=
.call (some (([60]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 44)) (some 68) ([16]) (some (16, sourceBody683_270, 683, 45))

def sourceBody683_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_271 sourceBody683_6

def sourceBody683_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_272 sourceBody683_0

def sourceBody683_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_269 sourceBody683_273

def sourceBody683_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 44)

def sourceBody683_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def sourceBody683_277 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 46)) (some 68) ([42]) (some (42, sourceBody683_276, 683, 47))

def sourceBody683_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_277 sourceBody683_6

def sourceBody683_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_278 sourceBody683_0

def sourceBody683_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_275 sourceBody683_279

def sourceBody683_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 44)

def sourceBody683_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody683_283 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 48)) (some 68) ([28]) (some (28, sourceBody683_282, 683, 49))

def sourceBody683_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_283 sourceBody683_6

def sourceBody683_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_284 sourceBody683_0

def sourceBody683_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_281 sourceBody683_285

def sourceBody683_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 44)

def sourceBody683_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 56

def sourceBody683_289 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 50)) (some 68) ([56]) (some (56, sourceBody683_288, 683, 51))

def sourceBody683_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_289 sourceBody683_6

def sourceBody683_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_290 sourceBody683_0

def sourceBody683_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_287 sourceBody683_291

def sourceBody683_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 44)

def sourceBody683_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody683_295 : WordLangProgHOL (BitVec 64) :=
.call (some (([56]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 52)) (some 68) ([22]) (some (22, sourceBody683_294, 683, 53))

def sourceBody683_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_295 sourceBody683_6

def sourceBody683_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_296 sourceBody683_0

def sourceBody683_298 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_293 sourceBody683_297

def sourceBody683_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 2)

def sourceBody683_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 18)

def sourceBody683_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 62)

def sourceBody683_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody683_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 50

def sourceBody683_304 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 54)) (some 673) ([50, 36, 64, 10]) (some (50, sourceBody683_303, 683, 55))

def sourceBody683_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_304 sourceBody683_6

def sourceBody683_306 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_305 sourceBody683_0

def sourceBody683_307 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_302 sourceBody683_306

def sourceBody683_308 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_301 sourceBody683_307

def sourceBody683_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_300 sourceBody683_308

def sourceBody683_310 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_299 sourceBody683_309

def sourceBody683_311 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_310

def sourceBody683_312 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_311

def sourceBody683_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 46)

def sourceBody683_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 38)

def sourceBody683_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 24)

def sourceBody683_316 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 56)) (some 673) ([50, 36, 64, 10]) (some (50, sourceBody683_303, 683, 57))

def sourceBody683_317 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_316 sourceBody683_6

def sourceBody683_318 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_317 sourceBody683_0

def sourceBody683_319 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_315 sourceBody683_318

def sourceBody683_320 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_314 sourceBody683_319

def sourceBody683_321 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_313 sourceBody683_320

def sourceBody683_322 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_299 sourceBody683_321

def sourceBody683_323 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_322

def sourceBody683_324 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_323

def sourceBody683_325 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_312 sourceBody683_324

def sourceBody683_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 32)

def sourceBody683_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 46)

def sourceBody683_328 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 58)) (some 671) ([50, 36, 64]) (some (50, sourceBody683_303, 683, 59))

def sourceBody683_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_328 sourceBody683_6

def sourceBody683_330 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_329 sourceBody683_0

def sourceBody683_331 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_327 sourceBody683_330

def sourceBody683_332 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_326 sourceBody683_331

def sourceBody683_333 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_299 sourceBody683_332

def sourceBody683_334 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_333

def sourceBody683_335 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_334

def sourceBody683_336 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_325 sourceBody683_335

def sourceBody683_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 60)

def sourceBody683_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 32)

def sourceBody683_339 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 60)) (some 670) ([50, 36, 64, 10]) (some (50, sourceBody683_303, 683, 61))

def sourceBody683_340 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_339 sourceBody683_6

def sourceBody683_341 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_340 sourceBody683_0

def sourceBody683_342 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_315 sourceBody683_341

def sourceBody683_343 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_338 sourceBody683_342

def sourceBody683_344 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_337 sourceBody683_343

def sourceBody683_345 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_299 sourceBody683_344

def sourceBody683_346 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_345

def sourceBody683_347 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_346

def sourceBody683_348 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_336 sourceBody683_347

def sourceBody683_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 16)

def sourceBody683_350 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 32)

def sourceBody683_351 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 62)) (some 670) ([50, 36, 64, 10]) (some (50, sourceBody683_303, 683, 63))

def sourceBody683_352 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_351 sourceBody683_6

def sourceBody683_353 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_352 sourceBody683_0

def sourceBody683_354 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_350 sourceBody683_353

def sourceBody683_355 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_327 sourceBody683_354

def sourceBody683_356 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_349 sourceBody683_355

def sourceBody683_357 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_299 sourceBody683_356

def sourceBody683_358 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_357

def sourceBody683_359 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_358

def sourceBody683_360 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_348 sourceBody683_359

def sourceBody683_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 42)

def sourceBody683_362 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 54)

def sourceBody683_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 34)

def sourceBody683_364 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 64)) (some 670) ([50, 36, 64, 10]) (some (50, sourceBody683_303, 683, 65))

def sourceBody683_365 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_364 sourceBody683_6

def sourceBody683_366 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_365 sourceBody683_0

def sourceBody683_367 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_363 sourceBody683_366

def sourceBody683_368 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_362 sourceBody683_367

def sourceBody683_369 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_361 sourceBody683_368

def sourceBody683_370 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_299 sourceBody683_369

def sourceBody683_371 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_370

def sourceBody683_372 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_371

def sourceBody683_373 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_360 sourceBody683_372

def sourceBody683_374 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 28)

def sourceBody683_375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 18)

def sourceBody683_376 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 66)) (some 671) ([50, 36, 64]) (some (50, sourceBody683_303, 683, 67))

def sourceBody683_377 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_376 sourceBody683_6

def sourceBody683_378 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_377 sourceBody683_0

def sourceBody683_379 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_375 sourceBody683_378

def sourceBody683_380 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_374 sourceBody683_379

def sourceBody683_381 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_299 sourceBody683_380

def sourceBody683_382 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_381

def sourceBody683_383 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_382

def sourceBody683_384 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_373 sourceBody683_383

def sourceBody683_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 28)

def sourceBody683_386 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 42)

def sourceBody683_387 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 68)) (some 670) ([50, 36, 64, 10]) (some (50, sourceBody683_303, 683, 69))

def sourceBody683_388 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_387 sourceBody683_6

def sourceBody683_389 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_388 sourceBody683_0

def sourceBody683_390 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_386 sourceBody683_389

def sourceBody683_391 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_385 sourceBody683_390

def sourceBody683_392 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_374 sourceBody683_391

def sourceBody683_393 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_299 sourceBody683_392

def sourceBody683_394 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_393

def sourceBody683_395 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_394

def sourceBody683_396 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_384 sourceBody683_395

def sourceBody683_397 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody683_398 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 70)) (some 673) ([50, 36, 64, 10]) (some (50, sourceBody683_303, 683, 71))

def sourceBody683_399 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_398 sourceBody683_6

def sourceBody683_400 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_399 sourceBody683_0

def sourceBody683_401 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_397 sourceBody683_400

def sourceBody683_402 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_385 sourceBody683_401

def sourceBody683_403 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_374 sourceBody683_402

def sourceBody683_404 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_299 sourceBody683_403

def sourceBody683_405 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_404

def sourceBody683_406 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_405

def sourceBody683_407 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_396 sourceBody683_406

def sourceBody683_408 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 56)

def sourceBody683_409 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 60)

def sourceBody683_410 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody683_411 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 72)) (some 675) ([50, 36, 64, 10]) (some (50, sourceBody683_303, 683, 73))

def sourceBody683_412 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_411 sourceBody683_6

def sourceBody683_413 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_412 sourceBody683_0

def sourceBody683_414 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_410 sourceBody683_413

def sourceBody683_415 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_409 sourceBody683_414

def sourceBody683_416 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_408 sourceBody683_415

def sourceBody683_417 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_299 sourceBody683_416

def sourceBody683_418 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_417

def sourceBody683_419 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_418

def sourceBody683_420 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_407 sourceBody683_419

def sourceBody683_421 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 56)

def sourceBody683_422 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 74)) (some 673) ([50, 36, 64, 10]) (some (50, sourceBody683_303, 683, 75))

def sourceBody683_423 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_422 sourceBody683_6

def sourceBody683_424 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_423 sourceBody683_0

def sourceBody683_425 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_421 sourceBody683_424

def sourceBody683_426 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_385 sourceBody683_425

def sourceBody683_427 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_374 sourceBody683_426

def sourceBody683_428 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_299 sourceBody683_427

def sourceBody683_429 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_428

def sourceBody683_430 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_429

def sourceBody683_431 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_420 sourceBody683_430

def sourceBody683_432 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 28)

def sourceBody683_433 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 76)) (some 670) ([50, 36, 64, 10]) (some (50, sourceBody683_303, 683, 77))

def sourceBody683_434 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_433 sourceBody683_6

def sourceBody683_435 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_434 sourceBody683_0

def sourceBody683_436 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_432 sourceBody683_435

def sourceBody683_437 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_327 sourceBody683_436

def sourceBody683_438 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_408 sourceBody683_437

def sourceBody683_439 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_299 sourceBody683_438

def sourceBody683_440 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_439

def sourceBody683_441 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_440

def sourceBody683_442 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_431 sourceBody683_441

def sourceBody683_443 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 78)) (some 673) ([50, 36, 64, 10]) (some (50, sourceBody683_303, 683, 79))

def sourceBody683_444 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_443 sourceBody683_6

def sourceBody683_445 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_444 sourceBody683_0

def sourceBody683_446 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_432 sourceBody683_445

def sourceBody683_447 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_409 sourceBody683_446

def sourceBody683_448 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_313 sourceBody683_447

def sourceBody683_449 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_299 sourceBody683_448

def sourceBody683_450 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_449

def sourceBody683_451 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_450

def sourceBody683_452 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_442 sourceBody683_451

def sourceBody683_453 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 46)

def sourceBody683_454 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 80)) (some 670) ([50, 36, 64, 10]) (some (50, sourceBody683_303, 683, 81))

def sourceBody683_455 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_454 sourceBody683_6

def sourceBody683_456 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_455 sourceBody683_0

def sourceBody683_457 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_453 sourceBody683_456

def sourceBody683_458 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_375 sourceBody683_457

def sourceBody683_459 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_313 sourceBody683_458

def sourceBody683_460 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_299 sourceBody683_459

def sourceBody683_461 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_460

def sourceBody683_462 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_461

def sourceBody683_463 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_452 sourceBody683_462

def sourceBody683_464 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 62)

def sourceBody683_465 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 16)

def sourceBody683_466 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 82)) (some 670) ([50, 36, 64, 10]) (some (50, sourceBody683_303, 683, 83))

def sourceBody683_467 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_466 sourceBody683_6

def sourceBody683_468 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_467 sourceBody683_0

def sourceBody683_469 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_302 sourceBody683_468

def sourceBody683_470 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_465 sourceBody683_469

def sourceBody683_471 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_464 sourceBody683_470

def sourceBody683_472 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_299 sourceBody683_471

def sourceBody683_473 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_472

def sourceBody683_474 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_473

def sourceBody683_475 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_463 sourceBody683_474

def sourceBody683_476 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 62)

def sourceBody683_477 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 84)) (some 673) ([50, 36, 64, 10]) (some (50, sourceBody683_303, 683, 85))

def sourceBody683_478 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_477 sourceBody683_6

def sourceBody683_479 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_478 sourceBody683_0

def sourceBody683_480 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_476 sourceBody683_479

def sourceBody683_481 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_327 sourceBody683_480

def sourceBody683_482 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_313 sourceBody683_481

def sourceBody683_483 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_299 sourceBody683_482

def sourceBody683_484 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_483

def sourceBody683_485 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_484

def sourceBody683_486 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_475 sourceBody683_485

def sourceBody683_487 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 86)) (some 670) ([50, 36, 64, 10]) (some (50, sourceBody683_303, 683, 87))

def sourceBody683_488 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_487 sourceBody683_6

def sourceBody683_489 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_488 sourceBody683_0

def sourceBody683_490 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_386 sourceBody683_489

def sourceBody683_491 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_465 sourceBody683_490

def sourceBody683_492 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_361 sourceBody683_491

def sourceBody683_493 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_299 sourceBody683_492

def sourceBody683_494 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_493

def sourceBody683_495 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_494

def sourceBody683_496 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_486 sourceBody683_495

def sourceBody683_497 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 4)

def sourceBody683_498 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 44)

def sourceBody683_499 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 88)) (some 77) ([50, 36, 64]) (some (50, sourceBody683_303, 683, 89))

def sourceBody683_500 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_499 sourceBody683_6

def sourceBody683_501 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_500 sourceBody683_0

def sourceBody683_502 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_498 sourceBody683_501

def sourceBody683_503 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_408 sourceBody683_502

def sourceBody683_504 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_497 sourceBody683_503

def sourceBody683_505 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_504

def sourceBody683_506 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_505

def sourceBody683_507 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_496 sourceBody683_506

def sourceBody683_508 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 44])

def sourceBody683_509 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 90)) (some 77) ([50, 36, 64]) (some (50, sourceBody683_303, 683, 91))

def sourceBody683_510 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_509 sourceBody683_6

def sourceBody683_511 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_510 sourceBody683_0

def sourceBody683_512 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_498 sourceBody683_511

def sourceBody683_513 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_313 sourceBody683_512

def sourceBody683_514 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_508 sourceBody683_513

def sourceBody683_515 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_514

def sourceBody683_516 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_515

def sourceBody683_517 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_507 sourceBody683_516

def sourceBody683_518 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 44)
        (Flapjack.WordLangExpHOL.const 1#64)])

def sourceBody683_519 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody683_0, 683, 92)) (some 77) ([50, 36, 64]) (some (50, sourceBody683_303, 683, 93))

def sourceBody683_520 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_519 sourceBody683_6

def sourceBody683_521 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_520 sourceBody683_0

def sourceBody683_522 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_498 sourceBody683_521

def sourceBody683_523 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_361 sourceBody683_522

def sourceBody683_524 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_518 sourceBody683_523

def sourceBody683_525 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_524

def sourceBody683_526 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_525

def sourceBody683_527 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_517 sourceBody683_526

def sourceBody683_528 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 14)

def sourceBody683_529 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody683_0, 683, 94)) (some 70) ([50]) (some (50, sourceBody683_303, 683, 95))

def sourceBody683_530 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_529 sourceBody683_6

def sourceBody683_531 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_530 sourceBody683_0

def sourceBody683_532 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_528 sourceBody683_531

def sourceBody683_533 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_532

def sourceBody683_534 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_533

def sourceBody683_535 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_527 sourceBody683_534

def sourceBody683_536 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody683_537 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [22]

def sourceBody683_538 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_537 sourceBody683_0

def sourceBody683_539 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_536 sourceBody683_538

def sourceBody683_540 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_535 sourceBody683_539

def sourceBody683_541 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_298 sourceBody683_540

def sourceBody683_542 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_541

def sourceBody683_543 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_542

def sourceBody683_544 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_292 sourceBody683_543

def sourceBody683_545 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_544

def sourceBody683_546 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_545

def sourceBody683_547 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_286 sourceBody683_546

def sourceBody683_548 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_547

def sourceBody683_549 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_548

def sourceBody683_550 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_280 sourceBody683_549

def sourceBody683_551 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_550

def sourceBody683_552 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_551

def sourceBody683_553 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_274 sourceBody683_552

def sourceBody683_554 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_553

def sourceBody683_555 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_554

def sourceBody683_556 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_268 sourceBody683_555

def sourceBody683_557 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_556

def sourceBody683_558 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_557

def sourceBody683_559 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_262 sourceBody683_558

def sourceBody683_560 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_559

def sourceBody683_561 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_560

def sourceBody683_562 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_257 sourceBody683_561

def sourceBody683_563 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_562

def sourceBody683_564 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_563

def sourceBody683_565 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_252 sourceBody683_564

def sourceBody683_566 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_179 sourceBody683_565

def sourceBody683_567 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_566

def sourceBody683_568 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_567

def sourceBody683_569 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_172 sourceBody683_568

def sourceBody683_570 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_121 sourceBody683_569

def sourceBody683_571 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_570

def sourceBody683_572 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_571

def sourceBody683_573 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_115 sourceBody683_572

def sourceBody683_574 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_573

def sourceBody683_575 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_574

def sourceBody683_576 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_109 sourceBody683_575

def sourceBody683_577 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_576

def sourceBody683_578 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_577

def sourceBody683_579 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_103 sourceBody683_578

def sourceBody683_580 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_579

def sourceBody683_581 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_580

def sourceBody683_582 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_97 sourceBody683_581

def sourceBody683_583 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_582

def sourceBody683_584 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_96 sourceBody683_583

def sourceBody683_585 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_584

def sourceBody683_586 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_22 sourceBody683_585

def sourceBody683_587 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_586

def sourceBody683_588 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_95 sourceBody683_587

def sourceBody683_589 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_588

def sourceBody683_590 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_94 sourceBody683_589

def sourceBody683_591 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_590

def sourceBody683_592 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_93 sourceBody683_591

def sourceBody683_593 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_592

def sourceBody683_594 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_92 sourceBody683_593

def sourceBody683_595 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_594

def sourceBody683_596 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_595

def sourceBody683_597 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_89 sourceBody683_596

def sourceBody683_598 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_54 sourceBody683_597

def sourceBody683_599 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_598

def sourceBody683_600 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_599

def sourceBody683_601 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_47 sourceBody683_600

def sourceBody683_602 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_10 sourceBody683_601

def sourceBody683_603 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_602

def sourceBody683_604 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_603

def sourceBody683_605 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_1 sourceBody683_604

def sourceBody683_606 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody683_0 sourceBody683_605

def source683 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (683, 5, sourceBody683_606)
end InitECandidate.Proofs.WordStages
