import InitECandidate.Proofs.WordStages.Source693
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody709_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody709_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 2)

def sourceBody709_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
    [Flapjack.WordLangExpHOL.var 14,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64]])

def sourceBody709_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody709_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 44)

def sourceBody709_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 60 26 1))

def sourceBody709_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 1)

def sourceBody709_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 3)

def sourceBody709_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_6 sourceBody709_7

def sourceBody709_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_5 sourceBody709_8

def sourceBody709_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_4 sourceBody709_9

def sourceBody709_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_3 sourceBody709_10

def sourceBody709_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_11

def sourceBody709_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_2 sourceBody709_12

def sourceBody709_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_13

def sourceBody709_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_1 sourceBody709_14

def sourceBody709_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_15

def sourceBody709_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 4)

def sourceBody709_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
    [Flapjack.WordLangExpHOL.var 16,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64]])

def sourceBody709_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 40)

def sourceBody709_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 54)

def sourceBody709_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 44 34 1))

def sourceBody709_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 1)

def sourceBody709_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 3)

def sourceBody709_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_22 sourceBody709_23

def sourceBody709_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_21 sourceBody709_24

def sourceBody709_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_20 sourceBody709_25

def sourceBody709_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_19 sourceBody709_26

def sourceBody709_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_27

def sourceBody709_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_18 sourceBody709_28

def sourceBody709_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_29

def sourceBody709_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_17 sourceBody709_30

def sourceBody709_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_31

def sourceBody709_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 6)

def sourceBody709_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
    [Flapjack.WordLangExpHOL.var 18,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64]])

def sourceBody709_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 26)

def sourceBody709_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 48)

def sourceBody709_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 54 30 1))

def sourceBody709_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 1)

def sourceBody709_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 3)

def sourceBody709_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_38 sourceBody709_39

def sourceBody709_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_37 sourceBody709_40

def sourceBody709_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_36 sourceBody709_41

def sourceBody709_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_35 sourceBody709_42

def sourceBody709_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_43

def sourceBody709_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_34 sourceBody709_44

def sourceBody709_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_45

def sourceBody709_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_33 sourceBody709_46

def sourceBody709_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_47

def sourceBody709_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 8)

def sourceBody709_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
    [Flapjack.WordLangExpHOL.var 20,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64]])

def sourceBody709_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 34)

def sourceBody709_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 58)

def sourceBody709_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 48 38 1))

def sourceBody709_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 1)

def sourceBody709_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 3)

def sourceBody709_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_54 sourceBody709_55

def sourceBody709_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_53 sourceBody709_56

def sourceBody709_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_52 sourceBody709_57

def sourceBody709_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_51 sourceBody709_58

def sourceBody709_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_59

def sourceBody709_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_50 sourceBody709_60

def sourceBody709_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_61

def sourceBody709_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_49 sourceBody709_62

def sourceBody709_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_63

def sourceBody709_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 10)

def sourceBody709_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
    [Flapjack.WordLangExpHOL.var 22,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64]])

def sourceBody709_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 30)

def sourceBody709_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 46)

def sourceBody709_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 58 28 1))

def sourceBody709_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 1)

def sourceBody709_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 3)

def sourceBody709_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_70 sourceBody709_71

def sourceBody709_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_69 sourceBody709_72

def sourceBody709_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_68 sourceBody709_73

def sourceBody709_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_67 sourceBody709_74

def sourceBody709_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_75

def sourceBody709_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_66 sourceBody709_76

def sourceBody709_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_77

def sourceBody709_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_65 sourceBody709_78

def sourceBody709_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_79

def sourceBody709_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 12)

def sourceBody709_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor
    [Flapjack.WordLangExpHOL.var 24,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 1#64]])

def sourceBody709_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 38)

def sourceBody709_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 56)

def sourceBody709_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 46 36 1))

def sourceBody709_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 1)

def sourceBody709_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 3)

def sourceBody709_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_86 sourceBody709_87

def sourceBody709_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_85 sourceBody709_88

def sourceBody709_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_84 sourceBody709_89

def sourceBody709_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_83 sourceBody709_90

def sourceBody709_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_91

def sourceBody709_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_82 sourceBody709_92

def sourceBody709_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_93

def sourceBody709_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_81 sourceBody709_94

def sourceBody709_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_95

def sourceBody709_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 50)

def sourceBody709_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 60)

def sourceBody709_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 44)

def sourceBody709_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 54)

def sourceBody709_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 48)

def sourceBody709_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 58)

def sourceBody709_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 28)

def sourceBody709_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [46, 36, 56, 32, 52, 42, 62]

def sourceBody709_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_104 sourceBody709_0

def sourceBody709_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_103 sourceBody709_105

def sourceBody709_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_102 sourceBody709_106

def sourceBody709_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_101 sourceBody709_107

def sourceBody709_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_100 sourceBody709_108

def sourceBody709_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_99 sourceBody709_109

def sourceBody709_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_98 sourceBody709_110

def sourceBody709_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_97 sourceBody709_111

def sourceBody709_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_96 sourceBody709_112

def sourceBody709_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_113

def sourceBody709_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_114

def sourceBody709_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_115

def sourceBody709_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_116

def sourceBody709_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_80 sourceBody709_117

def sourceBody709_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_118

def sourceBody709_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_119

def sourceBody709_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_120

def sourceBody709_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_121

def sourceBody709_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_64 sourceBody709_122

def sourceBody709_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_123

def sourceBody709_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_124

def sourceBody709_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_125

def sourceBody709_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_126

def sourceBody709_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_48 sourceBody709_127

def sourceBody709_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_128

def sourceBody709_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_129

def sourceBody709_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_130

def sourceBody709_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_131

def sourceBody709_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_32 sourceBody709_132

def sourceBody709_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_133

def sourceBody709_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_134

def sourceBody709_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_135

def sourceBody709_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_136

def sourceBody709_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_16 sourceBody709_137

def sourceBody709_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_138

def sourceBody709_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_139

def sourceBody709_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_140

def sourceBody709_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody709_0 sourceBody709_141

def source709 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (709, 13, sourceBody709_142)
end InitECandidate.Proofs.WordStages
