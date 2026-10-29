import InitECandidate.Proofs.FrontendStages.Loop.Translate219
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody235_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody235_1 : HolLoopProg 64 :=
.mark loopBody235_0

def loopBody235_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64])

def loopBody235_3 : HolLoopProg 64 :=
.mark loopBody235_2

def loopBody235_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody235_5 : HolLoopProg 64 :=
.mark loopBody235_4

def loopBody235_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 2)

def loopBody235_7 : HolLoopProg 64 :=
.mark loopBody235_6

def loopBody235_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 1) 3

def loopBody235_9 : HolLoopProg 64 :=
.mark loopBody235_8

def loopBody235_10 : HolLoopProg 64 :=
.seq loopBody235_9 loopBody235_1

def loopBody235_11 : HolLoopProg 64 :=
.mark loopBody235_10

def loopBody235_12 : HolLoopProg 64 :=
.seq loopBody235_7 loopBody235_11

def loopBody235_13 : HolLoopProg 64 :=
.mark loopBody235_12

def loopBody235_14 : HolLoopProg 64 :=
.seq loopBody235_13 loopBody235_1

def loopBody235_15 : HolLoopProg 64 :=
.mark loopBody235_14

def loopBody235_16 : HolLoopProg 64 :=
.seq loopBody235_5 loopBody235_15

def loopBody235_17 : HolLoopProg 64 :=
.mark loopBody235_16

def loopBody235_18 : HolLoopProg 64 :=
.seq loopBody235_1 loopBody235_17

def loopBody235_19 : HolLoopProg 64 :=
.mark loopBody235_18

def loopBody235_20 : HolLoopProg 64 :=
.seq loopBody235_3 loopBody235_19

def loopBody235_21 : HolLoopProg 64 :=
.mark loopBody235_20

def loopBody235_22 : HolLoopProg 64 :=
.seq loopBody235_1 loopBody235_21

def loopBody235_23 : HolLoopProg 64 :=
.mark loopBody235_22

def loopBody235_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 16#64])

def loopBody235_25 : HolLoopProg 64 :=
.mark loopBody235_24

def loopBody235_26 : HolLoopProg 64 :=
.seq loopBody235_25 loopBody235_19

def loopBody235_27 : HolLoopProg 64 :=
.mark loopBody235_26

def loopBody235_28 : HolLoopProg 64 :=
.seq loopBody235_1 loopBody235_27

def loopBody235_29 : HolLoopProg 64 :=
.mark loopBody235_28

def loopBody235_30 : HolLoopProg 64 :=
.seq loopBody235_23 loopBody235_29

def loopBody235_31 : HolLoopProg 64 :=
.mark loopBody235_30

def loopBody235_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 24#64])

def loopBody235_33 : HolLoopProg 64 :=
.mark loopBody235_32

def loopBody235_34 : HolLoopProg 64 :=
.seq loopBody235_33 loopBody235_19

def loopBody235_35 : HolLoopProg 64 :=
.mark loopBody235_34

def loopBody235_36 : HolLoopProg 64 :=
.seq loopBody235_1 loopBody235_35

def loopBody235_37 : HolLoopProg 64 :=
.mark loopBody235_36

def loopBody235_38 : HolLoopProg 64 :=
.seq loopBody235_31 loopBody235_37

def loopBody235_39 : HolLoopProg 64 :=
.mark loopBody235_38

def loopBody235_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody235_41 : HolLoopProg 64 :=
.mark loopBody235_40

def loopBody235_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody235_43 : HolLoopProg 64 :=
.mark loopBody235_42

def loopBody235_44 : HolLoopProg 64 :=
.seq loopBody235_43 loopBody235_1

def loopBody235_45 : HolLoopProg 64 :=
.mark loopBody235_44

def loopBody235_46 : HolLoopProg 64 :=
.seq loopBody235_41 loopBody235_45

def loopBody235_47 : HolLoopProg 64 :=
.mark loopBody235_46

def loopBody235_48 : HolLoopProg 64 :=
.seq loopBody235_39 loopBody235_47

def loopBody235_49 : HolLoopProg 64 :=
.mark loopBody235_48

def output235 : Nat × List Nat × HolLoopProg 64 :=
  (299, [0], loopBody235_49)
end InitECandidate.Proofs.FrontendStages.Loop
