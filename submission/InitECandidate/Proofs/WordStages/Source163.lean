import InitECandidate.Proofs.WordStages.Source147
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody163_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody163_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody163_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody163_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody163_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 16) sourceBody163_2 sourceBody163_3

def sourceBody163_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody163_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_4 sourceBody163_5

def sourceBody163_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody163_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody163_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody163_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody163_8, 163, 2)) (some 159) ([8]) (some (8, sourceBody163_9, 163, 3))

def sourceBody163_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_10 sourceBody163_5

def sourceBody163_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_11 sourceBody163_8

def sourceBody163_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_2 sourceBody163_12

def sourceBody163_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_8 sourceBody163_13

def sourceBody163_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_8 sourceBody163_14

def sourceBody163_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody163_15 sourceBody163_8

def sourceBody163_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_16 sourceBody163_5

def sourceBody163_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_17 sourceBody163_8

def sourceBody163_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_7 sourceBody163_18

def sourceBody163_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_6 sourceBody163_19

def sourceBody163_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_1 sourceBody163_20

def sourceBody163_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_0 sourceBody163_21

def sourceBody163_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody163_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 18 (Flapjack.WordLangAddr.addr 18 0#64))

def sourceBody163_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_24 sourceBody163_8

def sourceBody163_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_23 sourceBody163_25

def sourceBody163_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 18)

def sourceBody163_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody163_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody163_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody163_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 20) sourceBody163_29 sourceBody163_30

def sourceBody163_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_31 sourceBody163_5

def sourceBody163_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody163_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody163_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16, 12, 20]

def sourceBody163_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_35 sourceBody163_8

def sourceBody163_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_34 sourceBody163_36

def sourceBody163_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_29 sourceBody163_37

def sourceBody163_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_1 sourceBody163_38

def sourceBody163_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody163_39 sourceBody163_8

def sourceBody163_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_40 sourceBody163_5

def sourceBody163_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_41 sourceBody163_8

def sourceBody163_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_33 sourceBody163_42

def sourceBody163_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_32 sourceBody163_43

def sourceBody163_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_28 sourceBody163_44

def sourceBody163_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_7 sourceBody163_45

def sourceBody163_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 183#64)

def sourceBody163_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody163_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 12 (Flapjack.WordRegImm.reg 20) sourceBody163_29 sourceBody163_30

def sourceBody163_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_49 sourceBody163_5

def sourceBody163_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 128#64])

def sourceBody163_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody163_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 16)

def sourceBody163_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody163_55 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 20 (Flapjack.WordRegImm.reg 6) sourceBody163_54 sourceBody163_34

def sourceBody163_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_55 sourceBody163_5

def sourceBody163_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody163_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody163_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody163_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody163_8, 163, 4)) (some 159) ([20]) (some (20, sourceBody163_59, 163, 5))

def sourceBody163_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_60 sourceBody163_5

def sourceBody163_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_61 sourceBody163_8

def sourceBody163_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_58 sourceBody163_62

def sourceBody163_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_8 sourceBody163_63

def sourceBody163_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_8 sourceBody163_64

def sourceBody163_66 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody163_65 sourceBody163_8

def sourceBody163_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_66 sourceBody163_5

def sourceBody163_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_67 sourceBody163_8

def sourceBody163_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_57 sourceBody163_68

def sourceBody163_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_56 sourceBody163_69

def sourceBody163_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_53 sourceBody163_70

def sourceBody163_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_52 sourceBody163_71

def sourceBody163_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody163_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody163_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 20 (Flapjack.WordRegImm.reg 6) sourceBody163_54 sourceBody163_34

def sourceBody163_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_75 sourceBody163_5

def sourceBody163_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody163_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 12 0#64))

def sourceBody163_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody163_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody163_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 14) sourceBody163_74 sourceBody163_80

def sourceBody163_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_81 sourceBody163_5

