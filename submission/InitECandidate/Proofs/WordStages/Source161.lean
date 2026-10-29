import InitECandidate.Proofs.WordStages.Source145
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody161_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody161_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody161_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody161_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody161_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 16) sourceBody161_2 sourceBody161_3

def sourceBody161_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody161_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_4 sourceBody161_5

def sourceBody161_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody161_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody161_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody161_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody161_8, 161, 2)) (some 159) ([8]) (some (8, sourceBody161_9, 161, 3))

def sourceBody161_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_10 sourceBody161_5

def sourceBody161_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_11 sourceBody161_8

def sourceBody161_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_2 sourceBody161_12

def sourceBody161_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_13

def sourceBody161_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_14

def sourceBody161_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody161_15 sourceBody161_8

def sourceBody161_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_16 sourceBody161_5

def sourceBody161_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_17 sourceBody161_8

def sourceBody161_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_7 sourceBody161_18

def sourceBody161_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_6 sourceBody161_19

def sourceBody161_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_1 sourceBody161_20

def sourceBody161_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_0 sourceBody161_21

def sourceBody161_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody161_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 18 (Flapjack.WordLangAddr.addr 18 0#64))

def sourceBody161_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_24 sourceBody161_8

def sourceBody161_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_23 sourceBody161_25

def sourceBody161_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 18)

def sourceBody161_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody161_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody161_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody161_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 20) sourceBody161_29 sourceBody161_30

def sourceBody161_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_31 sourceBody161_5

def sourceBody161_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody161_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody161_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody161_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody161_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16, 12, 20, 6]

def sourceBody161_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_37 sourceBody161_8

def sourceBody161_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_36 sourceBody161_38

def sourceBody161_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_35 sourceBody161_39

def sourceBody161_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_34 sourceBody161_40

def sourceBody161_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_1 sourceBody161_41

def sourceBody161_43 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody161_42 sourceBody161_8

def sourceBody161_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_43 sourceBody161_5

def sourceBody161_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_44 sourceBody161_8

def sourceBody161_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_33 sourceBody161_45

def sourceBody161_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_32 sourceBody161_46

def sourceBody161_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_28 sourceBody161_47

def sourceBody161_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_7 sourceBody161_48

def sourceBody161_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 183#64)

def sourceBody161_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody161_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 12 (Flapjack.WordRegImm.reg 20) sourceBody161_29 sourceBody161_30

def sourceBody161_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_52 sourceBody161_5

def sourceBody161_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 128#64])

def sourceBody161_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody161_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 16)

def sourceBody161_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody161_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 20 (Flapjack.WordRegImm.reg 6) sourceBody161_35 sourceBody161_57

def sourceBody161_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_58 sourceBody161_5

def sourceBody161_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody161_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody161_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody161_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody161_8, 161, 4)) (some 159) ([20]) (some (20, sourceBody161_62, 161, 5))

def sourceBody161_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_63 sourceBody161_5

def sourceBody161_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_64 sourceBody161_8

def sourceBody161_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_61 sourceBody161_65

def sourceBody161_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_66

def sourceBody161_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_67

def sourceBody161_69 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody161_68 sourceBody161_8

def sourceBody161_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_69 sourceBody161_5

def sourceBody161_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_70 sourceBody161_8

def sourceBody161_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_60 sourceBody161_71

def sourceBody161_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_59 sourceBody161_72

def sourceBody161_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_56 sourceBody161_73

def sourceBody161_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_55 sourceBody161_74

def sourceBody161_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody161_77 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 20 (Flapjack.WordRegImm.reg 6) sourceBody161_35 sourceBody161_57

def sourceBody161_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_77 sourceBody161_5

def sourceBody161_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody161_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 12 (Flapjack.WordLangAddr.addr 12 0#64))

def sourceBody161_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody161_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody161_83 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.WordRegImm.reg 14) sourceBody161_36 sourceBody161_82

def sourceBody161_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_83 sourceBody161_5

