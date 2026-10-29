import InitECandidate.Proofs.FrontendStages.Loop.Translate740
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody756_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 128#64)

def loopBody756_1 : HolLoopProg 64 :=
.mark loopBody756_0

def loopBody756_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody756_3 : HolLoopProg 64 :=
.mark loopBody756_2

def loopBody756_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody756_5 : HolLoopProg 64 :=
.mark loopBody756_4

def loopBody756_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody756_7 : HolLoopProg 64 :=
.mark loopBody756_6

def loopBody756_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.RegImm.reg 3) loopBody756_5 loopBody756_7 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def loopBody756_9 : HolLoopProg 64 :=
.mark loopBody756_8

def loopBody756_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody756_11 : HolLoopProg 64 :=
.mark loopBody756_10

def loopBody756_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 524#64)

def loopBody756_13 : HolLoopProg 64 :=
.mark loopBody756_12

def loopBody756_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody756_15 : HolLoopProg 64 :=
.mark loopBody756_14

def loopBody756_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody756_17 : HolLoopProg 64 :=
.mark loopBody756_16

def loopBody756_18 : HolLoopProg 64 :=
.seq loopBody756_15 loopBody756_17

def loopBody756_19 : HolLoopProg 64 :=
.mark loopBody756_18

def loopBody756_20 : HolLoopProg 64 :=
.seq loopBody756_13 loopBody756_19

def loopBody756_21 : HolLoopProg 64 :=
.mark loopBody756_20

def loopBody756_22 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody756_21 loopBody756_17 (Flapjack.Spt.ls PUnit.unit)

def loopBody756_23 : HolLoopProg 64 :=
.mark loopBody756_22

def loopBody756_24 : HolLoopProg 64 :=
.seq loopBody756_23 loopBody756_17

def loopBody756_25 : HolLoopProg 64 :=
.mark loopBody756_24

def loopBody756_26 : HolLoopProg 64 :=
.seq loopBody756_11 loopBody756_25

def loopBody756_27 : HolLoopProg 64 :=
.mark loopBody756_26

def loopBody756_28 : HolLoopProg 64 :=
.seq loopBody756_9 loopBody756_27

def loopBody756_29 : HolLoopProg 64 :=
.mark loopBody756_28

def loopBody756_30 : HolLoopProg 64 :=
.seq loopBody756_3 loopBody756_29

def loopBody756_31 : HolLoopProg 64 :=
.mark loopBody756_30

def loopBody756_32 : HolLoopProg 64 :=
.seq loopBody756_1 loopBody756_31

def loopBody756_33 : HolLoopProg 64 :=
.mark loopBody756_32

def loopBody756_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 400#64]),
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
            [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.const 128#64, Flapjack.HolLoopExp.var 0],
              Flapjack.HolLoopExp.const 1#64])
          (Flapjack.HolLoopExp.const 3#64)]))

def loopBody756_35 : HolLoopProg 64 :=
.mark loopBody756_34

def loopBody756_36 : HolLoopProg 64 :=
.seq loopBody756_35 loopBody756_19

def loopBody756_37 : HolLoopProg 64 :=
.mark loopBody756_36

def loopBody756_38 : HolLoopProg 64 :=
.seq loopBody756_33 loopBody756_37

def loopBody756_39 : HolLoopProg 64 :=
.mark loopBody756_38

def output756 : Nat × List Nat × HolLoopProg 64 :=
  (820, [0], loopBody756_39)
end InitECandidate.Proofs.FrontendStages.Loop
