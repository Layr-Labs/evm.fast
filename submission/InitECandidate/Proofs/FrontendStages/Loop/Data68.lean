import InitECandidate.Proofs.FrontendStages.Loop.Translate52
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody68_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 63#64))

def loopBody68_1 : HolLoopProg 64 :=
.mark loopBody68_0

def loopBody68_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody68_3 : HolLoopProg 64 :=
.mark loopBody68_2

def loopBody68_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody68_5 : HolLoopProg 64 :=
.mark loopBody68_4

def loopBody68_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody68_7 : HolLoopProg 64 :=
.mark loopBody68_6

def loopBody68_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.RegImm.reg 6) loopBody68_5 loopBody68_7 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody68_9 : HolLoopProg 64 :=
.mark loopBody68_8

def loopBody68_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody68_11 : HolLoopProg 64 :=
.mark loopBody68_10

def loopBody68_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody68_13 : HolLoopProg 64 :=
.mark loopBody68_12

def loopBody68_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody68_15 : HolLoopProg 64 :=
.mark loopBody68_14

def loopBody68_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody68_17 : HolLoopProg 64 :=
.mark loopBody68_16

def loopBody68_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody68_19 : HolLoopProg 64 :=
.mark loopBody68_18

def loopBody68_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 118) [4, 5, 6, 7] none

def loopBody68_21 : HolLoopProg 64 :=
.mark loopBody68_20

def loopBody68_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody68_23 : HolLoopProg 64 :=
.mark loopBody68_22

def loopBody68_24 : HolLoopProg 64 :=
.seq loopBody68_21 loopBody68_23

def loopBody68_25 : HolLoopProg 64 :=
.mark loopBody68_24

def loopBody68_26 : HolLoopProg 64 :=
.seq loopBody68_19 loopBody68_25

def loopBody68_27 : HolLoopProg 64 :=
.mark loopBody68_26

def loopBody68_28 : HolLoopProg 64 :=
.seq loopBody68_17 loopBody68_27

def loopBody68_29 : HolLoopProg 64 :=
.mark loopBody68_28

def loopBody68_30 : HolLoopProg 64 :=
.seq loopBody68_15 loopBody68_29

def loopBody68_31 : HolLoopProg 64 :=
.mark loopBody68_30

def loopBody68_32 : HolLoopProg 64 :=
.seq loopBody68_13 loopBody68_31

def loopBody68_33 : HolLoopProg 64 :=
.mark loopBody68_32

def loopBody68_34 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody68_33 loopBody68_23 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody68_35 : HolLoopProg 64 :=
.mark loopBody68_34

def loopBody68_36 : HolLoopProg 64 :=
.seq loopBody68_35 loopBody68_23

def loopBody68_37 : HolLoopProg 64 :=
.mark loopBody68_36

def loopBody68_38 : HolLoopProg 64 :=
.seq loopBody68_11 loopBody68_37

def loopBody68_39 : HolLoopProg 64 :=
.mark loopBody68_38

def loopBody68_40 : HolLoopProg 64 :=
.seq loopBody68_9 loopBody68_39

def loopBody68_41 : HolLoopProg 64 :=
.mark loopBody68_40

def loopBody68_42 : HolLoopProg 64 :=
.seq loopBody68_3 loopBody68_41

def loopBody68_43 : HolLoopProg 64 :=
.mark loopBody68_42

def loopBody68_44 : HolLoopProg 64 :=
.seq loopBody68_1 loopBody68_43

def loopBody68_45 : HolLoopProg 64 :=
.mark loopBody68_44

def loopBody68_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4, 5, 6, 7]

def loopBody68_47 : HolLoopProg 64 :=
.mark loopBody68_46

def loopBody68_48 : HolLoopProg 64 :=
.seq loopBody68_47 loopBody68_23

def loopBody68_49 : HolLoopProg 64 :=
.mark loopBody68_48

def loopBody68_50 : HolLoopProg 64 :=
.seq loopBody68_19 loopBody68_49

def loopBody68_51 : HolLoopProg 64 :=
.mark loopBody68_50

def loopBody68_52 : HolLoopProg 64 :=
.seq loopBody68_17 loopBody68_51

def loopBody68_53 : HolLoopProg 64 :=
.mark loopBody68_52

def loopBody68_54 : HolLoopProg 64 :=
.seq loopBody68_15 loopBody68_53

def loopBody68_55 : HolLoopProg 64 :=
.mark loopBody68_54

def loopBody68_56 : HolLoopProg 64 :=
.seq loopBody68_13 loopBody68_55

def loopBody68_57 : HolLoopProg 64 :=
.mark loopBody68_56

def loopBody68_58 : HolLoopProg 64 :=
.seq loopBody68_45 loopBody68_57

def loopBody68_59 : HolLoopProg 64 :=
.mark loopBody68_58

def output68 : Nat × List Nat × HolLoopProg 64 :=
  (132, [0, 1, 2, 3], loopBody68_59)
end InitECandidate.Proofs.FrontendStages.Loop
