import InitECandidate.Proofs.FrontendStages.Loop.Translate25
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody41_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.op Flapjack.BinOp.xor [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 4],
      Flapjack.HolLoopExp.op Flapjack.BinOp.xor [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 5],
      Flapjack.HolLoopExp.op Flapjack.BinOp.xor [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 6],
      Flapjack.HolLoopExp.op Flapjack.BinOp.xor [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.var 7]])

def loopBody41_1 : HolLoopProg 64 :=
.mark loopBody41_0

def loopBody41_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody41_3 : HolLoopProg 64 :=
.mark loopBody41_2

def loopBody41_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 1#64)

def loopBody41_5 : HolLoopProg 64 :=
.mark loopBody41_4

def loopBody41_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody41_7 : HolLoopProg 64 :=
.mark loopBody41_6

def loopBody41_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 9 (Flapjack.RegImm.reg 10) loopBody41_5 loopBody41_7 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))

def loopBody41_9 : HolLoopProg 64 :=
.mark loopBody41_8

def loopBody41_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 9)

def loopBody41_11 : HolLoopProg 64 :=
.mark loopBody41_10

def loopBody41_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody41_13 : HolLoopProg 64 :=
.mark loopBody41_12

def loopBody41_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [8]

def loopBody41_15 : HolLoopProg 64 :=
.mark loopBody41_14

def loopBody41_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody41_17 : HolLoopProg 64 :=
.mark loopBody41_16

def loopBody41_18 : HolLoopProg 64 :=
.seq loopBody41_15 loopBody41_17

def loopBody41_19 : HolLoopProg 64 :=
.mark loopBody41_18

def loopBody41_20 : HolLoopProg 64 :=
.seq loopBody41_13 loopBody41_19

def loopBody41_21 : HolLoopProg 64 :=
.mark loopBody41_20

def loopBody41_22 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody41_21 loopBody41_17 (Flapjack.Spt.ln)

def loopBody41_23 : HolLoopProg 64 :=
.mark loopBody41_22

def loopBody41_24 : HolLoopProg 64 :=
.seq loopBody41_23 loopBody41_17

def loopBody41_25 : HolLoopProg 64 :=
.mark loopBody41_24

def loopBody41_26 : HolLoopProg 64 :=
.seq loopBody41_11 loopBody41_25

def loopBody41_27 : HolLoopProg 64 :=
.mark loopBody41_26

def loopBody41_28 : HolLoopProg 64 :=
.seq loopBody41_9 loopBody41_27

def loopBody41_29 : HolLoopProg 64 :=
.mark loopBody41_28

def loopBody41_30 : HolLoopProg 64 :=
.seq loopBody41_3 loopBody41_29

def loopBody41_31 : HolLoopProg 64 :=
.mark loopBody41_30

def loopBody41_32 : HolLoopProg 64 :=
.seq loopBody41_1 loopBody41_31

def loopBody41_33 : HolLoopProg 64 :=
.mark loopBody41_32

def loopBody41_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody41_35 : HolLoopProg 64 :=
.mark loopBody41_34

def loopBody41_36 : HolLoopProg 64 :=
.seq loopBody41_35 loopBody41_19

def loopBody41_37 : HolLoopProg 64 :=
.mark loopBody41_36

def loopBody41_38 : HolLoopProg 64 :=
.seq loopBody41_33 loopBody41_37

def loopBody41_39 : HolLoopProg 64 :=
.mark loopBody41_38

def output41 : Nat × List Nat × HolLoopProg 64 :=
  (105, [0, 1, 2, 3, 4, 5, 6, 7], loopBody41_39)
end InitECandidate.Proofs.FrontendStages.Loop
