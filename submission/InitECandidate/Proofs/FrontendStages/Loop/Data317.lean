import InitECandidate.Proofs.FrontendStages.Loop.Translate301
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody317_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody317_1 : HolLoopProg 64 :=
.mark loopBody317_0

def loopBody317_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody317_3 : HolLoopProg 64 :=
.mark loopBody317_2

def loopBody317_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody317_5 : HolLoopProg 64 :=
.mark loopBody317_4

def loopBody317_6 : HolLoopProg 64 :=
.call (some ([2, 3], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 377) ([4]) (some (4, loopBody317_5, loopBody317_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody317_7 : HolLoopProg 64 :=
.mark loopBody317_6

def loopBody317_8 : HolLoopProg 64 :=
.seq loopBody317_7 loopBody317_1

def loopBody317_9 : HolLoopProg 64 :=
.mark loopBody317_8

def loopBody317_10 : HolLoopProg 64 :=
.seq loopBody317_3 loopBody317_9

def loopBody317_11 : HolLoopProg 64 :=
.mark loopBody317_10

def loopBody317_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody317_13 : HolLoopProg 64 :=
.mark loopBody317_12

def loopBody317_14 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 69) ([]) (some (5, loopBody317_13, loopBody317_1, (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody317_15 : HolLoopProg 64 :=
.mark loopBody317_14

def loopBody317_16 : HolLoopProg 64 :=
.seq loopBody317_15 loopBody317_1

def loopBody317_17 : HolLoopProg 64 :=
.mark loopBody317_16

def loopBody317_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 72#64)

def loopBody317_19 : HolLoopProg 64 :=
.mark loopBody317_18

def loopBody317_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody317_21 : HolLoopProg 64 :=
.mark loopBody317_20

def loopBody317_22 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([6]) (some (6, loopBody317_21, loopBody317_1, (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody317_23 : HolLoopProg 64 :=
.mark loopBody317_22

def loopBody317_24 : HolLoopProg 64 :=
.seq loopBody317_23 loopBody317_1

def loopBody317_25 : HolLoopProg 64 :=
.mark loopBody317_24

def loopBody317_26 : HolLoopProg 64 :=
.seq loopBody317_19 loopBody317_25

def loopBody317_27 : HolLoopProg 64 :=
.mark loopBody317_26

def loopBody317_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 5)

def loopBody317_29 : HolLoopProg 64 :=
.mark loopBody317_28

def loopBody317_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 4#64)

def loopBody317_31 : HolLoopProg 64 :=
.mark loopBody317_30

def loopBody317_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 6 7

def loopBody317_33 : HolLoopProg 64 :=
.mark loopBody317_32

def loopBody317_34 : HolLoopProg 64 :=
.seq loopBody317_33 loopBody317_1

def loopBody317_35 : HolLoopProg 64 :=
.mark loopBody317_34

def loopBody317_36 : HolLoopProg 64 :=
.seq loopBody317_31 loopBody317_35

def loopBody317_37 : HolLoopProg 64 :=
.mark loopBody317_36

def loopBody317_38 : HolLoopProg 64 :=
.seq loopBody317_29 loopBody317_37

def loopBody317_39 : HolLoopProg 64 :=
.mark loopBody317_38

def loopBody317_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 0)

def loopBody317_41 : HolLoopProg 64 :=
.mark loopBody317_40

def loopBody317_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody317_43 : HolLoopProg 64 :=
.mark loopBody317_42

def loopBody317_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 1#64])

def loopBody317_45 : HolLoopProg 64 :=
.mark loopBody317_44

def loopBody317_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody317_47 : HolLoopProg 64 :=
.mark loopBody317_46

def loopBody317_48 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))) (some 379) ([7, 8, 9]) (some (7, loopBody317_47, loopBody317_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))

def loopBody317_49 : HolLoopProg 64 :=
.mark loopBody317_48

def loopBody317_50 : HolLoopProg 64 :=
.seq loopBody317_49 loopBody317_1

def loopBody317_51 : HolLoopProg 64 :=
.mark loopBody317_50

def loopBody317_52 : HolLoopProg 64 :=
.seq loopBody317_45 loopBody317_51

def loopBody317_53 : HolLoopProg 64 :=
.mark loopBody317_52

def loopBody317_54 : HolLoopProg 64 :=
.seq loopBody317_43 loopBody317_53

def loopBody317_55 : HolLoopProg 64 :=
.mark loopBody317_54

def loopBody317_56 : HolLoopProg 64 :=
.seq loopBody317_41 loopBody317_55

def loopBody317_57 : HolLoopProg 64 :=
.mark loopBody317_56

def loopBody317_58 : HolLoopProg 64 :=
.seq loopBody317_1 loopBody317_57

def loopBody317_59 : HolLoopProg 64 :=
.mark loopBody317_58

def loopBody317_60 : HolLoopProg 64 :=
.seq loopBody317_1 loopBody317_59

def loopBody317_61 : HolLoopProg 64 :=
.mark loopBody317_60

def loopBody317_62 : HolLoopProg 64 :=
.seq loopBody317_39 loopBody317_61

def loopBody317_63 : HolLoopProg 64 :=
.mark loopBody317_62

def loopBody317_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody317_65 : HolLoopProg 64 :=
.mark loopBody317_64

def loopBody317_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody317_67 : HolLoopProg 64 :=
.mark loopBody317_66

def loopBody317_68 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)) (some 380) ([7, 8]) (some (7, loopBody317_47, loopBody317_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))

def loopBody317_69 : HolLoopProg 64 :=
.mark loopBody317_68

def loopBody317_70 : HolLoopProg 64 :=
.seq loopBody317_69 loopBody317_1

def loopBody317_71 : HolLoopProg 64 :=
.mark loopBody317_70

def loopBody317_72 : HolLoopProg 64 :=
.seq loopBody317_67 loopBody317_71

def loopBody317_73 : HolLoopProg 64 :=
.mark loopBody317_72

def loopBody317_74 : HolLoopProg 64 :=
.seq loopBody317_65 loopBody317_73

def loopBody317_75 : HolLoopProg 64 :=
.mark loopBody317_74

def loopBody317_76 : HolLoopProg 64 :=
.seq loopBody317_1 loopBody317_75

def loopBody317_77 : HolLoopProg 64 :=
.mark loopBody317_76

def loopBody317_78 : HolLoopProg 64 :=
.seq loopBody317_1 loopBody317_77

def loopBody317_79 : HolLoopProg 64 :=
.mark loopBody317_78

def loopBody317_80 : HolLoopProg 64 :=
.seq loopBody317_63 loopBody317_79

def loopBody317_81 : HolLoopProg 64 :=
.mark loopBody317_80

def loopBody317_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody317_83 : HolLoopProg 64 :=
.mark loopBody317_82

def loopBody317_84 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.ln)) (some 70) ([7]) (some (7, loopBody317_47, loopBody317_1, (Flapjack.Spt.ln)))

