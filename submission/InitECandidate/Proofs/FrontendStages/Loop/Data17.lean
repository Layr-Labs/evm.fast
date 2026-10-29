import InitECandidate.Proofs.FrontendStages.Loop.Translate1
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody17_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.var 0)

def loopBody17_1 : HolLoopProg 64 :=
.mark loopBody17_0

def loopBody17_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 1 1

def loopBody17_3 : HolLoopProg 64 :=
.mark loopBody17_2

def loopBody17_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 1#64])

def loopBody17_5 : HolLoopProg 64 :=
.mark loopBody17_4

def loopBody17_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 2 2

def loopBody17_7 : HolLoopProg 64 :=
.mark loopBody17_6

def loopBody17_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 2#64])

def loopBody17_9 : HolLoopProg 64 :=
.mark loopBody17_8

def loopBody17_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 3 3

def loopBody17_11 : HolLoopProg 64 :=
.mark loopBody17_10

def loopBody17_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 3#64])

def loopBody17_13 : HolLoopProg 64 :=
.mark loopBody17_12

def loopBody17_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 4 4

def loopBody17_15 : HolLoopProg 64 :=
.mark loopBody17_14

def loopBody17_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.var 1,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 8#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 16#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 24#64)])

def loopBody17_17 : HolLoopProg 64 :=
.mark loopBody17_16

def loopBody17_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody17_19 : HolLoopProg 64 :=
.mark loopBody17_18

def loopBody17_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody17_21 : HolLoopProg 64 :=
.mark loopBody17_20

def loopBody17_22 : HolLoopProg 64 :=
.seq loopBody17_19 loopBody17_21

def loopBody17_23 : HolLoopProg 64 :=
.mark loopBody17_22

def loopBody17_24 : HolLoopProg 64 :=
.seq loopBody17_17 loopBody17_23

def loopBody17_25 : HolLoopProg 64 :=
.mark loopBody17_24

def loopBody17_26 : HolLoopProg 64 :=
.seq loopBody17_15 loopBody17_25

def loopBody17_27 : HolLoopProg 64 :=
.mark loopBody17_26

def loopBody17_28 : HolLoopProg 64 :=
.seq loopBody17_13 loopBody17_27

def loopBody17_29 : HolLoopProg 64 :=
.mark loopBody17_28

def loopBody17_30 : HolLoopProg 64 :=
.seq loopBody17_11 loopBody17_29

def loopBody17_31 : HolLoopProg 64 :=
.mark loopBody17_30

def loopBody17_32 : HolLoopProg 64 :=
.seq loopBody17_9 loopBody17_31

def loopBody17_33 : HolLoopProg 64 :=
.mark loopBody17_32

def loopBody17_34 : HolLoopProg 64 :=
.seq loopBody17_7 loopBody17_33

def loopBody17_35 : HolLoopProg 64 :=
.mark loopBody17_34

def loopBody17_36 : HolLoopProg 64 :=
.seq loopBody17_5 loopBody17_35

def loopBody17_37 : HolLoopProg 64 :=
.mark loopBody17_36

def loopBody17_38 : HolLoopProg 64 :=
.seq loopBody17_3 loopBody17_37

def loopBody17_39 : HolLoopProg 64 :=
.mark loopBody17_38

def loopBody17_40 : HolLoopProg 64 :=
.seq loopBody17_1 loopBody17_39

def loopBody17_41 : HolLoopProg 64 :=
.mark loopBody17_40

def output17 : Nat × List Nat × HolLoopProg 64 :=
  (81, [0], loopBody17_41)
end InitECandidate.Proofs.FrontendStages.Loop
