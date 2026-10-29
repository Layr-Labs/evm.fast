import InitECandidate.Proofs.FrontendStages.Loop.Translate415
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody431_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody431_1 : HolLoopProg 64 :=
.mark loopBody431_0

def loopBody431_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody431_3 : HolLoopProg 64 :=
.mark loopBody431_2

def loopBody431_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody431_5 : HolLoopProg 64 :=
.mark loopBody431_4

def loopBody431_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 493) ([2]) (some (2, loopBody431_5, loopBody431_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody431_7 : HolLoopProg 64 :=
.mark loopBody431_6

def loopBody431_8 : HolLoopProg 64 :=
.seq loopBody431_7 loopBody431_1

def loopBody431_9 : HolLoopProg 64 :=
.mark loopBody431_8

def loopBody431_10 : HolLoopProg 64 :=
.seq loopBody431_3 loopBody431_9

def loopBody431_11 : HolLoopProg 64 :=
.mark loopBody431_10

def loopBody431_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody431_13 : HolLoopProg 64 :=
.mark loopBody431_12

def loopBody431_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody431_15 : HolLoopProg 64 :=
.mark loopBody431_14

def loopBody431_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody431_17 : HolLoopProg 64 :=
.mark loopBody431_16

def loopBody431_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody431_19 : HolLoopProg 64 :=
.mark loopBody431_18

def loopBody431_20 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.RegImm.reg 4) loopBody431_17 loopBody431_19 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody431_21 : HolLoopProg 64 :=
.mark loopBody431_20

def loopBody431_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody431_23 : HolLoopProg 64 :=
.mark loopBody431_22

def loopBody431_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 100#64)

def loopBody431_25 : HolLoopProg 64 :=
.mark loopBody431_24

def loopBody431_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody431_27 : HolLoopProg 64 :=
.mark loopBody431_26

def loopBody431_28 : HolLoopProg 64 :=
.seq loopBody431_27 loopBody431_1

def loopBody431_29 : HolLoopProg 64 :=
.mark loopBody431_28

def loopBody431_30 : HolLoopProg 64 :=
.seq loopBody431_25 loopBody431_29

def loopBody431_31 : HolLoopProg 64 :=
.mark loopBody431_30

def loopBody431_32 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody431_31 loopBody431_1 (Flapjack.Spt.ln)

def loopBody431_33 : HolLoopProg 64 :=
.mark loopBody431_32

def loopBody431_34 : HolLoopProg 64 :=
.seq loopBody431_33 loopBody431_1

def loopBody431_35 : HolLoopProg 64 :=
.mark loopBody431_34

def loopBody431_36 : HolLoopProg 64 :=
.seq loopBody431_23 loopBody431_35

def loopBody431_37 : HolLoopProg 64 :=
.mark loopBody431_36

def loopBody431_38 : HolLoopProg 64 :=
.seq loopBody431_21 loopBody431_37

def loopBody431_39 : HolLoopProg 64 :=
.mark loopBody431_38

def loopBody431_40 : HolLoopProg 64 :=
.seq loopBody431_15 loopBody431_39

def loopBody431_41 : HolLoopProg 64 :=
.mark loopBody431_40

def loopBody431_42 : HolLoopProg 64 :=
.seq loopBody431_13 loopBody431_41

def loopBody431_43 : HolLoopProg 64 :=
.mark loopBody431_42

def loopBody431_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 3000#64)

def loopBody431_45 : HolLoopProg 64 :=
.mark loopBody431_44

def loopBody431_46 : HolLoopProg 64 :=
.seq loopBody431_45 loopBody431_29

def loopBody431_47 : HolLoopProg 64 :=
.mark loopBody431_46

def loopBody431_48 : HolLoopProg 64 :=
.seq loopBody431_43 loopBody431_47

def loopBody431_49 : HolLoopProg 64 :=
.mark loopBody431_48

def loopBody431_50 : HolLoopProg 64 :=
.seq loopBody431_11 loopBody431_49

def loopBody431_51 : HolLoopProg 64 :=
.mark loopBody431_50

def loopBody431_52 : HolLoopProg 64 :=
.seq loopBody431_1 loopBody431_51

def loopBody431_53 : HolLoopProg 64 :=
.mark loopBody431_52

def loopBody431_54 : HolLoopProg 64 :=
.seq loopBody431_1 loopBody431_53

def loopBody431_55 : HolLoopProg 64 :=
.mark loopBody431_54

def output431 : Nat × List Nat × HolLoopProg 64 :=
  (495, [0], loopBody431_55)
end InitECandidate.Proofs.FrontendStages.Loop
