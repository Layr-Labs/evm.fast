import InitECandidate.Proofs.FrontendStages.Loop.Translate687
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody703_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody703_1 : HolLoopProg 64 :=
.mark loopBody703_0

def loopBody703_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 96#64]))

def loopBody703_3 : HolLoopProg 64 :=
.mark loopBody703_2

def loopBody703_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 96#64],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody703_5 : HolLoopProg 64 :=
.mark loopBody703_4

def loopBody703_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 96#64],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody703_7 : HolLoopProg 64 :=
.mark loopBody703_6

def loopBody703_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 96#64],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody703_9 : HolLoopProg 64 :=
.mark loopBody703_8

def loopBody703_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 96#64],
        Flapjack.HolLoopExp.const 32#64]))

def loopBody703_11 : HolLoopProg 64 :=
.mark loopBody703_10

def loopBody703_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 96#64],
        Flapjack.HolLoopExp.const 40#64]))

def loopBody703_13 : HolLoopProg 64 :=
.mark loopBody703_12

def loopBody703_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody703_15 : HolLoopProg 64 :=
.mark loopBody703_14

def loopBody703_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody703_17 : HolLoopProg 64 :=
.mark loopBody703_16

def loopBody703_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 3)

def loopBody703_19 : HolLoopProg 64 :=
.mark loopBody703_18

def loopBody703_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 4)

def loopBody703_21 : HolLoopProg 64 :=
.mark loopBody703_20

def loopBody703_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 5)

def loopBody703_23 : HolLoopProg 64 :=
.mark loopBody703_22

def loopBody703_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 6)

def loopBody703_25 : HolLoopProg 64 :=
.mark loopBody703_24

def loopBody703_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 705) [7, 8, 9, 10, 11, 12] none

def loopBody703_27 : HolLoopProg 64 :=
.mark loopBody703_26

def loopBody703_28 : HolLoopProg 64 :=
.seq loopBody703_27 loopBody703_1

def loopBody703_29 : HolLoopProg 64 :=
.mark loopBody703_28

def loopBody703_30 : HolLoopProg 64 :=
.seq loopBody703_25 loopBody703_29

def loopBody703_31 : HolLoopProg 64 :=
.mark loopBody703_30

def loopBody703_32 : HolLoopProg 64 :=
.seq loopBody703_23 loopBody703_31

def loopBody703_33 : HolLoopProg 64 :=
.mark loopBody703_32

def loopBody703_34 : HolLoopProg 64 :=
.seq loopBody703_21 loopBody703_33

def loopBody703_35 : HolLoopProg 64 :=
.mark loopBody703_34

def loopBody703_36 : HolLoopProg 64 :=
.seq loopBody703_19 loopBody703_35

def loopBody703_37 : HolLoopProg 64 :=
.mark loopBody703_36

def loopBody703_38 : HolLoopProg 64 :=
.seq loopBody703_17 loopBody703_37

def loopBody703_39 : HolLoopProg 64 :=
.mark loopBody703_38

def loopBody703_40 : HolLoopProg 64 :=
.seq loopBody703_15 loopBody703_39

def loopBody703_41 : HolLoopProg 64 :=
.mark loopBody703_40

def loopBody703_42 : HolLoopProg 64 :=
.seq loopBody703_13 loopBody703_41

def loopBody703_43 : HolLoopProg 64 :=
.mark loopBody703_42

def loopBody703_44 : HolLoopProg 64 :=
.seq loopBody703_1 loopBody703_43

def loopBody703_45 : HolLoopProg 64 :=
.mark loopBody703_44

def loopBody703_46 : HolLoopProg 64 :=
.seq loopBody703_11 loopBody703_45

def loopBody703_47 : HolLoopProg 64 :=
.mark loopBody703_46

def loopBody703_48 : HolLoopProg 64 :=
.seq loopBody703_1 loopBody703_47

def loopBody703_49 : HolLoopProg 64 :=
.mark loopBody703_48

def loopBody703_50 : HolLoopProg 64 :=
.seq loopBody703_9 loopBody703_49

def loopBody703_51 : HolLoopProg 64 :=
.mark loopBody703_50

def loopBody703_52 : HolLoopProg 64 :=
.seq loopBody703_1 loopBody703_51

def loopBody703_53 : HolLoopProg 64 :=
.mark loopBody703_52

def loopBody703_54 : HolLoopProg 64 :=
.seq loopBody703_7 loopBody703_53

def loopBody703_55 : HolLoopProg 64 :=
.mark loopBody703_54

def loopBody703_56 : HolLoopProg 64 :=
.seq loopBody703_1 loopBody703_55

def loopBody703_57 : HolLoopProg 64 :=
.mark loopBody703_56

def loopBody703_58 : HolLoopProg 64 :=
.seq loopBody703_5 loopBody703_57

def loopBody703_59 : HolLoopProg 64 :=
.mark loopBody703_58

def loopBody703_60 : HolLoopProg 64 :=
.seq loopBody703_1 loopBody703_59

def loopBody703_61 : HolLoopProg 64 :=
.mark loopBody703_60

def loopBody703_62 : HolLoopProg 64 :=
.seq loopBody703_3 loopBody703_61

def loopBody703_63 : HolLoopProg 64 :=
.mark loopBody703_62

def loopBody703_64 : HolLoopProg 64 :=
.seq loopBody703_1 loopBody703_63

def loopBody703_65 : HolLoopProg 64 :=
.mark loopBody703_64

def output703 : Nat × List Nat × HolLoopProg 64 :=
  (767, [0], loopBody703_65)
end InitECandidate.Proofs.FrontendStages.Loop
