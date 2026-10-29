import InitECandidate.Proofs.FrontendStages.Loop.Translate202
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody218_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody218_1 : HolLoopProg 64 :=
.mark loopBody218_0

def loopBody218_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody218_3 : HolLoopProg 64 :=
.mark loopBody218_2

def loopBody218_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1024#64)

def loopBody218_5 : HolLoopProg 64 :=
.mark loopBody218_4

def loopBody218_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody218_7 : HolLoopProg 64 :=
.mark loopBody218_6

def loopBody218_8 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 95) ([3, 4]) (some (3, loopBody218_7, loopBody218_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody218_9 : HolLoopProg 64 :=
.mark loopBody218_8

def loopBody218_10 : HolLoopProg 64 :=
.seq loopBody218_9 loopBody218_1

def loopBody218_11 : HolLoopProg 64 :=
.mark loopBody218_10

def loopBody218_12 : HolLoopProg 64 :=
.seq loopBody218_5 loopBody218_11

def loopBody218_13 : HolLoopProg 64 :=
.mark loopBody218_12

def loopBody218_14 : HolLoopProg 64 :=
.seq loopBody218_3 loopBody218_13

def loopBody218_15 : HolLoopProg 64 :=
.mark loopBody218_14

def loopBody218_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody218_17 : HolLoopProg 64 :=
.mark loopBody218_16

def loopBody218_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 2])

def loopBody218_19 : HolLoopProg 64 :=
.mark loopBody218_18

def loopBody218_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody218_21 : HolLoopProg 64 :=
.mark loopBody218_20

def loopBody218_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody218_23 : HolLoopProg 64 :=
.mark loopBody218_22

def loopBody218_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.RegImm.reg 5) loopBody218_21 loopBody218_23 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.ls PUnit.unit))

def loopBody218_25 : HolLoopProg 64 :=
.mark loopBody218_24

def loopBody218_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody218_27 : HolLoopProg 64 :=
.mark loopBody218_26

def loopBody218_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody218_29 : HolLoopProg 64 :=
.mark loopBody218_28

def loopBody218_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody218_31 : HolLoopProg 64 :=
.mark loopBody218_30

def loopBody218_32 : HolLoopProg 64 :=
.seq loopBody218_31 loopBody218_1

def loopBody218_33 : HolLoopProg 64 :=
.mark loopBody218_32

def loopBody218_34 : HolLoopProg 64 :=
.seq loopBody218_29 loopBody218_33

def loopBody218_35 : HolLoopProg 64 :=
.mark loopBody218_34

def loopBody218_36 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody218_35 loopBody218_1 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody218_37 : HolLoopProg 64 :=
.mark loopBody218_36

def loopBody218_38 : HolLoopProg 64 :=
.seq loopBody218_37 loopBody218_1

def loopBody218_39 : HolLoopProg 64 :=
.mark loopBody218_38

def loopBody218_40 : HolLoopProg 64 :=
.seq loopBody218_27 loopBody218_39

def loopBody218_41 : HolLoopProg 64 :=
.mark loopBody218_40

def loopBody218_42 : HolLoopProg 64 :=
.seq loopBody218_25 loopBody218_41

def loopBody218_43 : HolLoopProg 64 :=
.mark loopBody218_42

def loopBody218_44 : HolLoopProg 64 :=
.seq loopBody218_19 loopBody218_43

def loopBody218_45 : HolLoopProg 64 :=
.mark loopBody218_44

def loopBody218_46 : HolLoopProg 64 :=
.seq loopBody218_17 loopBody218_45

def loopBody218_47 : HolLoopProg 64 :=
.mark loopBody218_46

def loopBody218_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody218_49 : HolLoopProg 64 :=
.mark loopBody218_48

def loopBody218_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 2])

def loopBody218_51 : HolLoopProg 64 :=
.mark loopBody218_50

def loopBody218_52 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.RegImm.reg 5) loopBody218_21 loopBody218_23 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)

def loopBody218_53 : HolLoopProg 64 :=
.mark loopBody218_52

def loopBody218_54 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody218_35 loopBody218_1 (Flapjack.Spt.ls PUnit.unit)

