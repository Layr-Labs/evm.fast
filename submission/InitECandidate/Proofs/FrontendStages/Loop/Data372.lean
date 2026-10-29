import InitECandidate.Proofs.FrontendStages.Loop.Translate356
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody372_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody372_1 : HolLoopProg 64 :=
.mark loopBody372_0

def loopBody372_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 24#64)

def loopBody372_3 : HolLoopProg 64 :=
.mark loopBody372_2

def loopBody372_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody372_5 : HolLoopProg 64 :=
.mark loopBody372_4

def loopBody372_6 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 74) ([3]) (some (3, loopBody372_5, loopBody372_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody372_7 : HolLoopProg 64 :=
.mark loopBody372_6

def loopBody372_8 : HolLoopProg 64 :=
.seq loopBody372_7 loopBody372_1

def loopBody372_9 : HolLoopProg 64 :=
.mark loopBody372_8

def loopBody372_10 : HolLoopProg 64 :=
.seq loopBody372_3 loopBody372_9

def loopBody372_11 : HolLoopProg 64 :=
.mark loopBody372_10

def loopBody372_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody372_13 : HolLoopProg 64 :=
.mark loopBody372_12

def loopBody372_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody372_15 : HolLoopProg 64 :=
.mark loopBody372_14

def loopBody372_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 6 6 4 5)

def loopBody372_17 : HolLoopProg 64 :=
.mark loopBody372_16

def loopBody372_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 6)

def loopBody372_19 : HolLoopProg 64 :=
.mark loopBody372_18

def loopBody372_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody372_21 : HolLoopProg 64 :=
.mark loopBody372_20

def loopBody372_22 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))) (some 74) ([7]) (some (4, loopBody372_21, loopBody372_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody372_23 : HolLoopProg 64 :=
.mark loopBody372_22

def loopBody372_24 : HolLoopProg 64 :=
.seq loopBody372_23 loopBody372_1

def loopBody372_25 : HolLoopProg 64 :=
.mark loopBody372_24

def loopBody372_26 : HolLoopProg 64 :=
.seq loopBody372_19 loopBody372_25

def loopBody372_27 : HolLoopProg 64 :=
.mark loopBody372_26

def loopBody372_28 : HolLoopProg 64 :=
.seq loopBody372_17 loopBody372_27

def loopBody372_29 : HolLoopProg 64 :=
.mark loopBody372_28

def loopBody372_30 : HolLoopProg 64 :=
.seq loopBody372_15 loopBody372_29

def loopBody372_31 : HolLoopProg 64 :=
.mark loopBody372_30

def loopBody372_32 : HolLoopProg 64 :=
.seq loopBody372_13 loopBody372_31

def loopBody372_33 : HolLoopProg 64 :=
.mark loopBody372_32

def loopBody372_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 0#64])

def loopBody372_35 : HolLoopProg 64 :=
.mark loopBody372_34

def loopBody372_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody372_37 : HolLoopProg 64 :=
.mark loopBody372_36

def loopBody372_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 5)

def loopBody372_39 : HolLoopProg 64 :=
.mark loopBody372_38

def loopBody372_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 4) 6

def loopBody372_41 : HolLoopProg 64 :=
.mark loopBody372_40

def loopBody372_42 : HolLoopProg 64 :=
.seq loopBody372_41 loopBody372_1

def loopBody372_43 : HolLoopProg 64 :=
.mark loopBody372_42

def loopBody372_44 : HolLoopProg 64 :=
.seq loopBody372_39 loopBody372_43

def loopBody372_45 : HolLoopProg 64 :=
.mark loopBody372_44

def loopBody372_46 : HolLoopProg 64 :=
.seq loopBody372_45 loopBody372_1

def loopBody372_47 : HolLoopProg 64 :=
.mark loopBody372_46

def loopBody372_48 : HolLoopProg 64 :=
.seq loopBody372_37 loopBody372_47

def loopBody372_49 : HolLoopProg 64 :=
.mark loopBody372_48

def loopBody372_50 : HolLoopProg 64 :=
.seq loopBody372_1 loopBody372_49

def loopBody372_51 : HolLoopProg 64 :=
.mark loopBody372_50

def loopBody372_52 : HolLoopProg 64 :=
.seq loopBody372_35 loopBody372_51

def loopBody372_53 : HolLoopProg 64 :=
.mark loopBody372_52

def loopBody372_54 : HolLoopProg 64 :=
.seq loopBody372_1 loopBody372_53

