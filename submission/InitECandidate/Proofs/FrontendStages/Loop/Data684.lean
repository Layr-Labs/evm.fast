import InitECandidate.Proofs.FrontendStages.Loop.Translate668
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody684_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody684_1 : HolLoopProg 64 :=
.mark loopBody684_0

def loopBody684_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody684_3 : HolLoopProg 64 :=
.mark loopBody684_2

def loopBody684_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody684_5 : HolLoopProg 64 :=
.mark loopBody684_4

def loopBody684_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 731) ([2]) (some (2, loopBody684_5, loopBody684_1, (Flapjack.Spt.ls PUnit.unit)))

def loopBody684_7 : HolLoopProg 64 :=
.mark loopBody684_6

def loopBody684_8 : HolLoopProg 64 :=
.seq loopBody684_7 loopBody684_1

def loopBody684_9 : HolLoopProg 64 :=
.mark loopBody684_8

def loopBody684_10 : HolLoopProg 64 :=
.seq loopBody684_3 loopBody684_9

def loopBody684_11 : HolLoopProg 64 :=
.mark loopBody684_10

def loopBody684_12 : HolLoopProg 64 :=
.seq loopBody684_1 loopBody684_11

def loopBody684_13 : HolLoopProg 64 :=
.mark loopBody684_12

def loopBody684_14 : HolLoopProg 64 :=
.seq loopBody684_1 loopBody684_13

def loopBody684_15 : HolLoopProg 64 :=
.mark loopBody684_14

def loopBody684_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 96#64])

def loopBody684_17 : HolLoopProg 64 :=
.mark loopBody684_16

def loopBody684_18 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 730) ([2]) (some (2, loopBody684_5, loopBody684_1, (Flapjack.Spt.ls PUnit.unit)))

def loopBody684_19 : HolLoopProg 64 :=
.mark loopBody684_18

def loopBody684_20 : HolLoopProg 64 :=
.seq loopBody684_19 loopBody684_1

def loopBody684_21 : HolLoopProg 64 :=
.mark loopBody684_20

def loopBody684_22 : HolLoopProg 64 :=
.seq loopBody684_17 loopBody684_21

def loopBody684_23 : HolLoopProg 64 :=
.mark loopBody684_22

def loopBody684_24 : HolLoopProg 64 :=
.seq loopBody684_1 loopBody684_23

def loopBody684_25 : HolLoopProg 64 :=
.mark loopBody684_24

def loopBody684_26 : HolLoopProg 64 :=
.seq loopBody684_1 loopBody684_25

def loopBody684_27 : HolLoopProg 64 :=
.mark loopBody684_26

def loopBody684_28 : HolLoopProg 64 :=
.seq loopBody684_15 loopBody684_27

def loopBody684_29 : HolLoopProg 64 :=
.mark loopBody684_28

def loopBody684_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 192#64])

def loopBody684_31 : HolLoopProg 64 :=
.mark loopBody684_30

def loopBody684_32 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 730) ([2]) (some (2, loopBody684_5, loopBody684_1, (Flapjack.Spt.ln)))

def loopBody684_33 : HolLoopProg 64 :=
.mark loopBody684_32

def loopBody684_34 : HolLoopProg 64 :=
.seq loopBody684_33 loopBody684_1

def loopBody684_35 : HolLoopProg 64 :=
.mark loopBody684_34

def loopBody684_36 : HolLoopProg 64 :=
.seq loopBody684_31 loopBody684_35

def loopBody684_37 : HolLoopProg 64 :=
.mark loopBody684_36

def loopBody684_38 : HolLoopProg 64 :=
.seq loopBody684_1 loopBody684_37

def loopBody684_39 : HolLoopProg 64 :=
.mark loopBody684_38

def loopBody684_40 : HolLoopProg 64 :=
.seq loopBody684_1 loopBody684_39

def loopBody684_41 : HolLoopProg 64 :=
.mark loopBody684_40

def loopBody684_42 : HolLoopProg 64 :=
.seq loopBody684_29 loopBody684_41

def loopBody684_43 : HolLoopProg 64 :=
.mark loopBody684_42

def loopBody684_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody684_45 : HolLoopProg 64 :=
.mark loopBody684_44

def loopBody684_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody684_47 : HolLoopProg 64 :=
.mark loopBody684_46

def loopBody684_48 : HolLoopProg 64 :=
.seq loopBody684_47 loopBody684_1

def loopBody684_49 : HolLoopProg 64 :=
.mark loopBody684_48

def loopBody684_50 : HolLoopProg 64 :=
.seq loopBody684_45 loopBody684_49

def loopBody684_51 : HolLoopProg 64 :=
.mark loopBody684_50

def loopBody684_52 : HolLoopProg 64 :=
.seq loopBody684_43 loopBody684_51

def loopBody684_53 : HolLoopProg 64 :=
.mark loopBody684_52

def output684 : Nat × List Nat × HolLoopProg 64 :=
  (748, [0], loopBody684_53)
end InitECandidate.Proofs.FrontendStages.Loop
