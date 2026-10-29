import InitECandidate.Proofs.FrontendStages.Loop.Translate671
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody687_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody687_1 : HolLoopProg 64 :=
.mark loopBody687_0

def loopBody687_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody687_3 : HolLoopProg 64 :=
.mark loopBody687_2

def loopBody687_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody687_5 : HolLoopProg 64 :=
.mark loopBody687_4

def loopBody687_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody687_7 : HolLoopProg 64 :=
.mark loopBody687_6

def loopBody687_8 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 736) ([3, 4]) (some (3, loopBody687_7, loopBody687_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody687_9 : HolLoopProg 64 :=
.mark loopBody687_8

def loopBody687_10 : HolLoopProg 64 :=
.seq loopBody687_9 loopBody687_1

def loopBody687_11 : HolLoopProg 64 :=
.mark loopBody687_10

def loopBody687_12 : HolLoopProg 64 :=
.seq loopBody687_5 loopBody687_11

def loopBody687_13 : HolLoopProg 64 :=
.mark loopBody687_12

def loopBody687_14 : HolLoopProg 64 :=
.seq loopBody687_3 loopBody687_13

def loopBody687_15 : HolLoopProg 64 :=
.mark loopBody687_14

def loopBody687_16 : HolLoopProg 64 :=
.seq loopBody687_1 loopBody687_15

def loopBody687_17 : HolLoopProg 64 :=
.mark loopBody687_16

def loopBody687_18 : HolLoopProg 64 :=
.seq loopBody687_1 loopBody687_17

def loopBody687_19 : HolLoopProg 64 :=
.mark loopBody687_18

def loopBody687_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 96#64])

def loopBody687_21 : HolLoopProg 64 :=
.mark loopBody687_20

def loopBody687_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 96#64])

def loopBody687_23 : HolLoopProg 64 :=
.mark loopBody687_22

def loopBody687_24 : HolLoopProg 64 :=
.seq loopBody687_23 loopBody687_11

def loopBody687_25 : HolLoopProg 64 :=
.mark loopBody687_24

def loopBody687_26 : HolLoopProg 64 :=
.seq loopBody687_21 loopBody687_25

def loopBody687_27 : HolLoopProg 64 :=
.mark loopBody687_26

def loopBody687_28 : HolLoopProg 64 :=
.seq loopBody687_1 loopBody687_27

def loopBody687_29 : HolLoopProg 64 :=
.mark loopBody687_28

def loopBody687_30 : HolLoopProg 64 :=
.seq loopBody687_1 loopBody687_29

def loopBody687_31 : HolLoopProg 64 :=
.mark loopBody687_30

def loopBody687_32 : HolLoopProg 64 :=
.seq loopBody687_19 loopBody687_31

def loopBody687_33 : HolLoopProg 64 :=
.mark loopBody687_32

def loopBody687_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 192#64])

def loopBody687_35 : HolLoopProg 64 :=
.mark loopBody687_34

def loopBody687_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 192#64])

def loopBody687_37 : HolLoopProg 64 :=
.mark loopBody687_36

def loopBody687_38 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 736) ([3, 4]) (some (3, loopBody687_7, loopBody687_1, (Flapjack.Spt.ln)))

def loopBody687_39 : HolLoopProg 64 :=
.mark loopBody687_38

def loopBody687_40 : HolLoopProg 64 :=
.seq loopBody687_39 loopBody687_1

def loopBody687_41 : HolLoopProg 64 :=
.mark loopBody687_40

def loopBody687_42 : HolLoopProg 64 :=
.seq loopBody687_37 loopBody687_41

def loopBody687_43 : HolLoopProg 64 :=
.mark loopBody687_42

def loopBody687_44 : HolLoopProg 64 :=
.seq loopBody687_35 loopBody687_43

def loopBody687_45 : HolLoopProg 64 :=
.mark loopBody687_44

def loopBody687_46 : HolLoopProg 64 :=
.seq loopBody687_1 loopBody687_45

def loopBody687_47 : HolLoopProg 64 :=
.mark loopBody687_46

def loopBody687_48 : HolLoopProg 64 :=
.seq loopBody687_1 loopBody687_47

def loopBody687_49 : HolLoopProg 64 :=
.mark loopBody687_48

def loopBody687_50 : HolLoopProg 64 :=
.seq loopBody687_33 loopBody687_49

def loopBody687_51 : HolLoopProg 64 :=
.mark loopBody687_50

def loopBody687_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody687_53 : HolLoopProg 64 :=
.mark loopBody687_52

def loopBody687_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody687_55 : HolLoopProg 64 :=
.mark loopBody687_54

def loopBody687_56 : HolLoopProg 64 :=
.seq loopBody687_55 loopBody687_1

def loopBody687_57 : HolLoopProg 64 :=
.mark loopBody687_56

def loopBody687_58 : HolLoopProg 64 :=
.seq loopBody687_53 loopBody687_57

def loopBody687_59 : HolLoopProg 64 :=
.mark loopBody687_58

def loopBody687_60 : HolLoopProg 64 :=
.seq loopBody687_51 loopBody687_59

def loopBody687_61 : HolLoopProg 64 :=
.mark loopBody687_60

def output687 : Nat × List Nat × HolLoopProg 64 :=
  (751, [0, 1], loopBody687_61)
end InitECandidate.Proofs.FrontendStages.Loop