def sourceBody161_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody161_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody161_87 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody161_8, 161, 6)) (some 159) ([20]) (some (20, sourceBody161_62, 161, 7))

def sourceBody161_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_87 sourceBody161_5

def sourceBody161_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_88 sourceBody161_8

def sourceBody161_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_86 sourceBody161_89

def sourceBody161_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_90

def sourceBody161_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_91

def sourceBody161_93 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody161_92 sourceBody161_8

def sourceBody161_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_93 sourceBody161_5

def sourceBody161_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_94 sourceBody161_8

def sourceBody161_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_85 sourceBody161_95

def sourceBody161_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_84 sourceBody161_96

def sourceBody161_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_81 sourceBody161_97

def sourceBody161_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_33 sourceBody161_98

def sourceBody161_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_80 sourceBody161_99

def sourceBody161_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_79 sourceBody161_100

def sourceBody161_102 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody161_101 sourceBody161_8

def sourceBody161_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_102 sourceBody161_5

def sourceBody161_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_103 sourceBody161_8

def sourceBody161_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_60 sourceBody161_104

def sourceBody161_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_78 sourceBody161_105

def sourceBody161_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_36 sourceBody161_106

def sourceBody161_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_76 sourceBody161_107

def sourceBody161_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_75 sourceBody161_108

def sourceBody161_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody161_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.const 1#64, Flapjack.WordLangExpHOL.var 16])

def sourceBody161_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12, 20, 6, 14]

def sourceBody161_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_112 sourceBody161_8

def sourceBody161_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_111 sourceBody161_113

def sourceBody161_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_56 sourceBody161_114

def sourceBody161_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_110 sourceBody161_115

def sourceBody161_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_30 sourceBody161_116

def sourceBody161_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_109 sourceBody161_117

def sourceBody161_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_54 sourceBody161_118

def sourceBody161_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_119

def sourceBody161_121 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody161_120 sourceBody161_8

def sourceBody161_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_121 sourceBody161_5

def sourceBody161_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_122 sourceBody161_8

def sourceBody161_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_33 sourceBody161_123

def sourceBody161_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_53 sourceBody161_124

def sourceBody161_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_51 sourceBody161_125

def sourceBody161_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_50 sourceBody161_126

def sourceBody161_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_49 sourceBody161_127

def sourceBody161_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 191#64)

def sourceBody161_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 183#64])

def sourceBody161_131 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody161_8, 161, 8)) (some 159) ([20]) (some (20, sourceBody161_62, 161, 9))

def sourceBody161_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_131 sourceBody161_5

def sourceBody161_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_132 sourceBody161_8

def sourceBody161_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_61 sourceBody161_133

def sourceBody161_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_134

def sourceBody161_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_135

def sourceBody161_137 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody161_136 sourceBody161_8

def sourceBody161_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_137 sourceBody161_5

def sourceBody161_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_138 sourceBody161_8

def sourceBody161_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_60 sourceBody161_139

def sourceBody161_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_59 sourceBody161_140

def sourceBody161_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_56 sourceBody161_141

def sourceBody161_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_55 sourceBody161_142

def sourceBody161_144 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody161_8, 161, 10)) (some 160) ([20, 6]) (some (20, sourceBody161_62, 161, 11))

def sourceBody161_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_144 sourceBody161_5

def sourceBody161_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_145 sourceBody161_8

def sourceBody161_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_56 sourceBody161_146

def sourceBody161_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_110 sourceBody161_147

def sourceBody161_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 55#64)

def sourceBody161_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody161_151 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.WordRegImm.reg 14) sourceBody161_36 sourceBody161_82

def sourceBody161_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_151 sourceBody161_5

def sourceBody161_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 5#64)

def sourceBody161_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody161_155 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody161_8, 161, 12)) (some 159) ([6]) (some (6, sourceBody161_154, 161, 13))

def sourceBody161_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_155 sourceBody161_5

def sourceBody161_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_156 sourceBody161_8

def sourceBody161_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_153 sourceBody161_157

def sourceBody161_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_158

def sourceBody161_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_159

def sourceBody161_161 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody161_160 sourceBody161_8

