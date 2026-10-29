import InitECandidate.Proofs.FrontendStages.Loop.Translate327
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody343_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody343_1 : HolLoopProg 64 :=
.mark loopBody343_0

def loopBody343_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody343_3 : HolLoopProg 64 :=
.mark loopBody343_2

def loopBody343_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody343_5 : HolLoopProg 64 :=
.mark loopBody343_4

def loopBody343_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 406) ([2]) (some (2, loopBody343_5, loopBody343_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody343_7 : HolLoopProg 64 :=
.mark loopBody343_6

def loopBody343_8 : HolLoopProg 64 :=
.seq loopBody343_7 loopBody343_1

def loopBody343_9 : HolLoopProg 64 :=
.mark loopBody343_8

def loopBody343_10 : HolLoopProg 64 :=
.seq loopBody343_3 loopBody343_9

def loopBody343_11 : HolLoopProg 64 :=
.mark loopBody343_10

def loopBody343_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody343_13 : HolLoopProg 64 :=
.mark loopBody343_12

def loopBody343_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody343_15 : HolLoopProg 64 :=
.mark loopBody343_14

def loopBody343_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody343_17 : HolLoopProg 64 :=
.mark loopBody343_16

def loopBody343_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody343_19 : HolLoopProg 64 :=
.mark loopBody343_18

def loopBody343_20 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.RegImm.reg 4) loopBody343_17 loopBody343_19 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody343_21 : HolLoopProg 64 :=
.mark loopBody343_20

def loopBody343_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody343_23 : HolLoopProg 64 :=
.mark loopBody343_22

def loopBody343_24 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 394) ([]) (some (2, loopBody343_5, loopBody343_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody343_25 : HolLoopProg 64 :=
.mark loopBody343_24

def loopBody343_26 : HolLoopProg 64 :=
.seq loopBody343_25 loopBody343_1

def loopBody343_27 : HolLoopProg 64 :=
.mark loopBody343_26

def loopBody343_28 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody343_27 loopBody343_1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))

def loopBody343_29 : HolLoopProg 64 :=
.mark loopBody343_28

def loopBody343_30 : HolLoopProg 64 :=
.seq loopBody343_29 loopBody343_1

def loopBody343_31 : HolLoopProg 64 :=
.mark loopBody343_30

def loopBody343_32 : HolLoopProg 64 :=
.seq loopBody343_23 loopBody343_31

def loopBody343_33 : HolLoopProg 64 :=
.mark loopBody343_32

def loopBody343_34 : HolLoopProg 64 :=
.seq loopBody343_21 loopBody343_33

def loopBody343_35 : HolLoopProg 64 :=
.mark loopBody343_34

def loopBody343_36 : HolLoopProg 64 :=
.seq loopBody343_15 loopBody343_35

def loopBody343_37 : HolLoopProg 64 :=
.mark loopBody343_36

def loopBody343_38 : HolLoopProg 64 :=
.seq loopBody343_13 loopBody343_37

def loopBody343_39 : HolLoopProg 64 :=
.mark loopBody343_38

def loopBody343_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 1)

def loopBody343_41 : HolLoopProg 64 :=
.mark loopBody343_40

def loopBody343_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody343_43 : HolLoopProg 64 :=
.mark loopBody343_42

def loopBody343_44 : HolLoopProg 64 :=
.seq loopBody343_43 loopBody343_1

def loopBody343_45 : HolLoopProg 64 :=
.mark loopBody343_44

def loopBody343_46 : HolLoopProg 64 :=
.seq loopBody343_41 loopBody343_45

def loopBody343_47 : HolLoopProg 64 :=
.mark loopBody343_46

def loopBody343_48 : HolLoopProg 64 :=
.seq loopBody343_39 loopBody343_47

def loopBody343_49 : HolLoopProg 64 :=
.mark loopBody343_48

def loopBody343_50 : HolLoopProg 64 :=
.seq loopBody343_11 loopBody343_49

def loopBody343_51 : HolLoopProg 64 :=
.mark loopBody343_50

def loopBody343_52 : HolLoopProg 64 :=
.seq loopBody343_1 loopBody343_51

def loopBody343_53 : HolLoopProg 64 :=
.mark loopBody343_52

def loopBody343_54 : HolLoopProg 64 :=
.seq loopBody343_1 loopBody343_53

def loopBody343_55 : HolLoopProg 64 :=
.mark loopBody343_54

def output343 : Nat × List Nat × HolLoopProg 64 :=
  (407, [0], loopBody343_55)
end InitECandidate.Proofs.FrontendStages.Loop
