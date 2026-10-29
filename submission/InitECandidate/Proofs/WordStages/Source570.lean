import InitECandidate.Proofs.WordStages.Source554
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody570_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody570_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody570_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 28, 6, 24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody570_0, 570, 2)) (some 475) ([]) (some (16, sourceBody570_1, 570, 3))

def sourceBody570_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody570_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_2 sourceBody570_3

def sourceBody570_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_4 sourceBody570_0

def sourceBody570_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody570_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 28)

def sourceBody570_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 6)

def sourceBody570_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 24)

def sourceBody570_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody570_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody570_0, 570, 4)) (some 466) ([32, 4, 22, 14]) (some (32, sourceBody570_10, 570, 5))

def sourceBody570_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_11 sourceBody570_3

def sourceBody570_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_12 sourceBody570_0

def sourceBody570_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_9 sourceBody570_13

def sourceBody570_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_8 sourceBody570_14

def sourceBody570_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_7 sourceBody570_15

def sourceBody570_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_6 sourceBody570_16

def sourceBody570_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 16)

def sourceBody570_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody570_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody570_0, 570, 6)) (some 495) ([4]) (some (4, sourceBody570_19, 570, 7))

def sourceBody570_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_20 sourceBody570_3

def sourceBody570_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_21 sourceBody570_0

def sourceBody570_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_18 sourceBody570_22

def sourceBody570_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 32)

def sourceBody570_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody570_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody570_0, 570, 8)) (some 470) ([22]) (some (22, sourceBody570_25, 570, 9))

def sourceBody570_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_26 sourceBody570_3

def sourceBody570_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_27 sourceBody570_0

def sourceBody570_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_24 sourceBody570_28

def sourceBody570_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_29

def sourceBody570_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_30

def sourceBody570_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 16)

def sourceBody570_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 32)

def sourceBody570_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody570_0, 570, 10)) (some 496) ([22, 14]) (some (22, sourceBody570_25, 570, 11))

def sourceBody570_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_34 sourceBody570_3

def sourceBody570_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_35 sourceBody570_0

def sourceBody570_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_33 sourceBody570_36

def sourceBody570_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_32 sourceBody570_37

def sourceBody570_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_38

def sourceBody570_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_39

def sourceBody570_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_31 sourceBody570_40

def sourceBody570_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody570_0, 570, 12)) (some 407) ([22]) (some (22, sourceBody570_25, 570, 13))

def sourceBody570_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_42 sourceBody570_3

def sourceBody570_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_43 sourceBody570_0

def sourceBody570_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_32 sourceBody570_44

def sourceBody570_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody570_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody570_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody570_0, 570, 14)) (some 416) ([14]) (some (14, sourceBody570_47, 570, 15))

def sourceBody570_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_48 sourceBody570_3

def sourceBody570_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_49 sourceBody570_0

def sourceBody570_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_46 sourceBody570_50

def sourceBody570_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 22)

def sourceBody570_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody570_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody570_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody570_56 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.reg 8) sourceBody570_54 sourceBody570_55

def sourceBody570_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_56 sourceBody570_3

def sourceBody570_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 30)

def sourceBody570_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody570_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody570_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody570_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody570_0, 570, 16)) (some 476) ([30, 8, 26, 18]) (some (30, sourceBody570_61, 570, 17))

def sourceBody570_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_62 sourceBody570_3

def sourceBody570_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_63 sourceBody570_0

def sourceBody570_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_60 sourceBody570_64

def sourceBody570_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_59 sourceBody570_65

def sourceBody570_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_53 sourceBody570_66

def sourceBody570_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_55 sourceBody570_67

def sourceBody570_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_68

def sourceBody570_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_69

def sourceBody570_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody570_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody570_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody570_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([14, 30, 8, 26]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody570_0, 570, 18)) (some 146) ([18, 34]) (some (18, sourceBody570_73, 570, 19))

def sourceBody570_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_74 sourceBody570_3

def sourceBody570_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_75 sourceBody570_0

def sourceBody570_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_72 sourceBody570_76

def sourceBody570_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_71 sourceBody570_77

def sourceBody570_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 14)

def sourceBody570_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 30)

def sourceBody570_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody570_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 26)

def sourceBody570_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody570_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody570_0, 570, 20)) (some 476) ([34, 2, 20, 12]) (some (34, sourceBody570_83, 570, 21))

def sourceBody570_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_84 sourceBody570_3

def sourceBody570_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_85 sourceBody570_0

def sourceBody570_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_82 sourceBody570_86

def sourceBody570_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_81 sourceBody570_87

def sourceBody570_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_80 sourceBody570_88

def sourceBody570_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_79 sourceBody570_89

def sourceBody570_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_90

def sourceBody570_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_91

def sourceBody570_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_78 sourceBody570_92

def sourceBody570_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_93

def sourceBody570_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_94

def sourceBody570_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_95

def sourceBody570_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_96

def sourceBody570_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_97

def sourceBody570_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_98

def sourceBody570_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_99

def sourceBody570_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_100

def sourceBody570_102 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody570_70 sourceBody570_101

def sourceBody570_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_102 sourceBody570_3

def sourceBody570_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_103 sourceBody570_0

def sourceBody570_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_58 sourceBody570_104

def sourceBody570_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_57 sourceBody570_105

def sourceBody570_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_53 sourceBody570_106

def sourceBody570_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_52 sourceBody570_107

def sourceBody570_109 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody570_0, 570, 22)) (some 490) ([30]) (some (30, sourceBody570_61, 570, 23))

def sourceBody570_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_109 sourceBody570_3

def sourceBody570_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_110 sourceBody570_0

def sourceBody570_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_54 sourceBody570_111

def sourceBody570_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_112

def sourceBody570_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_113

def sourceBody570_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_108 sourceBody570_114

def sourceBody570_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody570_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody570_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_117 sourceBody570_0

def sourceBody570_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_116 sourceBody570_118

def sourceBody570_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_115 sourceBody570_119

def sourceBody570_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_51 sourceBody570_120

def sourceBody570_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_121

def sourceBody570_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_122

def sourceBody570_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_45 sourceBody570_123

def sourceBody570_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_124

def sourceBody570_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_125

def sourceBody570_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_41 sourceBody570_126

def sourceBody570_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_23 sourceBody570_127

def sourceBody570_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_128

def sourceBody570_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_129

def sourceBody570_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_17 sourceBody570_130

def sourceBody570_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_131

def sourceBody570_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_132

def sourceBody570_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_5 sourceBody570_133

def sourceBody570_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_134

def sourceBody570_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_135

def sourceBody570_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_136

def sourceBody570_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_137

def sourceBody570_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_138

def sourceBody570_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_139

def sourceBody570_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_140

def sourceBody570_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody570_0 sourceBody570_141

def source570 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (570, 1, sourceBody570_142)
end InitECandidate.Proofs.WordStages