def sourceBody163_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody163_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody163_85 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody163_8, 163, 6)) (some 159) ([20]) (some (20, sourceBody163_59, 163, 7))

def sourceBody163_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_85 sourceBody163_5

def sourceBody163_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_86 sourceBody163_8

def sourceBody163_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_84 sourceBody163_87

def sourceBody163_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_8 sourceBody163_88

def sourceBody163_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_8 sourceBody163_89

def sourceBody163_91 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody163_90 sourceBody163_8

def sourceBody163_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_91 sourceBody163_5

def sourceBody163_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_92 sourceBody163_8

def sourceBody163_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_83 sourceBody163_93

def sourceBody163_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_82 sourceBody163_94

def sourceBody163_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_79 sourceBody163_95

def sourceBody163_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_33 sourceBody163_96

def sourceBody163_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_78 sourceBody163_97

def sourceBody163_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_77 sourceBody163_98

def sourceBody163_100 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody163_99 sourceBody163_8

def sourceBody163_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_100 sourceBody163_5

def sourceBody163_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_101 sourceBody163_8

def sourceBody163_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_57 sourceBody163_102

def sourceBody163_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_76 sourceBody163_103

def sourceBody163_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_74 sourceBody163_104

def sourceBody163_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_73 sourceBody163_105

def sourceBody163_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_72 sourceBody163_106

def sourceBody163_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12, 20, 6]

def sourceBody163_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_108 sourceBody163_8

def sourceBody163_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_80 sourceBody163_109

def sourceBody163_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_73 sourceBody163_110

def sourceBody163_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_29 sourceBody163_111

def sourceBody163_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_107 sourceBody163_112

def sourceBody163_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_51 sourceBody163_113

def sourceBody163_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_8 sourceBody163_114

def sourceBody163_116 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody163_115 sourceBody163_8

def sourceBody163_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_116 sourceBody163_5

def sourceBody163_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_117 sourceBody163_8

def sourceBody163_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_33 sourceBody163_118

def sourceBody163_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_50 sourceBody163_119

def sourceBody163_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_48 sourceBody163_120

def sourceBody163_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_47 sourceBody163_121

def sourceBody163_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_46 sourceBody163_122

def sourceBody163_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 191#64)

def sourceBody163_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 183#64])

def sourceBody163_126 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody163_8, 163, 8)) (some 159) ([20]) (some (20, sourceBody163_59, 163, 9))

def sourceBody163_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_126 sourceBody163_5

def sourceBody163_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_127 sourceBody163_8

def sourceBody163_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_58 sourceBody163_128

def sourceBody163_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_8 sourceBody163_129

def sourceBody163_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_8 sourceBody163_130

def sourceBody163_132 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody163_131 sourceBody163_8

def sourceBody163_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_132 sourceBody163_5

def sourceBody163_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_133 sourceBody163_8

def sourceBody163_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_57 sourceBody163_134

def sourceBody163_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_56 sourceBody163_135

def sourceBody163_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_53 sourceBody163_136

def sourceBody163_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_52 sourceBody163_137

def sourceBody163_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody163_140 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody163_8, 163, 10)) (some 160) ([20, 6]) (some (20, sourceBody163_59, 163, 11))

def sourceBody163_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_140 sourceBody163_5

def sourceBody163_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_141 sourceBody163_8

def sourceBody163_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_53 sourceBody163_142

def sourceBody163_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_139 sourceBody163_143

def sourceBody163_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 55#64)

def sourceBody163_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody163_147 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.WordRegImm.reg 14) sourceBody163_74 sourceBody163_80

def sourceBody163_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_147 sourceBody163_5

def sourceBody163_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 5#64)

def sourceBody163_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody163_151 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody163_8, 163, 12)) (some 159) ([6]) (some (6, sourceBody163_150, 163, 13))

def sourceBody163_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_151 sourceBody163_5

def sourceBody163_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_152 sourceBody163_8

