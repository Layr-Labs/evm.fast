import InitECandidate.Proofs.FrontendStages.Loop.Translate529
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody545_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody545_1 : HolLoopProg 64 :=
.mark loopBody545_0

def loopBody545_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 64#64])

def loopBody545_3 : HolLoopProg 64 :=
.mark loopBody545_2

def loopBody545_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.load
              (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
            Flapjack.HolLoopExp.const 64#64]),
      Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 64#64])])

def loopBody545_5 : HolLoopProg 64 :=
.mark loopBody545_4

def loopBody545_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 2)

def loopBody545_7 : HolLoopProg 64 :=
.mark loopBody545_6

def loopBody545_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 1) 3

def loopBody545_9 : HolLoopProg 64 :=
.mark loopBody545_8

def loopBody545_10 : HolLoopProg 64 :=
.seq loopBody545_9 loopBody545_1

def loopBody545_11 : HolLoopProg 64 :=
.mark loopBody545_10

def loopBody545_12 : HolLoopProg 64 :=
.seq loopBody545_7 loopBody545_11

def loopBody545_13 : HolLoopProg 64 :=
.mark loopBody545_12

def loopBody545_14 : HolLoopProg 64 :=
.seq loopBody545_13 loopBody545_1

def loopBody545_15 : HolLoopProg 64 :=
.mark loopBody545_14

def loopBody545_16 : HolLoopProg 64 :=
.seq loopBody545_5 loopBody545_15

def loopBody545_17 : HolLoopProg 64 :=
.mark loopBody545_16

def loopBody545_18 : HolLoopProg 64 :=
.seq loopBody545_1 loopBody545_17

def loopBody545_19 : HolLoopProg 64 :=
.mark loopBody545_18

def loopBody545_20 : HolLoopProg 64 :=
.seq loopBody545_3 loopBody545_19

def loopBody545_21 : HolLoopProg 64 :=
.mark loopBody545_20

def loopBody545_22 : HolLoopProg 64 :=
.seq loopBody545_1 loopBody545_21

def loopBody545_23 : HolLoopProg 64 :=
.mark loopBody545_22

def loopBody545_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 72#64])

def loopBody545_25 : HolLoopProg 64 :=
.mark loopBody545_24

def loopBody545_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.load
              (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
            Flapjack.HolLoopExp.const 72#64]),
      Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 72#64])])

def loopBody545_27 : HolLoopProg 64 :=
.mark loopBody545_26

def loopBody545_28 : HolLoopProg 64 :=
.seq loopBody545_27 loopBody545_15

def loopBody545_29 : HolLoopProg 64 :=
.mark loopBody545_28

def loopBody545_30 : HolLoopProg 64 :=
.seq loopBody545_1 loopBody545_29

def loopBody545_31 : HolLoopProg 64 :=
.mark loopBody545_30

def loopBody545_32 : HolLoopProg 64 :=
.seq loopBody545_25 loopBody545_31

def loopBody545_33 : HolLoopProg 64 :=
.mark loopBody545_32

def loopBody545_34 : HolLoopProg 64 :=
.seq loopBody545_1 loopBody545_33

def loopBody545_35 : HolLoopProg 64 :=
.mark loopBody545_34

def loopBody545_36 : HolLoopProg 64 :=
.seq loopBody545_23 loopBody545_35

def loopBody545_37 : HolLoopProg 64 :=
.mark loopBody545_36

def loopBody545_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 184#64])

def loopBody545_39 : HolLoopProg 64 :=
.mark loopBody545_38

def loopBody545_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.load
              (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
            Flapjack.HolLoopExp.const 184#64]),
      Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 184#64])])

def loopBody545_41 : HolLoopProg 64 :=
.mark loopBody545_40

def loopBody545_42 : HolLoopProg 64 :=
.seq loopBody545_41 loopBody545_15

def loopBody545_43 : HolLoopProg 64 :=
.mark loopBody545_42

def loopBody545_44 : HolLoopProg 64 :=
.seq loopBody545_1 loopBody545_43

def loopBody545_45 : HolLoopProg 64 :=
.mark loopBody545_44

def loopBody545_46 : HolLoopProg 64 :=
.seq loopBody545_39 loopBody545_45

def loopBody545_47 : HolLoopProg 64 :=
.mark loopBody545_46

def loopBody545_48 : HolLoopProg 64 :=
.seq loopBody545_1 loopBody545_47

def loopBody545_49 : HolLoopProg 64 :=
.mark loopBody545_48

def loopBody545_50 : HolLoopProg 64 :=
.seq loopBody545_37 loopBody545_49

def loopBody545_51 : HolLoopProg 64 :=
.mark loopBody545_50

def loopBody545_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody545_53 : HolLoopProg 64 :=
.mark loopBody545_52

def loopBody545_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody545_55 : HolLoopProg 64 :=
.mark loopBody545_54

def loopBody545_56 : HolLoopProg 64 :=
.seq loopBody545_55 loopBody545_1

def loopBody545_57 : HolLoopProg 64 :=
.mark loopBody545_56

def loopBody545_58 : HolLoopProg 64 :=
.seq loopBody545_53 loopBody545_57

def loopBody545_59 : HolLoopProg 64 :=
.mark loopBody545_58

def loopBody545_60 : HolLoopProg 64 :=
.seq loopBody545_51 loopBody545_59

def loopBody545_61 : HolLoopProg 64 :=
.mark loopBody545_60

def output545 : Nat × List Nat × HolLoopProg 64 :=
  (609, [0], loopBody545_61)
end InitECandidate.Proofs.FrontendStages.Loop
