import InitECandidate.Proofs.FrontendStages.Loop.Translate431
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody447_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody447_1 : HolLoopProg 64 :=
.mark loopBody447_0

def loopBody447_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody447_3 : HolLoopProg 64 :=
.mark loopBody447_2

def loopBody447_4 : HolLoopProg 64 :=
.call (some ([1, 2, 3, 4], Flapjack.Spt.ln)) (some 475) ([]) (some (5, loopBody447_3, loopBody447_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody447_5 : HolLoopProg 64 :=
.mark loopBody447_4

def loopBody447_6 : HolLoopProg 64 :=
.seq loopBody447_5 loopBody447_1

def loopBody447_7 : HolLoopProg 64 :=
.mark loopBody447_6

def loopBody447_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody447_9 : HolLoopProg 64 :=
.mark loopBody447_8

def loopBody447_10 : HolLoopProg 64 :=
.call (some
  ([5, 6, 7, 8],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 475) ([]) (some (9, loopBody447_9, loopBody447_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody447_11 : HolLoopProg 64 :=
.mark loopBody447_10

def loopBody447_12 : HolLoopProg 64 :=
.seq loopBody447_11 loopBody447_1

def loopBody447_13 : HolLoopProg 64 :=
.mark loopBody447_12

def loopBody447_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 3#64)

def loopBody447_15 : HolLoopProg 64 :=
.mark loopBody447_14

def loopBody447_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody447_17 : HolLoopProg 64 :=
.mark loopBody447_16

def loopBody447_18 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 470) ([10]) (some (10, loopBody447_17, loopBody447_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody447_19 : HolLoopProg 64 :=
.mark loopBody447_18

def loopBody447_20 : HolLoopProg 64 :=
.seq loopBody447_19 loopBody447_1

def loopBody447_21 : HolLoopProg 64 :=
.mark loopBody447_20

def loopBody447_22 : HolLoopProg 64 :=
.seq loopBody447_15 loopBody447_21

def loopBody447_23 : HolLoopProg 64 :=
.mark loopBody447_22

def loopBody447_24 : HolLoopProg 64 :=
.seq loopBody447_1 loopBody447_23

def loopBody447_25 : HolLoopProg 64 :=
.mark loopBody447_24

def loopBody447_26 : HolLoopProg 64 :=
.seq loopBody447_1 loopBody447_25

def loopBody447_27 : HolLoopProg 64 :=
.mark loopBody447_26

def loopBody447_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 1)

def loopBody447_29 : HolLoopProg 64 :=
.mark loopBody447_28

def loopBody447_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 2)

def loopBody447_31 : HolLoopProg 64 :=
.mark loopBody447_30

def loopBody447_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 3)

def loopBody447_33 : HolLoopProg 64 :=
.mark loopBody447_32

def loopBody447_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 4)

def loopBody447_35 : HolLoopProg 64 :=
.mark loopBody447_34

def loopBody447_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 5)

def loopBody447_37 : HolLoopProg 64 :=
.mark loopBody447_36

def loopBody447_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 6)

def loopBody447_39 : HolLoopProg 64 :=
.mark loopBody447_38

def loopBody447_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 7)

def loopBody447_41 : HolLoopProg 64 :=
.mark loopBody447_40

def loopBody447_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 8)

def loopBody447_43 : HolLoopProg 64 :=
.mark loopBody447_42

def loopBody447_44 : HolLoopProg 64 :=
.call (some ([9], Flapjack.Spt.ln)) (some 109) ([10, 11, 12, 13, 14, 15, 16, 17]) (some (10, loopBody447_17, loopBody447_1, (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))

def loopBody447_45 : HolLoopProg 64 :=
.mark loopBody447_44

def loopBody447_46 : HolLoopProg 64 :=
.seq loopBody447_45 loopBody447_1

def loopBody447_47 : HolLoopProg 64 :=
.mark loopBody447_46

def loopBody447_48 : HolLoopProg 64 :=
.seq loopBody447_43 loopBody447_47

def loopBody447_49 : HolLoopProg 64 :=
.mark loopBody447_48

def loopBody447_50 : HolLoopProg 64 :=
.seq loopBody447_41 loopBody447_49

def loopBody447_51 : HolLoopProg 64 :=
.mark loopBody447_50

def loopBody447_52 : HolLoopProg 64 :=
.seq loopBody447_39 loopBody447_51

def loopBody447_53 : HolLoopProg 64 :=
.mark loopBody447_52

def loopBody447_54 : HolLoopProg 64 :=
.seq loopBody447_37 loopBody447_53

def loopBody447_55 : HolLoopProg 64 :=
.mark loopBody447_54

def loopBody447_56 : HolLoopProg 64 :=
.seq loopBody447_35 loopBody447_55

def loopBody447_57 : HolLoopProg 64 :=
.mark loopBody447_56

def loopBody447_58 : HolLoopProg 64 :=
.seq loopBody447_33 loopBody447_57

def loopBody447_59 : HolLoopProg 64 :=
.mark loopBody447_58

def loopBody447_60 : HolLoopProg 64 :=
.seq loopBody447_31 loopBody447_59

def loopBody447_61 : HolLoopProg 64 :=
.mark loopBody447_60

def loopBody447_62 : HolLoopProg 64 :=
.seq loopBody447_29 loopBody447_61

def loopBody447_63 : HolLoopProg 64 :=
.mark loopBody447_62

def loopBody447_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 9)

