import InitECandidate.Proofs.FrontendStages.Loop.Translate394
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody410_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody410_1 : HolLoopProg 64 :=
.mark loopBody410_0

def loopBody410_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 112#64]))

def loopBody410_3 : HolLoopProg 64 :=
.mark loopBody410_2

def loopBody410_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 64#64])

def loopBody410_5 : HolLoopProg 64 :=
.mark loopBody410_4

def loopBody410_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.load
              (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
            Flapjack.HolLoopExp.const 64#64]),
      Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add
          [Flapjack.HolLoopExp.load
              (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
            Flapjack.HolLoopExp.const 192#64])])

def loopBody410_7 : HolLoopProg 64 :=
.mark loopBody410_6

def loopBody410_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody410_9 : HolLoopProg 64 :=
.mark loopBody410_8

def loopBody410_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 2) 4

def loopBody410_11 : HolLoopProg 64 :=
.mark loopBody410_10

def loopBody410_12 : HolLoopProg 64 :=
.seq loopBody410_11 loopBody410_1

def loopBody410_13 : HolLoopProg 64 :=
.mark loopBody410_12

def loopBody410_14 : HolLoopProg 64 :=
.seq loopBody410_9 loopBody410_13

def loopBody410_15 : HolLoopProg 64 :=
.mark loopBody410_14

def loopBody410_16 : HolLoopProg 64 :=
.seq loopBody410_15 loopBody410_1

def loopBody410_17 : HolLoopProg 64 :=
.mark loopBody410_16

def loopBody410_18 : HolLoopProg 64 :=
.seq loopBody410_7 loopBody410_17

def loopBody410_19 : HolLoopProg 64 :=
.mark loopBody410_18

def loopBody410_20 : HolLoopProg 64 :=
.seq loopBody410_1 loopBody410_19

def loopBody410_21 : HolLoopProg 64 :=
.mark loopBody410_20

def loopBody410_22 : HolLoopProg 64 :=
.seq loopBody410_5 loopBody410_21

def loopBody410_23 : HolLoopProg 64 :=
.mark loopBody410_22

def loopBody410_24 : HolLoopProg 64 :=
.seq loopBody410_1 loopBody410_23

def loopBody410_25 : HolLoopProg 64 :=
.mark loopBody410_24

def loopBody410_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 72#64])

def loopBody410_27 : HolLoopProg 64 :=
.mark loopBody410_26

def loopBody410_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 48#64]))

def loopBody410_29 : HolLoopProg 64 :=
.mark loopBody410_28

def loopBody410_30 : HolLoopProg 64 :=
.seq loopBody410_29 loopBody410_17

def loopBody410_31 : HolLoopProg 64 :=
.mark loopBody410_30

def loopBody410_32 : HolLoopProg 64 :=
.seq loopBody410_1 loopBody410_31

def loopBody410_33 : HolLoopProg 64 :=
.mark loopBody410_32

def loopBody410_34 : HolLoopProg 64 :=
.seq loopBody410_27 loopBody410_33

def loopBody410_35 : HolLoopProg 64 :=
.mark loopBody410_34

def loopBody410_36 : HolLoopProg 64 :=
.seq loopBody410_1 loopBody410_35

def loopBody410_37 : HolLoopProg 64 :=
.mark loopBody410_36

def loopBody410_38 : HolLoopProg 64 :=
.seq loopBody410_25 loopBody410_37

def loopBody410_39 : HolLoopProg 64 :=
.mark loopBody410_38

def loopBody410_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 192#64])

def loopBody410_41 : HolLoopProg 64 :=
.mark loopBody410_40

def loopBody410_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody410_43 : HolLoopProg 64 :=
.mark loopBody410_42

def loopBody410_44 : HolLoopProg 64 :=
.seq loopBody410_43 loopBody410_17

def loopBody410_45 : HolLoopProg 64 :=
.mark loopBody410_44

def loopBody410_46 : HolLoopProg 64 :=
.seq loopBody410_1 loopBody410_45

def loopBody410_47 : HolLoopProg 64 :=
.mark loopBody410_46

def loopBody410_48 : HolLoopProg 64 :=
.seq loopBody410_41 loopBody410_47

def loopBody410_49 : HolLoopProg 64 :=
.mark loopBody410_48

def loopBody410_50 : HolLoopProg 64 :=
.seq loopBody410_1 loopBody410_49

def loopBody410_51 : HolLoopProg 64 :=
.mark loopBody410_50

def loopBody410_52 : HolLoopProg 64 :=
.seq loopBody410_39 loopBody410_51

def loopBody410_53 : HolLoopProg 64 :=
.mark loopBody410_52

def loopBody410_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody410_55 : HolLoopProg 64 :=
.mark loopBody410_54

def loopBody410_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody410_57 : HolLoopProg 64 :=
.mark loopBody410_56

def loopBody410_58 : HolLoopProg 64 :=
.seq loopBody410_57 loopBody410_1

def loopBody410_59 : HolLoopProg 64 :=
.mark loopBody410_58

def loopBody410_60 : HolLoopProg 64 :=
.seq loopBody410_55 loopBody410_59

def loopBody410_61 : HolLoopProg 64 :=
.mark loopBody410_60

def loopBody410_62 : HolLoopProg 64 :=
.seq loopBody410_53 loopBody410_61

def loopBody410_63 : HolLoopProg 64 :=
.mark loopBody410_62

def loopBody410_64 : HolLoopProg 64 :=
.seq loopBody410_3 loopBody410_63

def loopBody410_65 : HolLoopProg 64 :=
.mark loopBody410_64

def loopBody410_66 : HolLoopProg 64 :=
.seq loopBody410_1 loopBody410_65

def loopBody410_67 : HolLoopProg 64 :=
.mark loopBody410_66

def output410 : Nat × List Nat × HolLoopProg 64 :=
  (474, [], loopBody410_67)
end InitECandidate.Proofs.FrontendStages.Loop