def loopBody317_85 : HolLoopProg 64 :=
.mark loopBody317_84

def loopBody317_86 : HolLoopProg 64 :=
.seq loopBody317_85 loopBody317_1

def loopBody317_87 : HolLoopProg 64 :=
.mark loopBody317_86

def loopBody317_88 : HolLoopProg 64 :=
.seq loopBody317_83 loopBody317_87

def loopBody317_89 : HolLoopProg 64 :=
.mark loopBody317_88

def loopBody317_90 : HolLoopProg 64 :=
.seq loopBody317_1 loopBody317_89

def loopBody317_91 : HolLoopProg 64 :=
.mark loopBody317_90

def loopBody317_92 : HolLoopProg 64 :=
.seq loopBody317_1 loopBody317_91

def loopBody317_93 : HolLoopProg 64 :=
.mark loopBody317_92

def loopBody317_94 : HolLoopProg 64 :=
.seq loopBody317_81 loopBody317_93

def loopBody317_95 : HolLoopProg 64 :=
.mark loopBody317_94

def loopBody317_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody317_97 : HolLoopProg 64 :=
.mark loopBody317_96

def loopBody317_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody317_99 : HolLoopProg 64 :=
.mark loopBody317_98

def loopBody317_100 : HolLoopProg 64 :=
.seq loopBody317_99 loopBody317_1

def loopBody317_101 : HolLoopProg 64 :=
.mark loopBody317_100

def loopBody317_102 : HolLoopProg 64 :=
.seq loopBody317_97 loopBody317_101

def loopBody317_103 : HolLoopProg 64 :=
.mark loopBody317_102

def loopBody317_104 : HolLoopProg 64 :=
.seq loopBody317_95 loopBody317_103

def loopBody317_105 : HolLoopProg 64 :=
.mark loopBody317_104

def loopBody317_106 : HolLoopProg 64 :=
.seq loopBody317_27 loopBody317_105

def loopBody317_107 : HolLoopProg 64 :=
.mark loopBody317_106

def loopBody317_108 : HolLoopProg 64 :=
.seq loopBody317_1 loopBody317_107

def loopBody317_109 : HolLoopProg 64 :=
.mark loopBody317_108

def loopBody317_110 : HolLoopProg 64 :=
.seq loopBody317_1 loopBody317_109

def loopBody317_111 : HolLoopProg 64 :=
.mark loopBody317_110

def loopBody317_112 : HolLoopProg 64 :=
.seq loopBody317_17 loopBody317_111

def loopBody317_113 : HolLoopProg 64 :=
.mark loopBody317_112

def loopBody317_114 : HolLoopProg 64 :=
.seq loopBody317_1 loopBody317_113

def loopBody317_115 : HolLoopProg 64 :=
.mark loopBody317_114

def loopBody317_116 : HolLoopProg 64 :=
.seq loopBody317_1 loopBody317_115

def loopBody317_117 : HolLoopProg 64 :=
.mark loopBody317_116

def loopBody317_118 : HolLoopProg 64 :=
.seq loopBody317_11 loopBody317_117

def loopBody317_119 : HolLoopProg 64 :=
.mark loopBody317_118

def loopBody317_120 : HolLoopProg 64 :=
.seq loopBody317_1 loopBody317_119

def loopBody317_121 : HolLoopProg 64 :=
.mark loopBody317_120

def loopBody317_122 : HolLoopProg 64 :=
.seq loopBody317_1 loopBody317_121

def loopBody317_123 : HolLoopProg 64 :=
.mark loopBody317_122

def loopBody317_124 : HolLoopProg 64 :=
.seq loopBody317_1 loopBody317_123

def loopBody317_125 : HolLoopProg 64 :=
.mark loopBody317_124

def loopBody317_126 : HolLoopProg 64 :=
.seq loopBody317_1 loopBody317_125

def loopBody317_127 : HolLoopProg 64 :=
.mark loopBody317_126

def output317 : Nat × List Nat × HolLoopProg 64 :=
  (381, [0, 1], loopBody317_127)
end InitECandidate.Proofs.FrontendStages.Loop
