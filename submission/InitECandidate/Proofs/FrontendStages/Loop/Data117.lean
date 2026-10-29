import InitECandidate.Proofs.FrontendStages.Loop.Translate101
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody117_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody117_1 : HolLoopProg 64 :=
.mark loopBody117_0

def loopBody117_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 128#64)

def loopBody117_3 : HolLoopProg 64 :=
.mark loopBody117_2

def loopBody117_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody117_5 : HolLoopProg 64 :=
.mark loopBody117_4

def loopBody117_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody117_7 : HolLoopProg 64 :=
.mark loopBody117_6

def loopBody117_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.RegImm.reg 3) loopBody117_5 loopBody117_7 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def loopBody117_9 : HolLoopProg 64 :=
.mark loopBody117_8

def loopBody117_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody117_11 : HolLoopProg 64 :=
.mark loopBody117_10

def loopBody117_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 1#64)

def loopBody117_13 : HolLoopProg 64 :=
.mark loopBody117_12

def loopBody117_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody117_15 : HolLoopProg 64 :=
.mark loopBody117_14

def loopBody117_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody117_17 : HolLoopProg 64 :=
.mark loopBody117_16

def loopBody117_18 : HolLoopProg 64 :=
.seq loopBody117_15 loopBody117_17

def loopBody117_19 : HolLoopProg 64 :=
.mark loopBody117_18

def loopBody117_20 : HolLoopProg 64 :=
.seq loopBody117_13 loopBody117_19

def loopBody117_21 : HolLoopProg 64 :=
.mark loopBody117_20

def loopBody117_22 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody117_21 loopBody117_17 (Flapjack.Spt.ls PUnit.unit)

def loopBody117_23 : HolLoopProg 64 :=
.mark loopBody117_22

def loopBody117_24 : HolLoopProg 64 :=
.seq loopBody117_23 loopBody117_17

def loopBody117_25 : HolLoopProg 64 :=
.mark loopBody117_24

def loopBody117_26 : HolLoopProg 64 :=
.seq loopBody117_11 loopBody117_25

def loopBody117_27 : HolLoopProg 64 :=
.mark loopBody117_26

def loopBody117_28 : HolLoopProg 64 :=
.seq loopBody117_9 loopBody117_27

def loopBody117_29 : HolLoopProg 64 :=
.mark loopBody117_28

def loopBody117_30 : HolLoopProg 64 :=
.seq loopBody117_3 loopBody117_29

def loopBody117_31 : HolLoopProg 64 :=
.mark loopBody117_30

def loopBody117_32 : HolLoopProg 64 :=
.seq loopBody117_1 loopBody117_31

def loopBody117_33 : HolLoopProg 64 :=
.mark loopBody117_32

def loopBody117_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody117_35 : HolLoopProg 64 :=
.mark loopBody117_34

def loopBody117_36 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 172) ([2]) (some (2, loopBody117_35, loopBody117_17, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody117_37 : HolLoopProg 64 :=
.mark loopBody117_36

def loopBody117_38 : HolLoopProg 64 :=
.seq loopBody117_37 loopBody117_17

def loopBody117_39 : HolLoopProg 64 :=
.mark loopBody117_38

def loopBody117_40 : HolLoopProg 64 :=
.seq loopBody117_1 loopBody117_39

def loopBody117_41 : HolLoopProg 64 :=
.mark loopBody117_40

def loopBody117_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.const 1#64, Flapjack.HolLoopExp.var 1])

def loopBody117_43 : HolLoopProg 64 :=
.mark loopBody117_42

def loopBody117_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody117_45 : HolLoopProg 64 :=
.mark loopBody117_44

def loopBody117_46 : HolLoopProg 64 :=
.seq loopBody117_45 loopBody117_17

def loopBody117_47 : HolLoopProg 64 :=
.mark loopBody117_46

def loopBody117_48 : HolLoopProg 64 :=
.seq loopBody117_43 loopBody117_47

def loopBody117_49 : HolLoopProg 64 :=
.mark loopBody117_48

def loopBody117_50 : HolLoopProg 64 :=
.seq loopBody117_41 loopBody117_49

def loopBody117_51 : HolLoopProg 64 :=
.mark loopBody117_50

def loopBody117_52 : HolLoopProg 64 :=
.seq loopBody117_17 loopBody117_51

def loopBody117_53 : HolLoopProg 64 :=
.mark loopBody117_52

def loopBody117_54 : HolLoopProg 64 :=
.seq loopBody117_17 loopBody117_53

def loopBody117_55 : HolLoopProg 64 :=
.mark loopBody117_54

def loopBody117_56 : HolLoopProg 64 :=
.seq loopBody117_33 loopBody117_55

def loopBody117_57 : HolLoopProg 64 :=
.mark loopBody117_56

def output117 : Nat × List Nat × HolLoopProg 64 :=
  (181, [0], loopBody117_57)
end InitECandidate.Proofs.FrontendStages.Loop
