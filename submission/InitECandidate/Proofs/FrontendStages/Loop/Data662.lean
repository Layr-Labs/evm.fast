import InitECandidate.Proofs.FrontendStages.Loop.Translate646
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody662_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody662_1 : HolLoopProg 64 :=
.mark loopBody662_0

def loopBody662_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody662_3 : HolLoopProg 64 :=
.mark loopBody662_2

def loopBody662_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 5)

def loopBody662_5 : HolLoopProg 64 :=
.mark loopBody662_4

def loopBody662_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody662_7 : HolLoopProg 64 :=
.mark loopBody662_6

def loopBody662_8 : HolLoopProg 64 :=
.call (some
  ([7],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 89) ([8, 9]) (some (8, loopBody662_7, loopBody662_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody662_9 : HolLoopProg 64 :=
.mark loopBody662_8

def loopBody662_10 : HolLoopProg 64 :=
.seq loopBody662_9 loopBody662_1

def loopBody662_11 : HolLoopProg 64 :=
.mark loopBody662_10

def loopBody662_12 : HolLoopProg 64 :=
.seq loopBody662_5 loopBody662_11

def loopBody662_13 : HolLoopProg 64 :=
.mark loopBody662_12

def loopBody662_14 : HolLoopProg 64 :=
.seq loopBody662_3 loopBody662_13

def loopBody662_15 : HolLoopProg 64 :=
.mark loopBody662_14

def loopBody662_16 : HolLoopProg 64 :=
.seq loopBody662_1 loopBody662_15

def loopBody662_17 : HolLoopProg 64 :=
.mark loopBody662_16

def loopBody662_18 : HolLoopProg 64 :=
.seq loopBody662_1 loopBody662_17

def loopBody662_19 : HolLoopProg 64 :=
.mark loopBody662_18

def loopBody662_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 8#64])

def loopBody662_21 : HolLoopProg 64 :=
.mark loopBody662_20

def loopBody662_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 4)

def loopBody662_23 : HolLoopProg 64 :=
.mark loopBody662_22

def loopBody662_24 : HolLoopProg 64 :=
.call (some
  ([7],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 89) ([8, 9]) (some (8, loopBody662_7, loopBody662_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody662_25 : HolLoopProg 64 :=
.mark loopBody662_24

def loopBody662_26 : HolLoopProg 64 :=
.seq loopBody662_25 loopBody662_1

def loopBody662_27 : HolLoopProg 64 :=
.mark loopBody662_26

def loopBody662_28 : HolLoopProg 64 :=
.seq loopBody662_23 loopBody662_27

def loopBody662_29 : HolLoopProg 64 :=
.mark loopBody662_28

def loopBody662_30 : HolLoopProg 64 :=
.seq loopBody662_21 loopBody662_29

def loopBody662_31 : HolLoopProg 64 :=
.mark loopBody662_30

def loopBody662_32 : HolLoopProg 64 :=
.seq loopBody662_1 loopBody662_31

def loopBody662_33 : HolLoopProg 64 :=
.mark loopBody662_32

def loopBody662_34 : HolLoopProg 64 :=
.seq loopBody662_1 loopBody662_33

def loopBody662_35 : HolLoopProg 64 :=
.mark loopBody662_34

def loopBody662_36 : HolLoopProg 64 :=
.seq loopBody662_19 loopBody662_35

def loopBody662_37 : HolLoopProg 64 :=
.mark loopBody662_36

def loopBody662_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 16#64])

def loopBody662_39 : HolLoopProg 64 :=
.mark loopBody662_38

def loopBody662_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 3)

def loopBody662_41 : HolLoopProg 64 :=
.mark loopBody662_40

def loopBody662_42 : HolLoopProg 64 :=
.call (some
  ([7],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))) (some 89) ([8, 9]) (some (8, loopBody662_7, loopBody662_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
  (Flapjack.Spt.ls PUnit.unit))))

def loopBody662_43 : HolLoopProg 64 :=
.mark loopBody662_42

def loopBody662_44 : HolLoopProg 64 :=
.seq loopBody662_43 loopBody662_1

def loopBody662_45 : HolLoopProg 64 :=
.mark loopBody662_44

def loopBody662_46 : HolLoopProg 64 :=
.seq loopBody662_41 loopBody662_45

def loopBody662_47 : HolLoopProg 64 :=
.mark loopBody662_46

def loopBody662_48 : HolLoopProg 64 :=
.seq loopBody662_39 loopBody662_47

def loopBody662_49 : HolLoopProg 64 :=
.mark loopBody662_48

def loopBody662_50 : HolLoopProg 64 :=
.seq loopBody662_1 loopBody662_49

def loopBody662_51 : HolLoopProg 64 :=
.mark loopBody662_50

def loopBody662_52 : HolLoopProg 64 :=
.seq loopBody662_1 loopBody662_51

def loopBody662_53 : HolLoopProg 64 :=
.mark loopBody662_52

def loopBody662_54 : HolLoopProg 64 :=
.seq loopBody662_37 loopBody662_53

def loopBody662_55 : HolLoopProg 64 :=
.mark loopBody662_54

def loopBody662_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 24#64])

def loopBody662_57 : HolLoopProg 64 :=
.mark loopBody662_56

def loopBody662_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 2)

def loopBody662_59 : HolLoopProg 64 :=
.mark loopBody662_58

def loopBody662_60 : HolLoopProg 64 :=
.call (some
  ([7],
    Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))) (some 89) ([8, 9]) (some (8, loopBody662_7, loopBody662_1, (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody662_61 : HolLoopProg 64 :=
.mark loopBody662_60

def loopBody662_62 : HolLoopProg 64 :=
.seq loopBody662_61 loopBody662_1

def loopBody662_63 : HolLoopProg 64 :=
.mark loopBody662_62

def loopBody662_64 : HolLoopProg 64 :=
.seq loopBody662_59 loopBody662_63

def loopBody662_65 : HolLoopProg 64 :=
.mark loopBody662_64

def loopBody662_66 : HolLoopProg 64 :=
.seq loopBody662_57 loopBody662_65

def loopBody662_67 : HolLoopProg 64 :=
.mark loopBody662_66

def loopBody662_68 : HolLoopProg 64 :=
.seq loopBody662_1 loopBody662_67

def loopBody662_69 : HolLoopProg 64 :=
.mark loopBody662_68

def loopBody662_70 : HolLoopProg 64 :=
.seq loopBody662_1 loopBody662_69

def loopBody662_71 : HolLoopProg 64 :=
.mark loopBody662_70

def loopBody662_72 : HolLoopProg 64 :=
.seq loopBody662_55 loopBody662_71

def loopBody662_73 : HolLoopProg 64 :=
.mark loopBody662_72

def loopBody662_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 32#64])

def loopBody662_75 : HolLoopProg 64 :=
.mark loopBody662_74

def loopBody662_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 1)

def loopBody662_77 : HolLoopProg 64 :=
.mark loopBody662_76

def loopBody662_78 : HolLoopProg 64 :=
.call (some ([7], Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)) (some 89) ([8, 9]) (some (8, loopBody662_7, loopBody662_1, (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)))

def loopBody662_79 : HolLoopProg 64 :=
.mark loopBody662_78

def loopBody662_80 : HolLoopProg 64 :=
.seq loopBody662_79 loopBody662_1

def loopBody662_81 : HolLoopProg 64 :=
.mark loopBody662_80

def loopBody662_82 : HolLoopProg 64 :=
.seq loopBody662_77 loopBody662_81

def loopBody662_83 : HolLoopProg 64 :=
.mark loopBody662_82

def loopBody662_84 : HolLoopProg 64 :=
.seq loopBody662_75 loopBody662_83

def loopBody662_85 : HolLoopProg 64 :=
.mark loopBody662_84

def loopBody662_86 : HolLoopProg 64 :=
.seq loopBody662_1 loopBody662_85

def loopBody662_87 : HolLoopProg 64 :=
.mark loopBody662_86

def loopBody662_88 : HolLoopProg 64 :=
.seq loopBody662_1 loopBody662_87

def loopBody662_89 : HolLoopProg 64 :=
.mark loopBody662_88

def loopBody662_90 : HolLoopProg 64 :=
.seq loopBody662_73 loopBody662_89

def loopBody662_91 : HolLoopProg 64 :=
.mark loopBody662_90

def loopBody662_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 40#64])

def loopBody662_93 : HolLoopProg 64 :=
.mark loopBody662_92

def loopBody662_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 0)

def loopBody662_95 : HolLoopProg 64 :=
.mark loopBody662_94

def loopBody662_96 : HolLoopProg 64 :=
.call (some ([7], Flapjack.Spt.ln)) (some 89) ([8, 9]) (some (8, loopBody662_7, loopBody662_1, (Flapjack.Spt.ln)))

def loopBody662_97 : HolLoopProg 64 :=
.mark loopBody662_96

def loopBody662_98 : HolLoopProg 64 :=
.seq loopBody662_97 loopBody662_1

def loopBody662_99 : HolLoopProg 64 :=
.mark loopBody662_98

def loopBody662_100 : HolLoopProg 64 :=
.seq loopBody662_95 loopBody662_99

def loopBody662_101 : HolLoopProg 64 :=
.mark loopBody662_100

def loopBody662_102 : HolLoopProg 64 :=
.seq loopBody662_93 loopBody662_101

def loopBody662_103 : HolLoopProg 64 :=
.mark loopBody662_102

def loopBody662_104 : HolLoopProg 64 :=
.seq loopBody662_1 loopBody662_103

def loopBody662_105 : HolLoopProg 64 :=
.mark loopBody662_104

def loopBody662_106 : HolLoopProg 64 :=
.seq loopBody662_1 loopBody662_105

def loopBody662_107 : HolLoopProg 64 :=
.mark loopBody662_106

def loopBody662_108 : HolLoopProg 64 :=
.seq loopBody662_91 loopBody662_107

def loopBody662_109 : HolLoopProg 64 :=
.mark loopBody662_108

def loopBody662_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody662_111 : HolLoopProg 64 :=
.mark loopBody662_110

def loopBody662_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [7]

def loopBody662_113 : HolLoopProg 64 :=
.mark loopBody662_112

def loopBody662_114 : HolLoopProg 64 :=
.seq loopBody662_113 loopBody662_1

def loopBody662_115 : HolLoopProg 64 :=
.mark loopBody662_114

def loopBody662_116 : HolLoopProg 64 :=
.seq loopBody662_111 loopBody662_115

def loopBody662_117 : HolLoopProg 64 :=
.mark loopBody662_116

def loopBody662_118 : HolLoopProg 64 :=
.seq loopBody662_109 loopBody662_117

def loopBody662_119 : HolLoopProg 64 :=
.mark loopBody662_118

def output662 : Nat × List Nat × HolLoopProg 64 :=
  (726, [0, 1, 2, 3, 4, 5, 6], loopBody662_119)
end InitECandidate.Proofs.FrontendStages.Loop
