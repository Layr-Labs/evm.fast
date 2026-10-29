import InitECandidate.Proofs.WordStages.Source694
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody710_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody710_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 2)

def sourceBody710_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 4)

def sourceBody710_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 6)

def sourceBody710_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 8)

def sourceBody710_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody710_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 12)

def sourceBody710_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 14)

def sourceBody710_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 16)

def sourceBody710_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 18)

def sourceBody710_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 20)

def sourceBody710_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 22)

def sourceBody710_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88 (Flapjack.WordLangExpHOL.var 24)

def sourceBody710_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody710_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([70, 54, 86, 28, 60, 44, 76]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody710_0, 710, 2)) (some 708) ([36, 68, 52, 84, 32, 64, 48, 80, 40, 72, 56, 88]) (some (36, sourceBody710_13, 710, 3))

def sourceBody710_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody710_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_14 sourceBody710_15

def sourceBody710_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_16 sourceBody710_0

def sourceBody710_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_12 sourceBody710_17

def sourceBody710_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_11 sourceBody710_18

def sourceBody710_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_10 sourceBody710_19

def sourceBody710_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_9 sourceBody710_20

def sourceBody710_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_8 sourceBody710_21

def sourceBody710_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_7 sourceBody710_22

def sourceBody710_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_6 sourceBody710_23

def sourceBody710_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_5 sourceBody710_24

def sourceBody710_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_4 sourceBody710_25

def sourceBody710_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_3 sourceBody710_26

def sourceBody710_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_2 sourceBody710_27

def sourceBody710_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_1 sourceBody710_28

def sourceBody710_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 70)

def sourceBody710_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 54)

def sourceBody710_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 86)

def sourceBody710_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 28)

def sourceBody710_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 60)

def sourceBody710_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 44)

def sourceBody710_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 36)

def sourceBody710_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 68)

def sourceBody710_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 52)

def sourceBody710_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 84)

def sourceBody710_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 32)

def sourceBody710_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 64)

def sourceBody710_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.const 13402431016077863595#64)

def sourceBody710_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 2210141511517208575#64)

def sourceBody710_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 7435674573564081700#64)

def sourceBody710_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 7239337960414712511#64)

def sourceBody710_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.const 5412103778470702295#64)

def sourceBody710_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 1873798617647539866#64)

def sourceBody710_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 58

def sourceBody710_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([48, 80, 40, 72, 56, 88, 26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody710_0, 710, 4)) (some 709) ([58, 42, 74, 34, 66, 50, 82, 30, 62, 46, 78, 38]) (some (58, sourceBody710_48, 710, 5))

def sourceBody710_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_49 sourceBody710_15

def sourceBody710_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_50 sourceBody710_0

def sourceBody710_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_47 sourceBody710_51

def sourceBody710_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_46 sourceBody710_52

def sourceBody710_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_45 sourceBody710_53

def sourceBody710_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_44 sourceBody710_54

def sourceBody710_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_43 sourceBody710_55

def sourceBody710_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_42 sourceBody710_56

def sourceBody710_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_41 sourceBody710_57

def sourceBody710_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_40 sourceBody710_58

def sourceBody710_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_39 sourceBody710_59

def sourceBody710_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_38 sourceBody710_60

def sourceBody710_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_37 sourceBody710_61

def sourceBody710_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_36 sourceBody710_62

def sourceBody710_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 26)

def sourceBody710_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody710_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody710_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody710_68 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 42 (Flapjack.WordRegImm.reg 74) sourceBody710_66 sourceBody710_67

def sourceBody710_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_68 sourceBody710_15

def sourceBody710_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 42)

def sourceBody710_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 48)

def sourceBody710_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 80)

def sourceBody710_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 40)

def sourceBody710_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 72)

def sourceBody710_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 56)

def sourceBody710_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 88)

def sourceBody710_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [58, 42, 74, 34, 66, 50]

def sourceBody710_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_77 sourceBody710_0

def sourceBody710_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_76 sourceBody710_78

def sourceBody710_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_75 sourceBody710_79

def sourceBody710_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_74 sourceBody710_80

def sourceBody710_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_73 sourceBody710_81

def sourceBody710_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_72 sourceBody710_82

def sourceBody710_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_71 sourceBody710_83

def sourceBody710_85 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 34 (Flapjack.WordRegImm.imm 0#64) sourceBody710_84 sourceBody710_0

def sourceBody710_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_85 sourceBody710_15

def sourceBody710_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_86 sourceBody710_0

def sourceBody710_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_70 sourceBody710_87

def sourceBody710_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_69 sourceBody710_88

def sourceBody710_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_65 sourceBody710_89

def sourceBody710_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_64 sourceBody710_90

def sourceBody710_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_41 sourceBody710_78

def sourceBody710_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_40 sourceBody710_92

def sourceBody710_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_39 sourceBody710_93

def sourceBody710_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_38 sourceBody710_94

def sourceBody710_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_37 sourceBody710_95

def sourceBody710_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_36 sourceBody710_96

def sourceBody710_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_91 sourceBody710_97

def sourceBody710_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_63 sourceBody710_98

def sourceBody710_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_99

def sourceBody710_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_100

def sourceBody710_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_101

def sourceBody710_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_102

def sourceBody710_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_103

def sourceBody710_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_104

def sourceBody710_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_105

def sourceBody710_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_106

def sourceBody710_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_107

def sourceBody710_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_108

def sourceBody710_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_109

def sourceBody710_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_110

def sourceBody710_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_111

def sourceBody710_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_112

def sourceBody710_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_35 sourceBody710_113

def sourceBody710_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_114

def sourceBody710_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_34 sourceBody710_115

def sourceBody710_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_116

def sourceBody710_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_33 sourceBody710_117

def sourceBody710_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_118

def sourceBody710_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_32 sourceBody710_119

def sourceBody710_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_120

def sourceBody710_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_31 sourceBody710_121

def sourceBody710_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_122

def sourceBody710_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_30 sourceBody710_123

def sourceBody710_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_124

def sourceBody710_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_29 sourceBody710_125

def sourceBody710_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_126

def sourceBody710_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_127

def sourceBody710_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_128

def sourceBody710_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_129

def sourceBody710_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_130

def sourceBody710_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_131

def sourceBody710_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_132

def sourceBody710_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_133

def sourceBody710_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_134

def sourceBody710_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_135

def sourceBody710_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_136

def sourceBody710_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_137

def sourceBody710_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_138

def sourceBody710_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody710_0 sourceBody710_139

def source710 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (710, 13, sourceBody710_140)
end InitECandidate.Proofs.WordStages
