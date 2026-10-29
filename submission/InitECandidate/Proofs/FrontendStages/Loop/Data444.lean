import InitECandidate.Proofs.FrontendStages.Loop.Translate428
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody444_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody444_1 : HolLoopProg 64 :=
.mark loopBody444_0

def loopBody444_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody444_3 : HolLoopProg 64 :=
.mark loopBody444_2

def loopBody444_4 : HolLoopProg 64 :=
.call (some ([1, 2, 3, 4], Flapjack.Spt.ln)) (some 475) ([]) (some (5, loopBody444_3, loopBody444_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody444_5 : HolLoopProg 64 :=
.mark loopBody444_4

def loopBody444_6 : HolLoopProg 64 :=
.seq loopBody444_5 loopBody444_1

def loopBody444_7 : HolLoopProg 64 :=
.mark loopBody444_6

def loopBody444_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody444_9 : HolLoopProg 64 :=
.mark loopBody444_8

def loopBody444_10 : HolLoopProg 64 :=
.call (some
  ([5, 6, 7, 8],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 475) ([]) (some (9, loopBody444_9, loopBody444_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody444_11 : HolLoopProg 64 :=
.mark loopBody444_10

def loopBody444_12 : HolLoopProg 64 :=
.seq loopBody444_11 loopBody444_1

def loopBody444_13 : HolLoopProg 64 :=
.mark loopBody444_12

def loopBody444_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 3#64)

def loopBody444_15 : HolLoopProg 64 :=
.mark loopBody444_14

def loopBody444_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody444_17 : HolLoopProg 64 :=
.mark loopBody444_16

def loopBody444_18 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 470) ([10]) (some (10, loopBody444_17, loopBody444_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody444_19 : HolLoopProg 64 :=
.mark loopBody444_18

def loopBody444_20 : HolLoopProg 64 :=
.seq loopBody444_19 loopBody444_1

def loopBody444_21 : HolLoopProg 64 :=
.mark loopBody444_20

def loopBody444_22 : HolLoopProg 64 :=
.seq loopBody444_15 loopBody444_21

def loopBody444_23 : HolLoopProg 64 :=
.mark loopBody444_22

def loopBody444_24 : HolLoopProg 64 :=
.seq loopBody444_1 loopBody444_23

def loopBody444_25 : HolLoopProg 64 :=
.mark loopBody444_24

def loopBody444_26 : HolLoopProg 64 :=
.seq loopBody444_1 loopBody444_25

def loopBody444_27 : HolLoopProg 64 :=
.mark loopBody444_26

def loopBody444_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 1)

def loopBody444_29 : HolLoopProg 64 :=
.mark loopBody444_28

def loopBody444_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 2)

def loopBody444_31 : HolLoopProg 64 :=
.mark loopBody444_30

def loopBody444_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 3)

def loopBody444_33 : HolLoopProg 64 :=
.mark loopBody444_32

def loopBody444_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 4)

def loopBody444_35 : HolLoopProg 64 :=
.mark loopBody444_34

def loopBody444_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 5)

def loopBody444_37 : HolLoopProg 64 :=
.mark loopBody444_36

def loopBody444_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 6)

def loopBody444_39 : HolLoopProg 64 :=
.mark loopBody444_38

def loopBody444_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 7)

def loopBody444_41 : HolLoopProg 64 :=
.mark loopBody444_40

def loopBody444_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 8)

def loopBody444_43 : HolLoopProg 64 :=
.mark loopBody444_42

