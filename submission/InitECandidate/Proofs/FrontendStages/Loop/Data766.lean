import InitECandidate.Proofs.FrontendStages.Loop.Translate750
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody766_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody766_1 : HolLoopProg 64 :=
.mark loopBody766_0

def loopBody766_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 112#64]))

def loopBody766_3 : HolLoopProg 64 :=
.mark loopBody766_2

def loopBody766_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 96#64]))

def loopBody766_5 : HolLoopProg 64 :=
.mark loopBody766_4

def loopBody766_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody766_7 : HolLoopProg 64 :=
.mark loopBody766_6

def loopBody766_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody766_9 : HolLoopProg 64 :=
.mark loopBody766_8

def loopBody766_10 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))) (some 465) ([4]) (some (4, loopBody766_9, loopBody766_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody766_11 : HolLoopProg 64 :=
.mark loopBody766_10

def loopBody766_12 : HolLoopProg 64 :=
.seq loopBody766_11 loopBody766_1

def loopBody766_13 : HolLoopProg 64 :=
.mark loopBody766_12

def loopBody766_14 : HolLoopProg 64 :=
.seq loopBody766_7 loopBody766_13

def loopBody766_15 : HolLoopProg 64 :=
.mark loopBody766_14

def loopBody766_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody766_17 : HolLoopProg 64 :=
.mark loopBody766_16

def loopBody766_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 3#64)

def loopBody766_19 : HolLoopProg 64 :=
.mark loopBody766_18

def loopBody766_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 7 7 5 6)

def loopBody766_21 : HolLoopProg 64 :=
.mark loopBody766_20

def loopBody766_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.const 15#64, Flapjack.HolLoopExp.var 7])

def loopBody766_23 : HolLoopProg 64 :=
.mark loopBody766_22

def loopBody766_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody766_25 : HolLoopProg 64 :=
.mark loopBody766_24

def loopBody766_26 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))) (some 470) ([8]) (some (5, loopBody766_25, loopBody766_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))

def loopBody766_27 : HolLoopProg 64 :=
.mark loopBody766_26

def loopBody766_28 : HolLoopProg 64 :=
.seq loopBody766_27 loopBody766_1

def loopBody766_29 : HolLoopProg 64 :=
.mark loopBody766_28

def loopBody766_30 : HolLoopProg 64 :=
.seq loopBody766_23 loopBody766_29

def loopBody766_31 : HolLoopProg 64 :=
.mark loopBody766_30

def loopBody766_32 : HolLoopProg 64 :=
.seq loopBody766_21 loopBody766_31

def loopBody766_33 : HolLoopProg 64 :=
.mark loopBody766_32

def loopBody766_34 : HolLoopProg 64 :=
.seq loopBody766_19 loopBody766_33

def loopBody766_35 : HolLoopProg 64 :=
.mark loopBody766_34

def loopBody766_36 : HolLoopProg 64 :=
.seq loopBody766_17 loopBody766_35

def loopBody766_37 : HolLoopProg 64 :=
.mark loopBody766_36

def loopBody766_38 : HolLoopProg 64 :=
.seq loopBody766_1 loopBody766_37

def loopBody766_39 : HolLoopProg 64 :=
.mark loopBody766_38

def loopBody766_40 : HolLoopProg 64 :=
.seq loopBody766_1 loopBody766_39

def loopBody766_41 : HolLoopProg 64 :=
.mark loopBody766_40

def loopBody766_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 120#64])

def loopBody766_43 : HolLoopProg 64 :=
.mark loopBody766_42

def loopBody766_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 88#64]))

def loopBody766_45 : HolLoopProg 64 :=
.mark loopBody766_44

def loopBody766_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 5)

def loopBody766_47 : HolLoopProg 64 :=
.mark loopBody766_46

def loopBody766_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 4) 6

def loopBody766_49 : HolLoopProg 64 :=
.mark loopBody766_48

def loopBody766_50 : HolLoopProg 64 :=
.seq loopBody766_49 loopBody766_1

def loopBody766_51 : HolLoopProg 64 :=
.mark loopBody766_50

def loopBody766_52 : HolLoopProg 64 :=
.seq loopBody766_47 loopBody766_51

def loopBody766_53 : HolLoopProg 64 :=
.mark loopBody766_52

def loopBody766_54 : HolLoopProg 64 :=
.seq loopBody766_53 loopBody766_1

def loopBody766_55 : HolLoopProg 64 :=
.mark loopBody766_54

