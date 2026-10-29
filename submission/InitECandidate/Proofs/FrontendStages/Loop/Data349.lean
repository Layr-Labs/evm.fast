import InitECandidate.Proofs.FrontendStages.Loop.Translate333
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody349_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody349_1 : HolLoopProg 64 :=
.mark loopBody349_0

def loopBody349_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody349_3 : HolLoopProg 64 :=
.mark loopBody349_2

def loopBody349_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody349_5 : HolLoopProg 64 :=
.mark loopBody349_4

def loopBody349_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 406) ([2]) (some (2, loopBody349_5, loopBody349_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody349_7 : HolLoopProg 64 :=
.mark loopBody349_6

def loopBody349_8 : HolLoopProg 64 :=
.seq loopBody349_7 loopBody349_1

def loopBody349_9 : HolLoopProg 64 :=
.mark loopBody349_8

def loopBody349_10 : HolLoopProg 64 :=
.seq loopBody349_3 loopBody349_9

def loopBody349_11 : HolLoopProg 64 :=
.mark loopBody349_10

def loopBody349_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody349_13 : HolLoopProg 64 :=
.mark loopBody349_12

def loopBody349_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody349_15 : HolLoopProg 64 :=
.mark loopBody349_14

def loopBody349_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody349_17 : HolLoopProg 64 :=
.mark loopBody349_16

def loopBody349_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody349_19 : HolLoopProg 64 :=
.mark loopBody349_18

def loopBody349_20 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.RegImm.reg 4) loopBody349_17 loopBody349_19 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody349_21 : HolLoopProg 64 :=
.mark loopBody349_20

def loopBody349_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody349_23 : HolLoopProg 64 :=
.mark loopBody349_22

def loopBody349_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody349_25 : HolLoopProg 64 :=
.mark loopBody349_24

def loopBody349_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody349_27 : HolLoopProg 64 :=
.mark loopBody349_26

def loopBody349_28 : HolLoopProg 64 :=
.seq loopBody349_27 loopBody349_1

def loopBody349_29 : HolLoopProg 64 :=
.mark loopBody349_28

def loopBody349_30 : HolLoopProg 64 :=
.seq loopBody349_25 loopBody349_29

def loopBody349_31 : HolLoopProg 64 :=
.mark loopBody349_30

def loopBody349_32 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody349_31 loopBody349_1 (Flapjack.Spt.ln)

def loopBody349_33 : HolLoopProg 64 :=
.mark loopBody349_32

def loopBody349_34 : HolLoopProg 64 :=
.seq loopBody349_33 loopBody349_1

def loopBody349_35 : HolLoopProg 64 :=
.mark loopBody349_34

def loopBody349_36 : HolLoopProg 64 :=
.seq loopBody349_23 loopBody349_35

def loopBody349_37 : HolLoopProg 64 :=
.mark loopBody349_36

def loopBody349_38 : HolLoopProg 64 :=
.seq loopBody349_21 loopBody349_37

def loopBody349_39 : HolLoopProg 64 :=
.mark loopBody349_38

def loopBody349_40 : HolLoopProg 64 :=
.seq loopBody349_15 loopBody349_39

def loopBody349_41 : HolLoopProg 64 :=
.mark loopBody349_40

def loopBody349_42 : HolLoopProg 64 :=
.seq loopBody349_13 loopBody349_41

def loopBody349_43 : HolLoopProg 64 :=
.mark loopBody349_42

def loopBody349_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody349_45 : HolLoopProg 64 :=
.mark loopBody349_44

def loopBody349_46 : HolLoopProg 64 :=
.seq loopBody349_45 loopBody349_29

def loopBody349_47 : HolLoopProg 64 :=
.mark loopBody349_46

def loopBody349_48 : HolLoopProg 64 :=
.seq loopBody349_43 loopBody349_47

def loopBody349_49 : HolLoopProg 64 :=
.mark loopBody349_48

def loopBody349_50 : HolLoopProg 64 :=
.seq loopBody349_11 loopBody349_49

def loopBody349_51 : HolLoopProg 64 :=
.mark loopBody349_50

def loopBody349_52 : HolLoopProg 64 :=
.seq loopBody349_1 loopBody349_51

def loopBody349_53 : HolLoopProg 64 :=
.mark loopBody349_52

def loopBody349_54 : HolLoopProg 64 :=
.seq loopBody349_1 loopBody349_53

def loopBody349_55 : HolLoopProg 64 :=
.mark loopBody349_54

def output349 : Nat × List Nat × HolLoopProg 64 :=
  (413, [0], loopBody349_55)
end InitECandidate.Proofs.FrontendStages.Loop