def loopBody444_44 : HolLoopProg 64 :=
.call (some ([9], Flapjack.Spt.ln)) (some 106) ([10, 11, 12, 13, 14, 15, 16, 17]) (some (10, loopBody444_17, loopBody444_1, (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))

def loopBody444_45 : HolLoopProg 64 :=
.mark loopBody444_44

def loopBody444_46 : HolLoopProg 64 :=
.seq loopBody444_45 loopBody444_1

def loopBody444_47 : HolLoopProg 64 :=
.mark loopBody444_46

def loopBody444_48 : HolLoopProg 64 :=
.seq loopBody444_43 loopBody444_47

def loopBody444_49 : HolLoopProg 64 :=
.mark loopBody444_48

def loopBody444_50 : HolLoopProg 64 :=
.seq loopBody444_41 loopBody444_49

def loopBody444_51 : HolLoopProg 64 :=
.mark loopBody444_50

def loopBody444_52 : HolLoopProg 64 :=
.seq loopBody444_39 loopBody444_51

def loopBody444_53 : HolLoopProg 64 :=
.mark loopBody444_52

def loopBody444_54 : HolLoopProg 64 :=
.seq loopBody444_37 loopBody444_53

def loopBody444_55 : HolLoopProg 64 :=
.mark loopBody444_54

def loopBody444_56 : HolLoopProg 64 :=
.seq loopBody444_35 loopBody444_55

def loopBody444_57 : HolLoopProg 64 :=
.mark loopBody444_56

def loopBody444_58 : HolLoopProg 64 :=
.seq loopBody444_33 loopBody444_57

def loopBody444_59 : HolLoopProg 64 :=
.mark loopBody444_58

def loopBody444_60 : HolLoopProg 64 :=
.seq loopBody444_31 loopBody444_59

def loopBody444_61 : HolLoopProg 64 :=
.mark loopBody444_60

def loopBody444_62 : HolLoopProg 64 :=
.seq loopBody444_29 loopBody444_61

def loopBody444_63 : HolLoopProg 64 :=
.mark loopBody444_62

def loopBody444_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 9)

def loopBody444_65 : HolLoopProg 64 :=
.mark loopBody444_64

def loopBody444_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 11

def loopBody444_67 : HolLoopProg 64 :=
.mark loopBody444_66

def loopBody444_68 : HolLoopProg 64 :=
.call (some ([10], Flapjack.Spt.ln)) (some 478) ([11]) (some (11, loopBody444_67, loopBody444_1, (Flapjack.Spt.ln)))

def loopBody444_69 : HolLoopProg 64 :=
.mark loopBody444_68

def loopBody444_70 : HolLoopProg 64 :=
.seq loopBody444_69 loopBody444_1

def loopBody444_71 : HolLoopProg 64 :=
.mark loopBody444_70

def loopBody444_72 : HolLoopProg 64 :=
.seq loopBody444_65 loopBody444_71

def loopBody444_73 : HolLoopProg 64 :=
.mark loopBody444_72

def loopBody444_74 : HolLoopProg 64 :=
.seq loopBody444_1 loopBody444_73

def loopBody444_75 : HolLoopProg 64 :=
.mark loopBody444_74

def loopBody444_76 : HolLoopProg 64 :=
.seq loopBody444_1 loopBody444_75

def loopBody444_77 : HolLoopProg 64 :=
.mark loopBody444_76

def loopBody444_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 1#64)

def loopBody444_79 : HolLoopProg 64 :=
.mark loopBody444_78

def loopBody444_80 : HolLoopProg 64 :=
.call (some ([10], Flapjack.Spt.ln)) (some 490) ([11]) (some (11, loopBody444_67, loopBody444_1, (Flapjack.Spt.ln)))

def loopBody444_81 : HolLoopProg 64 :=
.mark loopBody444_80

def loopBody444_82 : HolLoopProg 64 :=
.seq loopBody444_81 loopBody444_1

def loopBody444_83 : HolLoopProg 64 :=
.mark loopBody444_82

def loopBody444_84 : HolLoopProg 64 :=
.seq loopBody444_79 loopBody444_83

def loopBody444_85 : HolLoopProg 64 :=
.mark loopBody444_84

def loopBody444_86 : HolLoopProg 64 :=
.seq loopBody444_1 loopBody444_85

def loopBody444_87 : HolLoopProg 64 :=
.mark loopBody444_86

def loopBody444_88 : HolLoopProg 64 :=
.seq loopBody444_1 loopBody444_87

def loopBody444_89 : HolLoopProg 64 :=
.mark loopBody444_88

def loopBody444_90 : HolLoopProg 64 :=
.seq loopBody444_77 loopBody444_89

def loopBody444_91 : HolLoopProg 64 :=
.mark loopBody444_90

def loopBody444_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody444_93 : HolLoopProg 64 :=
.mark loopBody444_92

def loopBody444_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [10]

def loopBody444_95 : HolLoopProg 64 :=
.mark loopBody444_94

def loopBody444_96 : HolLoopProg 64 :=
.seq loopBody444_95 loopBody444_1

def loopBody444_97 : HolLoopProg 64 :=
.mark loopBody444_96

def loopBody444_98 : HolLoopProg 64 :=
.seq loopBody444_93 loopBody444_97

def loopBody444_99 : HolLoopProg 64 :=
.mark loopBody444_98

def loopBody444_100 : HolLoopProg 64 :=
.seq loopBody444_91 loopBody444_99

