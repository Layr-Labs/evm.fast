import InitECandidate.Proofs.FrontendStages.Loop.Translate181
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody197_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody197_1 : HolLoopProg 64 :=
.mark loopBody197_0

def loopBody197_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody197_3 : HolLoopProg 64 :=
.mark loopBody197_2

def loopBody197_4 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 69) ([]) (some (3, loopBody197_3, loopBody197_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody197_5 : HolLoopProg 64 :=
.mark loopBody197_4

def loopBody197_6 : HolLoopProg 64 :=
.seq loopBody197_5 loopBody197_1

def loopBody197_7 : HolLoopProg 64 :=
.mark loopBody197_6

def loopBody197_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 96#64)

def loopBody197_9 : HolLoopProg 64 :=
.mark loopBody197_8

def loopBody197_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody197_11 : HolLoopProg 64 :=
.mark loopBody197_10

def loopBody197_12 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([4]) (some (4, loopBody197_11, loopBody197_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody197_13 : HolLoopProg 64 :=
.mark loopBody197_12

def loopBody197_14 : HolLoopProg 64 :=
.seq loopBody197_13 loopBody197_1

def loopBody197_15 : HolLoopProg 64 :=
.mark loopBody197_14

def loopBody197_16 : HolLoopProg 64 :=
.seq loopBody197_9 loopBody197_15

def loopBody197_17 : HolLoopProg 64 :=
.mark loopBody197_16

def loopBody197_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody197_19 : HolLoopProg 64 :=
.mark loopBody197_18

def loopBody197_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 20#64)

def loopBody197_21 : HolLoopProg 64 :=
.mark loopBody197_20

def loopBody197_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody197_23 : HolLoopProg 64 :=
.mark loopBody197_22

def loopBody197_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody197_25 : HolLoopProg 64 :=
.mark loopBody197_24

def loopBody197_26 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 242) ([5, 6, 7]) (some (5, loopBody197_25, loopBody197_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody197_27 : HolLoopProg 64 :=
.mark loopBody197_26

def loopBody197_28 : HolLoopProg 64 :=
.seq loopBody197_27 loopBody197_1

def loopBody197_29 : HolLoopProg 64 :=
.mark loopBody197_28

def loopBody197_30 : HolLoopProg 64 :=
.seq loopBody197_23 loopBody197_29

def loopBody197_31 : HolLoopProg 64 :=
.mark loopBody197_30

def loopBody197_32 : HolLoopProg 64 :=
.seq loopBody197_21 loopBody197_31

def loopBody197_33 : HolLoopProg 64 :=
.mark loopBody197_32

def loopBody197_34 : HolLoopProg 64 :=
.seq loopBody197_19 loopBody197_33

def loopBody197_35 : HolLoopProg 64 :=
.mark loopBody197_34

def loopBody197_36 : HolLoopProg 64 :=
.seq loopBody197_1 loopBody197_35

def loopBody197_37 : HolLoopProg 64 :=
.mark loopBody197_36

def loopBody197_38 : HolLoopProg 64 :=
.seq loopBody197_1 loopBody197_37

def loopBody197_39 : HolLoopProg 64 :=
.mark loopBody197_38

def loopBody197_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 20#64])

def loopBody197_41 : HolLoopProg 64 :=
.mark loopBody197_40

def loopBody197_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 48#64)

def loopBody197_43 : HolLoopProg 64 :=
.mark loopBody197_42

def loopBody197_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 32#64])

def loopBody197_45 : HolLoopProg 64 :=
.mark loopBody197_44

def loopBody197_46 : HolLoopProg 64 :=
.seq loopBody197_45 loopBody197_29

def loopBody197_47 : HolLoopProg 64 :=
.mark loopBody197_46

def loopBody197_48 : HolLoopProg 64 :=
.seq loopBody197_43 loopBody197_47

def loopBody197_49 : HolLoopProg 64 :=
.mark loopBody197_48

def loopBody197_50 : HolLoopProg 64 :=
.seq loopBody197_41 loopBody197_49

def loopBody197_51 : HolLoopProg 64 :=
.mark loopBody197_50

def loopBody197_52 : HolLoopProg 64 :=
.seq loopBody197_1 loopBody197_51

def loopBody197_53 : HolLoopProg 64 :=
.mark loopBody197_52

def loopBody197_54 : HolLoopProg 64 :=
.seq loopBody197_1 loopBody197_53

def loopBody197_55 : HolLoopProg 64 :=
.mark loopBody197_54

def loopBody197_56 : HolLoopProg 64 :=
.seq loopBody197_39 loopBody197_55

def loopBody197_57 : HolLoopProg 64 :=
.mark loopBody197_56

def loopBody197_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 68#64])

def loopBody197_59 : HolLoopProg 64 :=
.mark loopBody197_58

def loopBody197_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 64#64])

def loopBody197_61 : HolLoopProg 64 :=
.mark loopBody197_60

def loopBody197_62 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 244) ([5, 6]) (some (5, loopBody197_25, loopBody197_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody197_63 : HolLoopProg 64 :=
.mark loopBody197_62

def loopBody197_64 : HolLoopProg 64 :=
.seq loopBody197_63 loopBody197_1

def loopBody197_65 : HolLoopProg 64 :=
.mark loopBody197_64

def loopBody197_66 : HolLoopProg 64 :=
.seq loopBody197_61 loopBody197_65

def loopBody197_67 : HolLoopProg 64 :=
.mark loopBody197_66

def loopBody197_68 : HolLoopProg 64 :=
.seq loopBody197_59 loopBody197_67

def loopBody197_69 : HolLoopProg 64 :=
.mark loopBody197_68

def loopBody197_70 : HolLoopProg 64 :=
.seq loopBody197_1 loopBody197_69

def loopBody197_71 : HolLoopProg 64 :=
.mark loopBody197_70

def loopBody197_72 : HolLoopProg 64 :=
.seq loopBody197_1 loopBody197_71

def loopBody197_73 : HolLoopProg 64 :=
.mark loopBody197_72

def loopBody197_74 : HolLoopProg 64 :=
.seq loopBody197_57 loopBody197_73

def loopBody197_75 : HolLoopProg 64 :=
.mark loopBody197_74

def loopBody197_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody197_77 : HolLoopProg 64 :=
.mark loopBody197_76

def loopBody197_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 3#64)

def loopBody197_79 : HolLoopProg 64 :=
.mark loopBody197_78

def loopBody197_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 3#64)

def loopBody197_81 : HolLoopProg 64 :=
.mark loopBody197_80

def loopBody197_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody197_83 : HolLoopProg 64 :=
.mark loopBody197_82

def loopBody197_84 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 235) ([5, 6, 7, 8]) (some (5, loopBody197_25, loopBody197_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody197_85 : HolLoopProg 64 :=
.mark loopBody197_84

def loopBody197_86 : HolLoopProg 64 :=
.seq loopBody197_85 loopBody197_1

def loopBody197_87 : HolLoopProg 64 :=
.mark loopBody197_86

def loopBody197_88 : HolLoopProg 64 :=
.seq loopBody197_83 loopBody197_87

def loopBody197_89 : HolLoopProg 64 :=
.mark loopBody197_88

def loopBody197_90 : HolLoopProg 64 :=
.seq loopBody197_81 loopBody197_89

def loopBody197_91 : HolLoopProg 64 :=
.mark loopBody197_90

def loopBody197_92 : HolLoopProg 64 :=
.seq loopBody197_79 loopBody197_91

def loopBody197_93 : HolLoopProg 64 :=
.mark loopBody197_92

def loopBody197_94 : HolLoopProg 64 :=
.seq loopBody197_77 loopBody197_93

def loopBody197_95 : HolLoopProg 64 :=
.mark loopBody197_94

def loopBody197_96 : HolLoopProg 64 :=
.seq loopBody197_1 loopBody197_95

def loopBody197_97 : HolLoopProg 64 :=
.mark loopBody197_96

def loopBody197_98 : HolLoopProg 64 :=
.seq loopBody197_1 loopBody197_97

def loopBody197_99 : HolLoopProg 64 :=
.mark loopBody197_98

def loopBody197_100 : HolLoopProg 64 :=
.seq loopBody197_75 loopBody197_99

def loopBody197_101 : HolLoopProg 64 :=
.mark loopBody197_100

def loopBody197_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody197_103 : HolLoopProg 64 :=
.mark loopBody197_102

def loopBody197_104 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.ln)) (some 70) ([5]) (some (5, loopBody197_25, loopBody197_1, (Flapjack.Spt.ln)))

def loopBody197_105 : HolLoopProg 64 :=
.mark loopBody197_104

def loopBody197_106 : HolLoopProg 64 :=
.seq loopBody197_105 loopBody197_1

def loopBody197_107 : HolLoopProg 64 :=
.mark loopBody197_106

def loopBody197_108 : HolLoopProg 64 :=
.seq loopBody197_103 loopBody197_107

def loopBody197_109 : HolLoopProg 64 :=
.mark loopBody197_108

def loopBody197_110 : HolLoopProg 64 :=
.seq loopBody197_1 loopBody197_109

def loopBody197_111 : HolLoopProg 64 :=
.mark loopBody197_110

def loopBody197_112 : HolLoopProg 64 :=
.seq loopBody197_1 loopBody197_111

def loopBody197_113 : HolLoopProg 64 :=
.mark loopBody197_112

def loopBody197_114 : HolLoopProg 64 :=
.seq loopBody197_101 loopBody197_113

def loopBody197_115 : HolLoopProg 64 :=
.mark loopBody197_114

def loopBody197_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody197_117 : HolLoopProg 64 :=
.mark loopBody197_116

def loopBody197_118 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody197_119 : HolLoopProg 64 :=
.mark loopBody197_118

def loopBody197_120 : HolLoopProg 64 :=
.seq loopBody197_119 loopBody197_1

def loopBody197_121 : HolLoopProg 64 :=
.mark loopBody197_120

def loopBody197_122 : HolLoopProg 64 :=
.seq loopBody197_117 loopBody197_121

def loopBody197_123 : HolLoopProg 64 :=
.mark loopBody197_122

def loopBody197_124 : HolLoopProg 64 :=
.seq loopBody197_115 loopBody197_123

def loopBody197_125 : HolLoopProg 64 :=
.mark loopBody197_124

def loopBody197_126 : HolLoopProg 64 :=
.seq loopBody197_17 loopBody197_125

def loopBody197_127 : HolLoopProg 64 :=
.mark loopBody197_126

def loopBody197_128 : HolLoopProg 64 :=
.seq loopBody197_1 loopBody197_127

def loopBody197_129 : HolLoopProg 64 :=
.mark loopBody197_128

def loopBody197_130 : HolLoopProg 64 :=
.seq loopBody197_1 loopBody197_129

def loopBody197_131 : HolLoopProg 64 :=
.mark loopBody197_130

def loopBody197_132 : HolLoopProg 64 :=
.seq loopBody197_7 loopBody197_131

def loopBody197_133 : HolLoopProg 64 :=
.mark loopBody197_132

def loopBody197_134 : HolLoopProg 64 :=
.seq loopBody197_1 loopBody197_133

def loopBody197_135 : HolLoopProg 64 :=
.mark loopBody197_134

def loopBody197_136 : HolLoopProg 64 :=
.seq loopBody197_1 loopBody197_135

def loopBody197_137 : HolLoopProg 64 :=
.mark loopBody197_136

def output197 : Nat × List Nat × HolLoopProg 64 :=
  (261, [0, 1], loopBody197_137)
end InitECandidate.Proofs.FrontendStages.Loop
