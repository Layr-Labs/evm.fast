import InitECandidate.Proofs.FrontendStages.Loop.Translate416
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody432_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody432_1 : HolLoopProg 64 :=
.mark loopBody432_0

def loopBody432_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 3000#64)

def loopBody432_3 : HolLoopProg 64 :=
.mark loopBody432_2

def loopBody432_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody432_5 : HolLoopProg 64 :=
.mark loopBody432_4

def loopBody432_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody432_7 : HolLoopProg 64 :=
.mark loopBody432_6

def loopBody432_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.RegImm.reg 4) loopBody432_5 loopBody432_7 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody432_9 : HolLoopProg 64 :=
.mark loopBody432_8

def loopBody432_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody432_11 : HolLoopProg 64 :=
.mark loopBody432_10

def loopBody432_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody432_13 : HolLoopProg 64 :=
.mark loopBody432_12

def loopBody432_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody432_15 : HolLoopProg 64 :=
.mark loopBody432_14

def loopBody432_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody432_17 : HolLoopProg 64 :=
.mark loopBody432_16

def loopBody432_18 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 494) ([3]) (some (3, loopBody432_17, loopBody432_13, (Flapjack.Spt.ln)))

def loopBody432_19 : HolLoopProg 64 :=
.mark loopBody432_18

def loopBody432_20 : HolLoopProg 64 :=
.seq loopBody432_19 loopBody432_13

def loopBody432_21 : HolLoopProg 64 :=
.mark loopBody432_20

def loopBody432_22 : HolLoopProg 64 :=
.seq loopBody432_15 loopBody432_21

def loopBody432_23 : HolLoopProg 64 :=
.mark loopBody432_22

def loopBody432_24 : HolLoopProg 64 :=
.seq loopBody432_13 loopBody432_23

def loopBody432_25 : HolLoopProg 64 :=
.mark loopBody432_24

def loopBody432_26 : HolLoopProg 64 :=
.seq loopBody432_13 loopBody432_25

def loopBody432_27 : HolLoopProg 64 :=
.mark loopBody432_26

def loopBody432_28 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody432_27 loopBody432_13 (Flapjack.Spt.ln)

def loopBody432_29 : HolLoopProg 64 :=
.mark loopBody432_28

def loopBody432_30 : HolLoopProg 64 :=
.seq loopBody432_29 loopBody432_13

def loopBody432_31 : HolLoopProg 64 :=
.mark loopBody432_30

def loopBody432_32 : HolLoopProg 64 :=
.seq loopBody432_11 loopBody432_31

def loopBody432_33 : HolLoopProg 64 :=
.mark loopBody432_32

def loopBody432_34 : HolLoopProg 64 :=
.seq loopBody432_9 loopBody432_33

def loopBody432_35 : HolLoopProg 64 :=
.mark loopBody432_34

def loopBody432_36 : HolLoopProg 64 :=
.seq loopBody432_3 loopBody432_35

def loopBody432_37 : HolLoopProg 64 :=
.mark loopBody432_36

def loopBody432_38 : HolLoopProg 64 :=
.seq loopBody432_1 loopBody432_37

def loopBody432_39 : HolLoopProg 64 :=
.mark loopBody432_38

def loopBody432_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody432_41 : HolLoopProg 64 :=
.mark loopBody432_40

def loopBody432_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody432_43 : HolLoopProg 64 :=
.mark loopBody432_42

def loopBody432_44 : HolLoopProg 64 :=
.seq loopBody432_43 loopBody432_13

def loopBody432_45 : HolLoopProg 64 :=
.mark loopBody432_44

def loopBody432_46 : HolLoopProg 64 :=
.seq loopBody432_41 loopBody432_45

def loopBody432_47 : HolLoopProg 64 :=
.mark loopBody432_46

def loopBody432_48 : HolLoopProg 64 :=
.seq loopBody432_39 loopBody432_47

def loopBody432_49 : HolLoopProg 64 :=
.mark loopBody432_48

def output432 : Nat × List Nat × HolLoopProg 64 :=
  (496, [0, 1], loopBody432_49)
end InitECandidate.Proofs.FrontendStages.Loop