def loopBody447_65 : HolLoopProg 64 :=
.mark loopBody447_64

def loopBody447_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 11

def loopBody447_67 : HolLoopProg 64 :=
.mark loopBody447_66

def loopBody447_68 : HolLoopProg 64 :=
.call (some ([10], Flapjack.Spt.ln)) (some 478) ([11]) (some (11, loopBody447_67, loopBody447_1, (Flapjack.Spt.ln)))

def loopBody447_69 : HolLoopProg 64 :=
.mark loopBody447_68

def loopBody447_70 : HolLoopProg 64 :=
.seq loopBody447_69 loopBody447_1

def loopBody447_71 : HolLoopProg 64 :=
.mark loopBody447_70

def loopBody447_72 : HolLoopProg 64 :=
.seq loopBody447_65 loopBody447_71

def loopBody447_73 : HolLoopProg 64 :=
.mark loopBody447_72

def loopBody447_74 : HolLoopProg 64 :=
.seq loopBody447_1 loopBody447_73

def loopBody447_75 : HolLoopProg 64 :=
.mark loopBody447_74

def loopBody447_76 : HolLoopProg 64 :=
.seq loopBody447_1 loopBody447_75

def loopBody447_77 : HolLoopProg 64 :=
.mark loopBody447_76

def loopBody447_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 1#64)

def loopBody447_79 : HolLoopProg 64 :=
.mark loopBody447_78

def loopBody447_80 : HolLoopProg 64 :=
.call (some ([10], Flapjack.Spt.ln)) (some 490) ([11]) (some (11, loopBody447_67, loopBody447_1, (Flapjack.Spt.ln)))

def loopBody447_81 : HolLoopProg 64 :=
.mark loopBody447_80

def loopBody447_82 : HolLoopProg 64 :=
.seq loopBody447_81 loopBody447_1

def loopBody447_83 : HolLoopProg 64 :=
.mark loopBody447_82

def loopBody447_84 : HolLoopProg 64 :=
.seq loopBody447_79 loopBody447_83

def loopBody447_85 : HolLoopProg 64 :=
.mark loopBody447_84

def loopBody447_86 : HolLoopProg 64 :=
.seq loopBody447_1 loopBody447_85

def loopBody447_87 : HolLoopProg 64 :=
.mark loopBody447_86

def loopBody447_88 : HolLoopProg 64 :=
.seq loopBody447_1 loopBody447_87

def loopBody447_89 : HolLoopProg 64 :=
.mark loopBody447_88

def loopBody447_90 : HolLoopProg 64 :=
.seq loopBody447_77 loopBody447_89

def loopBody447_91 : HolLoopProg 64 :=
.mark loopBody447_90

def loopBody447_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody447_93 : HolLoopProg 64 :=
.mark loopBody447_92

def loopBody447_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [10]

def loopBody447_95 : HolLoopProg 64 :=
.mark loopBody447_94

def loopBody447_96 : HolLoopProg 64 :=
.seq loopBody447_95 loopBody447_1

def loopBody447_97 : HolLoopProg 64 :=
.mark loopBody447_96

def loopBody447_98 : HolLoopProg 64 :=
.seq loopBody447_93 loopBody447_97

def loopBody447_99 : HolLoopProg 64 :=
.mark loopBody447_98

def loopBody447_100 : HolLoopProg 64 :=
.seq loopBody447_91 loopBody447_99

