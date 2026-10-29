import InitECandidate.Proofs.WordStages.Source830
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody846_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody846_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 80#64)

def sourceBody846_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody846_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody846_0, 846, 2)) (some 68) ([24]) (some (24, sourceBody846_2, 846, 3))

def sourceBody846_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody846_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_3 sourceBody846_4

def sourceBody846_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_5 sourceBody846_0

def sourceBody846_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_1 sourceBody846_6

def sourceBody846_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody846_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody846_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody846_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 5#64)

def sourceBody846_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody846_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody846_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 14 (Flapjack.WordRegImm.reg 28) sourceBody846_12 sourceBody846_13

def sourceBody846_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_14 sourceBody846_4

def sourceBody846_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 14)

def sourceBody846_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 6)
          (Flapjack.WordLangExpHOL.const 4#64)]))

def sourceBody846_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 6)
          (Flapjack.WordLangExpHOL.const 4#64)]))

def sourceBody846_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 192#64)

def sourceBody846_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody846_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody846_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody846_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody846_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.WordRegImm.reg 12) sourceBody846_22 sourceBody846_23

def sourceBody846_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_24 sourceBody846_4

def sourceBody846_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 18)

def sourceBody846_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 76#64)

def sourceBody846_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_27 sourceBody846_0

def sourceBody846_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_28 sourceBody846_0

def sourceBody846_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody846_29 sourceBody846_0

def sourceBody846_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_30 sourceBody846_4

def sourceBody846_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_31 sourceBody846_0

def sourceBody846_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_26 sourceBody846_32

def sourceBody846_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_25 sourceBody846_33

def sourceBody846_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_21 sourceBody846_34

def sourceBody846_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_20 sourceBody846_35

def sourceBody846_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody846_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 116#64)

def sourceBody846_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_38 sourceBody846_0

def sourceBody846_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_39 sourceBody846_0

def sourceBody846_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody846_40 sourceBody846_0

def sourceBody846_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_41 sourceBody846_4

def sourceBody846_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_42 sourceBody846_0

def sourceBody846_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_26 sourceBody846_43

def sourceBody846_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_25 sourceBody846_44

def sourceBody846_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_37 sourceBody846_45

def sourceBody846_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_20 sourceBody846_46

def sourceBody846_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_36 sourceBody846_47

def sourceBody846_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody846_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 184#64)

def sourceBody846_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_50 sourceBody846_0

def sourceBody846_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_51 sourceBody846_0

def sourceBody846_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody846_52 sourceBody846_0

def sourceBody846_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_53 sourceBody846_4

def sourceBody846_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_54 sourceBody846_0

def sourceBody846_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_26 sourceBody846_55

def sourceBody846_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_25 sourceBody846_56

def sourceBody846_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_49 sourceBody846_57

def sourceBody846_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_20 sourceBody846_58

def sourceBody846_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_48 sourceBody846_59

def sourceBody846_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody846_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 68#64)

def sourceBody846_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_62 sourceBody846_0

def sourceBody846_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_63 sourceBody846_0

def sourceBody846_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody846_64 sourceBody846_0

def sourceBody846_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_65 sourceBody846_4

def sourceBody846_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_66 sourceBody846_0

def sourceBody846_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_26 sourceBody846_67

def sourceBody846_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_25 sourceBody846_68

def sourceBody846_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_61 sourceBody846_69

def sourceBody846_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_20 sourceBody846_70

def sourceBody846_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_60 sourceBody846_71

def sourceBody846_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody846_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody846_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.reg 12) sourceBody846_22 sourceBody846_23

def sourceBody846_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_75 sourceBody846_4

def sourceBody846_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 28)

def sourceBody846_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 26 26 18 12))

def sourceBody846_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody846_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody846_81 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody846_0, 846, 4)) (some 68) ([8]) (some (18, sourceBody846_80, 846, 5))

def sourceBody846_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_81 sourceBody846_4

def sourceBody846_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_82 sourceBody846_0

def sourceBody846_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_79 sourceBody846_83

def sourceBody846_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_78 sourceBody846_84

def sourceBody846_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_77 sourceBody846_85

def sourceBody846_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_73 sourceBody846_86

def sourceBody846_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody846_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody846_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 12 (Flapjack.WordLangAddr.addr 18 0#64))

def sourceBody846_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_90 sourceBody846_0

def sourceBody846_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_89 sourceBody846_91

def sourceBody846_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_88 sourceBody846_92

def sourceBody846_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody846_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 28)

def sourceBody846_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 8 8 12 26))

def sourceBody846_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody846_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 20)

def sourceBody846_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 8)

def sourceBody846_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody846_101 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody846_0, 846, 6)) (some 77) ([22, 16, 30]) (some (12, sourceBody846_100, 846, 7))

