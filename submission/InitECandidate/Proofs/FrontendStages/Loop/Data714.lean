import InitECandidate.Proofs.FrontendStages.Loop.Translate698
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody714_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody714_1 : HolLoopProg 64 :=
.mark loopBody714_0

def loopBody714_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody714_3 : HolLoopProg 64 :=
.mark loopBody714_2

def loopBody714_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody714_5 : HolLoopProg 64 :=
.mark loopBody714_4

def loopBody714_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 731) ([2]) (some (2, loopBody714_5, loopBody714_1, (Flapjack.Spt.ls PUnit.unit)))

def loopBody714_7 : HolLoopProg 64 :=
.mark loopBody714_6

def loopBody714_8 : HolLoopProg 64 :=
.seq loopBody714_7 loopBody714_1

def loopBody714_9 : HolLoopProg 64 :=
.mark loopBody714_8

def loopBody714_10 : HolLoopProg 64 :=
.seq loopBody714_3 loopBody714_9

def loopBody714_11 : HolLoopProg 64 :=
.mark loopBody714_10

def loopBody714_12 : HolLoopProg 64 :=
.seq loopBody714_1 loopBody714_11

def loopBody714_13 : HolLoopProg 64 :=
.mark loopBody714_12

def loopBody714_14 : HolLoopProg 64 :=
.seq loopBody714_1 loopBody714_13

def loopBody714_15 : HolLoopProg 64 :=
.mark loopBody714_14

def loopBody714_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 96#64])

def loopBody714_17 : HolLoopProg 64 :=
.mark loopBody714_16

def loopBody714_18 : HolLoopProg 64 :=
.seq loopBody714_17 loopBody714_9

def loopBody714_19 : HolLoopProg 64 :=
.mark loopBody714_18

def loopBody714_20 : HolLoopProg 64 :=
.seq loopBody714_1 loopBody714_19

def loopBody714_21 : HolLoopProg 64 :=
.mark loopBody714_20

def loopBody714_22 : HolLoopProg 64 :=
.seq loopBody714_1 loopBody714_21

def loopBody714_23 : HolLoopProg 64 :=
.mark loopBody714_22

def loopBody714_24 : HolLoopProg 64 :=
.seq loopBody714_15 loopBody714_23

def loopBody714_25 : HolLoopProg 64 :=
.mark loopBody714_24

def loopBody714_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 192#64])

def loopBody714_27 : HolLoopProg 64 :=
.mark loopBody714_26

def loopBody714_28 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 730) ([2]) (some (2, loopBody714_5, loopBody714_1, (Flapjack.Spt.ln)))

def loopBody714_29 : HolLoopProg 64 :=
.mark loopBody714_28

def loopBody714_30 : HolLoopProg 64 :=
.seq loopBody714_29 loopBody714_1

def loopBody714_31 : HolLoopProg 64 :=
.mark loopBody714_30

def loopBody714_32 : HolLoopProg 64 :=
.seq loopBody714_27 loopBody714_31

def loopBody714_33 : HolLoopProg 64 :=
.mark loopBody714_32

def loopBody714_34 : HolLoopProg 64 :=
.seq loopBody714_1 loopBody714_33

def loopBody714_35 : HolLoopProg 64 :=
.mark loopBody714_34

def loopBody714_36 : HolLoopProg 64 :=
.seq loopBody714_1 loopBody714_35

def loopBody714_37 : HolLoopProg 64 :=
.mark loopBody714_36

def loopBody714_38 : HolLoopProg 64 :=
.seq loopBody714_25 loopBody714_37

def loopBody714_39 : HolLoopProg 64 :=
.mark loopBody714_38

def loopBody714_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody714_41 : HolLoopProg 64 :=
.mark loopBody714_40

def loopBody714_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody714_43 : HolLoopProg 64 :=
.mark loopBody714_42

def loopBody714_44 : HolLoopProg 64 :=
.seq loopBody714_43 loopBody714_1

def loopBody714_45 : HolLoopProg 64 :=
.mark loopBody714_44

def loopBody714_46 : HolLoopProg 64 :=
.seq loopBody714_41 loopBody714_45

def loopBody714_47 : HolLoopProg 64 :=
.mark loopBody714_46

def loopBody714_48 : HolLoopProg 64 :=
.seq loopBody714_39 loopBody714_47

def loopBody714_49 : HolLoopProg 64 :=
.mark loopBody714_48

def output714 : Nat × List Nat × HolLoopProg 64 :=
  (778, [0], loopBody714_49)
end InitECandidate.Proofs.FrontendStages.Loop
