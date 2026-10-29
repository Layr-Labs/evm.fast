import InitECandidate.Proofs.FrontendStages.Loop.Translate739
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody755_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 128#64)

def loopBody755_1 : HolLoopProg 64 :=
.mark loopBody755_0

def loopBody755_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody755_3 : HolLoopProg 64 :=
.mark loopBody755_2

def loopBody755_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody755_5 : HolLoopProg 64 :=
.mark loopBody755_4

def loopBody755_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody755_7 : HolLoopProg 64 :=
.mark loopBody755_6

def loopBody755_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.RegImm.reg 3) loopBody755_5 loopBody755_7 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def loopBody755_9 : HolLoopProg 64 :=
.mark loopBody755_8

def loopBody755_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody755_11 : HolLoopProg 64 :=
.mark loopBody755_10

def loopBody755_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 519#64)

def loopBody755_13 : HolLoopProg 64 :=
.mark loopBody755_12

def loopBody755_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody755_15 : HolLoopProg 64 :=
.mark loopBody755_14

def loopBody755_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody755_17 : HolLoopProg 64 :=
.mark loopBody755_16

def loopBody755_18 : HolLoopProg 64 :=
.seq loopBody755_15 loopBody755_17

def loopBody755_19 : HolLoopProg 64 :=
.mark loopBody755_18

def loopBody755_20 : HolLoopProg 64 :=
.seq loopBody755_13 loopBody755_19

def loopBody755_21 : HolLoopProg 64 :=
.mark loopBody755_20

def loopBody755_22 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody755_21 loopBody755_17 (Flapjack.Spt.ls PUnit.unit)

def loopBody755_23 : HolLoopProg 64 :=
.mark loopBody755_22

def loopBody755_24 : HolLoopProg 64 :=
.seq loopBody755_23 loopBody755_17

def loopBody755_25 : HolLoopProg 64 :=
.mark loopBody755_24

def loopBody755_26 : HolLoopProg 64 :=
.seq loopBody755_11 loopBody755_25

def loopBody755_27 : HolLoopProg 64 :=
.mark loopBody755_26

def loopBody755_28 : HolLoopProg 64 :=
.seq loopBody755_9 loopBody755_27

def loopBody755_29 : HolLoopProg 64 :=
.mark loopBody755_28

def loopBody755_30 : HolLoopProg 64 :=
.seq loopBody755_3 loopBody755_29

def loopBody755_31 : HolLoopProg 64 :=
.mark loopBody755_30

def loopBody755_32 : HolLoopProg 64 :=
.seq loopBody755_1 loopBody755_31

def loopBody755_33 : HolLoopProg 64 :=
.mark loopBody755_32

def loopBody755_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 400#64]),
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 1#64])
          (Flapjack.HolLoopExp.const 3#64)]))

def loopBody755_35 : HolLoopProg 64 :=
.mark loopBody755_34

def loopBody755_36 : HolLoopProg 64 :=
.seq loopBody755_35 loopBody755_19

def loopBody755_37 : HolLoopProg 64 :=
.mark loopBody755_36

def loopBody755_38 : HolLoopProg 64 :=
.seq loopBody755_33 loopBody755_37

def loopBody755_39 : HolLoopProg 64 :=
.mark loopBody755_38

def output755 : Nat × List Nat × HolLoopProg 64 :=
  (819, [0], loopBody755_39)
end InitECandidate.Proofs.FrontendStages.Loop
