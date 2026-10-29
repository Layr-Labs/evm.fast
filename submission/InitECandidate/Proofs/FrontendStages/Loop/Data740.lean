import InitECandidate.Proofs.FrontendStages.Loop.Translate724
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody740_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody740_1 : HolLoopProg 64 :=
.mark loopBody740_0

def loopBody740_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody740_3 : HolLoopProg 64 :=
.mark loopBody740_2

def loopBody740_4 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 69) ([]) (some (3, loopBody740_3, loopBody740_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody740_5 : HolLoopProg 64 :=
.mark loopBody740_4

def loopBody740_6 : HolLoopProg 64 :=
.seq loopBody740_5 loopBody740_1

def loopBody740_7 : HolLoopProg 64 :=
.mark loopBody740_6

def loopBody740_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 288#64)

def loopBody740_9 : HolLoopProg 64 :=
.mark loopBody740_8

def loopBody740_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody740_11 : HolLoopProg 64 :=
.mark loopBody740_10

def loopBody740_12 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([4]) (some (4, loopBody740_11, loopBody740_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody740_13 : HolLoopProg 64 :=
.mark loopBody740_12

def loopBody740_14 : HolLoopProg 64 :=
.seq loopBody740_13 loopBody740_1

def loopBody740_15 : HolLoopProg 64 :=
.mark loopBody740_14

def loopBody740_16 : HolLoopProg 64 :=
.seq loopBody740_9 loopBody740_15

def loopBody740_17 : HolLoopProg 64 :=
.mark loopBody740_16

def loopBody740_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody740_19 : HolLoopProg 64 :=
.mark loopBody740_18

def loopBody740_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody740_21 : HolLoopProg 64 :=
.mark loopBody740_20

def loopBody740_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody740_23 : HolLoopProg 64 :=
.mark loopBody740_22

def loopBody740_24 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 801) ([5, 6]) (some (5, loopBody740_23, loopBody740_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody740_25 : HolLoopProg 64 :=
.mark loopBody740_24

def loopBody740_26 : HolLoopProg 64 :=
.seq loopBody740_25 loopBody740_1

def loopBody740_27 : HolLoopProg 64 :=
.mark loopBody740_26

def loopBody740_28 : HolLoopProg 64 :=
.seq loopBody740_21 loopBody740_27

def loopBody740_29 : HolLoopProg 64 :=
.mark loopBody740_28

def loopBody740_30 : HolLoopProg 64 :=
.seq loopBody740_19 loopBody740_29

def loopBody740_31 : HolLoopProg 64 :=
.mark loopBody740_30

def loopBody740_32 : HolLoopProg 64 :=
.seq loopBody740_1 loopBody740_31

def loopBody740_33 : HolLoopProg 64 :=
.mark loopBody740_32

def loopBody740_34 : HolLoopProg 64 :=
.seq loopBody740_1 loopBody740_33

def loopBody740_35 : HolLoopProg 64 :=
.mark loopBody740_34

def loopBody740_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody740_37 : HolLoopProg 64 :=
.mark loopBody740_36

def loopBody740_38 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 803) ([5, 6]) (some (5, loopBody740_23, loopBody740_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody740_39 : HolLoopProg 64 :=
.mark loopBody740_38

def loopBody740_40 : HolLoopProg 64 :=
.seq loopBody740_39 loopBody740_1

def loopBody740_41 : HolLoopProg 64 :=
.mark loopBody740_40

def loopBody740_42 : HolLoopProg 64 :=
.seq loopBody740_37 loopBody740_41

def loopBody740_43 : HolLoopProg 64 :=
.mark loopBody740_42

def loopBody740_44 : HolLoopProg 64 :=
.seq loopBody740_19 loopBody740_43

def loopBody740_45 : HolLoopProg 64 :=
.mark loopBody740_44

def loopBody740_46 : HolLoopProg 64 :=
.seq loopBody740_1 loopBody740_45

def loopBody740_47 : HolLoopProg 64 :=
.mark loopBody740_46

def loopBody740_48 : HolLoopProg 64 :=
.seq loopBody740_1 loopBody740_47

def loopBody740_49 : HolLoopProg 64 :=
.mark loopBody740_48

def loopBody740_50 : HolLoopProg 64 :=
.seq loopBody740_35 loopBody740_49

def loopBody740_51 : HolLoopProg 64 :=
.mark loopBody740_50

def loopBody740_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody740_53 : HolLoopProg 64 :=
.mark loopBody740_52

def loopBody740_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 392#64]),
      Flapjack.HolLoopExp.const 1632#64])

def loopBody740_55 : HolLoopProg 64 :=
.mark loopBody740_54

def loopBody740_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 10#64)

def loopBody740_57 : HolLoopProg 64 :=
.mark loopBody740_56

def loopBody740_58 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 784) ([5, 6, 7, 8]) (some (5, loopBody740_23, loopBody740_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody740_59 : HolLoopProg 64 :=
.mark loopBody740_58

def loopBody740_60 : HolLoopProg 64 :=
.seq loopBody740_59 loopBody740_1

def loopBody740_61 : HolLoopProg 64 :=
.mark loopBody740_60

def loopBody740_62 : HolLoopProg 64 :=
.seq loopBody740_57 loopBody740_61

def loopBody740_63 : HolLoopProg 64 :=
.mark loopBody740_62

def loopBody740_64 : HolLoopProg 64 :=
.seq loopBody740_55 loopBody740_63

def loopBody740_65 : HolLoopProg 64 :=
.mark loopBody740_64

def loopBody740_66 : HolLoopProg 64 :=
.seq loopBody740_37 loopBody740_65

def loopBody740_67 : HolLoopProg 64 :=
.mark loopBody740_66

def loopBody740_68 : HolLoopProg 64 :=
.seq loopBody740_53 loopBody740_67

def loopBody740_69 : HolLoopProg 64 :=
.mark loopBody740_68

def loopBody740_70 : HolLoopProg 64 :=
.seq loopBody740_1 loopBody740_69

def loopBody740_71 : HolLoopProg 64 :=
.mark loopBody740_70

def loopBody740_72 : HolLoopProg 64 :=
.seq loopBody740_1 loopBody740_71

def loopBody740_73 : HolLoopProg 64 :=
.mark loopBody740_72

def loopBody740_74 : HolLoopProg 64 :=
.seq loopBody740_51 loopBody740_73

def loopBody740_75 : HolLoopProg 64 :=
.mark loopBody740_74

def loopBody740_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody740_77 : HolLoopProg 64 :=
.mark loopBody740_76

def loopBody740_78 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.ln)) (some 70) ([5]) (some (5, loopBody740_23, loopBody740_1, (Flapjack.Spt.ln)))

def loopBody740_79 : HolLoopProg 64 :=
.mark loopBody740_78

def loopBody740_80 : HolLoopProg 64 :=
.seq loopBody740_79 loopBody740_1

def loopBody740_81 : HolLoopProg 64 :=
.mark loopBody740_80

def loopBody740_82 : HolLoopProg 64 :=
.seq loopBody740_77 loopBody740_81

def loopBody740_83 : HolLoopProg 64 :=
.mark loopBody740_82

def loopBody740_84 : HolLoopProg 64 :=
.seq loopBody740_1 loopBody740_83

def loopBody740_85 : HolLoopProg 64 :=
.mark loopBody740_84

def loopBody740_86 : HolLoopProg 64 :=
.seq loopBody740_1 loopBody740_85

def loopBody740_87 : HolLoopProg 64 :=
.mark loopBody740_86

def loopBody740_88 : HolLoopProg 64 :=
.seq loopBody740_75 loopBody740_87

def loopBody740_89 : HolLoopProg 64 :=
.mark loopBody740_88

def loopBody740_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody740_91 : HolLoopProg 64 :=
.mark loopBody740_90

def loopBody740_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody740_93 : HolLoopProg 64 :=
.mark loopBody740_92

def loopBody740_94 : HolLoopProg 64 :=
.seq loopBody740_93 loopBody740_1

def loopBody740_95 : HolLoopProg 64 :=
.mark loopBody740_94

def loopBody740_96 : HolLoopProg 64 :=
.seq loopBody740_91 loopBody740_95

def loopBody740_97 : HolLoopProg 64 :=
.mark loopBody740_96

def loopBody740_98 : HolLoopProg 64 :=
.seq loopBody740_89 loopBody740_97

def loopBody740_99 : HolLoopProg 64 :=
.mark loopBody740_98

def loopBody740_100 : HolLoopProg 64 :=
.seq loopBody740_17 loopBody740_99

def loopBody740_101 : HolLoopProg 64 :=
.mark loopBody740_100

def loopBody740_102 : HolLoopProg 64 :=
.seq loopBody740_1 loopBody740_101

def loopBody740_103 : HolLoopProg 64 :=
.mark loopBody740_102

def loopBody740_104 : HolLoopProg 64 :=
.seq loopBody740_1 loopBody740_103

def loopBody740_105 : HolLoopProg 64 :=
.mark loopBody740_104

def loopBody740_106 : HolLoopProg 64 :=
.seq loopBody740_7 loopBody740_105

def loopBody740_107 : HolLoopProg 64 :=
.mark loopBody740_106

def loopBody740_108 : HolLoopProg 64 :=
.seq loopBody740_1 loopBody740_107

def loopBody740_109 : HolLoopProg 64 :=
.mark loopBody740_108

def loopBody740_110 : HolLoopProg 64 :=
.seq loopBody740_1 loopBody740_109

def loopBody740_111 : HolLoopProg 64 :=
.mark loopBody740_110

def output740 : Nat × List Nat × HolLoopProg 64 :=
  (804, [0, 1], loopBody740_111)
end InitECandidate.Proofs.FrontendStages.Loop
