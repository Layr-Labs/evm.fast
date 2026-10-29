import InitECandidate.Proofs.FrontendStages.Loop.Translate520
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody536_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 160#64]))

def loopBody536_1 : HolLoopProg 64 :=
.mark loopBody536_0

def loopBody536_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody536_3 : HolLoopProg 64 :=
.mark loopBody536_2

def loopBody536_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody536_5 : HolLoopProg 64 :=
.mark loopBody536_4

def loopBody536_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody536_7 : HolLoopProg 64 :=
.mark loopBody536_6

def loopBody536_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.RegImm.reg 3) loopBody536_5 loopBody536_7 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)

def loopBody536_9 : HolLoopProg 64 :=
.mark loopBody536_8

def loopBody536_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody536_11 : HolLoopProg 64 :=
.mark loopBody536_10

def loopBody536_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody536_13 : HolLoopProg 64 :=
.mark loopBody536_12

def loopBody536_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 288#64]),
        Flapjack.HolLoopExp.const 24#64]))

def loopBody536_15 : HolLoopProg 64 :=
.mark loopBody536_14

def loopBody536_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody536_17 : HolLoopProg 64 :=
.mark loopBody536_16

def loopBody536_18 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 391) ([2]) (some (2, loopBody536_17, loopBody536_13, (Flapjack.Spt.ln)))

def loopBody536_19 : HolLoopProg 64 :=
.mark loopBody536_18

def loopBody536_20 : HolLoopProg 64 :=
.seq loopBody536_19 loopBody536_13

def loopBody536_21 : HolLoopProg 64 :=
.mark loopBody536_20

def loopBody536_22 : HolLoopProg 64 :=
.seq loopBody536_15 loopBody536_21

def loopBody536_23 : HolLoopProg 64 :=
.mark loopBody536_22

def loopBody536_24 : HolLoopProg 64 :=
.seq loopBody536_13 loopBody536_23

def loopBody536_25 : HolLoopProg 64 :=
.mark loopBody536_24

def loopBody536_26 : HolLoopProg 64 :=
.seq loopBody536_13 loopBody536_25

def loopBody536_27 : HolLoopProg 64 :=
.mark loopBody536_26

def loopBody536_28 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody536_27 loopBody536_13 (Flapjack.Spt.ln)

def loopBody536_29 : HolLoopProg 64 :=
.mark loopBody536_28

def loopBody536_30 : HolLoopProg 64 :=
.seq loopBody536_29 loopBody536_13

def loopBody536_31 : HolLoopProg 64 :=
.mark loopBody536_30

def loopBody536_32 : HolLoopProg 64 :=
.seq loopBody536_11 loopBody536_31

def loopBody536_33 : HolLoopProg 64 :=
.mark loopBody536_32

def loopBody536_34 : HolLoopProg 64 :=
.seq loopBody536_9 loopBody536_33

def loopBody536_35 : HolLoopProg 64 :=
.mark loopBody536_34

def loopBody536_36 : HolLoopProg 64 :=
.seq loopBody536_3 loopBody536_35

def loopBody536_37 : HolLoopProg 64 :=
.mark loopBody536_36

def loopBody536_38 : HolLoopProg 64 :=
.seq loopBody536_1 loopBody536_37

def loopBody536_39 : HolLoopProg 64 :=
.mark loopBody536_38

def loopBody536_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody536_41 : HolLoopProg 64 :=
.mark loopBody536_40

def loopBody536_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody536_43 : HolLoopProg 64 :=
.mark loopBody536_42

def loopBody536_44 : HolLoopProg 64 :=
.seq loopBody536_43 loopBody536_13

def loopBody536_45 : HolLoopProg 64 :=
.mark loopBody536_44

def loopBody536_46 : HolLoopProg 64 :=
.seq loopBody536_41 loopBody536_45

def loopBody536_47 : HolLoopProg 64 :=
.mark loopBody536_46

def loopBody536_48 : HolLoopProg 64 :=
.seq loopBody536_39 loopBody536_47

def loopBody536_49 : HolLoopProg 64 :=
.mark loopBody536_48

def output536 : Nat × List Nat × HolLoopProg 64 :=
  (600, [], loopBody536_49)
end InitECandidate.Proofs.FrontendStages.Loop
