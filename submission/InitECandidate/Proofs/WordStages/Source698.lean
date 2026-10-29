import InitECandidate.Proofs.WordStages.Source682
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody698_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody698_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody698_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody698_0, 698, 2)) (some 69) ([]) (some (8, sourceBody698_1, 698, 3))

def sourceBody698_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody698_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_2 sourceBody698_3

def sourceBody698_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_4 sourceBody698_0

def sourceBody698_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody698_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody698_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody698_0, 698, 4)) (some 68) ([18]) (some (18, sourceBody698_7, 698, 5))

def sourceBody698_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_8 sourceBody698_3

def sourceBody698_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_9 sourceBody698_0

def sourceBody698_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_6 sourceBody698_10

def sourceBody698_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody698_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody698_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody698_0, 698, 6)) (some 68) ([14]) (some (14, sourceBody698_13, 698, 7))

def sourceBody698_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_14 sourceBody698_3

def sourceBody698_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_15 sourceBody698_0

def sourceBody698_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_12 sourceBody698_16

def sourceBody698_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 2)

def sourceBody698_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody698_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody698_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody698_0, 698, 8)) (some 695) ([24, 6]) (some (24, sourceBody698_20, 698, 9))

def sourceBody698_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_21 sourceBody698_3

def sourceBody698_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_22 sourceBody698_0

def sourceBody698_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_19 sourceBody698_23

def sourceBody698_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_18 sourceBody698_24

def sourceBody698_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 14)

def sourceBody698_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody698_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody698_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody698_30 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 16) sourceBody698_28 sourceBody698_29

def sourceBody698_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_30 sourceBody698_3

def sourceBody698_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody698_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 20)

def sourceBody698_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody698_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody698_0, 698, 10)) (some 70) ([6]) (some (6, sourceBody698_34, 698, 11))

def sourceBody698_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_35 sourceBody698_3

def sourceBody698_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_36 sourceBody698_0

def sourceBody698_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_33 sourceBody698_37

def sourceBody698_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_0 sourceBody698_38

def sourceBody698_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_0 sourceBody698_39

def sourceBody698_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody698_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [24]

def sourceBody698_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_42 sourceBody698_0

def sourceBody698_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_41 sourceBody698_43

def sourceBody698_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_40 sourceBody698_44

def sourceBody698_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody698_45 sourceBody698_0

def sourceBody698_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_46 sourceBody698_3

def sourceBody698_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_47 sourceBody698_0

def sourceBody698_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_32 sourceBody698_48

def sourceBody698_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_31 sourceBody698_49

def sourceBody698_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_27 sourceBody698_50

def sourceBody698_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_26 sourceBody698_51

def sourceBody698_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody698_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody698_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody698_0, 698, 12)) (some 695) ([6, 16]) (some (6, sourceBody698_34, 698, 13))

def sourceBody698_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_55 sourceBody698_3

def sourceBody698_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_56 sourceBody698_0

def sourceBody698_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_54 sourceBody698_57

def sourceBody698_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_53 sourceBody698_58

def sourceBody698_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 24)

def sourceBody698_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody698_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody698_63 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 12) sourceBody698_62 sourceBody698_27

def sourceBody698_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_63 sourceBody698_3

def sourceBody698_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 16)

def sourceBody698_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 20)

def sourceBody698_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody698_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody698_0, 698, 14)) (some 70) ([16]) (some (16, sourceBody698_67, 698, 15))

def sourceBody698_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_68 sourceBody698_3

def sourceBody698_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_69 sourceBody698_0

def sourceBody698_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_66 sourceBody698_70

def sourceBody698_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_0 sourceBody698_71

def sourceBody698_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_0 sourceBody698_72

def sourceBody698_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody698_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_74 sourceBody698_0

def sourceBody698_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_28 sourceBody698_75

def sourceBody698_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_73 sourceBody698_76

def sourceBody698_78 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody698_77 sourceBody698_0

def sourceBody698_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_78 sourceBody698_3

def sourceBody698_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_79 sourceBody698_0

def sourceBody698_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_65 sourceBody698_80

def sourceBody698_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_64 sourceBody698_81

def sourceBody698_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_61 sourceBody698_82

def sourceBody698_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_60 sourceBody698_83

def sourceBody698_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody698_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody698_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 18)

def sourceBody698_88 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody698_0, 698, 16)) (some 683) ([16, 12, 22, 10]) (some (16, sourceBody698_67, 698, 17))

def sourceBody698_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_88 sourceBody698_3

def sourceBody698_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_89 sourceBody698_0

def sourceBody698_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_87 sourceBody698_90

def sourceBody698_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_86 sourceBody698_91

def sourceBody698_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_85 sourceBody698_92

def sourceBody698_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_62 sourceBody698_93

def sourceBody698_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_0 sourceBody698_94

def sourceBody698_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_0 sourceBody698_95

def sourceBody698_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_84 sourceBody698_96

def sourceBody698_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody698_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody698_100 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody698_0, 698, 18)) (some 697) ([16, 12]) (some (16, sourceBody698_67, 698, 19))

def sourceBody698_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_100 sourceBody698_3

def sourceBody698_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_101 sourceBody698_0

def sourceBody698_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_99 sourceBody698_102

def sourceBody698_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_98 sourceBody698_103

def sourceBody698_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_0 sourceBody698_104

def sourceBody698_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_0 sourceBody698_105

def sourceBody698_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_97 sourceBody698_106

def sourceBody698_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody698_0, 698, 20)) (some 70) ([16]) (some (16, sourceBody698_67, 698, 21))

def sourceBody698_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_108 sourceBody698_3

def sourceBody698_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_109 sourceBody698_0

def sourceBody698_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_66 sourceBody698_110

def sourceBody698_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_0 sourceBody698_111

def sourceBody698_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_0 sourceBody698_112

def sourceBody698_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_107 sourceBody698_113

def sourceBody698_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_29 sourceBody698_75

def sourceBody698_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_114 sourceBody698_115

def sourceBody698_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_59 sourceBody698_116

def sourceBody698_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_0 sourceBody698_117

def sourceBody698_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_0 sourceBody698_118

def sourceBody698_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_52 sourceBody698_119

def sourceBody698_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_25 sourceBody698_120

def sourceBody698_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_0 sourceBody698_121

def sourceBody698_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_0 sourceBody698_122

def sourceBody698_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_17 sourceBody698_123

def sourceBody698_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_0 sourceBody698_124

def sourceBody698_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_0 sourceBody698_125

def sourceBody698_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_11 sourceBody698_126

def sourceBody698_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_0 sourceBody698_127

def sourceBody698_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_0 sourceBody698_128

def sourceBody698_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_5 sourceBody698_129

def sourceBody698_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_0 sourceBody698_130

def sourceBody698_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody698_0 sourceBody698_131

def source698 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (698, 3, sourceBody698_132)
end InitECandidate.Proofs.WordStages