def sourceBody163_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_149 sourceBody163_153

def sourceBody163_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_8 sourceBody163_154

def sourceBody163_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_8 sourceBody163_155

def sourceBody163_157 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody163_156 sourceBody163_8

def sourceBody163_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_157 sourceBody163_5

def sourceBody163_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_158 sourceBody163_8

def sourceBody163_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_83 sourceBody163_159

def sourceBody163_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_148 sourceBody163_160

def sourceBody163_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_146 sourceBody163_161

def sourceBody163_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_145 sourceBody163_162

def sourceBody163_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 1#64],
      Flapjack.WordLangExpHOL.var 16])

def sourceBody163_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody163_166 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody163_8, 163, 14)) (some 159) ([6]) (some (6, sourceBody163_150, 163, 15))

def sourceBody163_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_166 sourceBody163_5

def sourceBody163_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_167 sourceBody163_8

def sourceBody163_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_165 sourceBody163_168

def sourceBody163_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_8 sourceBody163_169

def sourceBody163_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_8 sourceBody163_170

def sourceBody163_172 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody163_171 sourceBody163_8

def sourceBody163_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_172 sourceBody163_5

def sourceBody163_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_173 sourceBody163_8

def sourceBody163_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_83 sourceBody163_174

def sourceBody163_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_82 sourceBody163_175

def sourceBody163_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_146 sourceBody163_176

def sourceBody163_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_164 sourceBody163_177

def sourceBody163_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_163 sourceBody163_178

def sourceBody163_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.const 1#64, Flapjack.WordLangExpHOL.var 16])

def sourceBody163_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody163_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20, 6, 14]

def sourceBody163_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_182 sourceBody163_8

def sourceBody163_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_181 sourceBody163_183

def sourceBody163_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_33 sourceBody163_184

def sourceBody163_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_180 sourceBody163_185

def sourceBody163_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_179 sourceBody163_186

def sourceBody163_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_144 sourceBody163_187

def sourceBody163_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_8 sourceBody163_188

def sourceBody163_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_8 sourceBody163_189

def sourceBody163_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_138 sourceBody163_190

def sourceBody163_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_125 sourceBody163_191

def sourceBody163_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_8 sourceBody163_192

def sourceBody163_194 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody163_193 sourceBody163_8

def sourceBody163_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_194 sourceBody163_5

def sourceBody163_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_195 sourceBody163_8

def sourceBody163_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_33 sourceBody163_196

def sourceBody163_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_50 sourceBody163_197

def sourceBody163_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_48 sourceBody163_198

def sourceBody163_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_124 sourceBody163_199

def sourceBody163_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_123 sourceBody163_200

def sourceBody163_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 247#64)

def sourceBody163_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody163_204 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody163_8, 163, 16)) (some 159) ([20]) (some (20, sourceBody163_59, 163, 17))

def sourceBody163_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_204 sourceBody163_5

def sourceBody163_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_205 sourceBody163_8

def sourceBody163_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_58 sourceBody163_206

def sourceBody163_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_8 sourceBody163_207

def sourceBody163_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_8 sourceBody163_208

def sourceBody163_210 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody163_209 sourceBody163_8

def sourceBody163_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_210 sourceBody163_5

def sourceBody163_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_211 sourceBody163_8

def sourceBody163_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_57 sourceBody163_212

def sourceBody163_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_56 sourceBody163_213

def sourceBody163_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_53 sourceBody163_214

def sourceBody163_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_52 sourceBody163_215

def sourceBody163_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_74 sourceBody163_109

def sourceBody163_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_73 sourceBody163_217

def sourceBody163_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_29 sourceBody163_218

def sourceBody163_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_216 sourceBody163_219

def sourceBody163_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_203 sourceBody163_220

def sourceBody163_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_8 sourceBody163_221

def sourceBody163_223 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody163_222 sourceBody163_8

def sourceBody163_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_223 sourceBody163_5

def sourceBody163_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_224 sourceBody163_8

