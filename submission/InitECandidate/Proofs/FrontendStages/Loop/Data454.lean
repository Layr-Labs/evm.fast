import InitECandidate.Proofs.FrontendStages.Loop.Translate438
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody454_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody454_1 : HolLoopProg 64 :=
.mark loopBody454_0

def loopBody454_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody454_3 : HolLoopProg 64 :=
.mark loopBody454_2

def loopBody454_4 : HolLoopProg 64 :=
.call (some ([1, 2, 3, 4], Flapjack.Spt.ln)) (some 475) ([]) (some (5, loopBody454_3, loopBody454_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody454_5 : HolLoopProg 64 :=
.mark loopBody454_4

def loopBody454_6 : HolLoopProg 64 :=
.seq loopBody454_5 loopBody454_1

def loopBody454_7 : HolLoopProg 64 :=
.mark loopBody454_6

def loopBody454_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody454_9 : HolLoopProg 64 :=
.mark loopBody454_8

def loopBody454_10 : HolLoopProg 64 :=
.call (some
  ([5, 6, 7, 8],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 475) ([]) (some (9, loopBody454_9, loopBody454_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody454_11 : HolLoopProg 64 :=
.mark loopBody454_10

def loopBody454_12 : HolLoopProg 64 :=
.seq loopBody454_11 loopBody454_1

def loopBody454_13 : HolLoopProg 64 :=
.mark loopBody454_12

def loopBody454_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 3#64)

def loopBody454_15 : HolLoopProg 64 :=
.mark loopBody454_14

def loopBody454_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody454_17 : HolLoopProg 64 :=
.mark loopBody454_16

def loopBody454_18 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 470) ([10]) (some (10, loopBody454_17, loopBody454_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody454_19 : HolLoopProg 64 :=
.mark loopBody454_18

def loopBody454_20 : HolLoopProg 64 :=
.seq loopBody454_19 loopBody454_1

def loopBody454_21 : HolLoopProg 64 :=
.mark loopBody454_20

def loopBody454_22 : HolLoopProg 64 :=
.seq loopBody454_15 loopBody454_21

def loopBody454_23 : HolLoopProg 64 :=
.mark loopBody454_22

def loopBody454_24 : HolLoopProg 64 :=
.seq loopBody454_1 loopBody454_23

def loopBody454_25 : HolLoopProg 64 :=
.mark loopBody454_24

def loopBody454_26 : HolLoopProg 64 :=
.seq loopBody454_1 loopBody454_25

def loopBody454_27 : HolLoopProg 64 :=
.mark loopBody454_26

def loopBody454_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 1)

def loopBody454_29 : HolLoopProg 64 :=
.mark loopBody454_28

def loopBody454_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 2)

def loopBody454_31 : HolLoopProg 64 :=
.mark loopBody454_30

def loopBody454_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 3)

def loopBody454_33 : HolLoopProg 64 :=
.mark loopBody454_32

def loopBody454_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 4)

def loopBody454_35 : HolLoopProg 64 :=
.mark loopBody454_34

def loopBody454_36 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))) (some 462) ([10, 11, 12, 13]) (some (10, loopBody454_17, loopBody454_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody454_37 : HolLoopProg 64 :=
.mark loopBody454_36

def loopBody454_38 : HolLoopProg 64 :=
.seq loopBody454_37 loopBody454_1

def loopBody454_39 : HolLoopProg 64 :=
.mark loopBody454_38

def loopBody454_40 : HolLoopProg 64 :=
.seq loopBody454_35 loopBody454_39

def loopBody454_41 : HolLoopProg 64 :=
.mark loopBody454_40

def loopBody454_42 : HolLoopProg 64 :=
.seq loopBody454_33 loopBody454_41

def loopBody454_43 : HolLoopProg 64 :=
.mark loopBody454_42

def loopBody454_44 : HolLoopProg 64 :=
.seq loopBody454_31 loopBody454_43

def loopBody454_45 : HolLoopProg 64 :=
.mark loopBody454_44

def loopBody454_46 : HolLoopProg 64 :=
.seq loopBody454_29 loopBody454_45

def loopBody454_47 : HolLoopProg 64 :=
.mark loopBody454_46

def loopBody454_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 9)

def loopBody454_49 : HolLoopProg 64 :=
.mark loopBody454_48

def loopBody454_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 5)

def loopBody454_51 : HolLoopProg 64 :=
.mark loopBody454_50

def loopBody454_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 6)

def loopBody454_53 : HolLoopProg 64 :=
.mark loopBody454_52

def loopBody454_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 7)

def loopBody454_55 : HolLoopProg 64 :=
.mark loopBody454_54

def loopBody454_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 8)

def loopBody454_57 : HolLoopProg 64 :=
.mark loopBody454_56

def loopBody454_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 11

def loopBody454_59 : HolLoopProg 64 :=
.mark loopBody454_58