def loopBody218_55 : HolLoopProg 64 :=
.mark loopBody218_54

def loopBody218_56 : HolLoopProg 64 :=
.seq loopBody218_55 loopBody218_1

def loopBody218_57 : HolLoopProg 64 :=
.mark loopBody218_56

def loopBody218_58 : HolLoopProg 64 :=
.seq loopBody218_27 loopBody218_57

def loopBody218_59 : HolLoopProg 64 :=
.mark loopBody218_58

def loopBody218_60 : HolLoopProg 64 :=
.seq loopBody218_53 loopBody218_59

def loopBody218_61 : HolLoopProg 64 :=
.mark loopBody218_60

def loopBody218_62 : HolLoopProg 64 :=
.seq loopBody218_51 loopBody218_61

def loopBody218_63 : HolLoopProg 64 :=
.mark loopBody218_62

def loopBody218_64 : HolLoopProg 64 :=
.seq loopBody218_49 loopBody218_63

def loopBody218_65 : HolLoopProg 64 :=
.mark loopBody218_64

def loopBody218_66 : HolLoopProg 64 :=
.seq loopBody218_47 loopBody218_65

def loopBody218_67 : HolLoopProg 64 :=
.mark loopBody218_66

def loopBody218_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 5000#64)

def loopBody218_69 : HolLoopProg 64 :=
.mark loopBody218_68

def loopBody218_70 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.RegImm.reg 5) loopBody218_21 loopBody218_23 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)

def loopBody218_71 : HolLoopProg 64 :=
.mark loopBody218_70

def loopBody218_72 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody218_35 loopBody218_1 (Flapjack.Spt.ln)

def loopBody218_73 : HolLoopProg 64 :=
.mark loopBody218_72

def loopBody218_74 : HolLoopProg 64 :=
.seq loopBody218_73 loopBody218_1

def loopBody218_75 : HolLoopProg 64 :=
.mark loopBody218_74

def loopBody218_76 : HolLoopProg 64 :=
.seq loopBody218_27 loopBody218_75

def loopBody218_77 : HolLoopProg 64 :=
.mark loopBody218_76

def loopBody218_78 : HolLoopProg 64 :=
.seq loopBody218_71 loopBody218_77

def loopBody218_79 : HolLoopProg 64 :=
.mark loopBody218_78

def loopBody218_80 : HolLoopProg 64 :=
.seq loopBody218_69 loopBody218_79

def loopBody218_81 : HolLoopProg 64 :=
.mark loopBody218_80

def loopBody218_82 : HolLoopProg 64 :=
.seq loopBody218_17 loopBody218_81

def loopBody218_83 : HolLoopProg 64 :=
.mark loopBody218_82

def loopBody218_84 : HolLoopProg 64 :=
.seq loopBody218_67 loopBody218_83

def loopBody218_85 : HolLoopProg 64 :=
.mark loopBody218_84

def loopBody218_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody218_87 : HolLoopProg 64 :=
.mark loopBody218_86

def loopBody218_88 : HolLoopProg 64 :=
.seq loopBody218_87 loopBody218_33

def loopBody218_89 : HolLoopProg 64 :=
.mark loopBody218_88

def loopBody218_90 : HolLoopProg 64 :=
.seq loopBody218_85 loopBody218_89

def loopBody218_91 : HolLoopProg 64 :=
.mark loopBody218_90

def loopBody218_92 : HolLoopProg 64 :=
.seq loopBody218_15 loopBody218_91

def loopBody218_93 : HolLoopProg 64 :=
.mark loopBody218_92

def loopBody218_94 : HolLoopProg 64 :=
.seq loopBody218_1 loopBody218_93

def loopBody218_95 : HolLoopProg 64 :=
.mark loopBody218_94

def loopBody218_96 : HolLoopProg 64 :=
.seq loopBody218_1 loopBody218_95

def loopBody218_97 : HolLoopProg 64 :=
.mark loopBody218_96

def output218 : Nat × List Nat × HolLoopProg 64 :=
  (282, [0, 1], loopBody218_97)
end InitECandidate.Proofs.FrontendStages.Loop
