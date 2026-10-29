import InitECandidate.Proofs.WordStages.Source692
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody708_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody708_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 2)

def sourceBody708_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 14)

def sourceBody708_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody708_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 44)

def sourceBody708_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 60 26 1))

def sourceBody708_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 1)

def sourceBody708_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 3)

def sourceBody708_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_6 sourceBody708_7

def sourceBody708_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_5 sourceBody708_8

def sourceBody708_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_4 sourceBody708_9

def sourceBody708_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_3 sourceBody708_10

def sourceBody708_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_11

def sourceBody708_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_2 sourceBody708_12

def sourceBody708_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_13

def sourceBody708_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_1 sourceBody708_14

def sourceBody708_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_15

def sourceBody708_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 4)

def sourceBody708_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 16)

def sourceBody708_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 40)

def sourceBody708_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 54)

def sourceBody708_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 44 34 1))

def sourceBody708_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 1)

def sourceBody708_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 3)

def sourceBody708_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_22 sourceBody708_23

def sourceBody708_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_21 sourceBody708_24

def sourceBody708_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_20 sourceBody708_25

def sourceBody708_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_19 sourceBody708_26

def sourceBody708_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_27

def sourceBody708_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_18 sourceBody708_28

def sourceBody708_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_29

def sourceBody708_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_17 sourceBody708_30

def sourceBody708_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_31

def sourceBody708_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 6)

def sourceBody708_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 18)

def sourceBody708_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 26)

def sourceBody708_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 48)

def sourceBody708_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 54 30 1))

def sourceBody708_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 1)

def sourceBody708_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 3)

def sourceBody708_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_38 sourceBody708_39

def sourceBody708_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_37 sourceBody708_40

def sourceBody708_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_36 sourceBody708_41

def sourceBody708_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_35 sourceBody708_42

def sourceBody708_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_43

def sourceBody708_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_34 sourceBody708_44

def sourceBody708_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_45

def sourceBody708_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_33 sourceBody708_46

def sourceBody708_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_47

def sourceBody708_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 8)

def sourceBody708_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 20)

def sourceBody708_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 34)

def sourceBody708_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 58)

def sourceBody708_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 48 38 1))

def sourceBody708_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 1)

def sourceBody708_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 3)

def sourceBody708_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_54 sourceBody708_55

def sourceBody708_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_53 sourceBody708_56

def sourceBody708_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_52 sourceBody708_57

def sourceBody708_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_51 sourceBody708_58

def sourceBody708_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_59

def sourceBody708_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_50 sourceBody708_60

def sourceBody708_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_61

def sourceBody708_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_49 sourceBody708_62

def sourceBody708_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_63

def sourceBody708_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 10)

def sourceBody708_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 22)

def sourceBody708_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 30)

def sourceBody708_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 46)

def sourceBody708_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 58 28 1))

def sourceBody708_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 1)

def sourceBody708_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 3)

def sourceBody708_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_70 sourceBody708_71

def sourceBody708_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_69 sourceBody708_72

def sourceBody708_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_68 sourceBody708_73

def sourceBody708_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_67 sourceBody708_74

def sourceBody708_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_75

def sourceBody708_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_66 sourceBody708_76

def sourceBody708_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_77

def sourceBody708_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_65 sourceBody708_78

def sourceBody708_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_79

def sourceBody708_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 12)

def sourceBody708_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 24)

def sourceBody708_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 38)

def sourceBody708_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 1 (Flapjack.WordLangExpHOL.var 56)

def sourceBody708_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 3 46 36 1))

def sourceBody708_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 1)

def sourceBody708_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 3)

def sourceBody708_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_86 sourceBody708_87

def sourceBody708_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_85 sourceBody708_88

def sourceBody708_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_84 sourceBody708_89

def sourceBody708_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_83 sourceBody708_90

def sourceBody708_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_91

def sourceBody708_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_82 sourceBody708_92

def sourceBody708_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_93

def sourceBody708_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_81 sourceBody708_94

def sourceBody708_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_95

def sourceBody708_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 50)

def sourceBody708_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 60)

def sourceBody708_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 44)

def sourceBody708_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 54)

def sourceBody708_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 48)

def sourceBody708_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 58)

def sourceBody708_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 28)

def sourceBody708_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [46, 36, 56, 32, 52, 42, 62]

def sourceBody708_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_104 sourceBody708_0

def sourceBody708_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_103 sourceBody708_105

def sourceBody708_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_102 sourceBody708_106

def sourceBody708_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_101 sourceBody708_107

def sourceBody708_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_100 sourceBody708_108

def sourceBody708_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_99 sourceBody708_109

def sourceBody708_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_98 sourceBody708_110

def sourceBody708_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_97 sourceBody708_111

def sourceBody708_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_96 sourceBody708_112

def sourceBody708_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_113

def sourceBody708_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_114

def sourceBody708_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_115

def sourceBody708_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_116

def sourceBody708_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_80 sourceBody708_117

def sourceBody708_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_118

def sourceBody708_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_119

def sourceBody708_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_120

def sourceBody708_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_121

def sourceBody708_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_64 sourceBody708_122

def sourceBody708_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_123

def sourceBody708_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_124

def sourceBody708_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_125

def sourceBody708_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_126

def sourceBody708_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_48 sourceBody708_127

def sourceBody708_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_128

def sourceBody708_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_129

def sourceBody708_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_130

def sourceBody708_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_131

def sourceBody708_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_32 sourceBody708_132

def sourceBody708_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_133

def sourceBody708_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_134

def sourceBody708_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_135

def sourceBody708_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_136

def sourceBody708_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_16 sourceBody708_137

def sourceBody708_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_138

def sourceBody708_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_139

def sourceBody708_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_140

def sourceBody708_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody708_0 sourceBody708_141

def source708 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (708, 13, sourceBody708_142)
end InitECandidate.Proofs.WordStages
