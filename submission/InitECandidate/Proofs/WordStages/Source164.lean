import InitECandidate.Proofs.WordStages.Source148
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody164_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody164_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody164_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody164_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 4])

def sourceBody164_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody164_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody164_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 14)

def sourceBody164_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody164_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody164_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody164_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 18) sourceBody164_8 sourceBody164_9

def sourceBody164_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_10 sourceBody164_5

def sourceBody164_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody164_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody164_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def sourceBody164_15 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 18) sourceBody164_8 sourceBody164_9

def sourceBody164_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_15 sourceBody164_5

def sourceBody164_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 24)

def sourceBody164_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody164_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_18 sourceBody164_0

def sourceBody164_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_19 sourceBody164_0

def sourceBody164_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody164_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_21 sourceBody164_0

def sourceBody164_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_22 sourceBody164_0

def sourceBody164_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody164_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_24 sourceBody164_0

def sourceBody164_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_25 sourceBody164_0

def sourceBody164_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_23 sourceBody164_26

def sourceBody164_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody164_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 28)

def sourceBody164_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_29 sourceBody164_0

def sourceBody164_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_30 sourceBody164_0

def sourceBody164_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_28 sourceBody164_31

def sourceBody164_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_0 sourceBody164_32

def sourceBody164_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_27 sourceBody164_33

def sourceBody164_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody164_20 sourceBody164_34

def sourceBody164_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_35 sourceBody164_5

def sourceBody164_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_36 sourceBody164_0

def sourceBody164_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_12 sourceBody164_37

def sourceBody164_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_16 sourceBody164_38

def sourceBody164_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_7 sourceBody164_39

def sourceBody164_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_17 sourceBody164_40

def sourceBody164_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody164_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.var 8])

def sourceBody164_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody164_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([28, 6, 18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody164_0, 164, 2)) (some 163) ([12, 26]) (some (12, sourceBody164_44, 164, 3))

def sourceBody164_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_45 sourceBody164_5

def sourceBody164_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_46 sourceBody164_0

def sourceBody164_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_43 sourceBody164_47

def sourceBody164_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_42 sourceBody164_48

def sourceBody164_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 28])

def sourceBody164_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.var 6])

def sourceBody164_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 18)

def sourceBody164_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody164_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody164_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody164_56 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.reg 16) sourceBody164_54 sourceBody164_55

def sourceBody164_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_56 sourceBody164_5

def sourceBody164_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 22)

def sourceBody164_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 24#64)

def sourceBody164_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody164_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody164_0, 164, 4)) (some 74) ([22]) (some (22, sourceBody164_60, 164, 5))

def sourceBody164_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_61 sourceBody164_5

def sourceBody164_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_62 sourceBody164_0

def sourceBody164_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_59 sourceBody164_63

def sourceBody164_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody164_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 26)

def sourceBody164_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 16)

def sourceBody164_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 22) 30

def sourceBody164_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_68 sourceBody164_0

def sourceBody164_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_67 sourceBody164_69

def sourceBody164_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_70 sourceBody164_0

def sourceBody164_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_66 sourceBody164_71

def sourceBody164_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_0 sourceBody164_72

def sourceBody164_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_65 sourceBody164_73

def sourceBody164_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_0 sourceBody164_74

def sourceBody164_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody164_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 20)

def sourceBody164_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_77 sourceBody164_71

def sourceBody164_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_0 sourceBody164_78

def sourceBody164_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_76 sourceBody164_79

def sourceBody164_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_0 sourceBody164_80

def sourceBody164_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_75 sourceBody164_81

def sourceBody164_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody164_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 24)

def sourceBody164_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_84 sourceBody164_71

def sourceBody164_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_0 sourceBody164_85

def sourceBody164_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_83 sourceBody164_86

def sourceBody164_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_0 sourceBody164_87

def sourceBody164_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_82 sourceBody164_88

def sourceBody164_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody164_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_90 sourceBody164_0

def sourceBody164_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_91 sourceBody164_0

def sourceBody164_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_89 sourceBody164_92

def sourceBody164_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 12)

def sourceBody164_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_94 sourceBody164_0

def sourceBody164_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_95 sourceBody164_0

def sourceBody164_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_93 sourceBody164_96

def sourceBody164_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 26)

def sourceBody164_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_98 sourceBody164_0

def sourceBody164_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_99 sourceBody164_0

def sourceBody164_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_97 sourceBody164_100

def sourceBody164_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_64 sourceBody164_101

def sourceBody164_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_0 sourceBody164_102

def sourceBody164_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_0 sourceBody164_103

def sourceBody164_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 26)

def sourceBody164_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_105 sourceBody164_0

def sourceBody164_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_106 sourceBody164_0

def sourceBody164_108 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody164_104 sourceBody164_107

def sourceBody164_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_108 sourceBody164_5

def sourceBody164_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_109 sourceBody164_0

def sourceBody164_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_58 sourceBody164_110

def sourceBody164_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_57 sourceBody164_111

def sourceBody164_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_53 sourceBody164_112

def sourceBody164_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_52 sourceBody164_113

def sourceBody164_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_51 sourceBody164_114

def sourceBody164_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_0 sourceBody164_115

def sourceBody164_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_50 sourceBody164_116

def sourceBody164_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_0 sourceBody164_117

def sourceBody164_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_49 sourceBody164_118

def sourceBody164_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_0 sourceBody164_119

def sourceBody164_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_0 sourceBody164_120

def sourceBody164_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_0 sourceBody164_121

def sourceBody164_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_0 sourceBody164_122

def sourceBody164_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_0 sourceBody164_123

def sourceBody164_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_0 sourceBody164_124

def sourceBody164_126 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody164_41 sourceBody164_125

def sourceBody164_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_126 sourceBody164_5

def sourceBody164_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_127 sourceBody164_0

def sourceBody164_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_12 sourceBody164_128

def sourceBody164_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_16 sourceBody164_129

def sourceBody164_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_14 sourceBody164_130

def sourceBody164_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_13 sourceBody164_131

def sourceBody164_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody164_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_132 sourceBody164_133

def sourceBody164_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody164_136 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody164_134 sourceBody164_135

def sourceBody164_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_136 sourceBody164_5

def sourceBody164_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_137 sourceBody164_0

def sourceBody164_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_12 sourceBody164_138

def sourceBody164_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_11 sourceBody164_139

def sourceBody164_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_7 sourceBody164_140

def sourceBody164_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_6 sourceBody164_141

def sourceBody164_143 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) sourceBody164_142 (Flapjack.Spt.ls PUnit.unit)

def sourceBody164_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_143 sourceBody164_5

def sourceBody164_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_5 sourceBody164_144

def sourceBody164_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody164_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [28]

def sourceBody164_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_147 sourceBody164_0

def sourceBody164_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_146 sourceBody164_148

def sourceBody164_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_145 sourceBody164_149

def sourceBody164_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_4 sourceBody164_150

def sourceBody164_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_0 sourceBody164_151

def sourceBody164_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_3 sourceBody164_152

def sourceBody164_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_0 sourceBody164_153

def sourceBody164_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_2 sourceBody164_154

def sourceBody164_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_0 sourceBody164_155

def sourceBody164_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_1 sourceBody164_156

def sourceBody164_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody164_0 sourceBody164_157

def source164 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (164, 3, sourceBody164_158)
end InitECandidate.Proofs.WordStages