def loopBody444_101 : HolLoopProg 64 :=
.mark loopBody444_100

def loopBody444_102 : HolLoopProg 64 :=
.seq loopBody444_63 loopBody444_101

def loopBody444_103 : HolLoopProg 64 :=
.mark loopBody444_102

def loopBody444_104 : HolLoopProg 64 :=
.seq loopBody444_1 loopBody444_103

def loopBody444_105 : HolLoopProg 64 :=
.mark loopBody444_104

def loopBody444_106 : HolLoopProg 64 :=
.seq loopBody444_1 loopBody444_105

def loopBody444_107 : HolLoopProg 64 :=
.mark loopBody444_106

def loopBody444_108 : HolLoopProg 64 :=
.seq loopBody444_27 loopBody444_107

def loopBody444_109 : HolLoopProg 64 :=
.mark loopBody444_108

def loopBody444_110 : HolLoopProg 64 :=
.seq loopBody444_13 loopBody444_109

def loopBody444_111 : HolLoopProg 64 :=
.mark loopBody444_110

def loopBody444_112 : HolLoopProg 64 :=
.seq loopBody444_1 loopBody444_111

def loopBody444_113 : HolLoopProg 64 :=
.mark loopBody444_112

def loopBody444_114 : HolLoopProg 64 :=
.seq loopBody444_1 loopBody444_113

def loopBody444_115 : HolLoopProg 64 :=
.mark loopBody444_114

def loopBody444_116 : HolLoopProg 64 :=
.seq loopBody444_1 loopBody444_115

def loopBody444_117 : HolLoopProg 64 :=
.mark loopBody444_116

def loopBody444_118 : HolLoopProg 64 :=
.seq loopBody444_1 loopBody444_117

def loopBody444_119 : HolLoopProg 64 :=
.mark loopBody444_118

def loopBody444_120 : HolLoopProg 64 :=
.seq loopBody444_1 loopBody444_119

def loopBody444_121 : HolLoopProg 64 :=
.mark loopBody444_120

def loopBody444_122 : HolLoopProg 64 :=
.seq loopBody444_1 loopBody444_121

def loopBody444_123 : HolLoopProg 64 :=
.mark loopBody444_122

def loopBody444_124 : HolLoopProg 64 :=
.seq loopBody444_1 loopBody444_123

def loopBody444_125 : HolLoopProg 64 :=
.mark loopBody444_124

def loopBody444_126 : HolLoopProg 64 :=
.seq loopBody444_1 loopBody444_125

def loopBody444_127 : HolLoopProg 64 :=
.mark loopBody444_126

def loopBody444_128 : HolLoopProg 64 :=
.seq loopBody444_7 loopBody444_127

def loopBody444_129 : HolLoopProg 64 :=
.mark loopBody444_128

def loopBody444_130 : HolLoopProg 64 :=
.seq loopBody444_1 loopBody444_129

def loopBody444_131 : HolLoopProg 64 :=
.mark loopBody444_130

def loopBody444_132 : HolLoopProg 64 :=
.seq loopBody444_1 loopBody444_131

def loopBody444_133 : HolLoopProg 64 :=
.mark loopBody444_132

def loopBody444_134 : HolLoopProg 64 :=
.seq loopBody444_1 loopBody444_133

def loopBody444_135 : HolLoopProg 64 :=
.mark loopBody444_134

def loopBody444_136 : HolLoopProg 64 :=
.seq loopBody444_1 loopBody444_135

def loopBody444_137 : HolLoopProg 64 :=
.mark loopBody444_136

def loopBody444_138 : HolLoopProg 64 :=
.seq loopBody444_1 loopBody444_137

def loopBody444_139 : HolLoopProg 64 :=
.mark loopBody444_138

def loopBody444_140 : HolLoopProg 64 :=
.seq loopBody444_1 loopBody444_139

def loopBody444_141 : HolLoopProg 64 :=
.mark loopBody444_140

def loopBody444_142 : HolLoopProg 64 :=
.seq loopBody444_1 loopBody444_141

def loopBody444_143 : HolLoopProg 64 :=
.mark loopBody444_142

def loopBody444_144 : HolLoopProg 64 :=
.seq loopBody444_1 loopBody444_143

def loopBody444_145 : HolLoopProg 64 :=
.mark loopBody444_144

def output444 : Nat × List Nat × HolLoopProg 64 :=
  (508, [], loopBody444_145)
end InitECandidate.Proofs.FrontendStages.Loop
