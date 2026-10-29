import InitECandidate.Proofs.FrontendStages.Loop.Translate317
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody333_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody333_1 : HolLoopProg 64 :=
.mark loopBody333_0

def loopBody333_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody333_3 : HolLoopProg 64 :=
.mark loopBody333_2

def loopBody333_4 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 69) ([]) (some (2, loopBody333_3, loopBody333_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody333_5 : HolLoopProg 64 :=
.mark loopBody333_4

def loopBody333_6 : HolLoopProg 64 :=
.seq loopBody333_5 loopBody333_1

def loopBody333_7 : HolLoopProg 64 :=
.mark loopBody333_6

def loopBody333_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 32#64)

def loopBody333_9 : HolLoopProg 64 :=
.mark loopBody333_8

def loopBody333_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody333_11 : HolLoopProg 64 :=
.mark loopBody333_10

def loopBody333_12 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([3]) (some (3, loopBody333_11, loopBody333_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody333_13 : HolLoopProg 64 :=
.mark loopBody333_12

def loopBody333_14 : HolLoopProg 64 :=
.seq loopBody333_13 loopBody333_1

def loopBody333_15 : HolLoopProg 64 :=
.mark loopBody333_14

def loopBody333_16 : HolLoopProg 64 :=
.seq loopBody333_9 loopBody333_15

def loopBody333_17 : HolLoopProg 64 :=
.mark loopBody333_16

def loopBody333_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody333_19 : HolLoopProg 64 :=
.mark loopBody333_18

def loopBody333_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 20#64)

def loopBody333_21 : HolLoopProg 64 :=
.mark loopBody333_20

def loopBody333_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody333_23 : HolLoopProg 64 :=
.mark loopBody333_22

def loopBody333_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody333_25 : HolLoopProg 64 :=
.mark loopBody333_24

def loopBody333_26 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))) (some 158) ([4, 5, 6]) (some (4, loopBody333_25, loopBody333_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))

def loopBody333_27 : HolLoopProg 64 :=
.mark loopBody333_26

def loopBody333_28 : HolLoopProg 64 :=
.seq loopBody333_27 loopBody333_1

def loopBody333_29 : HolLoopProg 64 :=
.mark loopBody333_28

def loopBody333_30 : HolLoopProg 64 :=
.seq loopBody333_23 loopBody333_29

def loopBody333_31 : HolLoopProg 64 :=
.mark loopBody333_30

def loopBody333_32 : HolLoopProg 64 :=
.seq loopBody333_21 loopBody333_31

def loopBody333_33 : HolLoopProg 64 :=
.mark loopBody333_32

def loopBody333_34 : HolLoopProg 64 :=
.seq loopBody333_19 loopBody333_33

def loopBody333_35 : HolLoopProg 64 :=
.mark loopBody333_34

def loopBody333_36 : HolLoopProg 64 :=
.seq loopBody333_1 loopBody333_35

def loopBody333_37 : HolLoopProg 64 :=
.mark loopBody333_36

def loopBody333_38 : HolLoopProg 64 :=
.seq loopBody333_1 loopBody333_37

def loopBody333_39 : HolLoopProg 64 :=
.mark loopBody333_38

def loopBody333_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 168#64]),
        Flapjack.HolLoopExp.const 24#64]))

def loopBody333_41 : HolLoopProg 64 :=
.mark loopBody333_40

def loopBody333_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody333_43 : HolLoopProg 64 :=
.mark loopBody333_42

def loopBody333_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody333_45 : HolLoopProg 64 :=
.mark loopBody333_44

def loopBody333_46 : HolLoopProg 64 :=
.call (some ([3, 4, 5], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 307) ([6, 7]) (some (6, loopBody333_45, loopBody333_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody333_47 : HolLoopProg 64 :=
.mark loopBody333_46

def loopBody333_48 : HolLoopProg 64 :=
.seq loopBody333_47 loopBody333_1

def loopBody333_49 : HolLoopProg 64 :=
.mark loopBody333_48

def loopBody333_50 : HolLoopProg 64 :=
.seq loopBody333_43 loopBody333_49

def loopBody333_51 : HolLoopProg 64 :=
.mark loopBody333_50

def loopBody333_52 : HolLoopProg 64 :=
.seq loopBody333_41 loopBody333_51

def loopBody333_53 : HolLoopProg 64 :=
.mark loopBody333_52

def loopBody333_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody333_55 : HolLoopProg 64 :=
.mark loopBody333_54

def loopBody333_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody333_57 : HolLoopProg 64 :=
.mark loopBody333_56

def loopBody333_58 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))) (some 70) ([7]) (some (7, loopBody333_57, loopBody333_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))

def loopBody333_59 : HolLoopProg 64 :=
.mark loopBody333_58

def loopBody333_60 : HolLoopProg 64 :=
.seq loopBody333_59 loopBody333_1

def loopBody333_61 : HolLoopProg 64 :=
.mark loopBody333_60

def loopBody333_62 : HolLoopProg 64 :=
.seq loopBody333_55 loopBody333_61

def loopBody333_63 : HolLoopProg 64 :=
.mark loopBody333_62

def loopBody333_64 : HolLoopProg 64 :=
.seq loopBody333_1 loopBody333_63

def loopBody333_65 : HolLoopProg 64 :=
.mark loopBody333_64

def loopBody333_66 : HolLoopProg 64 :=
.seq loopBody333_1 loopBody333_65

def loopBody333_67 : HolLoopProg 64 :=
.mark loopBody333_66

def loopBody333_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody333_69 : HolLoopProg 64 :=
.mark loopBody333_68

def loopBody333_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody333_71 : HolLoopProg 64 :=
.mark loopBody333_70

def loopBody333_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody333_73 : HolLoopProg 64 :=
.mark loopBody333_72

def loopBody333_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6, 7, 8]

