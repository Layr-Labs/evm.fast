import InitECandidate.Proofs.FrontendStages.Loop.Translate0
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody16_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody16_1 : HolLoopProg 64 :=
.mark loopBody16_0

def loopBody16_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody16_3 : HolLoopProg 64 :=
.mark loopBody16_2

def loopBody16_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody16_5 : HolLoopProg 64 :=
.mark loopBody16_4

def loopBody16_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody16_7 : HolLoopProg 64 :=
.mark loopBody16_6

def loopBody16_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody16_9 : HolLoopProg 64 :=
.mark loopBody16_8

def loopBody16_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody16_11 : HolLoopProg 64 :=
.mark loopBody16_10

def loopBody16_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.RegImm.reg 5) loopBody16_9 loopBody16_11 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.ls PUnit.unit))

def loopBody16_13 : HolLoopProg 64 :=
.mark loopBody16_12

def loopBody16_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody16_15 : HolLoopProg 64 :=
.mark loopBody16_14

def loopBody16_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 2])

def loopBody16_17 : HolLoopProg 64 :=
.mark loopBody16_16

def loopBody16_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 3 3

def loopBody16_19 : HolLoopProg 64 :=
.mark loopBody16_18

def loopBody16_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody16_21 : HolLoopProg 64 :=
.mark loopBody16_20

def loopBody16_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody16_23 : HolLoopProg 64 :=
.mark loopBody16_22

def loopBody16_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody16_25 : HolLoopProg 64 :=
.mark loopBody16_24

def loopBody16_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody16_27 : HolLoopProg 64 :=
.mark loopBody16_26

def loopBody16_28 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.reg 6) loopBody16_25 loopBody16_27 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))

def loopBody16_29 : HolLoopProg 64 :=
.mark loopBody16_28

def loopBody16_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody16_31 : HolLoopProg 64 :=
.mark loopBody16_30

def loopBody16_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody16_33 : HolLoopProg 64 :=
.mark loopBody16_32

def loopBody16_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody16_35 : HolLoopProg 64 :=
.mark loopBody16_34

def loopBody16_36 : HolLoopProg 64 :=
.seq loopBody16_35 loopBody16_1

def loopBody16_37 : HolLoopProg 64 :=
.mark loopBody16_36

def loopBody16_38 : HolLoopProg 64 :=
.seq loopBody16_33 loopBody16_37

def loopBody16_39 : HolLoopProg 64 :=
.mark loopBody16_38

def loopBody16_40 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody16_39 loopBody16_1 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody16_41 : HolLoopProg 64 :=
.mark loopBody16_40

def loopBody16_42 : HolLoopProg 64 :=
.seq loopBody16_41 loopBody16_1

def loopBody16_43 : HolLoopProg 64 :=
.mark loopBody16_42

def loopBody16_44 : HolLoopProg 64 :=
.seq loopBody16_31 loopBody16_43

def loopBody16_45 : HolLoopProg 64 :=
.mark loopBody16_44

def loopBody16_46 : HolLoopProg 64 :=
.seq loopBody16_29 loopBody16_45

def loopBody16_47 : HolLoopProg 64 :=
.mark loopBody16_46

def loopBody16_48 : HolLoopProg 64 :=
.seq loopBody16_23 loopBody16_47

def loopBody16_49 : HolLoopProg 64 :=
.mark loopBody16_48

def loopBody16_50 : HolLoopProg 64 :=
.seq loopBody16_21 loopBody16_49

def loopBody16_51 : HolLoopProg 64 :=
.mark loopBody16_50

def loopBody16_52 : HolLoopProg 64 :=
.seq loopBody16_19 loopBody16_51

def loopBody16_53 : HolLoopProg 64 :=
.mark loopBody16_52

def loopBody16_54 : HolLoopProg 64 :=
.seq loopBody16_17 loopBody16_53

def loopBody16_55 : HolLoopProg 64 :=
.mark loopBody16_54

def loopBody16_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 1#64])

def loopBody16_57 : HolLoopProg 64 :=
.mark loopBody16_56

def loopBody16_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 3)

def loopBody16_59 : HolLoopProg 64 :=
.mark loopBody16_58

def loopBody16_60 : HolLoopProg 64 :=
.seq loopBody16_59 loopBody16_1

def loopBody16_61 : HolLoopProg 64 :=
.mark loopBody16_60

def loopBody16_62 : HolLoopProg 64 :=
.seq loopBody16_61 loopBody16_1

def loopBody16_63 : HolLoopProg 64 :=
.mark loopBody16_62

def loopBody16_64 : HolLoopProg 64 :=
.seq loopBody16_57 loopBody16_63

def loopBody16_65 : HolLoopProg 64 :=
.mark loopBody16_64

def loopBody16_66 : HolLoopProg 64 :=
.seq loopBody16_1 loopBody16_65

def loopBody16_67 : HolLoopProg 64 :=
.mark loopBody16_66

def loopBody16_68 : HolLoopProg 64 :=
.seq loopBody16_55 loopBody16_67

def loopBody16_69 : HolLoopProg 64 :=
.mark loopBody16_68

def loopBody16_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody16_71 : HolLoopProg 64 :=
.mark loopBody16_70

def loopBody16_72 : HolLoopProg 64 :=
.seq loopBody16_69 loopBody16_71

def loopBody16_73 : HolLoopProg 64 :=
.mark loopBody16_72

def loopBody16_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody16_75 : HolLoopProg 64 :=
.mark loopBody16_74

def loopBody16_76 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody16_73 loopBody16_75 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody16_77 : HolLoopProg 64 :=
.mark loopBody16_76

def loopBody16_78 : HolLoopProg 64 :=
.seq loopBody16_77 loopBody16_1

def loopBody16_79 : HolLoopProg 64 :=
.mark loopBody16_78

def loopBody16_80 : HolLoopProg 64 :=
.seq loopBody16_15 loopBody16_79

def loopBody16_81 : HolLoopProg 64 :=
.mark loopBody16_80

def loopBody16_82 : HolLoopProg 64 :=
.seq loopBody16_13 loopBody16_81

def loopBody16_83 : HolLoopProg 64 :=
.mark loopBody16_82

def loopBody16_84 : HolLoopProg 64 :=
.seq loopBody16_7 loopBody16_83

def loopBody16_85 : HolLoopProg 64 :=
.mark loopBody16_84

def loopBody16_86 : HolLoopProg 64 :=
.seq loopBody16_5 loopBody16_85

def loopBody16_87 : HolLoopProg 64 :=
.mark loopBody16_86

def loopBody16_88 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) loopBody16_87 (Flapjack.Spt.ln)

def loopBody16_89 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody16_90 : HolLoopProg 64 :=
.mark loopBody16_89

def loopBody16_91 : HolLoopProg 64 :=
.seq loopBody16_90 loopBody16_37

def loopBody16_92 : HolLoopProg 64 :=
.mark loopBody16_91

def loopBody16_93 : HolLoopProg 64 :=
.seq loopBody16_88 loopBody16_92

def loopBody16_94 : HolLoopProg 64 :=
.seq loopBody16_3 loopBody16_93

def loopBody16_95 : HolLoopProg 64 :=
.seq loopBody16_1 loopBody16_94

def output16 : Nat × List Nat × HolLoopProg 64 :=
  (80, [0, 1], loopBody16_95)
end InitECandidate.Proofs.FrontendStages.Loop
