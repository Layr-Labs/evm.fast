import InitECandidate.Proofs.FrontendStages.Loop.Translate286
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody302_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody302_1 : HolLoopProg 64 :=
.mark loopBody302_0

def loopBody302_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 208#64]))

def loopBody302_3 : HolLoopProg 64 :=
.mark loopBody302_2

def loopBody302_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 216#64]))

def loopBody302_5 : HolLoopProg 64 :=
.mark loopBody302_4

def loopBody302_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody302_7 : HolLoopProg 64 :=
.mark loopBody302_6

def loopBody302_8 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 360) ([2, 3]) (some (2, loopBody302_7, loopBody302_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody302_9 : HolLoopProg 64 :=
.mark loopBody302_8

def loopBody302_10 : HolLoopProg 64 :=
.seq loopBody302_9 loopBody302_1

def loopBody302_11 : HolLoopProg 64 :=
.mark loopBody302_10

def loopBody302_12 : HolLoopProg 64 :=
.seq loopBody302_5 loopBody302_11

def loopBody302_13 : HolLoopProg 64 :=
.mark loopBody302_12

def loopBody302_14 : HolLoopProg 64 :=
.seq loopBody302_3 loopBody302_13

def loopBody302_15 : HolLoopProg 64 :=
.mark loopBody302_14

def loopBody302_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 272#64]))

def loopBody302_17 : HolLoopProg 64 :=
.mark loopBody302_16

def loopBody302_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 280#64]))

def loopBody302_19 : HolLoopProg 64 :=
.mark loopBody302_18

def loopBody302_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody302_21 : HolLoopProg 64 :=
.mark loopBody302_20

def loopBody302_22 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 364) ([3, 4]) (some (3, loopBody302_21, loopBody302_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody302_23 : HolLoopProg 64 :=
.mark loopBody302_22

def loopBody302_24 : HolLoopProg 64 :=
.seq loopBody302_23 loopBody302_1

def loopBody302_25 : HolLoopProg 64 :=
.mark loopBody302_24

def loopBody302_26 : HolLoopProg 64 :=
.seq loopBody302_19 loopBody302_25

def loopBody302_27 : HolLoopProg 64 :=
.mark loopBody302_26

def loopBody302_28 : HolLoopProg 64 :=
.seq loopBody302_17 loopBody302_27

def loopBody302_29 : HolLoopProg 64 :=
.mark loopBody302_28

def loopBody302_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 264#64]))

def loopBody302_31 : HolLoopProg 64 :=
.mark loopBody302_30

def loopBody302_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 33#64)

def loopBody302_33 : HolLoopProg 64 :=
.mark loopBody302_32

def loopBody302_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 5 5 3 4)

def loopBody302_35 : HolLoopProg 64 :=
.mark loopBody302_34

def loopBody302_36 : HolLoopProg 64 :=
.seq loopBody302_35 loopBody302_1

def loopBody302_37 : HolLoopProg 64 :=
.mark loopBody302_36

def loopBody302_38 : HolLoopProg 64 :=
.seq loopBody302_33 loopBody302_37

def loopBody302_39 : HolLoopProg 64 :=
.mark loopBody302_38

def loopBody302_40 : HolLoopProg 64 :=
.seq loopBody302_31 loopBody302_39

def loopBody302_41 : HolLoopProg 64 :=
.mark loopBody302_40

def loopBody302_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 5)

def loopBody302_43 : HolLoopProg 64 :=
.mark loopBody302_42

def loopBody302_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.const 64#64, Flapjack.HolLoopExp.const 561#64, Flapjack.HolLoopExp.const 30#64,
      Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 200#64]),
      Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 6])

def loopBody302_45 : HolLoopProg 64 :=
.mark loopBody302_44

def loopBody302_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [7]

def loopBody302_47 : HolLoopProg 64 :=
.mark loopBody302_46

def loopBody302_48 : HolLoopProg 64 :=
.seq loopBody302_47 loopBody302_1

def loopBody302_49 : HolLoopProg 64 :=
.mark loopBody302_48

def loopBody302_50 : HolLoopProg 64 :=
.seq loopBody302_45 loopBody302_49

def loopBody302_51 : HolLoopProg 64 :=
.mark loopBody302_50

def loopBody302_52 : HolLoopProg 64 :=
.seq loopBody302_43 loopBody302_51

def loopBody302_53 : HolLoopProg 64 :=
.mark loopBody302_52

def loopBody302_54 : HolLoopProg 64 :=
.seq loopBody302_41 loopBody302_53

def loopBody302_55 : HolLoopProg 64 :=
.mark loopBody302_54

def loopBody302_56 : HolLoopProg 64 :=
.seq loopBody302_29 loopBody302_55

def loopBody302_57 : HolLoopProg 64 :=
.mark loopBody302_56

def loopBody302_58 : HolLoopProg 64 :=
.seq loopBody302_1 loopBody302_57

def loopBody302_59 : HolLoopProg 64 :=
.mark loopBody302_58

def loopBody302_60 : HolLoopProg 64 :=
.seq loopBody302_1 loopBody302_59

def loopBody302_61 : HolLoopProg 64 :=
.mark loopBody302_60

def loopBody302_62 : HolLoopProg 64 :=
.seq loopBody302_15 loopBody302_61

def loopBody302_63 : HolLoopProg 64 :=
.mark loopBody302_62

def loopBody302_64 : HolLoopProg 64 :=
.seq loopBody302_1 loopBody302_63

def loopBody302_65 : HolLoopProg 64 :=
.mark loopBody302_64

def loopBody302_66 : HolLoopProg 64 :=
.seq loopBody302_1 loopBody302_65

def loopBody302_67 : HolLoopProg 64 :=
.mark loopBody302_66

def output302 : Nat × List Nat × HolLoopProg 64 :=
  (366, [0], loopBody302_67)
end InitECandidate.Proofs.FrontendStages.Loop