def loopBody372_55 : HolLoopProg 64 :=
.mark loopBody372_54

def loopBody372_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 8#64])

def loopBody372_57 : HolLoopProg 64 :=
.mark loopBody372_56

def loopBody372_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody372_59 : HolLoopProg 64 :=
.mark loopBody372_58

def loopBody372_60 : HolLoopProg 64 :=
.seq loopBody372_59 loopBody372_47

def loopBody372_61 : HolLoopProg 64 :=
.mark loopBody372_60

def loopBody372_62 : HolLoopProg 64 :=
.seq loopBody372_1 loopBody372_61

def loopBody372_63 : HolLoopProg 64 :=
.mark loopBody372_62

def loopBody372_64 : HolLoopProg 64 :=
.seq loopBody372_57 loopBody372_63

def loopBody372_65 : HolLoopProg 64 :=
.mark loopBody372_64

def loopBody372_66 : HolLoopProg 64 :=
.seq loopBody372_1 loopBody372_65

def loopBody372_67 : HolLoopProg 64 :=
.mark loopBody372_66

def loopBody372_68 : HolLoopProg 64 :=
.seq loopBody372_55 loopBody372_67

def loopBody372_69 : HolLoopProg 64 :=
.mark loopBody372_68

def loopBody372_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 16#64])

def loopBody372_71 : HolLoopProg 64 :=
.mark loopBody372_70

def loopBody372_72 : HolLoopProg 64 :=
.seq loopBody372_15 loopBody372_47

def loopBody372_73 : HolLoopProg 64 :=
.mark loopBody372_72

def loopBody372_74 : HolLoopProg 64 :=
.seq loopBody372_1 loopBody372_73

def loopBody372_75 : HolLoopProg 64 :=
.mark loopBody372_74

def loopBody372_76 : HolLoopProg 64 :=
.seq loopBody372_71 loopBody372_75

def loopBody372_77 : HolLoopProg 64 :=
.mark loopBody372_76

def loopBody372_78 : HolLoopProg 64 :=
.seq loopBody372_1 loopBody372_77

def loopBody372_79 : HolLoopProg 64 :=
.mark loopBody372_78

def loopBody372_80 : HolLoopProg 64 :=
.seq loopBody372_69 loopBody372_79

def loopBody372_81 : HolLoopProg 64 :=
.mark loopBody372_80

def loopBody372_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody372_83 : HolLoopProg 64 :=
.mark loopBody372_82

def loopBody372_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody372_85 : HolLoopProg 64 :=
.mark loopBody372_84

def loopBody372_86 : HolLoopProg 64 :=
.seq loopBody372_85 loopBody372_1

def loopBody372_87 : HolLoopProg 64 :=
.mark loopBody372_86

def loopBody372_88 : HolLoopProg 64 :=
.seq loopBody372_83 loopBody372_87

def loopBody372_89 : HolLoopProg 64 :=
.mark loopBody372_88

def loopBody372_90 : HolLoopProg 64 :=
.seq loopBody372_81 loopBody372_89

def loopBody372_91 : HolLoopProg 64 :=
.mark loopBody372_90

def loopBody372_92 : HolLoopProg 64 :=
.seq loopBody372_33 loopBody372_91

def loopBody372_93 : HolLoopProg 64 :=
.mark loopBody372_92

def loopBody372_94 : HolLoopProg 64 :=
.seq loopBody372_1 loopBody372_93

def loopBody372_95 : HolLoopProg 64 :=
.mark loopBody372_94

def loopBody372_96 : HolLoopProg 64 :=
.seq loopBody372_1 loopBody372_95

def loopBody372_97 : HolLoopProg 64 :=
.mark loopBody372_96

def loopBody372_98 : HolLoopProg 64 :=
.seq loopBody372_11 loopBody372_97

def loopBody372_99 : HolLoopProg 64 :=
.mark loopBody372_98

def loopBody372_100 : HolLoopProg 64 :=
.seq loopBody372_1 loopBody372_99

def loopBody372_101 : HolLoopProg 64 :=
.mark loopBody372_100

def loopBody372_102 : HolLoopProg 64 :=
.seq loopBody372_1 loopBody372_101

def loopBody372_103 : HolLoopProg 64 :=
.mark loopBody372_102

def output372 : Nat × List Nat × HolLoopProg 64 :=
  (436, [0, 1], loopBody372_103)
end InitECandidate.Proofs.FrontendStages.Loop
