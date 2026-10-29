import InitECandidate.Proofs.FrontendStages.Loop.Translate245
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody261_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody261_1 : HolLoopProg 64 :=
.mark loopBody261_0

def loopBody261_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64]))

def loopBody261_3 : HolLoopProg 64 :=
.mark loopBody261_2

def loopBody261_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody261_5 : HolLoopProg 64 :=
.mark loopBody261_4

def loopBody261_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody261_7 : HolLoopProg 64 :=
.mark loopBody261_6

def loopBody261_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody261_9 : HolLoopProg 64 :=
.mark loopBody261_8

def loopBody261_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody261_11 : HolLoopProg 64 :=
.mark loopBody261_10

def loopBody261_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.RegImm.reg 4) loopBody261_9 loopBody261_11 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody261_13 : HolLoopProg 64 :=
.mark loopBody261_12

def loopBody261_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody261_15 : HolLoopProg 64 :=
.mark loopBody261_14

def loopBody261_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 1)

def loopBody261_17 : HolLoopProg 64 :=
.mark loopBody261_16

def loopBody261_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 16#64]))

def loopBody261_19 : HolLoopProg 64 :=
.mark loopBody261_18

def loopBody261_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2, 3]

def loopBody261_21 : HolLoopProg 64 :=
.mark loopBody261_20

def loopBody261_22 : HolLoopProg 64 :=
.seq loopBody261_21 loopBody261_1

def loopBody261_23 : HolLoopProg 64 :=
.mark loopBody261_22

def loopBody261_24 : HolLoopProg 64 :=
.seq loopBody261_19 loopBody261_23

def loopBody261_25 : HolLoopProg 64 :=
.mark loopBody261_24

def loopBody261_26 : HolLoopProg 64 :=
.seq loopBody261_17 loopBody261_25

def loopBody261_27 : HolLoopProg 64 :=
.mark loopBody261_26

def loopBody261_28 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody261_27 loopBody261_1 (Flapjack.Spt.ls PUnit.unit)

def loopBody261_29 : HolLoopProg 64 :=
.mark loopBody261_28

def loopBody261_30 : HolLoopProg 64 :=
.seq loopBody261_29 loopBody261_1

def loopBody261_31 : HolLoopProg 64 :=
.mark loopBody261_30

def loopBody261_32 : HolLoopProg 64 :=
.seq loopBody261_15 loopBody261_31

def loopBody261_33 : HolLoopProg 64 :=
.mark loopBody261_32

def loopBody261_34 : HolLoopProg 64 :=
.seq loopBody261_13 loopBody261_33

def loopBody261_35 : HolLoopProg 64 :=
.mark loopBody261_34

def loopBody261_36 : HolLoopProg 64 :=
.seq loopBody261_7 loopBody261_35

def loopBody261_37 : HolLoopProg 64 :=
.mark loopBody261_36

def loopBody261_38 : HolLoopProg 64 :=
.seq loopBody261_5 loopBody261_37

def loopBody261_39 : HolLoopProg 64 :=
.mark loopBody261_38

def loopBody261_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64]))

def loopBody261_41 : HolLoopProg 64 :=
.mark loopBody261_40

def loopBody261_42 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.RegImm.reg 4) loopBody261_9 loopBody261_11 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody261_43 : HolLoopProg 64 :=
.mark loopBody261_42

def loopBody261_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 2#64)

def loopBody261_45 : HolLoopProg 64 :=
.mark loopBody261_44

def loopBody261_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody261_47 : HolLoopProg 64 :=
.mark loopBody261_46

def loopBody261_48 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ls PUnit.unit)) (some 286) ([3]) (some (3, loopBody261_47, loopBody261_1, (Flapjack.Spt.ls PUnit.unit)))

def loopBody261_49 : HolLoopProg 64 :=
.mark loopBody261_48

def loopBody261_50 : HolLoopProg 64 :=
.seq loopBody261_49 loopBody261_1

def loopBody261_51 : HolLoopProg 64 :=
.mark loopBody261_50

def loopBody261_52 : HolLoopProg 64 :=
.seq loopBody261_45 loopBody261_51

