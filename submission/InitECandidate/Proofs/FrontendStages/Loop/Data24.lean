import InitECandidate.Proofs.FrontendStages.Loop.Translate8
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody24_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody24_1 : HolLoopProg 64 :=
.mark loopBody24_0

def loopBody24_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 24#64))

def loopBody24_3 : HolLoopProg 64 :=
.mark loopBody24_2

def loopBody24_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 2 3

def loopBody24_5 : HolLoopProg 64 :=
.mark loopBody24_4

def loopBody24_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody24_7 : HolLoopProg 64 :=
.mark loopBody24_6

def loopBody24_8 : HolLoopProg 64 :=
.seq loopBody24_5 loopBody24_7

def loopBody24_9 : HolLoopProg 64 :=
.mark loopBody24_8

def loopBody24_10 : HolLoopProg 64 :=
.seq loopBody24_3 loopBody24_9

def loopBody24_11 : HolLoopProg 64 :=
.mark loopBody24_10

def loopBody24_12 : HolLoopProg 64 :=
.seq loopBody24_1 loopBody24_11

def loopBody24_13 : HolLoopProg 64 :=
.mark loopBody24_12

def loopBody24_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 1#64])

def loopBody24_15 : HolLoopProg 64 :=
.mark loopBody24_14

def loopBody24_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 16#64))

def loopBody24_17 : HolLoopProg 64 :=
.mark loopBody24_16

def loopBody24_18 : HolLoopProg 64 :=
.seq loopBody24_17 loopBody24_9

def loopBody24_19 : HolLoopProg 64 :=
.mark loopBody24_18

def loopBody24_20 : HolLoopProg 64 :=
.seq loopBody24_15 loopBody24_19

def loopBody24_21 : HolLoopProg 64 :=
.mark loopBody24_20

def loopBody24_22 : HolLoopProg 64 :=
.seq loopBody24_13 loopBody24_21

def loopBody24_23 : HolLoopProg 64 :=
.mark loopBody24_22

def loopBody24_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 2#64])

def loopBody24_25 : HolLoopProg 64 :=
.mark loopBody24_24

def loopBody24_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 8#64))

def loopBody24_27 : HolLoopProg 64 :=
.mark loopBody24_26

def loopBody24_28 : HolLoopProg 64 :=
.seq loopBody24_27 loopBody24_9

def loopBody24_29 : HolLoopProg 64 :=
.mark loopBody24_28

def loopBody24_30 : HolLoopProg 64 :=
.seq loopBody24_25 loopBody24_29

def loopBody24_31 : HolLoopProg 64 :=
.mark loopBody24_30

def loopBody24_32 : HolLoopProg 64 :=
.seq loopBody24_23 loopBody24_31

def loopBody24_33 : HolLoopProg 64 :=
.mark loopBody24_32

def loopBody24_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 3#64])

def loopBody24_35 : HolLoopProg 64 :=
.mark loopBody24_34

def loopBody24_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody24_37 : HolLoopProg 64 :=
.mark loopBody24_36

def loopBody24_38 : HolLoopProg 64 :=
.seq loopBody24_37 loopBody24_9

def loopBody24_39 : HolLoopProg 64 :=
.mark loopBody24_38

def loopBody24_40 : HolLoopProg 64 :=
.seq loopBody24_35 loopBody24_39

def loopBody24_41 : HolLoopProg 64 :=
.mark loopBody24_40

def loopBody24_42 : HolLoopProg 64 :=
.seq loopBody24_33 loopBody24_41

def loopBody24_43 : HolLoopProg 64 :=
.mark loopBody24_42

def loopBody24_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody24_45 : HolLoopProg 64 :=
.mark loopBody24_44

def loopBody24_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody24_47 : HolLoopProg 64 :=
.mark loopBody24_46

def loopBody24_48 : HolLoopProg 64 :=
.seq loopBody24_47 loopBody24_7

def loopBody24_49 : HolLoopProg 64 :=
.mark loopBody24_48

def loopBody24_50 : HolLoopProg 64 :=
.seq loopBody24_45 loopBody24_49

def loopBody24_51 : HolLoopProg 64 :=
.mark loopBody24_50

def loopBody24_52 : HolLoopProg 64 :=
.seq loopBody24_43 loopBody24_51

def loopBody24_53 : HolLoopProg 64 :=
.mark loopBody24_52

def output24 : Nat × List Nat × HolLoopProg 64 :=
  (88, [0, 1], loopBody24_53)
end InitECandidate.Proofs.FrontendStages.Loop