def sourceBody161_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_161 sourceBody161_5

def sourceBody161_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_162 sourceBody161_8

def sourceBody161_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_85 sourceBody161_163

def sourceBody161_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_152 sourceBody161_164

def sourceBody161_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_150 sourceBody161_165

def sourceBody161_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_149 sourceBody161_166

def sourceBody161_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 1#64],
      Flapjack.WordLangExpHOL.var 16])

def sourceBody161_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody161_170 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody161_8, 161, 14)) (some 159) ([6]) (some (6, sourceBody161_154, 161, 15))

def sourceBody161_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_170 sourceBody161_5

def sourceBody161_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_171 sourceBody161_8

def sourceBody161_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_169 sourceBody161_172

def sourceBody161_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_173

def sourceBody161_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_174

def sourceBody161_176 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody161_175 sourceBody161_8

def sourceBody161_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_176 sourceBody161_5

def sourceBody161_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_177 sourceBody161_8

def sourceBody161_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_85 sourceBody161_178

def sourceBody161_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_84 sourceBody161_179

def sourceBody161_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_150 sourceBody161_180

def sourceBody161_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_168 sourceBody161_181

def sourceBody161_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_167 sourceBody161_182

def sourceBody161_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 1#64, Flapjack.WordLangExpHOL.var 16])

def sourceBody161_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.const 1#64, Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.var 12])

def sourceBody161_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20, 6, 14, 10]

def sourceBody161_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_186 sourceBody161_8

def sourceBody161_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_185 sourceBody161_187

def sourceBody161_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_150 sourceBody161_188

def sourceBody161_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_184 sourceBody161_189

def sourceBody161_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_57 sourceBody161_190

def sourceBody161_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_183 sourceBody161_191

def sourceBody161_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_148 sourceBody161_192

def sourceBody161_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_193

def sourceBody161_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_194

def sourceBody161_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_143 sourceBody161_195

def sourceBody161_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_130 sourceBody161_196

def sourceBody161_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_197

def sourceBody161_199 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody161_198 sourceBody161_8

def sourceBody161_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_199 sourceBody161_5

def sourceBody161_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_200 sourceBody161_8

def sourceBody161_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_33 sourceBody161_201

def sourceBody161_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_53 sourceBody161_202

def sourceBody161_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_51 sourceBody161_203

def sourceBody161_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_129 sourceBody161_204

def sourceBody161_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_128 sourceBody161_205

def sourceBody161_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 247#64)

def sourceBody161_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody161_209 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody161_8, 161, 16)) (some 159) ([20]) (some (20, sourceBody161_62, 161, 17))

def sourceBody161_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_209 sourceBody161_5

def sourceBody161_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_210 sourceBody161_8

def sourceBody161_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_61 sourceBody161_211

def sourceBody161_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_212

def sourceBody161_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_213

def sourceBody161_215 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody161_214 sourceBody161_8

def sourceBody161_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_215 sourceBody161_5

def sourceBody161_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_216 sourceBody161_8

def sourceBody161_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_60 sourceBody161_217

def sourceBody161_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_59 sourceBody161_218

def sourceBody161_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_56 sourceBody161_219

def sourceBody161_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_55 sourceBody161_220

def sourceBody161_222 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody161_8, 161, 18)) (some 167) ([20, 6]) (some (20, sourceBody161_62, 161, 19))

def sourceBody161_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_222 sourceBody161_5

def sourceBody161_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_223 sourceBody161_8

def sourceBody161_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_56 sourceBody161_224

def sourceBody161_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_110 sourceBody161_225

def sourceBody161_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_226

def sourceBody161_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_227

def sourceBody161_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_221 sourceBody161_228

def sourceBody161_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_29 sourceBody161_116

def sourceBody161_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_229 sourceBody161_230

def sourceBody161_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_208 sourceBody161_231

def sourceBody161_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_232

def sourceBody161_234 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody161_233 sourceBody161_8

def sourceBody161_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_234 sourceBody161_5

def sourceBody161_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_235 sourceBody161_8

def sourceBody161_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_33 sourceBody161_236

