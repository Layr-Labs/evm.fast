import InitECandidate.Proofs.WordStages.Source128
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody144_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 2)

def sourceBody144_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 31#64)

def sourceBody144_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody144_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody144_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 42 (Flapjack.WordRegImm.reg 14) sourceBody144_2 sourceBody144_3

def sourceBody144_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody144_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_4 sourceBody144_5

def sourceBody144_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 42)

def sourceBody144_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 4)

def sourceBody144_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 6)

def sourceBody144_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody144_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody144_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [24, 42, 14, 32]

def sourceBody144_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody144_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_12 sourceBody144_13

def sourceBody144_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_11 sourceBody144_14

def sourceBody144_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_10 sourceBody144_15

def sourceBody144_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_9 sourceBody144_16

def sourceBody144_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_8 sourceBody144_17

def sourceBody144_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.imm 0#64) sourceBody144_18 sourceBody144_13

def sourceBody144_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_19 sourceBody144_5

def sourceBody144_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_20 sourceBody144_13

def sourceBody144_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_7 sourceBody144_21

def sourceBody144_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_6 sourceBody144_22

def sourceBody144_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_1 sourceBody144_23

def sourceBody144_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_0 sourceBody144_24

def sourceBody144_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 2)
        (Flapjack.WordLangExpHOL.const 3#64),
      Flapjack.WordLangExpHOL.const 7#64])

def sourceBody144_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody144_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 6)

def sourceBody144_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody144_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 10)

def sourceBody144_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def sourceBody144_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody144_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody144_13, 144, 2)) (some 104) ([14, 32, 22, 40, 18]) (some (14, sourceBody144_32, 144, 3))

def sourceBody144_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_33 sourceBody144_5

def sourceBody144_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_34 sourceBody144_13

def sourceBody144_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_31 sourceBody144_35

def sourceBody144_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_30 sourceBody144_36

def sourceBody144_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_29 sourceBody144_37

def sourceBody144_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_28 sourceBody144_38

def sourceBody144_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_27 sourceBody144_39

def sourceBody144_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody144_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody144_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody144_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody144_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody144_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody144_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([14, 32, 22, 40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody144_13, 144, 4)) (some 141) ([18, 36, 28, 46, 12]) (some (18, sourceBody144_46, 144, 5))

def sourceBody144_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_47 sourceBody144_5

def sourceBody144_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_48 sourceBody144_13

def sourceBody144_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_45 sourceBody144_49

def sourceBody144_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_44 sourceBody144_50

def sourceBody144_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_43 sourceBody144_51

def sourceBody144_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_42 sourceBody144_52

def sourceBody144_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_41 sourceBody144_53

def sourceBody144_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 42)

def sourceBody144_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody144_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody144_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody144_59 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 36 (Flapjack.WordRegImm.reg 28) sourceBody144_57 sourceBody144_58

def sourceBody144_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_59 sourceBody144_5

def sourceBody144_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 36)

def sourceBody144_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody144_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 6)

def sourceBody144_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 8)

def sourceBody144_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 10)

def sourceBody144_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody144_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 32)

def sourceBody144_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 22)

def sourceBody144_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 40)

def sourceBody144_70 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 113) ([0, 18, 36, 28, 46, 12, 30, 20, 38]) (none)

def sourceBody144_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_70 sourceBody144_13

def sourceBody144_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_69 sourceBody144_71

def sourceBody144_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_68 sourceBody144_72

def sourceBody144_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_67 sourceBody144_73

def sourceBody144_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_66 sourceBody144_74

def sourceBody144_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_65 sourceBody144_75

def sourceBody144_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_64 sourceBody144_76

def sourceBody144_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_63 sourceBody144_77

def sourceBody144_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_62 sourceBody144_78

def sourceBody144_80 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 46 (Flapjack.WordRegImm.imm 0#64) sourceBody144_79 sourceBody144_13

def sourceBody144_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_80 sourceBody144_5

def sourceBody144_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_81 sourceBody144_13

def sourceBody144_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_61 sourceBody144_82

def sourceBody144_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_60 sourceBody144_83

def sourceBody144_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_56 sourceBody144_84

def sourceBody144_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_55 sourceBody144_85

def sourceBody144_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody144_88 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 36, 28, 46]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody144_13, 144, 6)) (some 111) ([12, 30, 20, 38]) (some (12, sourceBody144_87, 144, 7))

def sourceBody144_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_88 sourceBody144_5

def sourceBody144_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_89 sourceBody144_13

def sourceBody144_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_69 sourceBody144_90

def sourceBody144_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_68 sourceBody144_91

def sourceBody144_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_67 sourceBody144_92

def sourceBody144_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_66 sourceBody144_93

def sourceBody144_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody144_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 6)

def sourceBody144_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody144_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 10)

def sourceBody144_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody144_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 36)

def sourceBody144_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 28)

def sourceBody144_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 46)

def sourceBody144_103 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 112) ([0, 12, 30, 20, 38, 16, 34, 26, 44]) (none)

def sourceBody144_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_103 sourceBody144_13

def sourceBody144_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_102 sourceBody144_104

def sourceBody144_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_101 sourceBody144_105

def sourceBody144_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_100 sourceBody144_106

def sourceBody144_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_99 sourceBody144_107

def sourceBody144_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_98 sourceBody144_108

def sourceBody144_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_97 sourceBody144_109

def sourceBody144_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_96 sourceBody144_110

def sourceBody144_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_95 sourceBody144_111

def sourceBody144_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_94 sourceBody144_112

def sourceBody144_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_13 sourceBody144_113

def sourceBody144_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_13 sourceBody144_114

def sourceBody144_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_13 sourceBody144_115

def sourceBody144_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_13 sourceBody144_116

def sourceBody144_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_13 sourceBody144_117

def sourceBody144_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_13 sourceBody144_118

def sourceBody144_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_13 sourceBody144_119

def sourceBody144_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_13 sourceBody144_120

def sourceBody144_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_86 sourceBody144_121

def sourceBody144_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_54 sourceBody144_122

def sourceBody144_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_13 sourceBody144_123

def sourceBody144_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_13 sourceBody144_124

def sourceBody144_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_13 sourceBody144_125

def sourceBody144_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_13 sourceBody144_126

def sourceBody144_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_13 sourceBody144_127

def sourceBody144_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_13 sourceBody144_128

def sourceBody144_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_13 sourceBody144_129

def sourceBody144_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_13 sourceBody144_130

def sourceBody144_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_40 sourceBody144_131

def sourceBody144_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_13 sourceBody144_132

def sourceBody144_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_13 sourceBody144_133

def sourceBody144_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_26 sourceBody144_134

def sourceBody144_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_13 sourceBody144_135

def sourceBody144_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody144_25 sourceBody144_136

def source144 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (144, 6, sourceBody144_137)
end InitECandidate.Proofs.WordStages
