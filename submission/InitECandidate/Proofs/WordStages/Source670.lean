import InitECandidate.Proofs.WordStages.Source654
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody670_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 2)

def sourceBody670_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody670_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody670_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody670_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 44) sourceBody670_2 sourceBody670_3

def sourceBody670_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody670_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_4 sourceBody670_5

def sourceBody670_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 24)

def sourceBody670_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody670_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 6))

def sourceBody670_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody670_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody670_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody670_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 8))

def sourceBody670_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody670_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody670_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody670_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 34)

def sourceBody670_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody670_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 44)

def sourceBody670_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody670_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 32)

def sourceBody670_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 22)

def sourceBody670_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 42)

def sourceBody670_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody670_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody670_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([38, 28, 48, 10]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody670_8, 670, 2)) (some 661) ([30, 20, 40, 16, 36, 26, 46, 14]) (some (30, sourceBody670_25, 670, 3))

def sourceBody670_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_26 sourceBody670_5

def sourceBody670_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_27 sourceBody670_8

def sourceBody670_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_24 sourceBody670_28

def sourceBody670_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_23 sourceBody670_29

def sourceBody670_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_22 sourceBody670_30

def sourceBody670_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_21 sourceBody670_31

def sourceBody670_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_20 sourceBody670_32

def sourceBody670_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_19 sourceBody670_33

def sourceBody670_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_18 sourceBody670_34

def sourceBody670_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_17 sourceBody670_35

def sourceBody670_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 4)

def sourceBody670_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 38)

def sourceBody670_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 28)

def sourceBody670_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 48)

def sourceBody670_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 10)

def sourceBody670_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 20)

def sourceBody670_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 30) 26

def sourceBody670_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_43 sourceBody670_8

def sourceBody670_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_42 sourceBody670_44

def sourceBody670_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 40)

def sourceBody670_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 8#64])
  26

def sourceBody670_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_47 sourceBody670_8

def sourceBody670_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_46 sourceBody670_48

def sourceBody670_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 16)

def sourceBody670_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 16#64])
  26

def sourceBody670_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_51 sourceBody670_8

def sourceBody670_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_50 sourceBody670_52

def sourceBody670_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 36)

def sourceBody670_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 24#64])
  26

def sourceBody670_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_55 sourceBody670_8

def sourceBody670_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_54 sourceBody670_56

def sourceBody670_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_57 sourceBody670_8

def sourceBody670_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_53 sourceBody670_58

def sourceBody670_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_49 sourceBody670_59

def sourceBody670_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_45 sourceBody670_60

def sourceBody670_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_41 sourceBody670_61

def sourceBody670_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_8 sourceBody670_62

def sourceBody670_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_40 sourceBody670_63

def sourceBody670_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_8 sourceBody670_64

def sourceBody670_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_39 sourceBody670_65

def sourceBody670_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_8 sourceBody670_66

def sourceBody670_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_38 sourceBody670_67

def sourceBody670_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_8 sourceBody670_68

def sourceBody670_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_37 sourceBody670_69

def sourceBody670_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_8 sourceBody670_70

def sourceBody670_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody670_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [30]

def sourceBody670_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_73 sourceBody670_8

def sourceBody670_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_72 sourceBody670_74

def sourceBody670_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_71 sourceBody670_75

def sourceBody670_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_36 sourceBody670_76

def sourceBody670_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_8 sourceBody670_77

def sourceBody670_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_8 sourceBody670_78

def sourceBody670_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_8 sourceBody670_79

def sourceBody670_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_8 sourceBody670_80

def sourceBody670_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_8 sourceBody670_81

def sourceBody670_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_8 sourceBody670_82

def sourceBody670_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_8 sourceBody670_83

def sourceBody670_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_8 sourceBody670_84

def sourceBody670_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_16 sourceBody670_85

def sourceBody670_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_8 sourceBody670_86

def sourceBody670_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_15 sourceBody670_87

def sourceBody670_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_8 sourceBody670_88

def sourceBody670_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_14 sourceBody670_89

def sourceBody670_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_8 sourceBody670_90

def sourceBody670_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_13 sourceBody670_91

def sourceBody670_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_8 sourceBody670_92

def sourceBody670_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_12 sourceBody670_93

def sourceBody670_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_8 sourceBody670_94

def sourceBody670_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_11 sourceBody670_95

def sourceBody670_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_8 sourceBody670_96

def sourceBody670_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_10 sourceBody670_97

def sourceBody670_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_8 sourceBody670_98

def sourceBody670_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_9 sourceBody670_99

def sourceBody670_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_8 sourceBody670_100

def sourceBody670_102 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody670_101 sourceBody670_8

def sourceBody670_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_102 sourceBody670_5

def sourceBody670_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_103 sourceBody670_8

def sourceBody670_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_7 sourceBody670_104

def sourceBody670_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_6 sourceBody670_105

def sourceBody670_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_1 sourceBody670_106

def sourceBody670_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_0 sourceBody670_107

def sourceBody670_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody670_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 4)

def sourceBody670_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 6)

def sourceBody670_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody670_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody670_114 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody670_8, 670, 4)) (some 666) ([24, 44, 12]) (some (24, sourceBody670_113, 670, 5))

def sourceBody670_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_114 sourceBody670_5

def sourceBody670_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_115 sourceBody670_8

def sourceBody670_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_112 sourceBody670_116

def sourceBody670_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_111 sourceBody670_117

def sourceBody670_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_110 sourceBody670_118

def sourceBody670_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_8 sourceBody670_119

def sourceBody670_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_8 sourceBody670_120

def sourceBody670_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody670_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [34]

def sourceBody670_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_123 sourceBody670_8

def sourceBody670_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_122 sourceBody670_124

def sourceBody670_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_121 sourceBody670_125

def sourceBody670_127 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody670_126 sourceBody670_8

def sourceBody670_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_127 sourceBody670_5

def sourceBody670_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_128 sourceBody670_8

def sourceBody670_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_7 sourceBody670_129

def sourceBody670_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_6 sourceBody670_130

def sourceBody670_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_109 sourceBody670_131

def sourceBody670_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_0 sourceBody670_132

def sourceBody670_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_108 sourceBody670_133

def sourceBody670_135 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody670_8, 670, 6)) (some 668) ([24, 44, 12]) (some (24, sourceBody670_113, 670, 7))

def sourceBody670_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_135 sourceBody670_5

def sourceBody670_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_136 sourceBody670_8

def sourceBody670_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_112 sourceBody670_137

def sourceBody670_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_111 sourceBody670_138

def sourceBody670_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_110 sourceBody670_139

def sourceBody670_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_8 sourceBody670_140

def sourceBody670_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_8 sourceBody670_141

def sourceBody670_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_134 sourceBody670_142

def sourceBody670_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody670_143 sourceBody670_125

def source670 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (670, 5, sourceBody670_144)
end InitECandidate.Proofs.WordStages
