import InitECandidate.Proofs.FrontendStages.Loop.Translate355
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody371_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody371_1 : HolLoopProg 64 :=
.mark loopBody371_0

def loopBody371_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 24#64)

def loopBody371_3 : HolLoopProg 64 :=
.mark loopBody371_2

def loopBody371_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody371_5 : HolLoopProg 64 :=
.mark loopBody371_4

def loopBody371_6 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([3]) (some (3, loopBody371_5, loopBody371_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody371_7 : HolLoopProg 64 :=
.mark loopBody371_6

def loopBody371_8 : HolLoopProg 64 :=
.seq loopBody371_7 loopBody371_1

def loopBody371_9 : HolLoopProg 64 :=
.mark loopBody371_8

def loopBody371_10 : HolLoopProg 64 :=
.seq loopBody371_3 loopBody371_9

def loopBody371_11 : HolLoopProg 64 :=
.mark loopBody371_10

def loopBody371_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody371_13 : HolLoopProg 64 :=
.mark loopBody371_12

def loopBody371_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody371_15 : HolLoopProg 64 :=
.mark loopBody371_14

def loopBody371_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 6 6 4 5)

def loopBody371_17 : HolLoopProg 64 :=
.mark loopBody371_16

def loopBody371_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 6)

def loopBody371_19 : HolLoopProg 64 :=
.mark loopBody371_18

def loopBody371_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody371_21 : HolLoopProg 64 :=
.mark loopBody371_20

def loopBody371_22 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))) (some 68) ([7]) (some (4, loopBody371_21, loopBody371_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody371_23 : HolLoopProg 64 :=
.mark loopBody371_22

def loopBody371_24 : HolLoopProg 64 :=
.seq loopBody371_23 loopBody371_1

def loopBody371_25 : HolLoopProg 64 :=
.mark loopBody371_24

def loopBody371_26 : HolLoopProg 64 :=
.seq loopBody371_19 loopBody371_25

def loopBody371_27 : HolLoopProg 64 :=
.mark loopBody371_26

def loopBody371_28 : HolLoopProg 64 :=
.seq loopBody371_17 loopBody371_27

def loopBody371_29 : HolLoopProg 64 :=
.mark loopBody371_28

def loopBody371_30 : HolLoopProg 64 :=
.seq loopBody371_15 loopBody371_29

def loopBody371_31 : HolLoopProg 64 :=
.mark loopBody371_30

def loopBody371_32 : HolLoopProg 64 :=
.seq loopBody371_13 loopBody371_31

def loopBody371_33 : HolLoopProg 64 :=
.mark loopBody371_32

def loopBody371_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 0#64])

def loopBody371_35 : HolLoopProg 64 :=
.mark loopBody371_34

def loopBody371_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody371_37 : HolLoopProg 64 :=
.mark loopBody371_36

def loopBody371_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 5)

def loopBody371_39 : HolLoopProg 64 :=
.mark loopBody371_38

def loopBody371_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 4) 6

def loopBody371_41 : HolLoopProg 64 :=
.mark loopBody371_40

def loopBody371_42 : HolLoopProg 64 :=
.seq loopBody371_41 loopBody371_1

def loopBody371_43 : HolLoopProg 64 :=
.mark loopBody371_42

def loopBody371_44 : HolLoopProg 64 :=
.seq loopBody371_39 loopBody371_43

def loopBody371_45 : HolLoopProg 64 :=
.mark loopBody371_44

def loopBody371_46 : HolLoopProg 64 :=
.seq loopBody371_45 loopBody371_1

def loopBody371_47 : HolLoopProg 64 :=
.mark loopBody371_46

def loopBody371_48 : HolLoopProg 64 :=
.seq loopBody371_37 loopBody371_47

def loopBody371_49 : HolLoopProg 64 :=
.mark loopBody371_48

def loopBody371_50 : HolLoopProg 64 :=
.seq loopBody371_1 loopBody371_49

def loopBody371_51 : HolLoopProg 64 :=
.mark loopBody371_50

def loopBody371_52 : HolLoopProg 64 :=
.seq loopBody371_35 loopBody371_51

def loopBody371_53 : HolLoopProg 64 :=
.mark loopBody371_52

def loopBody371_54 : HolLoopProg 64 :=
.seq loopBody371_1 loopBody371_53

def loopBody371_55 : HolLoopProg 64 :=
.mark loopBody371_54

