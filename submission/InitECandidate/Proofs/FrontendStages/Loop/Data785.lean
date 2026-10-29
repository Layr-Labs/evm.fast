import InitECandidate.Proofs.FrontendStages.Loop.Translate769
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody785_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody785_1 : HolLoopProg 64 :=
.mark loopBody785_0

def loopBody785_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody785_3 : HolLoopProg 64 :=
.mark loopBody785_2

def loopBody785_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody785_5 : HolLoopProg 64 :=
.mark loopBody785_4

def loopBody785_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody785_7 : HolLoopProg 64 :=
.mark loopBody785_6

def loopBody785_8 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 187) ([3, 4]) (some (3, loopBody785_7, loopBody785_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))

def loopBody785_9 : HolLoopProg 64 :=
.mark loopBody785_8

def loopBody785_10 : HolLoopProg 64 :=
.seq loopBody785_9 loopBody785_1

def loopBody785_11 : HolLoopProg 64 :=
.mark loopBody785_10

def loopBody785_12 : HolLoopProg 64 :=
.seq loopBody785_5 loopBody785_11

def loopBody785_13 : HolLoopProg 64 :=
.mark loopBody785_12

def loopBody785_14 : HolLoopProg 64 :=
.seq loopBody785_3 loopBody785_13

def loopBody785_15 : HolLoopProg 64 :=
.mark loopBody785_14

def loopBody785_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody785_17 : HolLoopProg 64 :=
.mark loopBody785_16

def loopBody785_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody785_19 : HolLoopProg 64 :=
.mark loopBody785_18

def loopBody785_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody785_21 : HolLoopProg 64 :=
.mark loopBody785_20

def loopBody785_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody785_23 : HolLoopProg 64 :=
.mark loopBody785_22

def loopBody785_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.RegImm.reg 5) loopBody785_21 loopBody785_23 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))

def loopBody785_25 : HolLoopProg 64 :=
.mark loopBody785_24

def loopBody785_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody785_27 : HolLoopProg 64 :=
.mark loopBody785_26

def loopBody785_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 128#64]))

def loopBody785_29 : HolLoopProg 64 :=
.mark loopBody785_28

def loopBody785_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody785_31 : HolLoopProg 64 :=
.mark loopBody785_30

def loopBody785_32 : HolLoopProg 64 :=
.seq loopBody785_31 loopBody785_1

def loopBody785_33 : HolLoopProg 64 :=
.mark loopBody785_32

def loopBody785_34 : HolLoopProg 64 :=
.seq loopBody785_29 loopBody785_33

def loopBody785_35 : HolLoopProg 64 :=
.mark loopBody785_34

def loopBody785_36 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody785_35 loopBody785_1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))

def loopBody785_37 : HolLoopProg 64 :=
.mark loopBody785_36

def loopBody785_38 : HolLoopProg 64 :=
.seq loopBody785_37 loopBody785_1

def loopBody785_39 : HolLoopProg 64 :=
.mark loopBody785_38

def loopBody785_40 : HolLoopProg 64 :=
.seq loopBody785_27 loopBody785_39

def loopBody785_41 : HolLoopProg 64 :=
.mark loopBody785_40

def loopBody785_42 : HolLoopProg 64 :=
.seq loopBody785_25 loopBody785_41

def loopBody785_43 : HolLoopProg 64 :=
.mark loopBody785_42

def loopBody785_44 : HolLoopProg 64 :=
.seq loopBody785_19 loopBody785_43

def loopBody785_45 : HolLoopProg 64 :=
.mark loopBody785_44

def loopBody785_46 : HolLoopProg 64 :=
.seq loopBody785_17 loopBody785_45

def loopBody785_47 : HolLoopProg 64 :=
.mark loopBody785_46

def loopBody785_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody785_49 : HolLoopProg 64 :=
.mark loopBody785_48

def loopBody785_50 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.ln)) (some 399) ([4]) (some (4, loopBody785_49, loopBody785_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody785_51 : HolLoopProg 64 :=
.mark loopBody785_50

def loopBody785_52 : HolLoopProg 64 :=
.seq loopBody785_51 loopBody785_1

def loopBody785_53 : HolLoopProg 64 :=
.mark loopBody785_52

def loopBody785_54 : HolLoopProg 64 :=
.seq loopBody785_5 loopBody785_53

def loopBody785_55 : HolLoopProg 64 :=
.mark loopBody785_54

def loopBody785_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody785_57 : HolLoopProg 64 :=
.mark loopBody785_56

def loopBody785_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody785_59 : HolLoopProg 64 :=
.mark loopBody785_58

def loopBody785_60 : HolLoopProg 64 :=
.seq loopBody785_59 loopBody785_1

def loopBody785_61 : HolLoopProg 64 :=
.mark loopBody785_60

def loopBody785_62 : HolLoopProg 64 :=
.seq loopBody785_57 loopBody785_61

def loopBody785_63 : HolLoopProg 64 :=
.mark loopBody785_62

def loopBody785_64 : HolLoopProg 64 :=
.seq loopBody785_55 loopBody785_63

def loopBody785_65 : HolLoopProg 64 :=
.mark loopBody785_64

def loopBody785_66 : HolLoopProg 64 :=
.seq loopBody785_1 loopBody785_65

def loopBody785_67 : HolLoopProg 64 :=
.mark loopBody785_66

def loopBody785_68 : HolLoopProg 64 :=
.seq loopBody785_1 loopBody785_67

def loopBody785_69 : HolLoopProg 64 :=
.mark loopBody785_68

def loopBody785_70 : HolLoopProg 64 :=
.seq loopBody785_47 loopBody785_69

def loopBody785_71 : HolLoopProg 64 :=
.mark loopBody785_70

def loopBody785_72 : HolLoopProg 64 :=
.seq loopBody785_15 loopBody785_71

def loopBody785_73 : HolLoopProg 64 :=
.mark loopBody785_72

def loopBody785_74 : HolLoopProg 64 :=
.seq loopBody785_1 loopBody785_73

def loopBody785_75 : HolLoopProg 64 :=
.mark loopBody785_74

def loopBody785_76 : HolLoopProg 64 :=
.seq loopBody785_1 loopBody785_75

def loopBody785_77 : HolLoopProg 64 :=
.mark loopBody785_76

def output785 : Nat × List Nat × HolLoopProg 64 :=
  (849, [0, 1], loopBody785_77)
end InitECandidate.Proofs.FrontendStages.Loop
