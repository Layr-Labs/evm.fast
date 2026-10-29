import InitECandidate.Proofs.FrontendStages.Loop.Translate600
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody616_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody616_1 : HolLoopProg 64 :=
.mark loopBody616_0

def loopBody616_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 0) (Flapjack.HolLoopExp.const 5#64))

def loopBody616_3 : HolLoopProg 64 :=
.mark loopBody616_2

def loopBody616_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody616_5 : HolLoopProg 64 :=
.mark loopBody616_4

def loopBody616_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody616_7 : HolLoopProg 64 :=
.mark loopBody616_6

def loopBody616_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody616_9 : HolLoopProg 64 :=
.mark loopBody616_8

def loopBody616_10 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 679) ([4, 5]) (some (4, loopBody616_9, loopBody616_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody616_11 : HolLoopProg 64 :=
.mark loopBody616_10

def loopBody616_12 : HolLoopProg 64 :=
.seq loopBody616_11 loopBody616_1

def loopBody616_13 : HolLoopProg 64 :=
.mark loopBody616_12

def loopBody616_14 : HolLoopProg 64 :=
.seq loopBody616_7 loopBody616_13

def loopBody616_15 : HolLoopProg 64 :=
.mark loopBody616_14

def loopBody616_16 : HolLoopProg 64 :=
.seq loopBody616_5 loopBody616_15

def loopBody616_17 : HolLoopProg 64 :=
.mark loopBody616_16

def loopBody616_18 : HolLoopProg 64 :=
.seq loopBody616_1 loopBody616_17

def loopBody616_19 : HolLoopProg 64 :=
.mark loopBody616_18

def loopBody616_20 : HolLoopProg 64 :=
.seq loopBody616_1 loopBody616_19

def loopBody616_21 : HolLoopProg 64 :=
.mark loopBody616_20

def loopBody616_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 2])

def loopBody616_23 : HolLoopProg 64 :=
.mark loopBody616_22

def loopBody616_24 : HolLoopProg 64 :=
.seq loopBody616_23 loopBody616_13

def loopBody616_25 : HolLoopProg 64 :=
.mark loopBody616_24

def loopBody616_26 : HolLoopProg 64 :=
.seq loopBody616_5 loopBody616_25

def loopBody616_27 : HolLoopProg 64 :=
.mark loopBody616_26

def loopBody616_28 : HolLoopProg 64 :=
.seq loopBody616_1 loopBody616_27

def loopBody616_29 : HolLoopProg 64 :=
.mark loopBody616_28

def loopBody616_30 : HolLoopProg 64 :=
.seq loopBody616_1 loopBody616_29

def loopBody616_31 : HolLoopProg 64 :=
.mark loopBody616_30

def loopBody616_32 : HolLoopProg 64 :=
.seq loopBody616_21 loopBody616_31

def loopBody616_33 : HolLoopProg 64 :=
.mark loopBody616_32

def loopBody616_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 1,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 1#64)])

def loopBody616_35 : HolLoopProg 64 :=
.mark loopBody616_34

def loopBody616_36 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.ln)) (some 678) ([4, 5]) (some (4, loopBody616_9, loopBody616_1, (Flapjack.Spt.ln)))

def loopBody616_37 : HolLoopProg 64 :=
.mark loopBody616_36

def loopBody616_38 : HolLoopProg 64 :=
.seq loopBody616_37 loopBody616_1

def loopBody616_39 : HolLoopProg 64 :=
.mark loopBody616_38

def loopBody616_40 : HolLoopProg 64 :=
.seq loopBody616_35 loopBody616_39

def loopBody616_41 : HolLoopProg 64 :=
.mark loopBody616_40

def loopBody616_42 : HolLoopProg 64 :=
.seq loopBody616_5 loopBody616_41

def loopBody616_43 : HolLoopProg 64 :=
.mark loopBody616_42

def loopBody616_44 : HolLoopProg 64 :=
.seq loopBody616_1 loopBody616_43

def loopBody616_45 : HolLoopProg 64 :=
.mark loopBody616_44

def loopBody616_46 : HolLoopProg 64 :=
.seq loopBody616_1 loopBody616_45

def loopBody616_47 : HolLoopProg 64 :=
.mark loopBody616_46

def loopBody616_48 : HolLoopProg 64 :=
.seq loopBody616_33 loopBody616_47

def loopBody616_49 : HolLoopProg 64 :=
.mark loopBody616_48

def loopBody616_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody616_51 : HolLoopProg 64 :=
.mark loopBody616_50

def loopBody616_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody616_53 : HolLoopProg 64 :=
.mark loopBody616_52

def loopBody616_54 : HolLoopProg 64 :=
.seq loopBody616_53 loopBody616_1

def loopBody616_55 : HolLoopProg 64 :=
.mark loopBody616_54

def loopBody616_56 : HolLoopProg 64 :=
.seq loopBody616_51 loopBody616_55

def loopBody616_57 : HolLoopProg 64 :=
.mark loopBody616_56

def loopBody616_58 : HolLoopProg 64 :=
.seq loopBody616_49 loopBody616_57

def loopBody616_59 : HolLoopProg 64 :=
.mark loopBody616_58

def loopBody616_60 : HolLoopProg 64 :=
.seq loopBody616_3 loopBody616_59

def loopBody616_61 : HolLoopProg 64 :=
.mark loopBody616_60

def loopBody616_62 : HolLoopProg 64 :=
.seq loopBody616_1 loopBody616_61

def loopBody616_63 : HolLoopProg 64 :=
.mark loopBody616_62

def output616 : Nat × List Nat × HolLoopProg 64 :=
  (680, [0, 1], loopBody616_63)
end InitECandidate.Proofs.FrontendStages.Loop
