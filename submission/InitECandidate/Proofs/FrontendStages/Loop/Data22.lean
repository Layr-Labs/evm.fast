import InitECandidate.Proofs.FrontendStages.Loop.Translate6
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody22_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody22_1 : HolLoopProg 64 :=
.mark loopBody22_0

def loopBody22_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody22_3 : HolLoopProg 64 :=
.mark loopBody22_2

def loopBody22_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 2 3

def loopBody22_5 : HolLoopProg 64 :=
.mark loopBody22_4

def loopBody22_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody22_7 : HolLoopProg 64 :=
.mark loopBody22_6

def loopBody22_8 : HolLoopProg 64 :=
.seq loopBody22_5 loopBody22_7

def loopBody22_9 : HolLoopProg 64 :=
.mark loopBody22_8

def loopBody22_10 : HolLoopProg 64 :=
.seq loopBody22_3 loopBody22_9

def loopBody22_11 : HolLoopProg 64 :=
.mark loopBody22_10

def loopBody22_12 : HolLoopProg 64 :=
.seq loopBody22_1 loopBody22_11

def loopBody22_13 : HolLoopProg 64 :=
.mark loopBody22_12

def loopBody22_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 1#64])

def loopBody22_15 : HolLoopProg 64 :=
.mark loopBody22_14

def loopBody22_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 8#64))

def loopBody22_17 : HolLoopProg 64 :=
.mark loopBody22_16

def loopBody22_18 : HolLoopProg 64 :=
.seq loopBody22_17 loopBody22_9

def loopBody22_19 : HolLoopProg 64 :=
.mark loopBody22_18

def loopBody22_20 : HolLoopProg 64 :=
.seq loopBody22_15 loopBody22_19

def loopBody22_21 : HolLoopProg 64 :=
.mark loopBody22_20

def loopBody22_22 : HolLoopProg 64 :=
.seq loopBody22_13 loopBody22_21

def loopBody22_23 : HolLoopProg 64 :=
.mark loopBody22_22

def loopBody22_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 2#64])

def loopBody22_25 : HolLoopProg 64 :=
.mark loopBody22_24

def loopBody22_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 16#64))

def loopBody22_27 : HolLoopProg 64 :=
.mark loopBody22_26

def loopBody22_28 : HolLoopProg 64 :=
.seq loopBody22_27 loopBody22_9

def loopBody22_29 : HolLoopProg 64 :=
.mark loopBody22_28

def loopBody22_30 : HolLoopProg 64 :=
.seq loopBody22_25 loopBody22_29

def loopBody22_31 : HolLoopProg 64 :=
.mark loopBody22_30

def loopBody22_32 : HolLoopProg 64 :=
.seq loopBody22_23 loopBody22_31

def loopBody22_33 : HolLoopProg 64 :=
.mark loopBody22_32

def loopBody22_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 3#64])

def loopBody22_35 : HolLoopProg 64 :=
.mark loopBody22_34

def loopBody22_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 24#64))

def loopBody22_37 : HolLoopProg 64 :=
.mark loopBody22_36

def loopBody22_38 : HolLoopProg 64 :=
.seq loopBody22_37 loopBody22_9

def loopBody22_39 : HolLoopProg 64 :=
.mark loopBody22_38

def loopBody22_40 : HolLoopProg 64 :=
.seq loopBody22_35 loopBody22_39

def loopBody22_41 : HolLoopProg 64 :=
.mark loopBody22_40

def loopBody22_42 : HolLoopProg 64 :=
.seq loopBody22_33 loopBody22_41

def loopBody22_43 : HolLoopProg 64 :=
.mark loopBody22_42

def loopBody22_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody22_45 : HolLoopProg 64 :=
.mark loopBody22_44

def loopBody22_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody22_47 : HolLoopProg 64 :=
.mark loopBody22_46

def loopBody22_48 : HolLoopProg 64 :=
.seq loopBody22_47 loopBody22_7

def loopBody22_49 : HolLoopProg 64 :=
.mark loopBody22_48

def loopBody22_50 : HolLoopProg 64 :=
.seq loopBody22_45 loopBody22_49

def loopBody22_51 : HolLoopProg 64 :=
.mark loopBody22_50

def loopBody22_52 : HolLoopProg 64 :=
.seq loopBody22_43 loopBody22_51

def loopBody22_53 : HolLoopProg 64 :=
.mark loopBody22_52

def output22 : Nat × List Nat × HolLoopProg 64 :=
  (86, [0, 1], loopBody22_53)
end InitECandidate.Proofs.FrontendStages.Loop