def loopBody454_60 : HolLoopProg 64 :=
.call (some ([10], Flapjack.Spt.ln)) (some 145) ([11, 12, 13, 14, 15]) (some (11, loopBody454_59, loopBody454_1, (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
  Flapjack.Spt.ln)))

def loopBody454_61 : HolLoopProg 64 :=
.mark loopBody454_60

def loopBody454_62 : HolLoopProg 64 :=
.seq loopBody454_61 loopBody454_1

def loopBody454_63 : HolLoopProg 64 :=
.mark loopBody454_62

def loopBody454_64 : HolLoopProg 64 :=
.seq loopBody454_57 loopBody454_63

def loopBody454_65 : HolLoopProg 64 :=
.mark loopBody454_64

def loopBody454_66 : HolLoopProg 64 :=
.seq loopBody454_55 loopBody454_65

def loopBody454_67 : HolLoopProg 64 :=
.mark loopBody454_66

def loopBody454_68 : HolLoopProg 64 :=
.seq loopBody454_53 loopBody454_67

def loopBody454_69 : HolLoopProg 64 :=
.mark loopBody454_68

def loopBody454_70 : HolLoopProg 64 :=
.seq loopBody454_51 loopBody454_69

def loopBody454_71 : HolLoopProg 64 :=
.mark loopBody454_70

def loopBody454_72 : HolLoopProg 64 :=
.seq loopBody454_49 loopBody454_71

def loopBody454_73 : HolLoopProg 64 :=
.mark loopBody454_72

def loopBody454_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 10)

def loopBody454_75 : HolLoopProg 64 :=
.mark loopBody454_74

def loopBody454_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 12

def loopBody454_77 : HolLoopProg 64 :=
.mark loopBody454_76

def loopBody454_78 : HolLoopProg 64 :=
.call (some ([11], Flapjack.Spt.ln)) (some 477) ([12]) (some (12, loopBody454_77, loopBody454_1, (Flapjack.Spt.ln)))

def loopBody454_79 : HolLoopProg 64 :=
.mark loopBody454_78

def loopBody454_80 : HolLoopProg 64 :=
.seq loopBody454_79 loopBody454_1

def loopBody454_81 : HolLoopProg 64 :=
.mark loopBody454_80

def loopBody454_82 : HolLoopProg 64 :=
.seq loopBody454_75 loopBody454_81

def loopBody454_83 : HolLoopProg 64 :=
.mark loopBody454_82

def loopBody454_84 : HolLoopProg 64 :=
.seq loopBody454_1 loopBody454_83

def loopBody454_85 : HolLoopProg 64 :=
.mark loopBody454_84

def loopBody454_86 : HolLoopProg 64 :=
.seq loopBody454_1 loopBody454_85

def loopBody454_87 : HolLoopProg 64 :=
.mark loopBody454_86

def loopBody454_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 1#64)

def loopBody454_89 : HolLoopProg 64 :=
.mark loopBody454_88

def loopBody454_90 : HolLoopProg 64 :=
.call (some ([11], Flapjack.Spt.ln)) (some 490) ([12]) (some (12, loopBody454_77, loopBody454_1, (Flapjack.Spt.ln)))

def loopBody454_91 : HolLoopProg 64 :=
.mark loopBody454_90

def loopBody454_92 : HolLoopProg 64 :=
.seq loopBody454_91 loopBody454_1

def loopBody454_93 : HolLoopProg 64 :=
.mark loopBody454_92

def loopBody454_94 : HolLoopProg 64 :=
.seq loopBody454_89 loopBody454_93

def loopBody454_95 : HolLoopProg 64 :=
.mark loopBody454_94

def loopBody454_96 : HolLoopProg 64 :=
.seq loopBody454_1 loopBody454_95

def loopBody454_97 : HolLoopProg 64 :=
.mark loopBody454_96

def loopBody454_98 : HolLoopProg 64 :=
.seq loopBody454_1 loopBody454_97

def loopBody454_99 : HolLoopProg 64 :=
.mark loopBody454_98

def loopBody454_100 : HolLoopProg 64 :=
.seq loopBody454_87 loopBody454_99

def loopBody454_101 : HolLoopProg 64 :=
.mark loopBody454_100

def loopBody454_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 0#64)

def loopBody454_103 : HolLoopProg 64 :=
.mark loopBody454_102

def loopBody454_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [11]

def loopBody454_105 : HolLoopProg 64 :=
.mark loopBody454_104

def loopBody454_106 : HolLoopProg 64 :=
.seq loopBody454_105 loopBody454_1

def loopBody454_107 : HolLoopProg 64 :=
.mark loopBody454_106

def loopBody454_108 : HolLoopProg 64 :=
.seq loopBody454_103 loopBody454_107

def loopBody454_109 : HolLoopProg 64 :=
.mark loopBody454_108

def loopBody454_110 : HolLoopProg 64 :=
.seq loopBody454_101 loopBody454_109

def loopBody454_111 : HolLoopProg 64 :=
.mark loopBody454_110