def loopBody371_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 8#64])

def loopBody371_57 : HolLoopProg 64 :=
.mark loopBody371_56

def loopBody371_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody371_59 : HolLoopProg 64 :=
.mark loopBody371_58

def loopBody371_60 : HolLoopProg 64 :=
.seq loopBody371_59 loopBody371_47

def loopBody371_61 : HolLoopProg 64 :=
.mark loopBody371_60

def loopBody371_62 : HolLoopProg 64 :=
.seq loopBody371_1 loopBody371_61

def loopBody371_63 : HolLoopProg 64 :=
.mark loopBody371_62

def loopBody371_64 : HolLoopProg 64 :=
.seq loopBody371_57 loopBody371_63

def loopBody371_65 : HolLoopProg 64 :=
.mark loopBody371_64

def loopBody371_66 : HolLoopProg 64 :=
.seq loopBody371_1 loopBody371_65

def loopBody371_67 : HolLoopProg 64 :=
.mark loopBody371_66

def loopBody371_68 : HolLoopProg 64 :=
.seq loopBody371_55 loopBody371_67

def loopBody371_69 : HolLoopProg 64 :=
.mark loopBody371_68

def loopBody371_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 16#64])

def loopBody371_71 : HolLoopProg 64 :=
.mark loopBody371_70

def loopBody371_72 : HolLoopProg 64 :=
.seq loopBody371_15 loopBody371_47

def loopBody371_73 : HolLoopProg 64 :=
.mark loopBody371_72

def loopBody371_74 : HolLoopProg 64 :=
.seq loopBody371_1 loopBody371_73

def loopBody371_75 : HolLoopProg 64 :=
.mark loopBody371_74

def loopBody371_76 : HolLoopProg 64 :=
.seq loopBody371_71 loopBody371_75

def loopBody371_77 : HolLoopProg 64 :=
.mark loopBody371_76

def loopBody371_78 : HolLoopProg 64 :=
.seq loopBody371_1 loopBody371_77

def loopBody371_79 : HolLoopProg 64 :=
.mark loopBody371_78

def loopBody371_80 : HolLoopProg 64 :=
.seq loopBody371_69 loopBody371_79

def loopBody371_81 : HolLoopProg 64 :=
.mark loopBody371_80

def loopBody371_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody371_83 : HolLoopProg 64 :=
.mark loopBody371_82

def loopBody371_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody371_85 : HolLoopProg 64 :=
.mark loopBody371_84

def loopBody371_86 : HolLoopProg 64 :=
.seq loopBody371_85 loopBody371_1

def loopBody371_87 : HolLoopProg 64 :=
.mark loopBody371_86

def loopBody371_88 : HolLoopProg 64 :=
.seq loopBody371_83 loopBody371_87

def loopBody371_89 : HolLoopProg 64 :=
.mark loopBody371_88

def loopBody371_90 : HolLoopProg 64 :=
.seq loopBody371_81 loopBody371_89

def loopBody371_91 : HolLoopProg 64 :=
.mark loopBody371_90

def loopBody371_92 : HolLoopProg 64 :=
.seq loopBody371_33 loopBody371_91

def loopBody371_93 : HolLoopProg 64 :=
.mark loopBody371_92

def loopBody371_94 : HolLoopProg 64 :=
.seq loopBody371_1 loopBody371_93

def loopBody371_95 : HolLoopProg 64 :=
.mark loopBody371_94

def loopBody371_96 : HolLoopProg 64 :=
.seq loopBody371_1 loopBody371_95

def loopBody371_97 : HolLoopProg 64 :=
.mark loopBody371_96

def loopBody371_98 : HolLoopProg 64 :=
.seq loopBody371_11 loopBody371_97

def loopBody371_99 : HolLoopProg 64 :=
.mark loopBody371_98

def loopBody371_100 : HolLoopProg 64 :=
.seq loopBody371_1 loopBody371_99

def loopBody371_101 : HolLoopProg 64 :=
.mark loopBody371_100

def loopBody371_102 : HolLoopProg 64 :=
.seq loopBody371_1 loopBody371_101

def loopBody371_103 : HolLoopProg 64 :=
.mark loopBody371_102

def output371 : Nat × List Nat × HolLoopProg 64 :=
  (435, [0, 1], loopBody371_103)
end InitECandidate.Proofs.FrontendStages.Loop
