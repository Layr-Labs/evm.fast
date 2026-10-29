import InitECandidate.Proofs.FrontendStages.Loop.Translate382
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody398_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 3])

def loopBody398_1 : HolLoopProg 64 :=
.mark loopBody398_0

def loopBody398_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody398_3 : HolLoopProg 64 :=
.mark loopBody398_2

def loopBody398_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody398_5 : HolLoopProg 64 :=
.mark loopBody398_4

def loopBody398_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody398_7 : HolLoopProg 64 :=
.mark loopBody398_6

def loopBody398_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.reg 6) loopBody398_5 loopBody398_7 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))

def loopBody398_9 : HolLoopProg 64 :=
.mark loopBody398_8

def loopBody398_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody398_11 : HolLoopProg 64 :=
.mark loopBody398_10

def loopBody398_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 18446744073709551615#64)

def loopBody398_13 : HolLoopProg 64 :=
.mark loopBody398_12

def loopBody398_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody398_15 : HolLoopProg 64 :=
.mark loopBody398_14

def loopBody398_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody398_17 : HolLoopProg 64 :=
.mark loopBody398_16

def loopBody398_18 : HolLoopProg 64 :=
.seq loopBody398_15 loopBody398_17

def loopBody398_19 : HolLoopProg 64 :=
.mark loopBody398_18

def loopBody398_20 : HolLoopProg 64 :=
.seq loopBody398_13 loopBody398_19

def loopBody398_21 : HolLoopProg 64 :=
.mark loopBody398_20

def loopBody398_22 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody398_21 loopBody398_17 (Flapjack.Spt.ls PUnit.unit)

def loopBody398_23 : HolLoopProg 64 :=
.mark loopBody398_22

def loopBody398_24 : HolLoopProg 64 :=
.seq loopBody398_23 loopBody398_17

def loopBody398_25 : HolLoopProg 64 :=
.mark loopBody398_24

def loopBody398_26 : HolLoopProg 64 :=
.seq loopBody398_11 loopBody398_25

def loopBody398_27 : HolLoopProg 64 :=
.mark loopBody398_26

def loopBody398_28 : HolLoopProg 64 :=
.seq loopBody398_9 loopBody398_27

def loopBody398_29 : HolLoopProg 64 :=
.mark loopBody398_28

def loopBody398_30 : HolLoopProg 64 :=
.seq loopBody398_3 loopBody398_29

def loopBody398_31 : HolLoopProg 64 :=
.mark loopBody398_30

def loopBody398_32 : HolLoopProg 64 :=
.seq loopBody398_1 loopBody398_31

def loopBody398_33 : HolLoopProg 64 :=
.mark loopBody398_32

def loopBody398_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody398_35 : HolLoopProg 64 :=
.mark loopBody398_34

def loopBody398_36 : HolLoopProg 64 :=
.seq loopBody398_35 loopBody398_19

def loopBody398_37 : HolLoopProg 64 :=
.mark loopBody398_36

def loopBody398_38 : HolLoopProg 64 :=
.seq loopBody398_33 loopBody398_37

def loopBody398_39 : HolLoopProg 64 :=
.mark loopBody398_38

def output398 : Nat × List Nat × HolLoopProg 64 :=
  (462, [0, 1, 2, 3], loopBody398_39)
end InitECandidate.Proofs.FrontendStages.Loop
