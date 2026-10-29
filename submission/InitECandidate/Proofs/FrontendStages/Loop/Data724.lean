import InitECandidate.Proofs.FrontendStages.Loop.Translate708
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody724_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody724_1 : HolLoopProg 64 :=
.mark loopBody724_0

def loopBody724_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody724_3 : HolLoopProg 64 :=
.mark loopBody724_2

def loopBody724_4 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 69) ([]) (some (3, loopBody724_3, loopBody724_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody724_5 : HolLoopProg 64 :=
.mark loopBody724_4

def loopBody724_6 : HolLoopProg 64 :=
.seq loopBody724_5 loopBody724_1

def loopBody724_7 : HolLoopProg 64 :=
.mark loopBody724_6

def loopBody724_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 192#64)

def loopBody724_9 : HolLoopProg 64 :=
.mark loopBody724_8

def loopBody724_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody724_11 : HolLoopProg 64 :=
.mark loopBody724_10

def loopBody724_12 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([4]) (some (4, loopBody724_11, loopBody724_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody724_13 : HolLoopProg 64 :=
.mark loopBody724_12

def loopBody724_14 : HolLoopProg 64 :=
.seq loopBody724_13 loopBody724_1

def loopBody724_15 : HolLoopProg 64 :=
.mark loopBody724_14

def loopBody724_16 : HolLoopProg 64 :=
.seq loopBody724_9 loopBody724_15

def loopBody724_17 : HolLoopProg 64 :=
.mark loopBody724_16

def loopBody724_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody724_19 : HolLoopProg 64 :=
.mark loopBody724_18

def loopBody724_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody724_21 : HolLoopProg 64 :=
.mark loopBody724_20

def loopBody724_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody724_23 : HolLoopProg 64 :=
.mark loopBody724_22

def loopBody724_24 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 785) ([5, 6]) (some (5, loopBody724_23, loopBody724_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody724_25 : HolLoopProg 64 :=
.mark loopBody724_24

def loopBody724_26 : HolLoopProg 64 :=
.seq loopBody724_25 loopBody724_1

def loopBody724_27 : HolLoopProg 64 :=
.mark loopBody724_26

def loopBody724_28 : HolLoopProg 64 :=
.seq loopBody724_21 loopBody724_27

def loopBody724_29 : HolLoopProg 64 :=
.mark loopBody724_28

def loopBody724_30 : HolLoopProg 64 :=
.seq loopBody724_19 loopBody724_29

def loopBody724_31 : HolLoopProg 64 :=
.mark loopBody724_30

def loopBody724_32 : HolLoopProg 64 :=
.seq loopBody724_1 loopBody724_31

def loopBody724_33 : HolLoopProg 64 :=
.mark loopBody724_32

def loopBody724_34 : HolLoopProg 64 :=
.seq loopBody724_1 loopBody724_33

def loopBody724_35 : HolLoopProg 64 :=
.mark loopBody724_34

def loopBody724_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody724_37 : HolLoopProg 64 :=
.mark loopBody724_36

def loopBody724_38 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 728) ([5, 6]) (some (5, loopBody724_23, loopBody724_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody724_39 : HolLoopProg 64 :=
.mark loopBody724_38

def loopBody724_40 : HolLoopProg 64 :=
.seq loopBody724_39 loopBody724_1

def loopBody724_41 : HolLoopProg 64 :=
.mark loopBody724_40

def loopBody724_42 : HolLoopProg 64 :=
.seq loopBody724_37 loopBody724_41

def loopBody724_43 : HolLoopProg 64 :=
.mark loopBody724_42

def loopBody724_44 : HolLoopProg 64 :=
.seq loopBody724_19 loopBody724_43

def loopBody724_45 : HolLoopProg 64 :=
.mark loopBody724_44

def loopBody724_46 : HolLoopProg 64 :=
.seq loopBody724_1 loopBody724_45

def loopBody724_47 : HolLoopProg 64 :=
.mark loopBody724_46

def loopBody724_48 : HolLoopProg 64 :=
.seq loopBody724_1 loopBody724_47

def loopBody724_49 : HolLoopProg 64 :=
.mark loopBody724_48

def loopBody724_50 : HolLoopProg 64 :=
.seq loopBody724_35 loopBody724_49

def loopBody724_51 : HolLoopProg 64 :=
.mark loopBody724_50

def loopBody724_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 48#64])

def loopBody724_53 : HolLoopProg 64 :=
.mark loopBody724_52

def loopBody724_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 64#64])

def loopBody724_55 : HolLoopProg 64 :=
.mark loopBody724_54

def loopBody724_56 : HolLoopProg 64 :=
.seq loopBody724_55 loopBody724_41

def loopBody724_57 : HolLoopProg 64 :=
.mark loopBody724_56

def loopBody724_58 : HolLoopProg 64 :=
.seq loopBody724_53 loopBody724_57

def loopBody724_59 : HolLoopProg 64 :=
.mark loopBody724_58

def loopBody724_60 : HolLoopProg 64 :=
.seq loopBody724_1 loopBody724_59

def loopBody724_61 : HolLoopProg 64 :=
.mark loopBody724_60

def loopBody724_62 : HolLoopProg 64 :=
.seq loopBody724_1 loopBody724_61

def loopBody724_63 : HolLoopProg 64 :=
.mark loopBody724_62

def loopBody724_64 : HolLoopProg 64 :=
.seq loopBody724_51 loopBody724_63

def loopBody724_65 : HolLoopProg 64 :=
.mark loopBody724_64

def loopBody724_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 96#64])

def loopBody724_67 : HolLoopProg 64 :=
.mark loopBody724_66

def loopBody724_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 128#64])

def loopBody724_69 : HolLoopProg 64 :=
.mark loopBody724_68

def loopBody724_70 : HolLoopProg 64 :=
.seq loopBody724_69 loopBody724_41

def loopBody724_71 : HolLoopProg 64 :=
.mark loopBody724_70

def loopBody724_72 : HolLoopProg 64 :=
.seq loopBody724_67 loopBody724_71

def loopBody724_73 : HolLoopProg 64 :=
.mark loopBody724_72

def loopBody724_74 : HolLoopProg 64 :=
.seq loopBody724_1 loopBody724_73

def loopBody724_75 : HolLoopProg 64 :=
.mark loopBody724_74

def loopBody724_76 : HolLoopProg 64 :=
.seq loopBody724_1 loopBody724_75

def loopBody724_77 : HolLoopProg 64 :=
.mark loopBody724_76

def loopBody724_78 : HolLoopProg 64 :=
.seq loopBody724_65 loopBody724_77

def loopBody724_79 : HolLoopProg 64 :=
.mark loopBody724_78

def loopBody724_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 144#64])

def loopBody724_81 : HolLoopProg 64 :=
.mark loopBody724_80

def loopBody724_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 192#64])

def loopBody724_83 : HolLoopProg 64 :=
.mark loopBody724_82

def loopBody724_84 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 728) ([5, 6]) (some (5, loopBody724_23, loopBody724_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody724_85 : HolLoopProg 64 :=
.mark loopBody724_84

def loopBody724_86 : HolLoopProg 64 :=
.seq loopBody724_85 loopBody724_1

def loopBody724_87 : HolLoopProg 64 :=
.mark loopBody724_86

def loopBody724_88 : HolLoopProg 64 :=
.seq loopBody724_83 loopBody724_87

def loopBody724_89 : HolLoopProg 64 :=
.mark loopBody724_88

def loopBody724_90 : HolLoopProg 64 :=
.seq loopBody724_81 loopBody724_89

def loopBody724_91 : HolLoopProg 64 :=
.mark loopBody724_90

def loopBody724_92 : HolLoopProg 64 :=
.seq loopBody724_1 loopBody724_91

def loopBody724_93 : HolLoopProg 64 :=
.mark loopBody724_92

def loopBody724_94 : HolLoopProg 64 :=
.seq loopBody724_1 loopBody724_93

def loopBody724_95 : HolLoopProg 64 :=
.mark loopBody724_94

def loopBody724_96 : HolLoopProg 64 :=
.seq loopBody724_79 loopBody724_95

def loopBody724_97 : HolLoopProg 64 :=
.mark loopBody724_96

def loopBody724_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody724_99 : HolLoopProg 64 :=
.mark loopBody724_98

def loopBody724_100 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.ln)) (some 70) ([5]) (some (5, loopBody724_23, loopBody724_1, (Flapjack.Spt.ln)))

def loopBody724_101 : HolLoopProg 64 :=
.mark loopBody724_100

def loopBody724_102 : HolLoopProg 64 :=
.seq loopBody724_101 loopBody724_1

def loopBody724_103 : HolLoopProg 64 :=
.mark loopBody724_102

def loopBody724_104 : HolLoopProg 64 :=
.seq loopBody724_99 loopBody724_103

def loopBody724_105 : HolLoopProg 64 :=
.mark loopBody724_104

def loopBody724_106 : HolLoopProg 64 :=
.seq loopBody724_1 loopBody724_105

def loopBody724_107 : HolLoopProg 64 :=
.mark loopBody724_106

def loopBody724_108 : HolLoopProg 64 :=
.seq loopBody724_1 loopBody724_107

def loopBody724_109 : HolLoopProg 64 :=
.mark loopBody724_108

def loopBody724_110 : HolLoopProg 64 :=
.seq loopBody724_97 loopBody724_109

def loopBody724_111 : HolLoopProg 64 :=
.mark loopBody724_110

def loopBody724_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody724_113 : HolLoopProg 64 :=
.mark loopBody724_112

def loopBody724_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody724_115 : HolLoopProg 64 :=
.mark loopBody724_114

def loopBody724_116 : HolLoopProg 64 :=
.seq loopBody724_115 loopBody724_1

def loopBody724_117 : HolLoopProg 64 :=
.mark loopBody724_116

def loopBody724_118 : HolLoopProg 64 :=
.seq loopBody724_113 loopBody724_117

def loopBody724_119 : HolLoopProg 64 :=
.mark loopBody724_118

def loopBody724_120 : HolLoopProg 64 :=
.seq loopBody724_111 loopBody724_119

def loopBody724_121 : HolLoopProg 64 :=
.mark loopBody724_120

def loopBody724_122 : HolLoopProg 64 :=
.seq loopBody724_17 loopBody724_121

def loopBody724_123 : HolLoopProg 64 :=
.mark loopBody724_122

def loopBody724_124 : HolLoopProg 64 :=
.seq loopBody724_1 loopBody724_123

def loopBody724_125 : HolLoopProg 64 :=
.mark loopBody724_124

def loopBody724_126 : HolLoopProg 64 :=
.seq loopBody724_1 loopBody724_125

def loopBody724_127 : HolLoopProg 64 :=
.mark loopBody724_126

def loopBody724_128 : HolLoopProg 64 :=
.seq loopBody724_7 loopBody724_127

def loopBody724_129 : HolLoopProg 64 :=
.mark loopBody724_128

def loopBody724_130 : HolLoopProg 64 :=
.seq loopBody724_1 loopBody724_129

def loopBody724_131 : HolLoopProg 64 :=
.mark loopBody724_130

def loopBody724_132 : HolLoopProg 64 :=
.seq loopBody724_1 loopBody724_131

def loopBody724_133 : HolLoopProg 64 :=
.mark loopBody724_132

def output724 : Nat × List Nat × HolLoopProg 64 :=
  (788, [0, 1], loopBody724_133)
end InitECandidate.Proofs.FrontendStages.Loop
