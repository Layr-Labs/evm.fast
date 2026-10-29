import InitECandidate.Proofs.FrontendStages.Loop.Translate626
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody642_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.op Flapjack.BinOp.xor [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 6],
      Flapjack.HolLoopExp.op Flapjack.BinOp.xor [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 7],
      Flapjack.HolLoopExp.op Flapjack.BinOp.xor [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 8],
      Flapjack.HolLoopExp.op Flapjack.BinOp.xor [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.var 9],
      Flapjack.HolLoopExp.op Flapjack.BinOp.xor [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.var 10],
      Flapjack.HolLoopExp.op Flapjack.BinOp.xor [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.var 11]])

def loopBody642_1 : HolLoopProg 64 :=
.mark loopBody642_0

def loopBody642_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 0#64)

def loopBody642_3 : HolLoopProg 64 :=
.mark loopBody642_2

def loopBody642_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 1#64)

def loopBody642_5 : HolLoopProg 64 :=
.mark loopBody642_4

def loopBody642_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 0#64)

def loopBody642_7 : HolLoopProg 64 :=
.mark loopBody642_6

def loopBody642_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 13 (Flapjack.RegImm.reg 14) loopBody642_5 loopBody642_7 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))

def loopBody642_9 : HolLoopProg 64 :=
.mark loopBody642_8

def loopBody642_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 13)

def loopBody642_11 : HolLoopProg 64 :=
.mark loopBody642_10

def loopBody642_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 1#64)

def loopBody642_13 : HolLoopProg 64 :=
.mark loopBody642_12

def loopBody642_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [12]

def loopBody642_15 : HolLoopProg 64 :=
.mark loopBody642_14

def loopBody642_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody642_17 : HolLoopProg 64 :=
.mark loopBody642_16

def loopBody642_18 : HolLoopProg 64 :=
.seq loopBody642_15 loopBody642_17

def loopBody642_19 : HolLoopProg 64 :=
.mark loopBody642_18

def loopBody642_20 : HolLoopProg 64 :=
.seq loopBody642_13 loopBody642_19

def loopBody642_21 : HolLoopProg 64 :=
.mark loopBody642_20

def loopBody642_22 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 15 (Flapjack.RegImm.imm 0#64) loopBody642_21 loopBody642_17 (Flapjack.Spt.ln)

def loopBody642_23 : HolLoopProg 64 :=
.mark loopBody642_22

def loopBody642_24 : HolLoopProg 64 :=
.seq loopBody642_23 loopBody642_17

def loopBody642_25 : HolLoopProg 64 :=
.mark loopBody642_24

def loopBody642_26 : HolLoopProg 64 :=
.seq loopBody642_11 loopBody642_25

def loopBody642_27 : HolLoopProg 64 :=
.mark loopBody642_26

def loopBody642_28 : HolLoopProg 64 :=
.seq loopBody642_9 loopBody642_27

def loopBody642_29 : HolLoopProg 64 :=
.mark loopBody642_28

def loopBody642_30 : HolLoopProg 64 :=
.seq loopBody642_3 loopBody642_29

def loopBody642_31 : HolLoopProg 64 :=
.mark loopBody642_30

def loopBody642_32 : HolLoopProg 64 :=
.seq loopBody642_1 loopBody642_31

def loopBody642_33 : HolLoopProg 64 :=
.mark loopBody642_32

def loopBody642_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 0#64)

def loopBody642_35 : HolLoopProg 64 :=
.mark loopBody642_34

def loopBody642_36 : HolLoopProg 64 :=
.seq loopBody642_35 loopBody642_19

def loopBody642_37 : HolLoopProg 64 :=
.mark loopBody642_36

def loopBody642_38 : HolLoopProg 64 :=
.seq loopBody642_33 loopBody642_37

def loopBody642_39 : HolLoopProg 64 :=
.mark loopBody642_38

def output642 : Nat × List Nat × HolLoopProg 64 :=
  (706, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], loopBody642_39)
end InitECandidate.Proofs.FrontendStages.Loop