def sourceBody161_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_53 sourceBody161_237

def sourceBody161_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_51 sourceBody161_238

def sourceBody161_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_207 sourceBody161_239

def sourceBody161_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_206 sourceBody161_240

def sourceBody161_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 247#64])

def sourceBody161_243 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody161_8, 161, 20)) (some 159) ([20]) (some (20, sourceBody161_62, 161, 21))

def sourceBody161_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_243 sourceBody161_5

def sourceBody161_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_244 sourceBody161_8

def sourceBody161_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_61 sourceBody161_245

def sourceBody161_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_246

def sourceBody161_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_247

def sourceBody161_249 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody161_248 sourceBody161_8

def sourceBody161_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_249 sourceBody161_5

def sourceBody161_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_250 sourceBody161_8

def sourceBody161_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_60 sourceBody161_251

def sourceBody161_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_59 sourceBody161_252

def sourceBody161_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_56 sourceBody161_253

def sourceBody161_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_55 sourceBody161_254

def sourceBody161_256 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody161_8, 161, 22)) (some 160) ([20, 6]) (some (20, sourceBody161_62, 161, 23))

def sourceBody161_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_256 sourceBody161_5

def sourceBody161_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_257 sourceBody161_8

def sourceBody161_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_56 sourceBody161_258

def sourceBody161_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_110 sourceBody161_259

def sourceBody161_261 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody161_8, 161, 24)) (some 159) ([6]) (some (6, sourceBody161_154, 161, 25))

def sourceBody161_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_261 sourceBody161_5

def sourceBody161_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_262 sourceBody161_8

def sourceBody161_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_153 sourceBody161_263

def sourceBody161_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_264

def sourceBody161_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_265

def sourceBody161_267 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody161_266 sourceBody161_8

def sourceBody161_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_267 sourceBody161_5

def sourceBody161_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_268 sourceBody161_8

def sourceBody161_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_85 sourceBody161_269

def sourceBody161_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_152 sourceBody161_270

def sourceBody161_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_150 sourceBody161_271

def sourceBody161_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_149 sourceBody161_272

def sourceBody161_274 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody161_8, 161, 26)) (some 159) ([6]) (some (6, sourceBody161_154, 161, 27))

def sourceBody161_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_274 sourceBody161_5

def sourceBody161_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_275 sourceBody161_8

def sourceBody161_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_169 sourceBody161_276

def sourceBody161_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_277

def sourceBody161_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_278

def sourceBody161_280 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody161_279 sourceBody161_8

def sourceBody161_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_280 sourceBody161_5

def sourceBody161_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_281 sourceBody161_8

def sourceBody161_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_85 sourceBody161_282

def sourceBody161_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_84 sourceBody161_283

def sourceBody161_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_150 sourceBody161_284

def sourceBody161_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_168 sourceBody161_285

def sourceBody161_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_273 sourceBody161_286

def sourceBody161_288 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody161_8, 161, 28)) (some 167) ([6, 14]) (some (6, sourceBody161_154, 161, 29))

def sourceBody161_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_288 sourceBody161_5

def sourceBody161_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_289 sourceBody161_8

def sourceBody161_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_150 sourceBody161_290

def sourceBody161_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_184 sourceBody161_291

def sourceBody161_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_292

def sourceBody161_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_293

def sourceBody161_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_287 sourceBody161_294

def sourceBody161_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_35 sourceBody161_190

def sourceBody161_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_295 sourceBody161_296

def sourceBody161_298 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_260 sourceBody161_297

def sourceBody161_299 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_298

def sourceBody161_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_299

def sourceBody161_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_255 sourceBody161_300

def sourceBody161_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_242 sourceBody161_301

def sourceBody161_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_8 sourceBody161_302

def sourceBody161_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_241 sourceBody161_303

def sourceBody161_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_27 sourceBody161_304

def sourceBody161_306 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_26 sourceBody161_305

def sourceBody161_307 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody161_22 sourceBody161_306

def source161 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (161, 3, sourceBody161_307)
end InitECandidate.Proofs.WordStages
