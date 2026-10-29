import InitECandidate.Proofs.FrontendStages.Loop.Translate325
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody341_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody341_1 : HolLoopProg 64 :=
.mark loopBody341_0

def loopBody341_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody341_3 : HolLoopProg 64 :=
.mark loopBody341_2

def loopBody341_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody341_5 : HolLoopProg 64 :=
.mark loopBody341_4

def loopBody341_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 404) ([2]) (some (2, loopBody341_5, loopBody341_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody341_7 : HolLoopProg 64 :=
.mark loopBody341_6

def loopBody341_8 : HolLoopProg 64 :=
.seq loopBody341_7 loopBody341_1

def loopBody341_9 : HolLoopProg 64 :=
.mark loopBody341_8

def loopBody341_10 : HolLoopProg 64 :=
.seq loopBody341_3 loopBody341_9

def loopBody341_11 : HolLoopProg 64 :=
.mark loopBody341_10

def loopBody341_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody341_13 : HolLoopProg 64 :=
.mark loopBody341_12

def loopBody341_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody341_15 : HolLoopProg 64 :=
.mark loopBody341_14

def loopBody341_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody341_17 : HolLoopProg 64 :=
.mark loopBody341_16

def loopBody341_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody341_19 : HolLoopProg 64 :=
.mark loopBody341_18

def loopBody341_20 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.RegImm.reg 4) loopBody341_17 loopBody341_19 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody341_21 : HolLoopProg 64 :=
.mark loopBody341_20

def loopBody341_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody341_23 : HolLoopProg 64 :=
.mark loopBody341_22

def loopBody341_24 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 394) ([]) (some (2, loopBody341_5, loopBody341_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody341_25 : HolLoopProg 64 :=
.mark loopBody341_24

def loopBody341_26 : HolLoopProg 64 :=
.seq loopBody341_25 loopBody341_1

def loopBody341_27 : HolLoopProg 64 :=
.mark loopBody341_26

def loopBody341_28 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody341_27 loopBody341_1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))

def loopBody341_29 : HolLoopProg 64 :=
.mark loopBody341_28

def loopBody341_30 : HolLoopProg 64 :=
.seq loopBody341_29 loopBody341_1

def loopBody341_31 : HolLoopProg 64 :=
.mark loopBody341_30

def loopBody341_32 : HolLoopProg 64 :=
.seq loopBody341_23 loopBody341_31

def loopBody341_33 : HolLoopProg 64 :=
.mark loopBody341_32

def loopBody341_34 : HolLoopProg 64 :=
.seq loopBody341_21 loopBody341_33

def loopBody341_35 : HolLoopProg 64 :=
.mark loopBody341_34

def loopBody341_36 : HolLoopProg 64 :=
.seq loopBody341_15 loopBody341_35

def loopBody341_37 : HolLoopProg 64 :=
.mark loopBody341_36

def loopBody341_38 : HolLoopProg 64 :=
.seq loopBody341_13 loopBody341_37

def loopBody341_39 : HolLoopProg 64 :=
.mark loopBody341_38

def loopBody341_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 1)

def loopBody341_41 : HolLoopProg 64 :=
.mark loopBody341_40

def loopBody341_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody341_43 : HolLoopProg 64 :=
.mark loopBody341_42

def loopBody341_44 : HolLoopProg 64 :=
.seq loopBody341_43 loopBody341_1

def loopBody341_45 : HolLoopProg 64 :=
.mark loopBody341_44

def loopBody341_46 : HolLoopProg 64 :=
.seq loopBody341_41 loopBody341_45

def loopBody341_47 : HolLoopProg 64 :=
.mark loopBody341_46

def loopBody341_48 : HolLoopProg 64 :=
.seq loopBody341_39 loopBody341_47

def loopBody341_49 : HolLoopProg 64 :=
.mark loopBody341_48

def loopBody341_50 : HolLoopProg 64 :=
.seq loopBody341_11 loopBody341_49

def loopBody341_51 : HolLoopProg 64 :=
.mark loopBody341_50

def loopBody341_52 : HolLoopProg 64 :=
.seq loopBody341_1 loopBody341_51

def loopBody341_53 : HolLoopProg 64 :=
.mark loopBody341_52

def loopBody341_54 : HolLoopProg 64 :=
.seq loopBody341_1 loopBody341_53

def loopBody341_55 : HolLoopProg 64 :=
.mark loopBody341_54

def output341 : Nat × List Nat × HolLoopProg 64 :=
  (405, [0], loopBody341_55)
end InitECandidate.Proofs.FrontendStages.Loop
