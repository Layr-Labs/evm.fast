import InitECandidate.Proofs.FrontendStages.Loop.Translate643
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody659_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody659_1 : HolLoopProg 64 :=
.mark loopBody659_0

def loopBody659_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 0)

def loopBody659_3 : HolLoopProg 64 :=
.mark loopBody659_2

def loopBody659_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 1)

def loopBody659_5 : HolLoopProg 64 :=
.mark loopBody659_4

def loopBody659_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 2)

def loopBody659_7 : HolLoopProg 64 :=
.mark loopBody659_6

def loopBody659_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 3)

def loopBody659_9 : HolLoopProg 64 :=
.mark loopBody659_8

def loopBody659_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 4)

def loopBody659_11 : HolLoopProg 64 :=
.mark loopBody659_10

def loopBody659_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 5)

def loopBody659_13 : HolLoopProg 64 :=
.mark loopBody659_12

def loopBody659_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 12

def loopBody659_15 : HolLoopProg 64 :=
.mark loopBody659_14

def loopBody659_16 : HolLoopProg 64 :=
.call (some ([6, 7, 8, 9, 10, 11], Flapjack.Spt.ln)) (some 717) ([12, 13, 14, 15, 16, 17]) (some (12, loopBody659_15, loopBody659_1, (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))

def loopBody659_17 : HolLoopProg 64 :=
.mark loopBody659_16

def loopBody659_18 : HolLoopProg 64 :=
.seq loopBody659_17 loopBody659_1

def loopBody659_19 : HolLoopProg 64 :=
.mark loopBody659_18

def loopBody659_20 : HolLoopProg 64 :=
.seq loopBody659_13 loopBody659_19

def loopBody659_21 : HolLoopProg 64 :=
.mark loopBody659_20

def loopBody659_22 : HolLoopProg 64 :=
.seq loopBody659_11 loopBody659_21

def loopBody659_23 : HolLoopProg 64 :=
.mark loopBody659_22

def loopBody659_24 : HolLoopProg 64 :=
.seq loopBody659_9 loopBody659_23

def loopBody659_25 : HolLoopProg 64 :=
.mark loopBody659_24

def loopBody659_26 : HolLoopProg 64 :=
.seq loopBody659_7 loopBody659_25

def loopBody659_27 : HolLoopProg 64 :=
.mark loopBody659_26

def loopBody659_28 : HolLoopProg 64 :=
.seq loopBody659_5 loopBody659_27

def loopBody659_29 : HolLoopProg 64 :=
.mark loopBody659_28

def loopBody659_30 : HolLoopProg 64 :=
.seq loopBody659_3 loopBody659_29

def loopBody659_31 : HolLoopProg 64 :=
.mark loopBody659_30

def loopBody659_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 1#64])

def loopBody659_33 : HolLoopProg 64 :=
.mark loopBody659_32

def loopBody659_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [12]

def loopBody659_35 : HolLoopProg 64 :=
.mark loopBody659_34

def loopBody659_36 : HolLoopProg 64 :=
.seq loopBody659_35 loopBody659_1

def loopBody659_37 : HolLoopProg 64 :=
.mark loopBody659_36

def loopBody659_38 : HolLoopProg 64 :=
.seq loopBody659_33 loopBody659_37

def loopBody659_39 : HolLoopProg 64 :=
.mark loopBody659_38

def loopBody659_40 : HolLoopProg 64 :=
.seq loopBody659_31 loopBody659_39

def loopBody659_41 : HolLoopProg 64 :=
.mark loopBody659_40

def loopBody659_42 : HolLoopProg 64 :=
.seq loopBody659_1 loopBody659_41

def loopBody659_43 : HolLoopProg 64 :=
.mark loopBody659_42

def loopBody659_44 : HolLoopProg 64 :=
.seq loopBody659_1 loopBody659_43

def loopBody659_45 : HolLoopProg 64 :=
.mark loopBody659_44

def loopBody659_46 : HolLoopProg 64 :=
.seq loopBody659_1 loopBody659_45

def loopBody659_47 : HolLoopProg 64 :=
.mark loopBody659_46

def loopBody659_48 : HolLoopProg 64 :=
.seq loopBody659_1 loopBody659_47

def loopBody659_49 : HolLoopProg 64 :=
.mark loopBody659_48

def loopBody659_50 : HolLoopProg 64 :=
.seq loopBody659_1 loopBody659_49

def loopBody659_51 : HolLoopProg 64 :=
.mark loopBody659_50

def loopBody659_52 : HolLoopProg 64 :=
.seq loopBody659_1 loopBody659_51

def loopBody659_53 : HolLoopProg 64 :=
.mark loopBody659_52

def loopBody659_54 : HolLoopProg 64 :=
.seq loopBody659_1 loopBody659_53

def loopBody659_55 : HolLoopProg 64 :=
.mark loopBody659_54

def loopBody659_56 : HolLoopProg 64 :=
.seq loopBody659_1 loopBody659_55

def loopBody659_57 : HolLoopProg 64 :=
.mark loopBody659_56

def loopBody659_58 : HolLoopProg 64 :=
.seq loopBody659_1 loopBody659_57

def loopBody659_59 : HolLoopProg 64 :=
.mark loopBody659_58

def loopBody659_60 : HolLoopProg 64 :=
.seq loopBody659_1 loopBody659_59

def loopBody659_61 : HolLoopProg 64 :=
.mark loopBody659_60

def loopBody659_62 : HolLoopProg 64 :=
.seq loopBody659_1 loopBody659_61

def loopBody659_63 : HolLoopProg 64 :=
.mark loopBody659_62

def loopBody659_64 : HolLoopProg 64 :=
.seq loopBody659_1 loopBody659_63

def loopBody659_65 : HolLoopProg 64 :=
.mark loopBody659_64

def output659 : Nat × List Nat × HolLoopProg 64 :=
  (723, [0, 1, 2, 3, 4, 5], loopBody659_65)
end InitECandidate.Proofs.FrontendStages.Loop
