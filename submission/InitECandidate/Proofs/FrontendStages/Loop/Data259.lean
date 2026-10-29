import InitECandidate.Proofs.FrontendStages.Loop.Translate243
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody259_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody259_1 : HolLoopProg 64 :=
.mark loopBody259_0

def loopBody259_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody259_3 : HolLoopProg 64 :=
.mark loopBody259_2

def loopBody259_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody259_5 : HolLoopProg 64 :=
.mark loopBody259_4

def loopBody259_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody259_7 : HolLoopProg 64 :=
.mark loopBody259_6

def loopBody259_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.RegImm.reg 3) loopBody259_5 loopBody259_7 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def loopBody259_9 : HolLoopProg 64 :=
.mark loopBody259_8

def loopBody259_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody259_11 : HolLoopProg 64 :=
.mark loopBody259_10

def loopBody259_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody259_13 : HolLoopProg 64 :=
.mark loopBody259_12

def loopBody259_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody259_15 : HolLoopProg 64 :=
.mark loopBody259_14

def loopBody259_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody259_17 : HolLoopProg 64 :=
.mark loopBody259_16

def loopBody259_18 : HolLoopProg 64 :=
.seq loopBody259_15 loopBody259_17

def loopBody259_19 : HolLoopProg 64 :=
.mark loopBody259_18

def loopBody259_20 : HolLoopProg 64 :=
.seq loopBody259_13 loopBody259_19

def loopBody259_21 : HolLoopProg 64 :=
.mark loopBody259_20

def loopBody259_22 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody259_21 loopBody259_17 (Flapjack.Spt.ls PUnit.unit)

def loopBody259_23 : HolLoopProg 64 :=
.mark loopBody259_22

def loopBody259_24 : HolLoopProg 64 :=
.seq loopBody259_23 loopBody259_17

def loopBody259_25 : HolLoopProg 64 :=
.mark loopBody259_24

def loopBody259_26 : HolLoopProg 64 :=
.seq loopBody259_11 loopBody259_25

def loopBody259_27 : HolLoopProg 64 :=
.mark loopBody259_26

def loopBody259_28 : HolLoopProg 64 :=
.seq loopBody259_9 loopBody259_27

def loopBody259_29 : HolLoopProg 64 :=
.mark loopBody259_28

def loopBody259_30 : HolLoopProg 64 :=
.seq loopBody259_3 loopBody259_29

def loopBody259_31 : HolLoopProg 64 :=
.mark loopBody259_30

def loopBody259_32 : HolLoopProg 64 :=
.seq loopBody259_1 loopBody259_31

def loopBody259_33 : HolLoopProg 64 :=
.mark loopBody259_32

def loopBody259_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64]))

def loopBody259_35 : HolLoopProg 64 :=
.mark loopBody259_34

def loopBody259_36 : HolLoopProg 64 :=
.seq loopBody259_35 loopBody259_31

def loopBody259_37 : HolLoopProg 64 :=
.mark loopBody259_36

def loopBody259_38 : HolLoopProg 64 :=
.seq loopBody259_33 loopBody259_37

def loopBody259_39 : HolLoopProg 64 :=
.mark loopBody259_38

def loopBody259_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64]))

def loopBody259_41 : HolLoopProg 64 :=
.mark loopBody259_40

def loopBody259_42 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.RegImm.reg 3) loopBody259_5 loopBody259_7 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)

def loopBody259_43 : HolLoopProg 64 :=
.mark loopBody259_42

def loopBody259_44 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody259_21 loopBody259_17 (Flapjack.Spt.ln)

def loopBody259_45 : HolLoopProg 64 :=
.mark loopBody259_44

def loopBody259_46 : HolLoopProg 64 :=
.seq loopBody259_45 loopBody259_17

def loopBody259_47 : HolLoopProg 64 :=
.mark loopBody259_46

def loopBody259_48 : HolLoopProg 64 :=
.seq loopBody259_11 loopBody259_47

def loopBody259_49 : HolLoopProg 64 :=
.mark loopBody259_48

def loopBody259_50 : HolLoopProg 64 :=
.seq loopBody259_43 loopBody259_49

def loopBody259_51 : HolLoopProg 64 :=
.mark loopBody259_50

def loopBody259_52 : HolLoopProg 64 :=
.seq loopBody259_3 loopBody259_51

def loopBody259_53 : HolLoopProg 64 :=
.mark loopBody259_52

def loopBody259_54 : HolLoopProg 64 :=
.seq loopBody259_41 loopBody259_53

def loopBody259_55 : HolLoopProg 64 :=
.mark loopBody259_54

def loopBody259_56 : HolLoopProg 64 :=
.seq loopBody259_39 loopBody259_55

def loopBody259_57 : HolLoopProg 64 :=
.mark loopBody259_56

def loopBody259_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 1#64)

def loopBody259_59 : HolLoopProg 64 :=
.mark loopBody259_58

def loopBody259_60 : HolLoopProg 64 :=
.seq loopBody259_59 loopBody259_19

def loopBody259_61 : HolLoopProg 64 :=
.mark loopBody259_60

def loopBody259_62 : HolLoopProg 64 :=
.seq loopBody259_57 loopBody259_61

def loopBody259_63 : HolLoopProg 64 :=
.mark loopBody259_62

def output259 : Nat × List Nat × HolLoopProg 64 :=
  (323, [0], loopBody259_63)
end InitECandidate.Proofs.FrontendStages.Loop
