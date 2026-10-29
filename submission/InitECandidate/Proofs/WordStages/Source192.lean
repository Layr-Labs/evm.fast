import InitECandidate.Proofs.WordStages.Source176
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody192_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody192_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody192_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody192_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 2)

def sourceBody192_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody192_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody192_6 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody192_0, 192, 2)) (some 185) ([36, 10]) (some (36, sourceBody192_5, 192, 3))

def sourceBody192_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody192_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_6 sourceBody192_7

def sourceBody192_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_8 sourceBody192_0

def sourceBody192_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_4 sourceBody192_9

def sourceBody192_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_3 sourceBody192_10

def sourceBody192_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody192_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 20)

def sourceBody192_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody192_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody192_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody192_17 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 26 (Flapjack.WordRegImm.reg 18) sourceBody192_15 sourceBody192_16

def sourceBody192_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_17 sourceBody192_7

def sourceBody192_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 26)

def sourceBody192_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 2)

def sourceBody192_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody192_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 6)

def sourceBody192_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody192_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody192_0, 192, 4)) (some 189) ([26, 18, 34]) (some (26, sourceBody192_23, 192, 5))

def sourceBody192_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_24 sourceBody192_7

def sourceBody192_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_25 sourceBody192_0

def sourceBody192_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_22 sourceBody192_26

def sourceBody192_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_21 sourceBody192_27

def sourceBody192_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_20 sourceBody192_28

def sourceBody192_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 56#64])

def sourceBody192_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody192_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 18)

def sourceBody192_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 26) 34

def sourceBody192_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_33 sourceBody192_0

def sourceBody192_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_32 sourceBody192_34

def sourceBody192_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_35 sourceBody192_0

def sourceBody192_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_31 sourceBody192_36

def sourceBody192_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_37

def sourceBody192_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_30 sourceBody192_38

def sourceBody192_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_39

def sourceBody192_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [26]

def sourceBody192_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_41 sourceBody192_0

def sourceBody192_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_16 sourceBody192_42

def sourceBody192_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_40 sourceBody192_43

def sourceBody192_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_29 sourceBody192_44

def sourceBody192_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_45

def sourceBody192_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_46

def sourceBody192_48 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 34 (Flapjack.WordRegImm.imm 0#64) sourceBody192_47 sourceBody192_0

def sourceBody192_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_48 sourceBody192_7

def sourceBody192_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_49 sourceBody192_0

def sourceBody192_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_19 sourceBody192_50

def sourceBody192_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_18 sourceBody192_51

def sourceBody192_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_14 sourceBody192_52

def sourceBody192_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_13 sourceBody192_53

def sourceBody192_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 28)

def sourceBody192_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 34 34 26 18))

def sourceBody192_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 36, Flapjack.WordLangExpHOL.var 34])

def sourceBody192_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 4)

def sourceBody192_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 12)

def sourceBody192_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody192_0, 192, 6)) (some 79) ([14, 30, 22]) (some (26, sourceBody192_23, 192, 7))

def sourceBody192_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_60 sourceBody192_7

def sourceBody192_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_61 sourceBody192_0

def sourceBody192_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_59 sourceBody192_62

def sourceBody192_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_58 sourceBody192_63

def sourceBody192_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_57 sourceBody192_64

def sourceBody192_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_56 sourceBody192_65

def sourceBody192_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_55 sourceBody192_66

def sourceBody192_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_13 sourceBody192_67

def sourceBody192_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody192_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody192_71 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.reg 34) sourceBody192_70 sourceBody192_14

def sourceBody192_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_71 sourceBody192_7

def sourceBody192_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody192_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 20)
        (Flapjack.WordLangExpHOL.const 5#64),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody192_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody192_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_75 sourceBody192_36

def sourceBody192_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_76

def sourceBody192_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_74 sourceBody192_77

def sourceBody192_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_78

def sourceBody192_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_79 sourceBody192_43

def sourceBody192_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody192_80 sourceBody192_0

def sourceBody192_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_81 sourceBody192_7

def sourceBody192_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_82 sourceBody192_0

def sourceBody192_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_73 sourceBody192_83

def sourceBody192_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_72 sourceBody192_84

def sourceBody192_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_69 sourceBody192_85

def sourceBody192_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_31 sourceBody192_86

def sourceBody192_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def sourceBody192_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 28)

def sourceBody192_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 14 14 18 34))

def sourceBody192_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 36, Flapjack.WordLangExpHOL.var 14])

def sourceBody192_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 12)

def sourceBody192_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody192_94 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody192_0, 192, 8)) (some 184) ([30, 22, 38]) (some (18, sourceBody192_93, 192, 9))

def sourceBody192_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_94 sourceBody192_7

def sourceBody192_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_95 sourceBody192_0

def sourceBody192_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_92 sourceBody192_96

def sourceBody192_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_91 sourceBody192_97

def sourceBody192_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_58 sourceBody192_98

def sourceBody192_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_90 sourceBody192_99

def sourceBody192_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_89 sourceBody192_100

def sourceBody192_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_88 sourceBody192_101