def loopBody454_112 : HolLoopProg 64 :=
.seq loopBody454_73 loopBody454_111

def loopBody454_113 : HolLoopProg 64 :=
.mark loopBody454_112

def loopBody454_114 : HolLoopProg 64 :=
.seq loopBody454_1 loopBody454_113

def loopBody454_115 : HolLoopProg 64 :=
.mark loopBody454_114

def loopBody454_116 : HolLoopProg 64 :=
.seq loopBody454_1 loopBody454_115

def loopBody454_117 : HolLoopProg 64 :=
.mark loopBody454_116

def loopBody454_118 : HolLoopProg 64 :=
.seq loopBody454_47 loopBody454_117

def loopBody454_119 : HolLoopProg 64 :=
.mark loopBody454_118

def loopBody454_120 : HolLoopProg 64 :=
.seq loopBody454_1 loopBody454_119

def loopBody454_121 : HolLoopProg 64 :=
.mark loopBody454_120

def loopBody454_122 : HolLoopProg 64 :=
.seq loopBody454_1 loopBody454_121

def loopBody454_123 : HolLoopProg 64 :=
.mark loopBody454_122

def loopBody454_124 : HolLoopProg 64 :=
.seq loopBody454_27 loopBody454_123

def loopBody454_125 : HolLoopProg 64 :=
.mark loopBody454_124

def loopBody454_126 : HolLoopProg 64 :=
.seq loopBody454_13 loopBody454_125

def loopBody454_127 : HolLoopProg 64 :=
.mark loopBody454_126

def loopBody454_128 : HolLoopProg 64 :=
.seq loopBody454_1 loopBody454_127

def loopBody454_129 : HolLoopProg 64 :=
.mark loopBody454_128

def loopBody454_130 : HolLoopProg 64 :=
.seq loopBody454_1 loopBody454_129

def loopBody454_131 : HolLoopProg 64 :=
.mark loopBody454_130

def loopBody454_132 : HolLoopProg 64 :=
.seq loopBody454_1 loopBody454_131

def loopBody454_133 : HolLoopProg 64 :=
.mark loopBody454_132

def loopBody454_134 : HolLoopProg 64 :=
.seq loopBody454_1 loopBody454_133

def loopBody454_135 : HolLoopProg 64 :=
.mark loopBody454_134

def loopBody454_136 : HolLoopProg 64 :=
.seq loopBody454_1 loopBody454_135

def loopBody454_137 : HolLoopProg 64 :=
.mark loopBody454_136

def loopBody454_138 : HolLoopProg 64 :=
.seq loopBody454_1 loopBody454_137

def loopBody454_139 : HolLoopProg 64 :=
.mark loopBody454_138

def loopBody454_140 : HolLoopProg 64 :=
.seq loopBody454_1 loopBody454_139

def loopBody454_141 : HolLoopProg 64 :=
.mark loopBody454_140

def loopBody454_142 : HolLoopProg 64 :=
.seq loopBody454_1 loopBody454_141

def loopBody454_143 : HolLoopProg 64 :=
.mark loopBody454_142

def loopBody454_144 : HolLoopProg 64 :=
.seq loopBody454_7 loopBody454_143

def loopBody454_145 : HolLoopProg 64 :=
.mark loopBody454_144

def loopBody454_146 : HolLoopProg 64 :=
.seq loopBody454_1 loopBody454_145

def loopBody454_147 : HolLoopProg 64 :=
.mark loopBody454_146

def loopBody454_148 : HolLoopProg 64 :=
.seq loopBody454_1 loopBody454_147

def loopBody454_149 : HolLoopProg 64 :=
.mark loopBody454_148

def loopBody454_150 : HolLoopProg 64 :=
.seq loopBody454_1 loopBody454_149

def loopBody454_151 : HolLoopProg 64 :=
.mark loopBody454_150

def loopBody454_152 : HolLoopProg 64 :=
.seq loopBody454_1 loopBody454_151

def loopBody454_153 : HolLoopProg 64 :=
.mark loopBody454_152

def loopBody454_154 : HolLoopProg 64 :=
.seq loopBody454_1 loopBody454_153

def loopBody454_155 : HolLoopProg 64 :=
.mark loopBody454_154

def loopBody454_156 : HolLoopProg 64 :=
.seq loopBody454_1 loopBody454_155

def loopBody454_157 : HolLoopProg 64 :=
.mark loopBody454_156

def loopBody454_158 : HolLoopProg 64 :=
.seq loopBody454_1 loopBody454_157

def loopBody454_159 : HolLoopProg 64 :=
.mark loopBody454_158

def loopBody454_160 : HolLoopProg 64 :=
.seq loopBody454_1 loopBody454_159

def loopBody454_161 : HolLoopProg 64 :=
.mark loopBody454_160

def output454 : Nat × List Nat × HolLoopProg 64 :=
  (518, [], loopBody454_161)
end InitECandidate.Proofs.FrontendStages.Loop
