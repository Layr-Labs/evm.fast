import InitECandidate.Proofs.FrontendStages.Loop.Translate771
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody787_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody787_1 : HolLoopProg 64 :=
.mark loopBody787_0

def loopBody787_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody787_3 : HolLoopProg 64 :=
.mark loopBody787_2

def loopBody787_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody787_5 : HolLoopProg 64 :=
.mark loopBody787_4

def loopBody787_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody787_7 : HolLoopProg 64 :=
.mark loopBody787_6

def loopBody787_8 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 88) ([5, 6]) (some (5, loopBody787_7, loopBody787_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody787_9 : HolLoopProg 64 :=
.mark loopBody787_8

def loopBody787_10 : HolLoopProg 64 :=
.seq loopBody787_9 loopBody787_1

def loopBody787_11 : HolLoopProg 64 :=
.mark loopBody787_10

def loopBody787_12 : HolLoopProg 64 :=
.seq loopBody787_5 loopBody787_11

def loopBody787_13 : HolLoopProg 64 :=
.mark loopBody787_12

def loopBody787_14 : HolLoopProg 64 :=
.seq loopBody787_3 loopBody787_13

def loopBody787_15 : HolLoopProg 64 :=
.mark loopBody787_14

def loopBody787_16 : HolLoopProg 64 :=
.seq loopBody787_1 loopBody787_15

def loopBody787_17 : HolLoopProg 64 :=
.mark loopBody787_16

def loopBody787_18 : HolLoopProg 64 :=
.seq loopBody787_1 loopBody787_17

def loopBody787_19 : HolLoopProg 64 :=
.mark loopBody787_18

def loopBody787_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 4#64])

def loopBody787_21 : HolLoopProg 64 :=
.mark loopBody787_20

def loopBody787_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody787_23 : HolLoopProg 64 :=
.mark loopBody787_22

def loopBody787_24 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 89) ([5, 6]) (some (5, loopBody787_7, loopBody787_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody787_25 : HolLoopProg 64 :=
.mark loopBody787_24

def loopBody787_26 : HolLoopProg 64 :=
.seq loopBody787_25 loopBody787_1

def loopBody787_27 : HolLoopProg 64 :=
.mark loopBody787_26

def loopBody787_28 : HolLoopProg 64 :=
.seq loopBody787_23 loopBody787_27

def loopBody787_29 : HolLoopProg 64 :=
.mark loopBody787_28

def loopBody787_30 : HolLoopProg 64 :=
.seq loopBody787_21 loopBody787_29

def loopBody787_31 : HolLoopProg 64 :=
.mark loopBody787_30

def loopBody787_32 : HolLoopProg 64 :=
.seq loopBody787_1 loopBody787_31

def loopBody787_33 : HolLoopProg 64 :=
.mark loopBody787_32

def loopBody787_34 : HolLoopProg 64 :=
.seq loopBody787_1 loopBody787_33

def loopBody787_35 : HolLoopProg 64 :=
.mark loopBody787_34

def loopBody787_36 : HolLoopProg 64 :=
.seq loopBody787_19 loopBody787_35

def loopBody787_37 : HolLoopProg 64 :=
.mark loopBody787_36

def loopBody787_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 12#64])

def loopBody787_39 : HolLoopProg 64 :=
.mark loopBody787_38

def loopBody787_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody787_41 : HolLoopProg 64 :=
.mark loopBody787_40

def loopBody787_42 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.ln)) (some 89) ([5, 6]) (some (5, loopBody787_7, loopBody787_1, (Flapjack.Spt.ln)))

def loopBody787_43 : HolLoopProg 64 :=
.mark loopBody787_42

def loopBody787_44 : HolLoopProg 64 :=
.seq loopBody787_43 loopBody787_1

def loopBody787_45 : HolLoopProg 64 :=
.mark loopBody787_44

def loopBody787_46 : HolLoopProg 64 :=
.seq loopBody787_41 loopBody787_45

def loopBody787_47 : HolLoopProg 64 :=
.mark loopBody787_46

def loopBody787_48 : HolLoopProg 64 :=
.seq loopBody787_39 loopBody787_47

def loopBody787_49 : HolLoopProg 64 :=
.mark loopBody787_48

def loopBody787_50 : HolLoopProg 64 :=
.seq loopBody787_1 loopBody787_49

def loopBody787_51 : HolLoopProg 64 :=
.mark loopBody787_50

def loopBody787_52 : HolLoopProg 64 :=
.seq loopBody787_1 loopBody787_51

def loopBody787_53 : HolLoopProg 64 :=
.mark loopBody787_52

def loopBody787_54 : HolLoopProg 64 :=
.seq loopBody787_37 loopBody787_53

def loopBody787_55 : HolLoopProg 64 :=
.mark loopBody787_54

def loopBody787_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody787_57 : HolLoopProg 64 :=
.mark loopBody787_56

def loopBody787_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody787_59 : HolLoopProg 64 :=
.mark loopBody787_58

def loopBody787_60 : HolLoopProg 64 :=
.seq loopBody787_59 loopBody787_1

def loopBody787_61 : HolLoopProg 64 :=
.mark loopBody787_60

def loopBody787_62 : HolLoopProg 64 :=
.seq loopBody787_57 loopBody787_61

def loopBody787_63 : HolLoopProg 64 :=
.mark loopBody787_62

def loopBody787_64 : HolLoopProg 64 :=
.seq loopBody787_55 loopBody787_63

def loopBody787_65 : HolLoopProg 64 :=
.mark loopBody787_64

def output787 : Nat × List Nat × HolLoopProg 64 :=
  (851, [0, 1, 2, 3], loopBody787_65)
end InitECandidate.Proofs.FrontendStages.Loop