def sourceBody846_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_101 sourceBody846_4

def sourceBody846_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_102 sourceBody846_0

def sourceBody846_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_99 sourceBody846_103

def sourceBody846_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_98 sourceBody846_104

def sourceBody846_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_97 sourceBody846_105

def sourceBody846_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_96 sourceBody846_106

def sourceBody846_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_95 sourceBody846_107

def sourceBody846_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_94 sourceBody846_108

def sourceBody846_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_0 sourceBody846_109

def sourceBody846_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_0 sourceBody846_110

def sourceBody846_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_93 sourceBody846_111

def sourceBody846_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
        (Flapjack.WordLangExpHOL.const 4#64)])

def sourceBody846_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody846_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 12)

def sourceBody846_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 18) 26

def sourceBody846_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_116 sourceBody846_0

def sourceBody846_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_115 sourceBody846_117

def sourceBody846_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_118 sourceBody846_0

def sourceBody846_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_114 sourceBody846_119

def sourceBody846_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_0 sourceBody846_120

def sourceBody846_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_113 sourceBody846_121

def sourceBody846_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_0 sourceBody846_122

def sourceBody846_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_112 sourceBody846_123

def sourceBody846_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
        (Flapjack.WordLangExpHOL.const 4#64),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody846_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_96 sourceBody846_0

def sourceBody846_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_95 sourceBody846_126

def sourceBody846_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_94 sourceBody846_127

def sourceBody846_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody846_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 22)

def sourceBody846_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 18) 16

def sourceBody846_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_131 sourceBody846_0

def sourceBody846_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_130 sourceBody846_132

def sourceBody846_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_133 sourceBody846_0

def sourceBody846_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_129 sourceBody846_134

def sourceBody846_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_128 sourceBody846_135

def sourceBody846_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_125 sourceBody846_136

def sourceBody846_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_0 sourceBody846_137

def sourceBody846_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_124 sourceBody846_138

def sourceBody846_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody846_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 18)

def sourceBody846_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_141 sourceBody846_0

def sourceBody846_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_142 sourceBody846_0

def sourceBody846_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_140 sourceBody846_143

def sourceBody846_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_0 sourceBody846_144

def sourceBody846_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_139 sourceBody846_145

def sourceBody846_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_87 sourceBody846_146

def sourceBody846_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_0 sourceBody846_147

def sourceBody846_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_0 sourceBody846_148

def sourceBody846_150 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody846_149 sourceBody846_0

def sourceBody846_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_150 sourceBody846_4

def sourceBody846_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_151 sourceBody846_0

def sourceBody846_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_26 sourceBody846_152

def sourceBody846_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_76 sourceBody846_153

def sourceBody846_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_74 sourceBody846_154

def sourceBody846_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_73 sourceBody846_155

def sourceBody846_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_72 sourceBody846_156

def sourceBody846_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody846_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody846_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_159 sourceBody846_0

def sourceBody846_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_160 sourceBody846_0

def sourceBody846_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_158 sourceBody846_161

def sourceBody846_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_0 sourceBody846_162

def sourceBody846_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_157 sourceBody846_163

def sourceBody846_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_19 sourceBody846_164

def sourceBody846_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_0 sourceBody846_165

def sourceBody846_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_18 sourceBody846_166

def sourceBody846_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_0 sourceBody846_167

def sourceBody846_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_17 sourceBody846_168

def sourceBody846_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_0 sourceBody846_169

def sourceBody846_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody846_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_170 sourceBody846_171

def sourceBody846_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody846_174 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 0#64) sourceBody846_172 sourceBody846_173

def sourceBody846_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_174 sourceBody846_4

def sourceBody846_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_175 sourceBody846_0

def sourceBody846_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_16 sourceBody846_176

def sourceBody846_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_15 sourceBody846_177

def sourceBody846_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_11 sourceBody846_178

def sourceBody846_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_10 sourceBody846_179

def sourceBody846_181 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) sourceBody846_180 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody846_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_181 sourceBody846_4

def sourceBody846_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_4 sourceBody846_182

def sourceBody846_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 10)

def sourceBody846_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 24)

def sourceBody846_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20, 14]

def sourceBody846_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_186 sourceBody846_0

def sourceBody846_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_185 sourceBody846_187

def sourceBody846_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_184 sourceBody846_188

def sourceBody846_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_183 sourceBody846_189

def sourceBody846_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_9 sourceBody846_190

def sourceBody846_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_0 sourceBody846_191

def sourceBody846_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_8 sourceBody846_192

def sourceBody846_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_0 sourceBody846_193

def sourceBody846_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_7 sourceBody846_194

def sourceBody846_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_0 sourceBody846_195

def sourceBody846_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody846_0 sourceBody846_196

def source846 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (846, 2, sourceBody846_197)
end InitECandidate.Proofs.WordStages
