import InitECandidate.Proofs.FrontendStages.Loop.Translate319
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody335_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody335_1 : HolLoopProg 64 :=
.mark loopBody335_0

def loopBody335_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody335_3 : HolLoopProg 64 :=
.mark loopBody335_2

def loopBody335_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody335_5 : HolLoopProg 64 :=
.mark loopBody335_4

def loopBody335_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 398) ([2]) (some (2, loopBody335_5, loopBody335_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody335_7 : HolLoopProg 64 :=
.mark loopBody335_6

def loopBody335_8 : HolLoopProg 64 :=
.seq loopBody335_7 loopBody335_1

def loopBody335_9 : HolLoopProg 64 :=
.mark loopBody335_8

def loopBody335_10 : HolLoopProg 64 :=
.seq loopBody335_3 loopBody335_9

def loopBody335_11 : HolLoopProg 64 :=
.mark loopBody335_10

def loopBody335_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody335_13 : HolLoopProg 64 :=
.mark loopBody335_12

def loopBody335_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody335_15 : HolLoopProg 64 :=
.mark loopBody335_14

def loopBody335_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody335_17 : HolLoopProg 64 :=
.mark loopBody335_16

def loopBody335_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody335_19 : HolLoopProg 64 :=
.mark loopBody335_18

def loopBody335_20 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.RegImm.reg 4) loopBody335_17 loopBody335_19 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody335_21 : HolLoopProg 64 :=
.mark loopBody335_20

def loopBody335_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody335_23 : HolLoopProg 64 :=
.mark loopBody335_22

def loopBody335_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 128#64]))

def loopBody335_25 : HolLoopProg 64 :=
.mark loopBody335_24

def loopBody335_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody335_27 : HolLoopProg 64 :=
.mark loopBody335_26

def loopBody335_28 : HolLoopProg 64 :=
.seq loopBody335_27 loopBody335_1

def loopBody335_29 : HolLoopProg 64 :=
.mark loopBody335_28

def loopBody335_30 : HolLoopProg 64 :=
.seq loopBody335_25 loopBody335_29

def loopBody335_31 : HolLoopProg 64 :=
.mark loopBody335_30

def loopBody335_32 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody335_31 loopBody335_1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))

def loopBody335_33 : HolLoopProg 64 :=
.mark loopBody335_32

def loopBody335_34 : HolLoopProg 64 :=
.seq loopBody335_33 loopBody335_1

def loopBody335_35 : HolLoopProg 64 :=
.mark loopBody335_34

def loopBody335_36 : HolLoopProg 64 :=
.seq loopBody335_23 loopBody335_35

def loopBody335_37 : HolLoopProg 64 :=
.mark loopBody335_36

def loopBody335_38 : HolLoopProg 64 :=
.seq loopBody335_21 loopBody335_37

def loopBody335_39 : HolLoopProg 64 :=
.mark loopBody335_38

def loopBody335_40 : HolLoopProg 64 :=
.seq loopBody335_15 loopBody335_39

def loopBody335_41 : HolLoopProg 64 :=
.mark loopBody335_40

def loopBody335_42 : HolLoopProg 64 :=
.seq loopBody335_13 loopBody335_41

def loopBody335_43 : HolLoopProg 64 :=
.mark loopBody335_42

def loopBody335_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 40#64]))

def loopBody335_45 : HolLoopProg 64 :=
.mark loopBody335_44

def loopBody335_46 : HolLoopProg 64 :=
.seq loopBody335_45 loopBody335_29

def loopBody335_47 : HolLoopProg 64 :=
.mark loopBody335_46

def loopBody335_48 : HolLoopProg 64 :=
.seq loopBody335_43 loopBody335_47

def loopBody335_49 : HolLoopProg 64 :=
.mark loopBody335_48

def loopBody335_50 : HolLoopProg 64 :=
.seq loopBody335_11 loopBody335_49

def loopBody335_51 : HolLoopProg 64 :=
.mark loopBody335_50

def loopBody335_52 : HolLoopProg 64 :=
.seq loopBody335_1 loopBody335_51

def loopBody335_53 : HolLoopProg 64 :=
.mark loopBody335_52

def loopBody335_54 : HolLoopProg 64 :=
.seq loopBody335_1 loopBody335_53

def loopBody335_55 : HolLoopProg 64 :=
.mark loopBody335_54

def output335 : Nat × List Nat × HolLoopProg 64 :=
  (399, [0], loopBody335_55)
end InitECandidate.Proofs.FrontendStages.Loop
