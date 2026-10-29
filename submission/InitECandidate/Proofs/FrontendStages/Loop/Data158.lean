import InitECandidate.Proofs.FrontendStages.Loop.Translate142
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody158_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody158_1 : HolLoopProg 64 :=
.mark loopBody158_0

def loopBody158_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 64#64]))

def loopBody158_3 : HolLoopProg 64 :=
.mark loopBody158_2

def loopBody158_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 64#64],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody158_5 : HolLoopProg 64 :=
.mark loopBody158_4

def loopBody158_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 64#64],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody158_7 : HolLoopProg 64 :=
.mark loopBody158_6

def loopBody158_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 64#64],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody158_9 : HolLoopProg 64 :=
.mark loopBody158_8

def loopBody158_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody158_11 : HolLoopProg 64 :=
.mark loopBody158_10

def loopBody158_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody158_13 : HolLoopProg 64 :=
.mark loopBody158_12

def loopBody158_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody158_15 : HolLoopProg 64 :=
.mark loopBody158_14

def loopBody158_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 4)

def loopBody158_17 : HolLoopProg 64 :=
.mark loopBody158_16

def loopBody158_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 102) [5, 6, 7, 8] none

def loopBody158_19 : HolLoopProg 64 :=
.mark loopBody158_18

def loopBody158_20 : HolLoopProg 64 :=
.seq loopBody158_19 loopBody158_1

def loopBody158_21 : HolLoopProg 64 :=
.mark loopBody158_20

def loopBody158_22 : HolLoopProg 64 :=
.seq loopBody158_17 loopBody158_21

def loopBody158_23 : HolLoopProg 64 :=
.mark loopBody158_22

def loopBody158_24 : HolLoopProg 64 :=
.seq loopBody158_15 loopBody158_23

def loopBody158_25 : HolLoopProg 64 :=
.mark loopBody158_24

def loopBody158_26 : HolLoopProg 64 :=
.seq loopBody158_13 loopBody158_25

def loopBody158_27 : HolLoopProg 64 :=
.mark loopBody158_26

def loopBody158_28 : HolLoopProg 64 :=
.seq loopBody158_11 loopBody158_27

def loopBody158_29 : HolLoopProg 64 :=
.mark loopBody158_28

def loopBody158_30 : HolLoopProg 64 :=
.seq loopBody158_9 loopBody158_29

def loopBody158_31 : HolLoopProg 64 :=
.mark loopBody158_30

def loopBody158_32 : HolLoopProg 64 :=
.seq loopBody158_1 loopBody158_31

def loopBody158_33 : HolLoopProg 64 :=
.mark loopBody158_32

def loopBody158_34 : HolLoopProg 64 :=
.seq loopBody158_7 loopBody158_33

def loopBody158_35 : HolLoopProg 64 :=
.mark loopBody158_34

def loopBody158_36 : HolLoopProg 64 :=
.seq loopBody158_1 loopBody158_35

def loopBody158_37 : HolLoopProg 64 :=
.mark loopBody158_36

def loopBody158_38 : HolLoopProg 64 :=
.seq loopBody158_5 loopBody158_37

def loopBody158_39 : HolLoopProg 64 :=
.mark loopBody158_38

def loopBody158_40 : HolLoopProg 64 :=
.seq loopBody158_1 loopBody158_39

def loopBody158_41 : HolLoopProg 64 :=
.mark loopBody158_40

def loopBody158_42 : HolLoopProg 64 :=
.seq loopBody158_3 loopBody158_41

def loopBody158_43 : HolLoopProg 64 :=
.mark loopBody158_42

def loopBody158_44 : HolLoopProg 64 :=
.seq loopBody158_1 loopBody158_43

def loopBody158_45 : HolLoopProg 64 :=
.mark loopBody158_44

def output158 : Nat × List Nat × HolLoopProg 64 :=
  (222, [0], loopBody158_45)
end InitECandidate.Proofs.FrontendStages.Loop
