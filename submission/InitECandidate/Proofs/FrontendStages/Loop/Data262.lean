import InitECandidate.Proofs.FrontendStages.Loop.Translate246
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody262_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody262_1 : HolLoopProg 64 :=
.mark loopBody262_0

def loopBody262_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody262_3 : HolLoopProg 64 :=
.mark loopBody262_2

def loopBody262_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody262_5 : HolLoopProg 64 :=
.mark loopBody262_4

def loopBody262_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody262_7 : HolLoopProg 64 :=
.mark loopBody262_6

def loopBody262_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody262_9 : HolLoopProg 64 :=
.mark loopBody262_8

def loopBody262_10 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.RegImm.reg 5) loopBody262_9 loopBody262_5 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.ls PUnit.unit))

def loopBody262_11 : HolLoopProg 64 :=
.mark loopBody262_10

def loopBody262_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody262_13 : HolLoopProg 64 :=
.mark loopBody262_12

def loopBody262_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody262_15 : HolLoopProg 64 :=
.mark loopBody262_14

def loopBody262_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 3 3

def loopBody262_17 : HolLoopProg 64 :=
.mark loopBody262_16

def loopBody262_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 3)

def loopBody262_19 : HolLoopProg 64 :=
.mark loopBody262_18

def loopBody262_20 : HolLoopProg 64 :=
.seq loopBody262_19 loopBody262_1

def loopBody262_21 : HolLoopProg 64 :=
.mark loopBody262_20

def loopBody262_22 : HolLoopProg 64 :=
.seq loopBody262_17 loopBody262_21

def loopBody262_23 : HolLoopProg 64 :=
.mark loopBody262_22

def loopBody262_24 : HolLoopProg 64 :=
.seq loopBody262_15 loopBody262_23

def loopBody262_25 : HolLoopProg 64 :=
.mark loopBody262_24

def loopBody262_26 : HolLoopProg 64 :=
.seq loopBody262_25 loopBody262_1

def loopBody262_27 : HolLoopProg 64 :=
.mark loopBody262_26

def loopBody262_28 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody262_27 loopBody262_1 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))

def loopBody262_29 : HolLoopProg 64 :=
.mark loopBody262_28

def loopBody262_30 : HolLoopProg 64 :=
.seq loopBody262_29 loopBody262_1

def loopBody262_31 : HolLoopProg 64 :=
.mark loopBody262_30

def loopBody262_32 : HolLoopProg 64 :=
.seq loopBody262_13 loopBody262_31

def loopBody262_33 : HolLoopProg 64 :=
.mark loopBody262_32

def loopBody262_34 : HolLoopProg 64 :=
.seq loopBody262_11 loopBody262_33

def loopBody262_35 : HolLoopProg 64 :=
.mark loopBody262_34

def loopBody262_36 : HolLoopProg 64 :=
.seq loopBody262_7 loopBody262_35

def loopBody262_37 : HolLoopProg 64 :=
.mark loopBody262_36

def loopBody262_38 : HolLoopProg 64 :=
.seq loopBody262_5 loopBody262_37

def loopBody262_39 : HolLoopProg 64 :=
.mark loopBody262_38

def loopBody262_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 2)

def loopBody262_41 : HolLoopProg 64 :=
.mark loopBody262_40

def loopBody262_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody262_43 : HolLoopProg 64 :=
.mark loopBody262_42

def loopBody262_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 179) [3, 4] none

def loopBody262_45 : HolLoopProg 64 :=
.mark loopBody262_44

def loopBody262_46 : HolLoopProg 64 :=
.seq loopBody262_45 loopBody262_1

def loopBody262_47 : HolLoopProg 64 :=
.mark loopBody262_46

def loopBody262_48 : HolLoopProg 64 :=
.seq loopBody262_43 loopBody262_47

def loopBody262_49 : HolLoopProg 64 :=
.mark loopBody262_48

def loopBody262_50 : HolLoopProg 64 :=
.seq loopBody262_41 loopBody262_49

def loopBody262_51 : HolLoopProg 64 :=
.mark loopBody262_50

def loopBody262_52 : HolLoopProg 64 :=
.seq loopBody262_39 loopBody262_51

def loopBody262_53 : HolLoopProg 64 :=
.mark loopBody262_52

def loopBody262_54 : HolLoopProg 64 :=
.seq loopBody262_3 loopBody262_53

def loopBody262_55 : HolLoopProg 64 :=
.mark loopBody262_54

def loopBody262_56 : HolLoopProg 64 :=
.seq loopBody262_1 loopBody262_55

def loopBody262_57 : HolLoopProg 64 :=
.mark loopBody262_56

def output262 : Nat × List Nat × HolLoopProg 64 :=
  (326, [0, 1], loopBody262_57)
end InitECandidate.Proofs.FrontendStages.Loop
