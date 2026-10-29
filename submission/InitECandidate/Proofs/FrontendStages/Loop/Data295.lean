import InitECandidate.Proofs.FrontendStages.Loop.Translate279
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody295_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody295_1 : HolLoopProg 64 :=
.mark loopBody295_0

def loopBody295_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody295_3 : HolLoopProg 64 :=
.mark loopBody295_2

def loopBody295_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody295_5 : HolLoopProg 64 :=
.mark loopBody295_4

def loopBody295_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody295_7 : HolLoopProg 64 :=
.mark loopBody295_6

def loopBody295_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.RegImm.reg 4) loopBody295_5 loopBody295_7 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody295_9 : HolLoopProg 64 :=
.mark loopBody295_8

def loopBody295_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody295_11 : HolLoopProg 64 :=
.mark loopBody295_10

def loopBody295_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody295_13 : HolLoopProg 64 :=
.mark loopBody295_12

def loopBody295_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 128#64)

def loopBody295_15 : HolLoopProg 64 :=
.mark loopBody295_14

def loopBody295_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 2 3

def loopBody295_17 : HolLoopProg 64 :=
.mark loopBody295_16

def loopBody295_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody295_19 : HolLoopProg 64 :=
.mark loopBody295_18

def loopBody295_20 : HolLoopProg 64 :=
.seq loopBody295_17 loopBody295_19

def loopBody295_21 : HolLoopProg 64 :=
.mark loopBody295_20

def loopBody295_22 : HolLoopProg 64 :=
.seq loopBody295_15 loopBody295_21

def loopBody295_23 : HolLoopProg 64 :=
.mark loopBody295_22

def loopBody295_24 : HolLoopProg 64 :=
.seq loopBody295_13 loopBody295_23

def loopBody295_25 : HolLoopProg 64 :=
.mark loopBody295_24

def loopBody295_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody295_27 : HolLoopProg 64 :=
.mark loopBody295_26

def loopBody295_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody295_29 : HolLoopProg 64 :=
.mark loopBody295_28

def loopBody295_30 : HolLoopProg 64 :=
.seq loopBody295_29 loopBody295_19

def loopBody295_31 : HolLoopProg 64 :=
.mark loopBody295_30

def loopBody295_32 : HolLoopProg 64 :=
.seq loopBody295_27 loopBody295_31

def loopBody295_33 : HolLoopProg 64 :=
.mark loopBody295_32

def loopBody295_34 : HolLoopProg 64 :=
.seq loopBody295_25 loopBody295_33

def loopBody295_35 : HolLoopProg 64 :=
.mark loopBody295_34

def loopBody295_36 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody295_35 loopBody295_19 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody295_37 : HolLoopProg 64 :=
.mark loopBody295_36

def loopBody295_38 : HolLoopProg 64 :=
.seq loopBody295_37 loopBody295_19

def loopBody295_39 : HolLoopProg 64 :=
.mark loopBody295_38

def loopBody295_40 : HolLoopProg 64 :=
.seq loopBody295_11 loopBody295_39

def loopBody295_41 : HolLoopProg 64 :=
.mark loopBody295_40

def loopBody295_42 : HolLoopProg 64 :=
.seq loopBody295_9 loopBody295_41

def loopBody295_43 : HolLoopProg 64 :=
.mark loopBody295_42

def loopBody295_44 : HolLoopProg 64 :=
.seq loopBody295_3 loopBody295_43

def loopBody295_45 : HolLoopProg 64 :=
.mark loopBody295_44

def loopBody295_46 : HolLoopProg 64 :=
.seq loopBody295_1 loopBody295_45

def loopBody295_47 : HolLoopProg 64 :=
.mark loopBody295_46

def loopBody295_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 20#64)

def loopBody295_49 : HolLoopProg 64 :=
.mark loopBody295_48

def loopBody295_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 176) [2, 3, 4] none

def loopBody295_51 : HolLoopProg 64 :=
.mark loopBody295_50

def loopBody295_52 : HolLoopProg 64 :=
.seq loopBody295_51 loopBody295_19

def loopBody295_53 : HolLoopProg 64 :=
.mark loopBody295_52

def loopBody295_54 : HolLoopProg 64 :=
.seq loopBody295_49 loopBody295_53

def loopBody295_55 : HolLoopProg 64 :=
.mark loopBody295_54

def loopBody295_56 : HolLoopProg 64 :=
.seq loopBody295_1 loopBody295_55

def loopBody295_57 : HolLoopProg 64 :=
.mark loopBody295_56

def loopBody295_58 : HolLoopProg 64 :=
.seq loopBody295_13 loopBody295_57

def loopBody295_59 : HolLoopProg 64 :=
.mark loopBody295_58

def loopBody295_60 : HolLoopProg 64 :=
.seq loopBody295_47 loopBody295_59

def loopBody295_61 : HolLoopProg 64 :=
.mark loopBody295_60

def output295 : Nat × List Nat × HolLoopProg 64 :=
  (359, [0, 1], loopBody295_61)
end InitECandidate.Proofs.FrontendStages.Loop