def sourceBody192_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody192_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody192_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def sourceBody192_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody192_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody192_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody192_109 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.reg 38) sourceBody192_107 sourceBody192_108

def sourceBody192_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_109 sourceBody192_7

def sourceBody192_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 22)

def sourceBody192_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
          (Flapjack.WordLangExpHOL.const 5#64),
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody192_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 30)

def sourceBody192_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 26)

def sourceBody192_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody192_116 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 38 (Flapjack.WordRegImm.reg 8) sourceBody192_115 sourceBody192_106

def sourceBody192_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_116 sourceBody192_7

def sourceBody192_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 38)

def sourceBody192_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody192_120 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody192_119 sourceBody192_0

def sourceBody192_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_120 sourceBody192_7

def sourceBody192_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_121 sourceBody192_0

def sourceBody192_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_118 sourceBody192_122

def sourceBody192_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_117 sourceBody192_123

def sourceBody192_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_114 sourceBody192_124

def sourceBody192_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_113 sourceBody192_125

def sourceBody192_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 14)

def sourceBody192_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_127 sourceBody192_0

def sourceBody192_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_128 sourceBody192_0

def sourceBody192_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_126 sourceBody192_129

def sourceBody192_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 30)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody192_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 22 (Flapjack.WordLangAddr.addr 22 0#64))

def sourceBody192_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 22)
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.const 7#64,
            Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
              [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 7#64]]),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody192_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody192_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody192_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody192_137 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 24) sourceBody192_135 sourceBody192_136

def sourceBody192_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_137 sourceBody192_7

def sourceBody192_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody192_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
          (Flapjack.WordLangExpHOL.const 5#64),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody192_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 22)

def sourceBody192_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_141 sourceBody192_0

def sourceBody192_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_142 sourceBody192_0

def sourceBody192_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_140 sourceBody192_143

def sourceBody192_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_144

def sourceBody192_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
          (Flapjack.WordLangExpHOL.const 5#64),
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody192_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_146 sourceBody192_143

def sourceBody192_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_147

def sourceBody192_149 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody192_145 sourceBody192_148

def sourceBody192_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_149 sourceBody192_7

def sourceBody192_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_150 sourceBody192_0

def sourceBody192_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_139 sourceBody192_151

def sourceBody192_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_138 sourceBody192_152

def sourceBody192_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_134 sourceBody192_153

def sourceBody192_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_133 sourceBody192_154

def sourceBody192_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_132 sourceBody192_155

def sourceBody192_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_131 sourceBody192_156

def sourceBody192_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_130 sourceBody192_157

def sourceBody192_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_112 sourceBody192_158

def sourceBody192_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_159

def sourceBody192_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody192_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_160 sourceBody192_161

def sourceBody192_163 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody192_162 sourceBody192_119

def sourceBody192_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_163 sourceBody192_7

def sourceBody192_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_164 sourceBody192_0

def sourceBody192_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_111 sourceBody192_165

def sourceBody192_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_110 sourceBody192_166

def sourceBody192_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_106 sourceBody192_167

def sourceBody192_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_105 sourceBody192_168

def sourceBody192_170 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) sourceBody192_169 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody192_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_170 sourceBody192_7

def sourceBody192_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_7 sourceBody192_171

def sourceBody192_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 2)

def sourceBody192_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 4)

def sourceBody192_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody192_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody192_177 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody192_0, 192, 10)) (some 189) ([22, 38, 8]) (some (22, sourceBody192_176, 192, 11))

def sourceBody192_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_177 sourceBody192_7

def sourceBody192_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_178 sourceBody192_0

def sourceBody192_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_175 sourceBody192_179

def sourceBody192_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_174 sourceBody192_180

def sourceBody192_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_173 sourceBody192_181

def sourceBody192_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 2)

def sourceBody192_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def sourceBody192_185 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody192_0, 192, 12)) (some 190) ([38, 8]) (some (38, sourceBody192_184, 192, 13))

def sourceBody192_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_185 sourceBody192_7

def sourceBody192_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_186 sourceBody192_0

def sourceBody192_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_114 sourceBody192_187

def sourceBody192_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_183 sourceBody192_188

def sourceBody192_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_103 sourceBody192_0

def sourceBody192_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_190 sourceBody192_0

def sourceBody192_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 18,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 22)
        (Flapjack.WordLangExpHOL.const 5#64),
      Flapjack.WordLangExpHOL.const 0#64])

def sourceBody192_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 34)

def sourceBody192_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 8)

def sourceBody192_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 38) 24

def sourceBody192_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_195 sourceBody192_0

def sourceBody192_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_194 sourceBody192_196

def sourceBody192_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_197 sourceBody192_0

def sourceBody192_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_193 sourceBody192_198

def sourceBody192_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_199

def sourceBody192_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_192 sourceBody192_200

def sourceBody192_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_201

def sourceBody192_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_191 sourceBody192_202

