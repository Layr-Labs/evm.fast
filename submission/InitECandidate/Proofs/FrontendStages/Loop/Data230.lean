import InitECandidate.Proofs.FrontendStages.Loop.Translate214
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody230_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody230_1 : HolLoopProg 64 :=
.mark loopBody230_0

def loopBody230_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody230_3 : HolLoopProg 64 :=
.mark loopBody230_2

def loopBody230_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody230_5 : HolLoopProg 64 :=
.mark loopBody230_4

def loopBody230_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody230_7 : HolLoopProg 64 :=
.mark loopBody230_6

def loopBody230_8 : HolLoopProg 64 :=
.call (some ([2, 3], Flapjack.Spt.ln)) (some 186) ([4, 5]) (some (4, loopBody230_7, loopBody230_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody230_9 : HolLoopProg 64 :=
.mark loopBody230_8

def loopBody230_10 : HolLoopProg 64 :=
.seq loopBody230_9 loopBody230_1

def loopBody230_11 : HolLoopProg 64 :=
.mark loopBody230_10

def loopBody230_12 : HolLoopProg 64 :=
.seq loopBody230_5 loopBody230_11

def loopBody230_13 : HolLoopProg 64 :=
.mark loopBody230_12

def loopBody230_14 : HolLoopProg 64 :=
.seq loopBody230_3 loopBody230_13

def loopBody230_15 : HolLoopProg 64 :=
.mark loopBody230_14

def loopBody230_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody230_17 : HolLoopProg 64 :=
.mark loopBody230_16

def loopBody230_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody230_19 : HolLoopProg 64 :=
.mark loopBody230_18

def loopBody230_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody230_21 : HolLoopProg 64 :=
.mark loopBody230_20

def loopBody230_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody230_23 : HolLoopProg 64 :=
.mark loopBody230_22

def loopBody230_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.RegImm.reg 6) loopBody230_21 loopBody230_23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))

def loopBody230_25 : HolLoopProg 64 :=
.mark loopBody230_24

def loopBody230_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody230_27 : HolLoopProg 64 :=
.mark loopBody230_26

def loopBody230_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody230_29 : HolLoopProg 64 :=
.mark loopBody230_28

def loopBody230_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4, 5, 6]

def loopBody230_31 : HolLoopProg 64 :=
.mark loopBody230_30

def loopBody230_32 : HolLoopProg 64 :=
.seq loopBody230_31 loopBody230_1

def loopBody230_33 : HolLoopProg 64 :=
.mark loopBody230_32

def loopBody230_34 : HolLoopProg 64 :=
.seq loopBody230_19 loopBody230_33

def loopBody230_35 : HolLoopProg 64 :=
.mark loopBody230_34

def loopBody230_36 : HolLoopProg 64 :=
.seq loopBody230_23 loopBody230_35

def loopBody230_37 : HolLoopProg 64 :=
.mark loopBody230_36

def loopBody230_38 : HolLoopProg 64 :=
.seq loopBody230_29 loopBody230_37

def loopBody230_39 : HolLoopProg 64 :=
.mark loopBody230_38

def loopBody230_40 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody230_39 loopBody230_1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody230_41 : HolLoopProg 64 :=
.mark loopBody230_40

def loopBody230_42 : HolLoopProg 64 :=
.seq loopBody230_41 loopBody230_1

def loopBody230_43 : HolLoopProg 64 :=
.mark loopBody230_42

def loopBody230_44 : HolLoopProg 64 :=
.seq loopBody230_27 loopBody230_43

def loopBody230_45 : HolLoopProg 64 :=
.mark loopBody230_44

def loopBody230_46 : HolLoopProg 64 :=
.seq loopBody230_25 loopBody230_45

def loopBody230_47 : HolLoopProg 64 :=
.mark loopBody230_46

def loopBody230_48 : HolLoopProg 64 :=
.seq loopBody230_19 loopBody230_47

def loopBody230_49 : HolLoopProg 64 :=
.mark loopBody230_48

def loopBody230_50 : HolLoopProg 64 :=
.seq loopBody230_17 loopBody230_49

def loopBody230_51 : HolLoopProg 64 :=
.mark loopBody230_50

def loopBody230_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody230_53 : HolLoopProg 64 :=
.mark loopBody230_52

def loopBody230_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.load (Flapjack.HolLoopExp.var 3))

def loopBody230_55 : HolLoopProg 64 :=
.mark loopBody230_54

def loopBody230_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 8#64]))

def loopBody230_57 : HolLoopProg 64 :=
.mark loopBody230_56

def loopBody230_58 : HolLoopProg 64 :=
.seq loopBody230_57 loopBody230_33

def loopBody230_59 : HolLoopProg 64 :=
.mark loopBody230_58

def loopBody230_60 : HolLoopProg 64 :=
.seq loopBody230_55 loopBody230_59

def loopBody230_61 : HolLoopProg 64 :=
.mark loopBody230_60

def loopBody230_62 : HolLoopProg 64 :=
.seq loopBody230_53 loopBody230_61

def loopBody230_63 : HolLoopProg 64 :=
.mark loopBody230_62

def loopBody230_64 : HolLoopProg 64 :=
.seq loopBody230_51 loopBody230_63

def loopBody230_65 : HolLoopProg 64 :=
.mark loopBody230_64

def loopBody230_66 : HolLoopProg 64 :=
.seq loopBody230_15 loopBody230_65

def loopBody230_67 : HolLoopProg 64 :=
.mark loopBody230_66

def loopBody230_68 : HolLoopProg 64 :=
.seq loopBody230_1 loopBody230_67

def loopBody230_69 : HolLoopProg 64 :=
.mark loopBody230_68

def loopBody230_70 : HolLoopProg 64 :=
.seq loopBody230_1 loopBody230_69

def loopBody230_71 : HolLoopProg 64 :=
.mark loopBody230_70

def loopBody230_72 : HolLoopProg 64 :=
.seq loopBody230_1 loopBody230_71

def loopBody230_73 : HolLoopProg 64 :=
.mark loopBody230_72

def loopBody230_74 : HolLoopProg 64 :=
.seq loopBody230_1 loopBody230_73

def loopBody230_75 : HolLoopProg 64 :=
.mark loopBody230_74

def output230 : Nat × List Nat × HolLoopProg 64 :=
  (294, [0, 1], loopBody230_75)
end InitECandidate.Proofs.FrontendStages.Loop