def loopBody447_101 : HolLoopProg 64 :=
.mark loopBody447_100

def loopBody447_102 : HolLoopProg 64 :=
.seq loopBody447_63 loopBody447_101

def loopBody447_103 : HolLoopProg 64 :=
.mark loopBody447_102

def loopBody447_104 : HolLoopProg 64 :=
.seq loopBody447_1 loopBody447_103

def loopBody447_105 : HolLoopProg 64 :=
.mark loopBody447_104

def loopBody447_106 : HolLoopProg 64 :=
.seq loopBody447_1 loopBody447_105

def loopBody447_107 : HolLoopProg 64 :=
.mark loopBody447_106

def loopBody447_108 : HolLoopProg 64 :=
.seq loopBody447_27 loopBody447_107

def loopBody447_109 : HolLoopProg 64 :=
.mark loopBody447_108

def loopBody447_110 : HolLoopProg 64 :=
.seq loopBody447_13 loopBody447_109

def loopBody447_111 : HolLoopProg 64 :=
.mark loopBody447_110

def loopBody447_112 : HolLoopProg 64 :=
.seq loopBody447_1 loopBody447_111

def loopBody447_113 : HolLoopProg 64 :=
.mark loopBody447_112

def loopBody447_114 : HolLoopProg 64 :=
.seq loopBody447_1 loopBody447_113

def loopBody447_115 : HolLoopProg 64 :=
.mark loopBody447_114

def loopBody447_116 : HolLoopProg 64 :=
.seq loopBody447_1 loopBody447_115

def loopBody447_117 : HolLoopProg 64 :=
.mark loopBody447_116

def loopBody447_118 : HolLoopProg 64 :=
.seq loopBody447_1 loopBody447_117

def loopBody447_119 : HolLoopProg 64 :=
.mark loopBody447_118

def loopBody447_120 : HolLoopProg 64 :=
.seq loopBody447_1 loopBody447_119

def loopBody447_121 : HolLoopProg 64 :=
.mark loopBody447_120

def loopBody447_122 : HolLoopProg 64 :=
.seq loopBody447_1 loopBody447_121

def loopBody447_123 : HolLoopProg 64 :=
.mark loopBody447_122

def loopBody447_124 : HolLoopProg 64 :=
.seq loopBody447_1 loopBody447_123

def loopBody447_125 : HolLoopProg 64 :=
.mark loopBody447_124

def loopBody447_126 : HolLoopProg 64 :=
.seq loopBody447_1 loopBody447_125

def loopBody447_127 : HolLoopProg 64 :=
.mark loopBody447_126

def loopBody447_128 : HolLoopProg 64 :=
.seq loopBody447_7 loopBody447_127

def loopBody447_129 : HolLoopProg 64 :=
.mark loopBody447_128

def loopBody447_130 : HolLoopProg 64 :=
.seq loopBody447_1 loopBody447_129

def loopBody447_131 : HolLoopProg 64 :=
.mark loopBody447_130

def loopBody447_132 : HolLoopProg 64 :=
.seq loopBody447_1 loopBody447_131

def loopBody447_133 : HolLoopProg 64 :=
.mark loopBody447_132

def loopBody447_134 : HolLoopProg 64 :=
.seq loopBody447_1 loopBody447_133

def loopBody447_135 : HolLoopProg 64 :=
.mark loopBody447_134

def loopBody447_136 : HolLoopProg 64 :=
.seq loopBody447_1 loopBody447_135

def loopBody447_137 : HolLoopProg 64 :=
.mark loopBody447_136

def loopBody447_138 : HolLoopProg 64 :=
.seq loopBody447_1 loopBody447_137

def loopBody447_139 : HolLoopProg 64 :=
.mark loopBody447_138

def loopBody447_140 : HolLoopProg 64 :=
.seq loopBody447_1 loopBody447_139

def loopBody447_141 : HolLoopProg 64 :=
.mark loopBody447_140

def loopBody447_142 : HolLoopProg 64 :=
.seq loopBody447_1 loopBody447_141

def loopBody447_143 : HolLoopProg 64 :=
.mark loopBody447_142

def loopBody447_144 : HolLoopProg 64 :=
.seq loopBody447_1 loopBody447_143

def loopBody447_145 : HolLoopProg 64 :=
.mark loopBody447_144

def output447 : Nat × List Nat × HolLoopProg 64 :=
  (511, [], loopBody447_145)
end InitECandidate.Proofs.FrontendStages.Loop
