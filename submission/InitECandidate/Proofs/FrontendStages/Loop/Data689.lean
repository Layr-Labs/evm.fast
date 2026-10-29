import InitECandidate.Proofs.FrontendStages.Loop.Translate673
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody689_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody689_1 : HolLoopProg 64 :=
.mark loopBody689_0

def loopBody689_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody689_3 : HolLoopProg 64 :=
.mark loopBody689_2

def loopBody689_4 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 69) ([]) (some (3, loopBody689_3, loopBody689_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody689_5 : HolLoopProg 64 :=
.mark loopBody689_4

def loopBody689_6 : HolLoopProg 64 :=
.seq loopBody689_5 loopBody689_1

def loopBody689_7 : HolLoopProg 64 :=
.mark loopBody689_6

def loopBody689_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 96#64)

def loopBody689_9 : HolLoopProg 64 :=
.mark loopBody689_8

def loopBody689_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody689_11 : HolLoopProg 64 :=
.mark loopBody689_10

def loopBody689_12 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([4]) (some (4, loopBody689_11, loopBody689_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody689_13 : HolLoopProg 64 :=
.mark loopBody689_12

def loopBody689_14 : HolLoopProg 64 :=
.seq loopBody689_13 loopBody689_1

def loopBody689_15 : HolLoopProg 64 :=
.mark loopBody689_14

def loopBody689_16 : HolLoopProg 64 :=
.seq loopBody689_9 loopBody689_15

def loopBody689_17 : HolLoopProg 64 :=
.mark loopBody689_16

def loopBody689_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody689_19 : HolLoopProg 64 :=
.mark loopBody689_18

def loopBody689_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 192#64])

def loopBody689_21 : HolLoopProg 64 :=
.mark loopBody689_20

def loopBody689_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody689_23 : HolLoopProg 64 :=
.mark loopBody689_22

def loopBody689_24 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 741) ([5, 6]) (some (5, loopBody689_23, loopBody689_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody689_25 : HolLoopProg 64 :=
.mark loopBody689_24

def loopBody689_26 : HolLoopProg 64 :=
.seq loopBody689_25 loopBody689_1

def loopBody689_27 : HolLoopProg 64 :=
.mark loopBody689_26

def loopBody689_28 : HolLoopProg 64 :=
.seq loopBody689_21 loopBody689_27

def loopBody689_29 : HolLoopProg 64 :=
.mark loopBody689_28

def loopBody689_30 : HolLoopProg 64 :=
.seq loopBody689_19 loopBody689_29

def loopBody689_31 : HolLoopProg 64 :=
.mark loopBody689_30

def loopBody689_32 : HolLoopProg 64 :=
.seq loopBody689_1 loopBody689_31

def loopBody689_33 : HolLoopProg 64 :=
.mark loopBody689_32

def loopBody689_34 : HolLoopProg 64 :=
.seq loopBody689_1 loopBody689_33

def loopBody689_35 : HolLoopProg 64 :=
.mark loopBody689_34

def loopBody689_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 192#64])

def loopBody689_37 : HolLoopProg 64 :=
.mark loopBody689_36

def loopBody689_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 96#64])

def loopBody689_39 : HolLoopProg 64 :=
.mark loopBody689_38

def loopBody689_40 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 729) ([5, 6]) (some (5, loopBody689_23, loopBody689_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody689_41 : HolLoopProg 64 :=
.mark loopBody689_40

def loopBody689_42 : HolLoopProg 64 :=
.seq loopBody689_41 loopBody689_1

def loopBody689_43 : HolLoopProg 64 :=
.mark loopBody689_42

def loopBody689_44 : HolLoopProg 64 :=
.seq loopBody689_39 loopBody689_43

def loopBody689_45 : HolLoopProg 64 :=
.mark loopBody689_44

def loopBody689_46 : HolLoopProg 64 :=
.seq loopBody689_37 loopBody689_45

def loopBody689_47 : HolLoopProg 64 :=
.mark loopBody689_46

def loopBody689_48 : HolLoopProg 64 :=
.seq loopBody689_1 loopBody689_47

def loopBody689_49 : HolLoopProg 64 :=
.mark loopBody689_48

def loopBody689_50 : HolLoopProg 64 :=
.seq loopBody689_1 loopBody689_49

def loopBody689_51 : HolLoopProg 64 :=
.mark loopBody689_50

def loopBody689_52 : HolLoopProg 64 :=
.seq loopBody689_35 loopBody689_51

def loopBody689_53 : HolLoopProg 64 :=
.mark loopBody689_52

def loopBody689_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 96#64])

def loopBody689_55 : HolLoopProg 64 :=
.mark loopBody689_54

def loopBody689_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody689_57 : HolLoopProg 64 :=
.mark loopBody689_56

def loopBody689_58 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 729) ([5, 6]) (some (5, loopBody689_23, loopBody689_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody689_59 : HolLoopProg 64 :=
.mark loopBody689_58

def loopBody689_60 : HolLoopProg 64 :=
.seq loopBody689_59 loopBody689_1

def loopBody689_61 : HolLoopProg 64 :=
.mark loopBody689_60

def loopBody689_62 : HolLoopProg 64 :=
.seq loopBody689_57 loopBody689_61

def loopBody689_63 : HolLoopProg 64 :=
.mark loopBody689_62

def loopBody689_64 : HolLoopProg 64 :=
.seq loopBody689_55 loopBody689_63

def loopBody689_65 : HolLoopProg 64 :=
.mark loopBody689_64

def loopBody689_66 : HolLoopProg 64 :=
.seq loopBody689_1 loopBody689_65

def loopBody689_67 : HolLoopProg 64 :=
.mark loopBody689_66

def loopBody689_68 : HolLoopProg 64 :=
.seq loopBody689_1 loopBody689_67

def loopBody689_69 : HolLoopProg 64 :=
.mark loopBody689_68

def loopBody689_70 : HolLoopProg 64 :=
.seq loopBody689_53 loopBody689_69

def loopBody689_71 : HolLoopProg 64 :=
.mark loopBody689_70

def loopBody689_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody689_73 : HolLoopProg 64 :=
.mark loopBody689_72

def loopBody689_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody689_75 : HolLoopProg 64 :=
.mark loopBody689_74

def loopBody689_76 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 729) ([5, 6]) (some (5, loopBody689_23, loopBody689_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody689_77 : HolLoopProg 64 :=
.mark loopBody689_76

def loopBody689_78 : HolLoopProg 64 :=
.seq loopBody689_77 loopBody689_1

def loopBody689_79 : HolLoopProg 64 :=
.mark loopBody689_78

def loopBody689_80 : HolLoopProg 64 :=
.seq loopBody689_75 loopBody689_79

def loopBody689_81 : HolLoopProg 64 :=
.mark loopBody689_80

def loopBody689_82 : HolLoopProg 64 :=
.seq loopBody689_73 loopBody689_81

def loopBody689_83 : HolLoopProg 64 :=
.mark loopBody689_82

def loopBody689_84 : HolLoopProg 64 :=
.seq loopBody689_1 loopBody689_83

def loopBody689_85 : HolLoopProg 64 :=
.mark loopBody689_84

def loopBody689_86 : HolLoopProg 64 :=
.seq loopBody689_1 loopBody689_85

def loopBody689_87 : HolLoopProg 64 :=
.mark loopBody689_86

def loopBody689_88 : HolLoopProg 64 :=
.seq loopBody689_71 loopBody689_87

def loopBody689_89 : HolLoopProg 64 :=
.mark loopBody689_88

def loopBody689_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody689_91 : HolLoopProg 64 :=
.mark loopBody689_90

def loopBody689_92 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.ln)) (some 70) ([5]) (some (5, loopBody689_23, loopBody689_1, (Flapjack.Spt.ln)))

def loopBody689_93 : HolLoopProg 64 :=
.mark loopBody689_92

def loopBody689_94 : HolLoopProg 64 :=
.seq loopBody689_93 loopBody689_1

def loopBody689_95 : HolLoopProg 64 :=
.mark loopBody689_94

def loopBody689_96 : HolLoopProg 64 :=
.seq loopBody689_91 loopBody689_95

def loopBody689_97 : HolLoopProg 64 :=
.mark loopBody689_96

def loopBody689_98 : HolLoopProg 64 :=
.seq loopBody689_1 loopBody689_97

def loopBody689_99 : HolLoopProg 64 :=
.mark loopBody689_98

def loopBody689_100 : HolLoopProg 64 :=
.seq loopBody689_1 loopBody689_99

def loopBody689_101 : HolLoopProg 64 :=
.mark loopBody689_100

def loopBody689_102 : HolLoopProg 64 :=
.seq loopBody689_89 loopBody689_101

def loopBody689_103 : HolLoopProg 64 :=
.mark loopBody689_102

def loopBody689_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody689_105 : HolLoopProg 64 :=
.mark loopBody689_104

def loopBody689_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody689_107 : HolLoopProg 64 :=
.mark loopBody689_106

def loopBody689_108 : HolLoopProg 64 :=
.seq loopBody689_107 loopBody689_1

def loopBody689_109 : HolLoopProg 64 :=
.mark loopBody689_108

def loopBody689_110 : HolLoopProg 64 :=
.seq loopBody689_105 loopBody689_109

def loopBody689_111 : HolLoopProg 64 :=
.mark loopBody689_110

def loopBody689_112 : HolLoopProg 64 :=
.seq loopBody689_103 loopBody689_111

def loopBody689_113 : HolLoopProg 64 :=
.mark loopBody689_112

def loopBody689_114 : HolLoopProg 64 :=
.seq loopBody689_17 loopBody689_113

def loopBody689_115 : HolLoopProg 64 :=
.mark loopBody689_114

def loopBody689_116 : HolLoopProg 64 :=
.seq loopBody689_1 loopBody689_115

def loopBody689_117 : HolLoopProg 64 :=
.mark loopBody689_116

def loopBody689_118 : HolLoopProg 64 :=
.seq loopBody689_1 loopBody689_117

def loopBody689_119 : HolLoopProg 64 :=
.mark loopBody689_118

def loopBody689_120 : HolLoopProg 64 :=
.seq loopBody689_7 loopBody689_119

def loopBody689_121 : HolLoopProg 64 :=
.mark loopBody689_120

def loopBody689_122 : HolLoopProg 64 :=
.seq loopBody689_1 loopBody689_121

def loopBody689_123 : HolLoopProg 64 :=
.mark loopBody689_122

def loopBody689_124 : HolLoopProg 64 :=
.seq loopBody689_1 loopBody689_123

def loopBody689_125 : HolLoopProg 64 :=
.mark loopBody689_124

def output689 : Nat × List Nat × HolLoopProg 64 :=
  (753, [0, 1], loopBody689_125)
end InitECandidate.Proofs.FrontendStages.Loop