def sourceBody192_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 18,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 30)
        (Flapjack.WordLangExpHOL.const 5#64),
      Flapjack.WordLangExpHOL.const 0#64])

def sourceBody192_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_111 sourceBody192_198

def sourceBody192_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_205

def sourceBody192_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_204 sourceBody192_206

def sourceBody192_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_207

def sourceBody192_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_203 sourceBody192_208

def sourceBody192_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 18,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
        (Flapjack.WordLangExpHOL.const 5#64),
      Flapjack.WordLangExpHOL.const 0#64])

def sourceBody192_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_210 sourceBody192_206

def sourceBody192_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_211

def sourceBody192_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_209 sourceBody192_212

def sourceBody192_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody192_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 38 (Flapjack.WordLangAddr.addr 38 0#64))

def sourceBody192_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.const 7#64,
            Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
              [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 7#64]]),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody192_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody192_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody192_219 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 16) sourceBody192_218 sourceBody192_134

def sourceBody192_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_219 sourceBody192_7

def sourceBody192_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 24)

def sourceBody192_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 18,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 22)
        (Flapjack.WordLangExpHOL.const 5#64),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody192_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 30)

def sourceBody192_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_223 sourceBody192_198

def sourceBody192_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_224

def sourceBody192_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_222 sourceBody192_225

def sourceBody192_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_226

def sourceBody192_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 18,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 22)
        (Flapjack.WordLangExpHOL.const 5#64),
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody192_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody192_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_229 sourceBody192_198

def sourceBody192_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_230

def sourceBody192_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_228 sourceBody192_231

def sourceBody192_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_232

def sourceBody192_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_227 sourceBody192_233

def sourceBody192_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_222 sourceBody192_231

def sourceBody192_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_235

def sourceBody192_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_228 sourceBody192_225

def sourceBody192_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_237

def sourceBody192_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_236 sourceBody192_238

def sourceBody192_240 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.imm 0#64) sourceBody192_234 sourceBody192_239

def sourceBody192_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_240 sourceBody192_7

def sourceBody192_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_241 sourceBody192_0

def sourceBody192_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_221 sourceBody192_242

def sourceBody192_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_220 sourceBody192_243

def sourceBody192_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_217 sourceBody192_244

def sourceBody192_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_216 sourceBody192_245

def sourceBody192_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_215 sourceBody192_246

def sourceBody192_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_214 sourceBody192_247

def sourceBody192_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_213 sourceBody192_248

def sourceBody192_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 56#64])

def sourceBody192_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_250 sourceBody192_206

def sourceBody192_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_251

def sourceBody192_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 34)
          (Flapjack.WordLangExpHOL.const 5#64),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody192_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 14)

def sourceBody192_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 18,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 34)
        (Flapjack.WordLangExpHOL.const 5#64),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody192_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_255 sourceBody192_206

def sourceBody192_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_256

def sourceBody192_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 18,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 34)
        (Flapjack.WordLangExpHOL.const 5#64),
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody192_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_258 sourceBody192_206

def sourceBody192_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_259

def sourceBody192_261 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody192_257 sourceBody192_260

def sourceBody192_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_261 sourceBody192_7

def sourceBody192_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_262 sourceBody192_0

def sourceBody192_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_139 sourceBody192_263

def sourceBody192_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_138 sourceBody192_264

def sourceBody192_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_254 sourceBody192_265

def sourceBody192_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_253 sourceBody192_266

def sourceBody192_268 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody192_252 sourceBody192_267

def sourceBody192_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_268 sourceBody192_7

def sourceBody192_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_269 sourceBody192_0

def sourceBody192_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_139 sourceBody192_270

def sourceBody192_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_138 sourceBody192_271

def sourceBody192_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_134 sourceBody192_272

def sourceBody192_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_193 sourceBody192_273

def sourceBody192_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_249 sourceBody192_274

def sourceBody192_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [38]

def sourceBody192_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_276 sourceBody192_0

def sourceBody192_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_106 sourceBody192_277

def sourceBody192_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_275 sourceBody192_278

def sourceBody192_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_189 sourceBody192_279

def sourceBody192_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_280

def sourceBody192_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_281

def sourceBody192_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_182 sourceBody192_282

def sourceBody192_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_283

def sourceBody192_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_284

def sourceBody192_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_172 sourceBody192_285

def sourceBody192_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_104 sourceBody192_286

def sourceBody192_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_287

def sourceBody192_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_69 sourceBody192_288

def sourceBody192_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_289

def sourceBody192_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_103 sourceBody192_290

def sourceBody192_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_291

def sourceBody192_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_102 sourceBody192_292

def sourceBody192_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_293

def sourceBody192_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_294

def sourceBody192_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_87 sourceBody192_295

def sourceBody192_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_68 sourceBody192_296

def sourceBody192_298 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_297

def sourceBody192_299 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_298

def sourceBody192_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_54 sourceBody192_299

def sourceBody192_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_12 sourceBody192_300

def sourceBody192_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_301

def sourceBody192_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_11 sourceBody192_302

def sourceBody192_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_303

def sourceBody192_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_304

def sourceBody192_306 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_2 sourceBody192_305

def sourceBody192_307 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_306

def sourceBody192_308 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_1 sourceBody192_307

def sourceBody192_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody192_0 sourceBody192_308

def source192 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (192, 4, sourceBody192_309)
end InitECandidate.Proofs.WordStages
