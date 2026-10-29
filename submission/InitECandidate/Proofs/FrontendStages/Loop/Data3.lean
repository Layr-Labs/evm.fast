import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody3_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody3_1 : HolLoopProg 64 :=
.mark loopBody3_0

def loopBody3_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 8#64])

def loopBody3_3 : HolLoopProg 64 :=
.mark loopBody3_2

def loopBody3_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 Flapjack.HolLoopExp.baseAddr

def loopBody3_5 : HolLoopProg 64 :=
.mark loopBody3_4

def loopBody3_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 2)

def loopBody3_7 : HolLoopProg 64 :=
.mark loopBody3_6

def loopBody3_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 1) 3

def loopBody3_9 : HolLoopProg 64 :=
.mark loopBody3_8

def loopBody3_10 : HolLoopProg 64 :=
.seq loopBody3_9 loopBody3_1

def loopBody3_11 : HolLoopProg 64 :=
.mark loopBody3_10

def loopBody3_12 : HolLoopProg 64 :=
.seq loopBody3_7 loopBody3_11

def loopBody3_13 : HolLoopProg 64 :=
.mark loopBody3_12

def loopBody3_14 : HolLoopProg 64 :=
.seq loopBody3_13 loopBody3_1

def loopBody3_15 : HolLoopProg 64 :=
.mark loopBody3_14

def loopBody3_16 : HolLoopProg 64 :=
.seq loopBody3_5 loopBody3_15

def loopBody3_17 : HolLoopProg 64 :=
.mark loopBody3_16

def loopBody3_18 : HolLoopProg 64 :=
.seq loopBody3_1 loopBody3_17

def loopBody3_19 : HolLoopProg 64 :=
.mark loopBody3_18

def loopBody3_20 : HolLoopProg 64 :=
.seq loopBody3_3 loopBody3_19

def loopBody3_21 : HolLoopProg 64 :=
.mark loopBody3_20

def loopBody3_22 : HolLoopProg 64 :=
.seq loopBody3_1 loopBody3_21

def loopBody3_23 : HolLoopProg 64 :=
.mark loopBody3_22

def loopBody3_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 24#64])

def loopBody3_25 : HolLoopProg 64 :=
.mark loopBody3_24

def loopBody3_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 2965299200#64)

def loopBody3_27 : HolLoopProg 64 :=
.mark loopBody3_26

def loopBody3_28 : HolLoopProg 64 :=
.seq loopBody3_27 loopBody3_15

def loopBody3_29 : HolLoopProg 64 :=
.mark loopBody3_28

def loopBody3_30 : HolLoopProg 64 :=
.seq loopBody3_1 loopBody3_29

def loopBody3_31 : HolLoopProg 64 :=
.mark loopBody3_30

def loopBody3_32 : HolLoopProg 64 :=
.seq loopBody3_25 loopBody3_31

def loopBody3_33 : HolLoopProg 64 :=
.mark loopBody3_32

def loopBody3_34 : HolLoopProg 64 :=
.seq loopBody3_1 loopBody3_33

def loopBody3_35 : HolLoopProg 64 :=
.mark loopBody3_34

def loopBody3_36 : HolLoopProg 64 :=
.seq loopBody3_23 loopBody3_35

def loopBody3_37 : HolLoopProg 64 :=
.mark loopBody3_36

def loopBody3_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 32#64])

def loopBody3_39 : HolLoopProg 64 :=
.mark loopBody3_38

def loopBody3_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 2952790016#64)

def loopBody3_41 : HolLoopProg 64 :=
.mark loopBody3_40

def loopBody3_42 : HolLoopProg 64 :=
.seq loopBody3_41 loopBody3_15

def loopBody3_43 : HolLoopProg 64 :=
.mark loopBody3_42

def loopBody3_44 : HolLoopProg 64 :=
.seq loopBody3_1 loopBody3_43

def loopBody3_45 : HolLoopProg 64 :=
.mark loopBody3_44

def loopBody3_46 : HolLoopProg 64 :=
.seq loopBody3_39 loopBody3_45

def loopBody3_47 : HolLoopProg 64 :=
.mark loopBody3_46

def loopBody3_48 : HolLoopProg 64 :=
.seq loopBody3_1 loopBody3_47

def loopBody3_49 : HolLoopProg 64 :=
.mark loopBody3_48

def loopBody3_50 : HolLoopProg 64 :=
.seq loopBody3_37 loopBody3_49

def loopBody3_51 : HolLoopProg 64 :=
.mark loopBody3_50

def loopBody3_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody3_53 : HolLoopProg 64 :=
.mark loopBody3_52

def loopBody3_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody3_55 : HolLoopProg 64 :=
.mark loopBody3_54

def loopBody3_56 : HolLoopProg 64 :=
.seq loopBody3_55 loopBody3_1

def loopBody3_57 : HolLoopProg 64 :=
.mark loopBody3_56

def loopBody3_58 : HolLoopProg 64 :=
.seq loopBody3_53 loopBody3_57

def loopBody3_59 : HolLoopProg 64 :=
.mark loopBody3_58

def loopBody3_60 : HolLoopProg 64 :=
.seq loopBody3_51 loopBody3_59

def loopBody3_61 : HolLoopProg 64 :=
.mark loopBody3_60

def output3 : Nat × List Nat × HolLoopProg 64 :=
  (67, [], loopBody3_61)
end InitECandidate.Proofs.FrontendStages.Loop