def sourceBody163_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_33 sourceBody163_225

def sourceBody163_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_50 sourceBody163_226

def sourceBody163_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_48 sourceBody163_227

def sourceBody163_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_202 sourceBody163_228

def sourceBody163_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_201 sourceBody163_229

def sourceBody163_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 247#64])

def sourceBody163_232 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody163_8, 163, 18)) (some 159) ([20]) (some (20, sourceBody163_59, 163, 19))

def sourceBody163_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_232 sourceBody163_5

def sourceBody163_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_233 sourceBody163_8

def sourceBody163_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_58 sourceBody163_234

def sourceBody163_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_8 sourceBody163_235

def sourceBody163_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_8 sourceBody163_236

def sourceBody163_238 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody163_237 sourceBody163_8

def sourceBody163_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_238 sourceBody163_5

def sourceBody163_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_239 sourceBody163_8

def sourceBody163_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_57 sourceBody163_240

def sourceBody163_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_56 sourceBody163_241

def sourceBody163_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_53 sourceBody163_242

def sourceBody163_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_52 sourceBody163_243

def sourceBody163_245 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody163_8, 163, 20)) (some 160) ([20, 6]) (some (20, sourceBody163_59, 163, 21))

def sourceBody163_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_245 sourceBody163_5

def sourceBody163_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_246 sourceBody163_8

def sourceBody163_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_53 sourceBody163_247

def sourceBody163_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_139 sourceBody163_248

def sourceBody163_250 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody163_8, 163, 22)) (some 159) ([6]) (some (6, sourceBody163_150, 163, 23))

def sourceBody163_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_250 sourceBody163_5

def sourceBody163_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_251 sourceBody163_8

def sourceBody163_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_149 sourceBody163_252

def sourceBody163_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_8 sourceBody163_253

def sourceBody163_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_8 sourceBody163_254

def sourceBody163_256 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody163_255 sourceBody163_8

def sourceBody163_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_256 sourceBody163_5

def sourceBody163_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_257 sourceBody163_8

def sourceBody163_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_83 sourceBody163_258

def sourceBody163_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_148 sourceBody163_259

def sourceBody163_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_146 sourceBody163_260

def sourceBody163_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_145 sourceBody163_261

def sourceBody163_263 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody163_8, 163, 24)) (some 159) ([6]) (some (6, sourceBody163_150, 163, 25))

def sourceBody163_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_263 sourceBody163_5

def sourceBody163_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_264 sourceBody163_8

def sourceBody163_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_165 sourceBody163_265

def sourceBody163_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_8 sourceBody163_266

def sourceBody163_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_8 sourceBody163_267

def sourceBody163_269 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody163_268 sourceBody163_8

def sourceBody163_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_269 sourceBody163_5

def sourceBody163_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_270 sourceBody163_8

def sourceBody163_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_83 sourceBody163_271

def sourceBody163_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_82 sourceBody163_272

def sourceBody163_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_146 sourceBody163_273

def sourceBody163_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_164 sourceBody163_274

def sourceBody163_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_262 sourceBody163_275

def sourceBody163_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody163_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_277 sourceBody163_183

def sourceBody163_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_33 sourceBody163_278

def sourceBody163_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_180 sourceBody163_279

def sourceBody163_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_276 sourceBody163_280

def sourceBody163_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_249 sourceBody163_281

def sourceBody163_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_8 sourceBody163_282

def sourceBody163_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_8 sourceBody163_283

def sourceBody163_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_244 sourceBody163_284

def sourceBody163_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_231 sourceBody163_285

def sourceBody163_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_8 sourceBody163_286

def sourceBody163_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_230 sourceBody163_287

def sourceBody163_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_27 sourceBody163_288

def sourceBody163_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_26 sourceBody163_289

def sourceBody163_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody163_22 sourceBody163_290

def source163 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (163, 3, sourceBody163_291)
end InitECandidate.Proofs.WordStages