def loopBody333_75 : HolLoopProg 64 :=
.mark loopBody333_74

def loopBody333_76 : HolLoopProg 64 :=
.seq loopBody333_75 loopBody333_1

def loopBody333_77 : HolLoopProg 64 :=
.mark loopBody333_76

def loopBody333_78 : HolLoopProg 64 :=
.seq loopBody333_73 loopBody333_77

def loopBody333_79 : HolLoopProg 64 :=
.mark loopBody333_78

def loopBody333_80 : HolLoopProg 64 :=
.seq loopBody333_71 loopBody333_79

def loopBody333_81 : HolLoopProg 64 :=
.mark loopBody333_80

def loopBody333_82 : HolLoopProg 64 :=
.seq loopBody333_69 loopBody333_81

def loopBody333_83 : HolLoopProg 64 :=
.mark loopBody333_82

def loopBody333_84 : HolLoopProg 64 :=
.seq loopBody333_67 loopBody333_83

def loopBody333_85 : HolLoopProg 64 :=
.mark loopBody333_84

def loopBody333_86 : HolLoopProg 64 :=
.seq loopBody333_53 loopBody333_85

def loopBody333_87 : HolLoopProg 64 :=
.mark loopBody333_86

def loopBody333_88 : HolLoopProg 64 :=
.seq loopBody333_1 loopBody333_87

def loopBody333_89 : HolLoopProg 64 :=
.mark loopBody333_88

def loopBody333_90 : HolLoopProg 64 :=
.seq loopBody333_1 loopBody333_89

def loopBody333_91 : HolLoopProg 64 :=
.mark loopBody333_90

def loopBody333_92 : HolLoopProg 64 :=
.seq loopBody333_1 loopBody333_91

def loopBody333_93 : HolLoopProg 64 :=
.mark loopBody333_92

def loopBody333_94 : HolLoopProg 64 :=
.seq loopBody333_1 loopBody333_93

def loopBody333_95 : HolLoopProg 64 :=
.mark loopBody333_94

def loopBody333_96 : HolLoopProg 64 :=
.seq loopBody333_1 loopBody333_95

def loopBody333_97 : HolLoopProg 64 :=
.mark loopBody333_96

def loopBody333_98 : HolLoopProg 64 :=
.seq loopBody333_1 loopBody333_97

def loopBody333_99 : HolLoopProg 64 :=
.mark loopBody333_98

def loopBody333_100 : HolLoopProg 64 :=
.seq loopBody333_39 loopBody333_99

def loopBody333_101 : HolLoopProg 64 :=
.mark loopBody333_100

def loopBody333_102 : HolLoopProg 64 :=
.seq loopBody333_17 loopBody333_101

def loopBody333_103 : HolLoopProg 64 :=
.mark loopBody333_102

def loopBody333_104 : HolLoopProg 64 :=
.seq loopBody333_1 loopBody333_103

def loopBody333_105 : HolLoopProg 64 :=
.mark loopBody333_104

def loopBody333_106 : HolLoopProg 64 :=
.seq loopBody333_1 loopBody333_105

def loopBody333_107 : HolLoopProg 64 :=
.mark loopBody333_106

def loopBody333_108 : HolLoopProg 64 :=
.seq loopBody333_7 loopBody333_107

def loopBody333_109 : HolLoopProg 64 :=
.mark loopBody333_108

def loopBody333_110 : HolLoopProg 64 :=
.seq loopBody333_1 loopBody333_109

def loopBody333_111 : HolLoopProg 64 :=
.mark loopBody333_110

def loopBody333_112 : HolLoopProg 64 :=
.seq loopBody333_1 loopBody333_111

def loopBody333_113 : HolLoopProg 64 :=
.mark loopBody333_112

def output333 : Nat × List Nat × HolLoopProg 64 :=
  (397, [0], loopBody333_113)
end InitECandidate.Proofs.FrontendStages.Loop