def loopBody766_56 : HolLoopProg 64 :=
.seq loopBody766_45 loopBody766_55

def loopBody766_57 : HolLoopProg 64 :=
.mark loopBody766_56

def loopBody766_58 : HolLoopProg 64 :=
.seq loopBody766_1 loopBody766_57

def loopBody766_59 : HolLoopProg 64 :=
.mark loopBody766_58

def loopBody766_60 : HolLoopProg 64 :=
.seq loopBody766_43 loopBody766_59

def loopBody766_61 : HolLoopProg 64 :=
.mark loopBody766_60

def loopBody766_62 : HolLoopProg 64 :=
.seq loopBody766_1 loopBody766_61

def loopBody766_63 : HolLoopProg 64 :=
.mark loopBody766_62

def loopBody766_64 : HolLoopProg 64 :=
.seq loopBody766_41 loopBody766_63

def loopBody766_65 : HolLoopProg 64 :=
.mark loopBody766_64

def loopBody766_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 128#64])

def loopBody766_67 : HolLoopProg 64 :=
.mark loopBody766_66

def loopBody766_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody766_69 : HolLoopProg 64 :=
.mark loopBody766_68

def loopBody766_70 : HolLoopProg 64 :=
.seq loopBody766_69 loopBody766_55

def loopBody766_71 : HolLoopProg 64 :=
.mark loopBody766_70

def loopBody766_72 : HolLoopProg 64 :=
.seq loopBody766_1 loopBody766_71

def loopBody766_73 : HolLoopProg 64 :=
.mark loopBody766_72

def loopBody766_74 : HolLoopProg 64 :=
.seq loopBody766_67 loopBody766_73

def loopBody766_75 : HolLoopProg 64 :=
.mark loopBody766_74

def loopBody766_76 : HolLoopProg 64 :=
.seq loopBody766_1 loopBody766_75

def loopBody766_77 : HolLoopProg 64 :=
.mark loopBody766_76

def loopBody766_78 : HolLoopProg 64 :=
.seq loopBody766_65 loopBody766_77

def loopBody766_79 : HolLoopProg 64 :=
.mark loopBody766_78

def loopBody766_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody766_81 : HolLoopProg 64 :=
.mark loopBody766_80

def loopBody766_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody766_83 : HolLoopProg 64 :=
.mark loopBody766_82

def loopBody766_84 : HolLoopProg 64 :=
.seq loopBody766_83 loopBody766_1

def loopBody766_85 : HolLoopProg 64 :=
.mark loopBody766_84

def loopBody766_86 : HolLoopProg 64 :=
.seq loopBody766_81 loopBody766_85

def loopBody766_87 : HolLoopProg 64 :=
.mark loopBody766_86

def loopBody766_88 : HolLoopProg 64 :=
.seq loopBody766_79 loopBody766_87

def loopBody766_89 : HolLoopProg 64 :=
.mark loopBody766_88

def loopBody766_90 : HolLoopProg 64 :=
.seq loopBody766_15 loopBody766_89

def loopBody766_91 : HolLoopProg 64 :=
.mark loopBody766_90

def loopBody766_92 : HolLoopProg 64 :=
.seq loopBody766_1 loopBody766_91

def loopBody766_93 : HolLoopProg 64 :=
.mark loopBody766_92

def loopBody766_94 : HolLoopProg 64 :=
.seq loopBody766_1 loopBody766_93

def loopBody766_95 : HolLoopProg 64 :=
.mark loopBody766_94

def loopBody766_96 : HolLoopProg 64 :=
.seq loopBody766_5 loopBody766_95

def loopBody766_97 : HolLoopProg 64 :=
.mark loopBody766_96

def loopBody766_98 : HolLoopProg 64 :=
.seq loopBody766_1 loopBody766_97

def loopBody766_99 : HolLoopProg 64 :=
.mark loopBody766_98

def loopBody766_100 : HolLoopProg 64 :=
.seq loopBody766_3 loopBody766_99

def loopBody766_101 : HolLoopProg 64 :=
.mark loopBody766_100

def loopBody766_102 : HolLoopProg 64 :=
.seq loopBody766_1 loopBody766_101

def loopBody766_103 : HolLoopProg 64 :=
.mark loopBody766_102

def output766 : Nat × List Nat × HolLoopProg 64 :=
  (830, [], loopBody766_103)
end InitECandidate.Proofs.FrontendStages.Loop
