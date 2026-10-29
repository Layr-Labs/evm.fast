import InitECandidate.Proofs.FrontendStages.Loop.Translate524
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody540_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody540_1 : HolLoopProg 64 :=
.mark loopBody540_0

def loopBody540_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 184#64])

def loopBody540_3 : HolLoopProg 64 :=
.mark loopBody540_2

def loopBody540_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.load
              (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
            Flapjack.HolLoopExp.const 184#64]),
      Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.load
              (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
            Flapjack.HolLoopExp.const 64#64])])

def loopBody540_5 : HolLoopProg 64 :=
.mark loopBody540_4

def loopBody540_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 2)

def loopBody540_7 : HolLoopProg 64 :=
.mark loopBody540_6

def loopBody540_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 1) 3

def loopBody540_9 : HolLoopProg 64 :=
.mark loopBody540_8

def loopBody540_10 : HolLoopProg 64 :=
.seq loopBody540_9 loopBody540_1

def loopBody540_11 : HolLoopProg 64 :=
.mark loopBody540_10

def loopBody540_12 : HolLoopProg 64 :=
.seq loopBody540_7 loopBody540_11

def loopBody540_13 : HolLoopProg 64 :=
.mark loopBody540_12

def loopBody540_14 : HolLoopProg 64 :=
.seq loopBody540_13 loopBody540_1

def loopBody540_15 : HolLoopProg 64 :=
.mark loopBody540_14

def loopBody540_16 : HolLoopProg 64 :=
.seq loopBody540_5 loopBody540_15

def loopBody540_17 : HolLoopProg 64 :=
.mark loopBody540_16

def loopBody540_18 : HolLoopProg 64 :=
.seq loopBody540_1 loopBody540_17

def loopBody540_19 : HolLoopProg 64 :=
.mark loopBody540_18

def loopBody540_20 : HolLoopProg 64 :=
.seq loopBody540_3 loopBody540_19

def loopBody540_21 : HolLoopProg 64 :=
.mark loopBody540_20

def loopBody540_22 : HolLoopProg 64 :=
.seq loopBody540_1 loopBody540_21

def loopBody540_23 : HolLoopProg 64 :=
.mark loopBody540_22

def loopBody540_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 64#64])

def loopBody540_25 : HolLoopProg 64 :=
.mark loopBody540_24

def loopBody540_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody540_27 : HolLoopProg 64 :=
.mark loopBody540_26

def loopBody540_28 : HolLoopProg 64 :=
.seq loopBody540_27 loopBody540_15

def loopBody540_29 : HolLoopProg 64 :=
.mark loopBody540_28

def loopBody540_30 : HolLoopProg 64 :=
.seq loopBody540_1 loopBody540_29

def loopBody540_31 : HolLoopProg 64 :=
.mark loopBody540_30

def loopBody540_32 : HolLoopProg 64 :=
.seq loopBody540_25 loopBody540_31

def loopBody540_33 : HolLoopProg 64 :=
.mark loopBody540_32

def loopBody540_34 : HolLoopProg 64 :=
.seq loopBody540_1 loopBody540_33

def loopBody540_35 : HolLoopProg 64 :=
.mark loopBody540_34

def loopBody540_36 : HolLoopProg 64 :=
.seq loopBody540_23 loopBody540_35

def loopBody540_37 : HolLoopProg 64 :=
.mark loopBody540_36

def loopBody540_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 160#64])

def loopBody540_39 : HolLoopProg 64 :=
.mark loopBody540_38

def loopBody540_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody540_41 : HolLoopProg 64 :=
.mark loopBody540_40

def loopBody540_42 : HolLoopProg 64 :=
.seq loopBody540_41 loopBody540_15

def loopBody540_43 : HolLoopProg 64 :=
.mark loopBody540_42

def loopBody540_44 : HolLoopProg 64 :=
.seq loopBody540_1 loopBody540_43

def loopBody540_45 : HolLoopProg 64 :=
.mark loopBody540_44

def loopBody540_46 : HolLoopProg 64 :=
.seq loopBody540_39 loopBody540_45

def loopBody540_47 : HolLoopProg 64 :=
.mark loopBody540_46

def loopBody540_48 : HolLoopProg 64 :=
.seq loopBody540_1 loopBody540_47

def loopBody540_49 : HolLoopProg 64 :=
.mark loopBody540_48

def loopBody540_50 : HolLoopProg 64 :=
.seq loopBody540_37 loopBody540_49

def loopBody540_51 : HolLoopProg 64 :=
.mark loopBody540_50

def loopBody540_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody540_53 : HolLoopProg 64 :=
.mark loopBody540_52

def loopBody540_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody540_55 : HolLoopProg 64 :=
.mark loopBody540_54

def loopBody540_56 : HolLoopProg 64 :=
.seq loopBody540_55 loopBody540_1

def loopBody540_57 : HolLoopProg 64 :=
.mark loopBody540_56

def loopBody540_58 : HolLoopProg 64 :=
.seq loopBody540_53 loopBody540_57

def loopBody540_59 : HolLoopProg 64 :=
.mark loopBody540_58

def loopBody540_60 : HolLoopProg 64 :=
.seq loopBody540_51 loopBody540_59

def loopBody540_61 : HolLoopProg 64 :=
.mark loopBody540_60

def output540 : Nat × List Nat × HolLoopProg 64 :=
  (604, [0], loopBody540_61)
end InitECandidate.Proofs.FrontendStages.Loop
