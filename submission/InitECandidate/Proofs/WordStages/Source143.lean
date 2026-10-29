import InitECandidate.Proofs.WordStages.Source127
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody143_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody143_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 8)
    (Flapjack.WordLangExpHOL.const 63#64))

def sourceBody143_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody143_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 256#64)

def sourceBody143_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody143_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody143_6 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 14 (Flapjack.WordRegImm.reg 32) sourceBody143_4 sourceBody143_5

def sourceBody143_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody143_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_6 sourceBody143_7

def sourceBody143_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def sourceBody143_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 24)

def sourceBody143_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody143_12 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 32) sourceBody143_4 sourceBody143_5

def sourceBody143_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_12 sourceBody143_7

def sourceBody143_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody143_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody143_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody143_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody143_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [42, 14, 32, 22]

def sourceBody143_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_18 sourceBody143_0

def sourceBody143_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_17 sourceBody143_19

def sourceBody143_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_16 sourceBody143_20

def sourceBody143_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_15 sourceBody143_21

def sourceBody143_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_14 sourceBody143_22

def sourceBody143_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody143_23 sourceBody143_0

def sourceBody143_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_24 sourceBody143_7

def sourceBody143_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_25 sourceBody143_0

def sourceBody143_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_9 sourceBody143_26

def sourceBody143_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_13 sourceBody143_27

def sourceBody143_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_11 sourceBody143_28

def sourceBody143_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_10 sourceBody143_29

def sourceBody143_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody143_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody143_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody143_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_33 sourceBody143_19

def sourceBody143_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_32 sourceBody143_34

def sourceBody143_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_5 sourceBody143_35

def sourceBody143_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_31 sourceBody143_36

def sourceBody143_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_30 sourceBody143_37

def sourceBody143_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody143_38 sourceBody143_0

def sourceBody143_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_39 sourceBody143_7

def sourceBody143_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_40 sourceBody143_0

def sourceBody143_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_9 sourceBody143_41

def sourceBody143_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_8 sourceBody143_42

def sourceBody143_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_3 sourceBody143_43

def sourceBody143_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_2 sourceBody143_44

def sourceBody143_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 2)

def sourceBody143_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody143_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 6)

def sourceBody143_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 8)

def sourceBody143_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 10)

def sourceBody143_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody143_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([42, 14, 32, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody143_0, 143, 2)) (some 142) ([40, 18, 36, 28, 44]) (some (40, sourceBody143_51, 143, 3))

def sourceBody143_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_52 sourceBody143_7

def sourceBody143_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_53 sourceBody143_0

def sourceBody143_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_50 sourceBody143_54

def sourceBody143_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_49 sourceBody143_55

def sourceBody143_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_48 sourceBody143_56

def sourceBody143_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_47 sourceBody143_57

def sourceBody143_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_46 sourceBody143_58

def sourceBody143_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def sourceBody143_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody143_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody143_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody143_64 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.WordRegImm.reg 36) sourceBody143_62 sourceBody143_63

def sourceBody143_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_64 sourceBody143_7

def sourceBody143_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 18)

def sourceBody143_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody143_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody143_69 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.reg 36) sourceBody143_62 sourceBody143_63

def sourceBody143_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_69 sourceBody143_7

def sourceBody143_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody143_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody143_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody143_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody143_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.const 256#64, Flapjack.WordLangExpHOL.var 10])

def sourceBody143_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def sourceBody143_77 : WordLangProgHOL (BitVec 64) :=
.call (some (([40, 18, 36, 28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody143_0, 143, 4)) (some 141) ([44, 12, 30, 20, 38]) (some (44, sourceBody143_76, 143, 5))

def sourceBody143_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_77 sourceBody143_7

def sourceBody143_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_78 sourceBody143_0

def sourceBody143_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_75 sourceBody143_79

def sourceBody143_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_74 sourceBody143_80

def sourceBody143_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_73 sourceBody143_81

def sourceBody143_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_72 sourceBody143_82

def sourceBody143_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_71 sourceBody143_83

def sourceBody143_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 42)

def sourceBody143_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody143_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 32)

def sourceBody143_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 22)

def sourceBody143_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 40)

def sourceBody143_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody143_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 36)

def sourceBody143_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 28)

def sourceBody143_93 : WordLangProgHOL (BitVec 64) :=
.call (some (([42, 14, 32, 22]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody143_0, 143, 6)) (some 113) ([44, 12, 30, 20, 38, 16, 34, 26]) (some (44, sourceBody143_76, 143, 7))

def sourceBody143_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_93 sourceBody143_7

def sourceBody143_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_94 sourceBody143_0

def sourceBody143_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_92 sourceBody143_95

def sourceBody143_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_91 sourceBody143_96

def sourceBody143_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_90 sourceBody143_97

def sourceBody143_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_89 sourceBody143_98

def sourceBody143_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_88 sourceBody143_99

def sourceBody143_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_87 sourceBody143_100

def sourceBody143_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_86 sourceBody143_101

def sourceBody143_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_85 sourceBody143_102

def sourceBody143_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_84 sourceBody143_103

def sourceBody143_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_0 sourceBody143_104

def sourceBody143_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_0 sourceBody143_105

def sourceBody143_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_0 sourceBody143_106

def sourceBody143_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_0 sourceBody143_107

def sourceBody143_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_0 sourceBody143_108

def sourceBody143_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_0 sourceBody143_109

def sourceBody143_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_0 sourceBody143_110

def sourceBody143_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_0 sourceBody143_111

def sourceBody143_113 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.imm 0#64) sourceBody143_112 sourceBody143_0

def sourceBody143_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_113 sourceBody143_7

def sourceBody143_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_114 sourceBody143_0

def sourceBody143_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_66 sourceBody143_115

def sourceBody143_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_70 sourceBody143_116

def sourceBody143_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_68 sourceBody143_117

def sourceBody143_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_67 sourceBody143_118

def sourceBody143_120 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.imm 0#64) sourceBody143_119 sourceBody143_0

def sourceBody143_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_120 sourceBody143_7

def sourceBody143_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_121 sourceBody143_0

def sourceBody143_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_66 sourceBody143_122

def sourceBody143_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_65 sourceBody143_123

def sourceBody143_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_61 sourceBody143_124

def sourceBody143_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_60 sourceBody143_125

def sourceBody143_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 42)

def sourceBody143_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody143_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 32)

def sourceBody143_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 22)

def sourceBody143_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [40, 18, 36, 28]

def sourceBody143_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_131 sourceBody143_0

def sourceBody143_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_130 sourceBody143_132

def sourceBody143_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_129 sourceBody143_133

def sourceBody143_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_128 sourceBody143_134

def sourceBody143_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_127 sourceBody143_135

def sourceBody143_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_126 sourceBody143_136

def sourceBody143_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_59 sourceBody143_137

def sourceBody143_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_0 sourceBody143_138

def sourceBody143_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_0 sourceBody143_139

def sourceBody143_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_0 sourceBody143_140

def sourceBody143_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_0 sourceBody143_141

def sourceBody143_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_0 sourceBody143_142

def sourceBody143_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_0 sourceBody143_143

def sourceBody143_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_0 sourceBody143_144

def sourceBody143_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_0 sourceBody143_145

def sourceBody143_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_45 sourceBody143_146

def sourceBody143_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_1 sourceBody143_147

def sourceBody143_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody143_0 sourceBody143_148

def source143 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (143, 6, sourceBody143_149)
end InitECandidate.Proofs.WordStages
