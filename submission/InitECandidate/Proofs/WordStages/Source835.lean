import InitECandidate.Proofs.WordStages.Source819
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody835_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody835_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 2)

def sourceBody835_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 4)

def sourceBody835_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody835_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody835_0, 835, 2)) (some 93) ([32, 26]) (some (32, sourceBody835_3, 835, 3))

def sourceBody835_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody835_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_4 sourceBody835_5

def sourceBody835_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_6 sourceBody835_0

def sourceBody835_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_2 sourceBody835_7

def sourceBody835_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_1 sourceBody835_8

def sourceBody835_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 7#64])
    (Flapjack.WordLangExpHOL.const 3#64))

def sourceBody835_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 16#64)

def sourceBody835_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody835_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 18)

def sourceBody835_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody835_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody835_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 22 (Flapjack.WordRegImm.reg 34) sourceBody835_14 sourceBody835_15

def sourceBody835_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_16 sourceBody835_5

def sourceBody835_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 22)

def sourceBody835_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 32)
    (Flapjack.WordLangExpHOL.const 1#64))

def sourceBody835_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 32)

def sourceBody835_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 34 34 38 22))

def sourceBody835_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 34)

def sourceBody835_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_22 sourceBody835_0

def sourceBody835_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_21 sourceBody835_23

def sourceBody835_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_20 sourceBody835_24

def sourceBody835_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_19 sourceBody835_25

def sourceBody835_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_26 sourceBody835_0

def sourceBody835_28 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.imm 0#64) sourceBody835_27 sourceBody835_0

def sourceBody835_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_28 sourceBody835_5

def sourceBody835_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_29 sourceBody835_0

def sourceBody835_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_18 sourceBody835_30

def sourceBody835_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_17 sourceBody835_31

def sourceBody835_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_13 sourceBody835_32

def sourceBody835_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_12 sourceBody835_33

def sourceBody835_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody835_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 10)

def sourceBody835_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 12)

def sourceBody835_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 14)

def sourceBody835_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody835_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody835_0, 835, 4)) (some 138) ([22, 34, 28, 40]) (some (22, sourceBody835_39, 835, 5))

def sourceBody835_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_40 sourceBody835_5

def sourceBody835_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_41 sourceBody835_0

def sourceBody835_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_38 sourceBody835_42

def sourceBody835_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_37 sourceBody835_43

def sourceBody835_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_36 sourceBody835_44

def sourceBody835_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_35 sourceBody835_45

def sourceBody835_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody835_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 38)

def sourceBody835_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody835_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 34 (Flapjack.WordRegImm.reg 28) sourceBody835_49 sourceBody835_47

def sourceBody835_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_50 sourceBody835_5

def sourceBody835_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 34)

def sourceBody835_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody835_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 22)

def sourceBody835_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_54 sourceBody835_0

def sourceBody835_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_55 sourceBody835_0

def sourceBody835_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_53 sourceBody835_56

def sourceBody835_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_0 sourceBody835_57

def sourceBody835_59 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 40 (Flapjack.WordRegImm.imm 0#64) sourceBody835_58 sourceBody835_0

def sourceBody835_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_59 sourceBody835_5

def sourceBody835_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_60 sourceBody835_0

def sourceBody835_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_52 sourceBody835_61

def sourceBody835_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_51 sourceBody835_62

def sourceBody835_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_48 sourceBody835_63

def sourceBody835_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_47 sourceBody835_64

def sourceBody835_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody835_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 6)

def sourceBody835_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody835_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody835_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 28 (Flapjack.WordRegImm.reg 40) sourceBody835_68 sourceBody835_69

def sourceBody835_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_70 sourceBody835_5

def sourceBody835_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 28)

def sourceBody835_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 38)

def sourceBody835_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_73 sourceBody835_0

def sourceBody835_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_74 sourceBody835_0

def sourceBody835_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 32#64])
        (Flapjack.WordLangExpHOL.const 4#64),
      Flapjack.WordLangExpHOL.var 38])

def sourceBody835_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_76 sourceBody835_0

def sourceBody835_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_77 sourceBody835_0

def sourceBody835_79 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody835_75 sourceBody835_78

def sourceBody835_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_79 sourceBody835_5

def sourceBody835_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_80 sourceBody835_0

def sourceBody835_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_72 sourceBody835_81

def sourceBody835_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_71 sourceBody835_82

def sourceBody835_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_67 sourceBody835_83

def sourceBody835_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_66 sourceBody835_84

def sourceBody835_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody835_87 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 28 (Flapjack.WordRegImm.reg 40) sourceBody835_68 sourceBody835_69

def sourceBody835_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_87 sourceBody835_5

def sourceBody835_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_14 sourceBody835_0

def sourceBody835_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_89 sourceBody835_0

def sourceBody835_91 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody835_90 sourceBody835_0

def sourceBody835_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_91 sourceBody835_5

def sourceBody835_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_92 sourceBody835_0

def sourceBody835_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_72 sourceBody835_93

def sourceBody835_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_88 sourceBody835_94

def sourceBody835_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_86 sourceBody835_95

def sourceBody835_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_18 sourceBody835_96

def sourceBody835_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_85 sourceBody835_97

def sourceBody835_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 26)

def sourceBody835_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 40 40 34 28))

def sourceBody835_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_100 sourceBody835_0

def sourceBody835_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_18 sourceBody835_101

def sourceBody835_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_99 sourceBody835_102

def sourceBody835_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 40)

def sourceBody835_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 16)

def sourceBody835_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 500#64)

def sourceBody835_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody835_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody835_109 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.WordRegImm.reg 36) sourceBody835_107 sourceBody835_108

def sourceBody835_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_109 sourceBody835_5

def sourceBody835_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody835_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 500#64)

def sourceBody835_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_112 sourceBody835_0

def sourceBody835_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_113 sourceBody835_0

def sourceBody835_115 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody835_114 sourceBody835_0

def sourceBody835_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_115 sourceBody835_5

def sourceBody835_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_116 sourceBody835_0

def sourceBody835_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_111 sourceBody835_117

def sourceBody835_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_110 sourceBody835_118

def sourceBody835_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_106 sourceBody835_119

def sourceBody835_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_105 sourceBody835_120

def sourceBody835_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 16)

def sourceBody835_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [30]

def sourceBody835_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_123 sourceBody835_0

def sourceBody835_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_122 sourceBody835_124

def sourceBody835_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_121 sourceBody835_125

def sourceBody835_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_104 sourceBody835_126

def sourceBody835_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_103 sourceBody835_127

def sourceBody835_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_98 sourceBody835_128

def sourceBody835_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_0 sourceBody835_129

def sourceBody835_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_0 sourceBody835_130

def sourceBody835_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_65 sourceBody835_131

def sourceBody835_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_46 sourceBody835_132

def sourceBody835_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_0 sourceBody835_133

def sourceBody835_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_0 sourceBody835_134

def sourceBody835_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_34 sourceBody835_135

def sourceBody835_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_11 sourceBody835_136

def sourceBody835_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_0 sourceBody835_137

def sourceBody835_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_10 sourceBody835_138

def sourceBody835_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_0 sourceBody835_139

def sourceBody835_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_9 sourceBody835_140

def sourceBody835_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_0 sourceBody835_141

def sourceBody835_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody835_0 sourceBody835_142

def source835 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (835, 8, sourceBody835_143)
end InitECandidate.Proofs.WordStages