def loopBody261_53 : HolLoopProg 64 :=
.mark loopBody261_52

def loopBody261_54 : HolLoopProg 64 :=
.seq loopBody261_1 loopBody261_53

def loopBody261_55 : HolLoopProg 64 :=
.mark loopBody261_54

def loopBody261_56 : HolLoopProg 64 :=
.seq loopBody261_1 loopBody261_55

def loopBody261_57 : HolLoopProg 64 :=
.mark loopBody261_56

def loopBody261_58 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody261_57 loopBody261_1 (Flapjack.Spt.ls PUnit.unit)

def loopBody261_59 : HolLoopProg 64 :=
.mark loopBody261_58

def loopBody261_60 : HolLoopProg 64 :=
.seq loopBody261_59 loopBody261_1

def loopBody261_61 : HolLoopProg 64 :=
.mark loopBody261_60

def loopBody261_62 : HolLoopProg 64 :=
.seq loopBody261_15 loopBody261_61

def loopBody261_63 : HolLoopProg 64 :=
.mark loopBody261_62

def loopBody261_64 : HolLoopProg 64 :=
.seq loopBody261_43 loopBody261_63

def loopBody261_65 : HolLoopProg 64 :=
.mark loopBody261_64

def loopBody261_66 : HolLoopProg 64 :=
.seq loopBody261_7 loopBody261_65

def loopBody261_67 : HolLoopProg 64 :=
.mark loopBody261_66

def loopBody261_68 : HolLoopProg 64 :=
.seq loopBody261_41 loopBody261_67

def loopBody261_69 : HolLoopProg 64 :=
.mark loopBody261_68

def loopBody261_70 : HolLoopProg 64 :=
.seq loopBody261_39 loopBody261_69

def loopBody261_71 : HolLoopProg 64 :=
.mark loopBody261_70

def loopBody261_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody261_73 : HolLoopProg 64 :=
.mark loopBody261_72

def loopBody261_74 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ls PUnit.unit)) (some 324) ([3]) (some (3, loopBody261_47, loopBody261_1, (Flapjack.Spt.ls PUnit.unit)))

def loopBody261_75 : HolLoopProg 64 :=
.mark loopBody261_74

def loopBody261_76 : HolLoopProg 64 :=
.seq loopBody261_75 loopBody261_1

def loopBody261_77 : HolLoopProg 64 :=
.mark loopBody261_76

def loopBody261_78 : HolLoopProg 64 :=
.seq loopBody261_73 loopBody261_77

def loopBody261_79 : HolLoopProg 64 :=
.mark loopBody261_78

def loopBody261_80 : HolLoopProg 64 :=
.seq loopBody261_1 loopBody261_79

def loopBody261_81 : HolLoopProg 64 :=
.mark loopBody261_80

def loopBody261_82 : HolLoopProg 64 :=
.seq loopBody261_1 loopBody261_81

def loopBody261_83 : HolLoopProg 64 :=
.mark loopBody261_82

def loopBody261_84 : HolLoopProg 64 :=
.seq loopBody261_71 loopBody261_83

def loopBody261_85 : HolLoopProg 64 :=
.mark loopBody261_84

def loopBody261_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64]))

def loopBody261_87 : HolLoopProg 64 :=
.mark loopBody261_86

def loopBody261_88 : HolLoopProg 64 :=
.seq loopBody261_87 loopBody261_25

def loopBody261_89 : HolLoopProg 64 :=
.mark loopBody261_88

def loopBody261_90 : HolLoopProg 64 :=
.seq loopBody261_85 loopBody261_89

def loopBody261_91 : HolLoopProg 64 :=
.mark loopBody261_90

def loopBody261_92 : HolLoopProg 64 :=
.seq loopBody261_3 loopBody261_91

def loopBody261_93 : HolLoopProg 64 :=
.mark loopBody261_92

def loopBody261_94 : HolLoopProg 64 :=
.seq loopBody261_1 loopBody261_93

def loopBody261_95 : HolLoopProg 64 :=
.mark loopBody261_94

def output261 : Nat × List Nat × HolLoopProg 64 :=
  (325, [0], loopBody261_95)
end InitECandidate.Proofs.FrontendStages.Loop
