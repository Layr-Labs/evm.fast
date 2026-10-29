import InitECandidate.Proofs.FrontendStages.Loop.Translate182
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody198_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody198_1 : HolLoopProg 64 :=
.mark loopBody198_0

def loopBody198_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody198_3 : HolLoopProg 64 :=
.mark loopBody198_2

def loopBody198_4 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 69) ([]) (some (3, loopBody198_3, loopBody198_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody198_5 : HolLoopProg 64 :=
.mark loopBody198_4

def loopBody198_6 : HolLoopProg 64 :=
.seq loopBody198_5 loopBody198_1

def loopBody198_7 : HolLoopProg 64 :=
.mark loopBody198_6

def loopBody198_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 96#64)

def loopBody198_9 : HolLoopProg 64 :=
.mark loopBody198_8

def loopBody198_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody198_11 : HolLoopProg 64 :=
.mark loopBody198_10

def loopBody198_12 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([4]) (some (4, loopBody198_11, loopBody198_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody198_13 : HolLoopProg 64 :=
.mark loopBody198_12

def loopBody198_14 : HolLoopProg 64 :=
.seq loopBody198_13 loopBody198_1

def loopBody198_15 : HolLoopProg 64 :=
.mark loopBody198_14

def loopBody198_16 : HolLoopProg 64 :=
.seq loopBody198_9 loopBody198_15

def loopBody198_17 : HolLoopProg 64 :=
.mark loopBody198_16

def loopBody198_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody198_19 : HolLoopProg 64 :=
.mark loopBody198_18

def loopBody198_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 20#64)

def loopBody198_21 : HolLoopProg 64 :=
.mark loopBody198_20

def loopBody198_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody198_23 : HolLoopProg 64 :=
.mark loopBody198_22

def loopBody198_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody198_25 : HolLoopProg 64 :=
.mark loopBody198_24

def loopBody198_26 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 242) ([5, 6, 7]) (some (5, loopBody198_25, loopBody198_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody198_27 : HolLoopProg 64 :=
.mark loopBody198_26

def loopBody198_28 : HolLoopProg 64 :=
.seq loopBody198_27 loopBody198_1

def loopBody198_29 : HolLoopProg 64 :=
.mark loopBody198_28

def loopBody198_30 : HolLoopProg 64 :=
.seq loopBody198_23 loopBody198_29

def loopBody198_31 : HolLoopProg 64 :=
.mark loopBody198_30

def loopBody198_32 : HolLoopProg 64 :=
.seq loopBody198_21 loopBody198_31

def loopBody198_33 : HolLoopProg 64 :=
.mark loopBody198_32

def loopBody198_34 : HolLoopProg 64 :=
.seq loopBody198_19 loopBody198_33

def loopBody198_35 : HolLoopProg 64 :=
.mark loopBody198_34

def loopBody198_36 : HolLoopProg 64 :=
.seq loopBody198_1 loopBody198_35

def loopBody198_37 : HolLoopProg 64 :=
.mark loopBody198_36

def loopBody198_38 : HolLoopProg 64 :=
.seq loopBody198_1 loopBody198_37

def loopBody198_39 : HolLoopProg 64 :=
.mark loopBody198_38

def loopBody198_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 20#64])

def loopBody198_41 : HolLoopProg 64 :=
.mark loopBody198_40

def loopBody198_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 48#64)

def loopBody198_43 : HolLoopProg 64 :=
.mark loopBody198_42

def loopBody198_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 32#64])

def loopBody198_45 : HolLoopProg 64 :=
.mark loopBody198_44

def loopBody198_46 : HolLoopProg 64 :=
.seq loopBody198_45 loopBody198_29

def loopBody198_47 : HolLoopProg 64 :=
.mark loopBody198_46

def loopBody198_48 : HolLoopProg 64 :=
.seq loopBody198_43 loopBody198_47

def loopBody198_49 : HolLoopProg 64 :=
.mark loopBody198_48

def loopBody198_50 : HolLoopProg 64 :=
.seq loopBody198_41 loopBody198_49

def loopBody198_51 : HolLoopProg 64 :=
.mark loopBody198_50

def loopBody198_52 : HolLoopProg 64 :=
.seq loopBody198_1 loopBody198_51

def loopBody198_53 : HolLoopProg 64 :=
.mark loopBody198_52

def loopBody198_54 : HolLoopProg 64 :=
.seq loopBody198_1 loopBody198_53

def loopBody198_55 : HolLoopProg 64 :=
.mark loopBody198_54

def loopBody198_56 : HolLoopProg 64 :=
.seq loopBody198_39 loopBody198_55

def loopBody198_57 : HolLoopProg 64 :=
.mark loopBody198_56

def loopBody198_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 68#64])

def loopBody198_59 : HolLoopProg 64 :=
.mark loopBody198_58

def loopBody198_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 64#64])

def loopBody198_61 : HolLoopProg 64 :=
.mark loopBody198_60

def loopBody198_62 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 242) ([5, 6, 7]) (some (5, loopBody198_25, loopBody198_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody198_63 : HolLoopProg 64 :=
.mark loopBody198_62

def loopBody198_64 : HolLoopProg 64 :=
.seq loopBody198_63 loopBody198_1

def loopBody198_65 : HolLoopProg 64 :=
.mark loopBody198_64

def loopBody198_66 : HolLoopProg 64 :=
.seq loopBody198_61 loopBody198_65

def loopBody198_67 : HolLoopProg 64 :=
.mark loopBody198_66

def loopBody198_68 : HolLoopProg 64 :=
.seq loopBody198_43 loopBody198_67

def loopBody198_69 : HolLoopProg 64 :=
.mark loopBody198_68

def loopBody198_70 : HolLoopProg 64 :=
.seq loopBody198_59 loopBody198_69

def loopBody198_71 : HolLoopProg 64 :=
.mark loopBody198_70

def loopBody198_72 : HolLoopProg 64 :=
.seq loopBody198_1 loopBody198_71

def loopBody198_73 : HolLoopProg 64 :=
.mark loopBody198_72

def loopBody198_74 : HolLoopProg 64 :=
.seq loopBody198_1 loopBody198_73

def loopBody198_75 : HolLoopProg 64 :=
.mark loopBody198_74

def loopBody198_76 : HolLoopProg 64 :=
.seq loopBody198_57 loopBody198_75

def loopBody198_77 : HolLoopProg 64 :=
.mark loopBody198_76

def loopBody198_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody198_79 : HolLoopProg 64 :=
.mark loopBody198_78

def loopBody198_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 3#64)

def loopBody198_81 : HolLoopProg 64 :=
.mark loopBody198_80

def loopBody198_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 3#64)

def loopBody198_83 : HolLoopProg 64 :=
.mark loopBody198_82

def loopBody198_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody198_85 : HolLoopProg 64 :=
.mark loopBody198_84

def loopBody198_86 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 235) ([5, 6, 7, 8]) (some (5, loopBody198_25, loopBody198_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody198_87 : HolLoopProg 64 :=
.mark loopBody198_86

def loopBody198_88 : HolLoopProg 64 :=
.seq loopBody198_87 loopBody198_1

def loopBody198_89 : HolLoopProg 64 :=
.mark loopBody198_88

def loopBody198_90 : HolLoopProg 64 :=
.seq loopBody198_85 loopBody198_89

def loopBody198_91 : HolLoopProg 64 :=
.mark loopBody198_90

def loopBody198_92 : HolLoopProg 64 :=
.seq loopBody198_83 loopBody198_91

def loopBody198_93 : HolLoopProg 64 :=
.mark loopBody198_92

def loopBody198_94 : HolLoopProg 64 :=
.seq loopBody198_81 loopBody198_93

def loopBody198_95 : HolLoopProg 64 :=
.mark loopBody198_94

def loopBody198_96 : HolLoopProg 64 :=
.seq loopBody198_79 loopBody198_95

def loopBody198_97 : HolLoopProg 64 :=
.mark loopBody198_96

def loopBody198_98 : HolLoopProg 64 :=
.seq loopBody198_1 loopBody198_97

def loopBody198_99 : HolLoopProg 64 :=
.mark loopBody198_98

def loopBody198_100 : HolLoopProg 64 :=
.seq loopBody198_1 loopBody198_99

def loopBody198_101 : HolLoopProg 64 :=
.mark loopBody198_100

def loopBody198_102 : HolLoopProg 64 :=
.seq loopBody198_77 loopBody198_101

def loopBody198_103 : HolLoopProg 64 :=
.mark loopBody198_102

def loopBody198_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody198_105 : HolLoopProg 64 :=
.mark loopBody198_104

def loopBody198_106 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.ln)) (some 70) ([5]) (some (5, loopBody198_25, loopBody198_1, (Flapjack.Spt.ln)))

def loopBody198_107 : HolLoopProg 64 :=
.mark loopBody198_106

def loopBody198_108 : HolLoopProg 64 :=
.seq loopBody198_107 loopBody198_1

def loopBody198_109 : HolLoopProg 64 :=
.mark loopBody198_108

def loopBody198_110 : HolLoopProg 64 :=
.seq loopBody198_105 loopBody198_109

def loopBody198_111 : HolLoopProg 64 :=
.mark loopBody198_110

def loopBody198_112 : HolLoopProg 64 :=
.seq loopBody198_1 loopBody198_111

def loopBody198_113 : HolLoopProg 64 :=
.mark loopBody198_112

def loopBody198_114 : HolLoopProg 64 :=
.seq loopBody198_1 loopBody198_113

def loopBody198_115 : HolLoopProg 64 :=
.mark loopBody198_114

def loopBody198_116 : HolLoopProg 64 :=
.seq loopBody198_103 loopBody198_115

def loopBody198_117 : HolLoopProg 64 :=
.mark loopBody198_116

def loopBody198_118 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody198_119 : HolLoopProg 64 :=
.mark loopBody198_118

def loopBody198_120 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody198_121 : HolLoopProg 64 :=
.mark loopBody198_120

def loopBody198_122 : HolLoopProg 64 :=
.seq loopBody198_121 loopBody198_1

def loopBody198_123 : HolLoopProg 64 :=
.mark loopBody198_122

def loopBody198_124 : HolLoopProg 64 :=
.seq loopBody198_119 loopBody198_123

def loopBody198_125 : HolLoopProg 64 :=
.mark loopBody198_124

def loopBody198_126 : HolLoopProg 64 :=
.seq loopBody198_117 loopBody198_125

def loopBody198_127 : HolLoopProg 64 :=
.mark loopBody198_126

def loopBody198_128 : HolLoopProg 64 :=
.seq loopBody198_17 loopBody198_127

def loopBody198_129 : HolLoopProg 64 :=
.mark loopBody198_128

def loopBody198_130 : HolLoopProg 64 :=
.seq loopBody198_1 loopBody198_129

def loopBody198_131 : HolLoopProg 64 :=
.mark loopBody198_130

def loopBody198_132 : HolLoopProg 64 :=
.seq loopBody198_1 loopBody198_131

def loopBody198_133 : HolLoopProg 64 :=
.mark loopBody198_132

def loopBody198_134 : HolLoopProg 64 :=
.seq loopBody198_7 loopBody198_133

def loopBody198_135 : HolLoopProg 64 :=
.mark loopBody198_134

def loopBody198_136 : HolLoopProg 64 :=
.seq loopBody198_1 loopBody198_135

def loopBody198_137 : HolLoopProg 64 :=
.mark loopBody198_136

def loopBody198_138 : HolLoopProg 64 :=
.seq loopBody198_1 loopBody198_137

def loopBody198_139 : HolLoopProg 64 :=
.mark loopBody198_138

def output198 : Nat × List Nat × HolLoopProg 64 :=
  (262, [0, 1], loopBody198_139)
end InitECandidate.Proofs.FrontendStages.Loop
