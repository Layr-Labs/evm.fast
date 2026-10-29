import InitECandidate.Proofs.FrontendStages.Loop.Translate3
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody19_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.var 0)

def loopBody19_1 : HolLoopProg 64 :=
.mark loopBody19_0

def loopBody19_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 1 1

def loopBody19_3 : HolLoopProg 64 :=
.mark loopBody19_2

def loopBody19_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 1#64])

def loopBody19_5 : HolLoopProg 64 :=
.mark loopBody19_4

def loopBody19_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 2 2

def loopBody19_7 : HolLoopProg 64 :=
.mark loopBody19_6

def loopBody19_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 2#64])

def loopBody19_9 : HolLoopProg 64 :=
.mark loopBody19_8

def loopBody19_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 3 3

def loopBody19_11 : HolLoopProg 64 :=
.mark loopBody19_10

def loopBody19_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 3#64])

def loopBody19_13 : HolLoopProg 64 :=
.mark loopBody19_12

def loopBody19_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 4 4

def loopBody19_15 : HolLoopProg 64 :=
.mark loopBody19_14

def loopBody19_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 24#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 16#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 8#64),
      Flapjack.HolLoopExp.var 4])

def loopBody19_17 : HolLoopProg 64 :=
.mark loopBody19_16

def loopBody19_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody19_19 : HolLoopProg 64 :=
.mark loopBody19_18

def loopBody19_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody19_21 : HolLoopProg 64 :=
.mark loopBody19_20

def loopBody19_22 : HolLoopProg 64 :=
.seq loopBody19_19 loopBody19_21

def loopBody19_23 : HolLoopProg 64 :=
.mark loopBody19_22

def loopBody19_24 : HolLoopProg 64 :=
.seq loopBody19_17 loopBody19_23

def loopBody19_25 : HolLoopProg 64 :=
.mark loopBody19_24

def loopBody19_26 : HolLoopProg 64 :=
.seq loopBody19_15 loopBody19_25

def loopBody19_27 : HolLoopProg 64 :=
.mark loopBody19_26

def loopBody19_28 : HolLoopProg 64 :=
.seq loopBody19_13 loopBody19_27

def loopBody19_29 : HolLoopProg 64 :=
.mark loopBody19_28

def loopBody19_30 : HolLoopProg 64 :=
.seq loopBody19_11 loopBody19_29

def loopBody19_31 : HolLoopProg 64 :=
.mark loopBody19_30

def loopBody19_32 : HolLoopProg 64 :=
.seq loopBody19_9 loopBody19_31

def loopBody19_33 : HolLoopProg 64 :=
.mark loopBody19_32

def loopBody19_34 : HolLoopProg 64 :=
.seq loopBody19_7 loopBody19_33

def loopBody19_35 : HolLoopProg 64 :=
.mark loopBody19_34

def loopBody19_36 : HolLoopProg 64 :=
.seq loopBody19_5 loopBody19_35

def loopBody19_37 : HolLoopProg 64 :=
.mark loopBody19_36

def loopBody19_38 : HolLoopProg 64 :=
.seq loopBody19_3 loopBody19_37

def loopBody19_39 : HolLoopProg 64 :=
.mark loopBody19_38

def loopBody19_40 : HolLoopProg 64 :=
.seq loopBody19_1 loopBody19_39

def loopBody19_41 : HolLoopProg 64 :=
.mark loopBody19_40

def output19 : Nat × List Nat × HolLoopProg 64 :=
  (83, [0], loopBody19_41)
end InitECandidate.Proofs.FrontendStages.Loop
