import InitECandidate.Proofs.FrontendStages.Loop.Translate156
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody172_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody172_1 : HolLoopProg 64 :=
.mark loopBody172_0

def loopBody172_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 104#64]))

def loopBody172_3 : HolLoopProg 64 :=
.mark loopBody172_2

def loopBody172_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 32#64)

def loopBody172_5 : HolLoopProg 64 :=
.mark loopBody172_4

def loopBody172_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody172_7 : HolLoopProg 64 :=
.mark loopBody172_6

def loopBody172_8 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 78) ([4, 5]) (some (4, loopBody172_7, loopBody172_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody172_9 : HolLoopProg 64 :=
.mark loopBody172_8

def loopBody172_10 : HolLoopProg 64 :=
.seq loopBody172_9 loopBody172_1

def loopBody172_11 : HolLoopProg 64 :=
.mark loopBody172_10

def loopBody172_12 : HolLoopProg 64 :=
.seq loopBody172_5 loopBody172_11

def loopBody172_13 : HolLoopProg 64 :=
.mark loopBody172_12

def loopBody172_14 : HolLoopProg 64 :=
.seq loopBody172_3 loopBody172_13

def loopBody172_15 : HolLoopProg 64 :=
.mark loopBody172_14

def loopBody172_16 : HolLoopProg 64 :=
.seq loopBody172_1 loopBody172_15

def loopBody172_17 : HolLoopProg 64 :=
.mark loopBody172_16

def loopBody172_18 : HolLoopProg 64 :=
.seq loopBody172_1 loopBody172_17

def loopBody172_19 : HolLoopProg 64 :=
.mark loopBody172_18

def loopBody172_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody172_21 : HolLoopProg 64 :=
.mark loopBody172_20

def loopBody172_22 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)) (some 87) ([4, 5]) (some (4, loopBody172_7, loopBody172_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))

def loopBody172_23 : HolLoopProg 64 :=
.mark loopBody172_22

def loopBody172_24 : HolLoopProg 64 :=
.seq loopBody172_23 loopBody172_1

def loopBody172_25 : HolLoopProg 64 :=
.mark loopBody172_24

def loopBody172_26 : HolLoopProg 64 :=
.seq loopBody172_21 loopBody172_25

def loopBody172_27 : HolLoopProg 64 :=
.mark loopBody172_26

def loopBody172_28 : HolLoopProg 64 :=
.seq loopBody172_3 loopBody172_27

def loopBody172_29 : HolLoopProg 64 :=
.mark loopBody172_28

def loopBody172_30 : HolLoopProg 64 :=
.seq loopBody172_1 loopBody172_29

def loopBody172_31 : HolLoopProg 64 :=
.mark loopBody172_30

def loopBody172_32 : HolLoopProg 64 :=
.seq loopBody172_1 loopBody172_31

def loopBody172_33 : HolLoopProg 64 :=
.mark loopBody172_32

def loopBody172_34 : HolLoopProg 64 :=
.seq loopBody172_19 loopBody172_33

def loopBody172_35 : HolLoopProg 64 :=
.mark loopBody172_34

def loopBody172_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody172_37 : HolLoopProg 64 :=
.mark loopBody172_36

def loopBody172_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 104#64]))

def loopBody172_39 : HolLoopProg 64 :=
.mark loopBody172_38

def loopBody172_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody172_41 : HolLoopProg 64 :=
.mark loopBody172_40

def loopBody172_42 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.ln)) (some 154) ([4, 5, 6]) (some (4, loopBody172_7, loopBody172_1, (Flapjack.Spt.ln)))

def loopBody172_43 : HolLoopProg 64 :=
.mark loopBody172_42

def loopBody172_44 : HolLoopProg 64 :=
.seq loopBody172_43 loopBody172_1

def loopBody172_45 : HolLoopProg 64 :=
.mark loopBody172_44

def loopBody172_46 : HolLoopProg 64 :=
.seq loopBody172_41 loopBody172_45

def loopBody172_47 : HolLoopProg 64 :=
.mark loopBody172_46

def loopBody172_48 : HolLoopProg 64 :=
.seq loopBody172_39 loopBody172_47

def loopBody172_49 : HolLoopProg 64 :=
.mark loopBody172_48

def loopBody172_50 : HolLoopProg 64 :=
.seq loopBody172_37 loopBody172_49

def loopBody172_51 : HolLoopProg 64 :=
.mark loopBody172_50

def loopBody172_52 : HolLoopProg 64 :=
.seq loopBody172_1 loopBody172_51

def loopBody172_53 : HolLoopProg 64 :=
.mark loopBody172_52

def loopBody172_54 : HolLoopProg 64 :=
.seq loopBody172_1 loopBody172_53

def loopBody172_55 : HolLoopProg 64 :=
.mark loopBody172_54

def loopBody172_56 : HolLoopProg 64 :=
.seq loopBody172_35 loopBody172_55

def loopBody172_57 : HolLoopProg 64 :=
.mark loopBody172_56

def loopBody172_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody172_59 : HolLoopProg 64 :=
.mark loopBody172_58

def loopBody172_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody172_61 : HolLoopProg 64 :=
.mark loopBody172_60

def loopBody172_62 : HolLoopProg 64 :=
.seq loopBody172_61 loopBody172_1

def loopBody172_63 : HolLoopProg 64 :=
.mark loopBody172_62

def loopBody172_64 : HolLoopProg 64 :=
.seq loopBody172_59 loopBody172_63

def loopBody172_65 : HolLoopProg 64 :=
.mark loopBody172_64

def loopBody172_66 : HolLoopProg 64 :=
.seq loopBody172_57 loopBody172_65

def loopBody172_67 : HolLoopProg 64 :=
.mark loopBody172_66

def output172 : Nat × List Nat × HolLoopProg 64 :=
  (236, [0, 1, 2], loopBody172_67)
end InitECandidate.Proofs.FrontendStages.Loop
