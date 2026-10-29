import InitECandidate.Proofs.FrontendStages.Loop.Translate95
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody111_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 55#64)

def loopBody111_1 : HolLoopProg 64 :=
.mark loopBody111_0

def loopBody111_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody111_3 : HolLoopProg 64 :=
.mark loopBody111_2

def loopBody111_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody111_5 : HolLoopProg 64 :=
.mark loopBody111_4

def loopBody111_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody111_7 : HolLoopProg 64 :=
.mark loopBody111_6

def loopBody111_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.RegImm.reg 3) loopBody111_5 loopBody111_7 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def loopBody111_9 : HolLoopProg 64 :=
.mark loopBody111_8

def loopBody111_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody111_11 : HolLoopProg 64 :=
.mark loopBody111_10

def loopBody111_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 1#64)

def loopBody111_13 : HolLoopProg 64 :=
.mark loopBody111_12

def loopBody111_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody111_15 : HolLoopProg 64 :=
.mark loopBody111_14

def loopBody111_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody111_17 : HolLoopProg 64 :=
.mark loopBody111_16

def loopBody111_18 : HolLoopProg 64 :=
.seq loopBody111_15 loopBody111_17

def loopBody111_19 : HolLoopProg 64 :=
.mark loopBody111_18

def loopBody111_20 : HolLoopProg 64 :=
.seq loopBody111_13 loopBody111_19

def loopBody111_21 : HolLoopProg 64 :=
.mark loopBody111_20

def loopBody111_22 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody111_21 loopBody111_17 (Flapjack.Spt.ls PUnit.unit)

def loopBody111_23 : HolLoopProg 64 :=
.mark loopBody111_22

def loopBody111_24 : HolLoopProg 64 :=
.seq loopBody111_23 loopBody111_17

def loopBody111_25 : HolLoopProg 64 :=
.mark loopBody111_24

def loopBody111_26 : HolLoopProg 64 :=
.seq loopBody111_11 loopBody111_25

def loopBody111_27 : HolLoopProg 64 :=
.mark loopBody111_26

def loopBody111_28 : HolLoopProg 64 :=
.seq loopBody111_9 loopBody111_27

def loopBody111_29 : HolLoopProg 64 :=
.mark loopBody111_28

def loopBody111_30 : HolLoopProg 64 :=
.seq loopBody111_3 loopBody111_29

def loopBody111_31 : HolLoopProg 64 :=
.mark loopBody111_30

def loopBody111_32 : HolLoopProg 64 :=
.seq loopBody111_1 loopBody111_31

def loopBody111_33 : HolLoopProg 64 :=
.mark loopBody111_32

def loopBody111_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody111_35 : HolLoopProg 64 :=
.mark loopBody111_34

def loopBody111_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody111_37 : HolLoopProg 64 :=
.mark loopBody111_36

def loopBody111_38 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 172) ([2]) (some (2, loopBody111_37, loopBody111_17, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody111_39 : HolLoopProg 64 :=
.mark loopBody111_38

def loopBody111_40 : HolLoopProg 64 :=
.seq loopBody111_39 loopBody111_17

def loopBody111_41 : HolLoopProg 64 :=
.mark loopBody111_40

def loopBody111_42 : HolLoopProg 64 :=
.seq loopBody111_35 loopBody111_41

def loopBody111_43 : HolLoopProg 64 :=
.mark loopBody111_42

def loopBody111_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.const 1#64, Flapjack.HolLoopExp.var 1])

def loopBody111_45 : HolLoopProg 64 :=
.mark loopBody111_44

def loopBody111_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody111_47 : HolLoopProg 64 :=
.mark loopBody111_46

def loopBody111_48 : HolLoopProg 64 :=
.seq loopBody111_47 loopBody111_17

def loopBody111_49 : HolLoopProg 64 :=
.mark loopBody111_48

def loopBody111_50 : HolLoopProg 64 :=
.seq loopBody111_45 loopBody111_49

def loopBody111_51 : HolLoopProg 64 :=
.mark loopBody111_50

def loopBody111_52 : HolLoopProg 64 :=
.seq loopBody111_43 loopBody111_51

def loopBody111_53 : HolLoopProg 64 :=
.mark loopBody111_52

def loopBody111_54 : HolLoopProg 64 :=
.seq loopBody111_17 loopBody111_53

def loopBody111_55 : HolLoopProg 64 :=
.mark loopBody111_54

def loopBody111_56 : HolLoopProg 64 :=
.seq loopBody111_17 loopBody111_55

def loopBody111_57 : HolLoopProg 64 :=
.mark loopBody111_56

def loopBody111_58 : HolLoopProg 64 :=
.seq loopBody111_33 loopBody111_57

def loopBody111_59 : HolLoopProg 64 :=
.mark loopBody111_58

def output111 : Nat × List Nat × HolLoopProg 64 :=
  (175, [0], loopBody111_59)
end InitECandidate.Proofs.FrontendStages.Loop
