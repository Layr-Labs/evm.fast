import InitECandidate.Proofs.FrontendStages.Loop.Translate398
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody414_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody414_1 : HolLoopProg 64 :=
.mark loopBody414_0

def loopBody414_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody414_3 : HolLoopProg 64 :=
.mark loopBody414_2

def loopBody414_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody414_5 : HolLoopProg 64 :=
.mark loopBody414_4

def loopBody414_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody414_7 : HolLoopProg 64 :=
.mark loopBody414_6

def loopBody414_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.RegImm.reg 3) loopBody414_5 loopBody414_7 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)

def loopBody414_9 : HolLoopProg 64 :=
.mark loopBody414_8

def loopBody414_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody414_11 : HolLoopProg 64 :=
.mark loopBody414_10

def loopBody414_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody414_13 : HolLoopProg 64 :=
.mark loopBody414_12

def loopBody414_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody414_15 : HolLoopProg 64 :=
.mark loopBody414_14

def loopBody414_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody414_17 : HolLoopProg 64 :=
.mark loopBody414_16

def loopBody414_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody414_19 : HolLoopProg 64 :=
.mark loopBody414_18

def loopBody414_20 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 476) ([2, 3, 4, 5]) (some (2, loopBody414_19, loopBody414_13, (Flapjack.Spt.ln)))

def loopBody414_21 : HolLoopProg 64 :=
.mark loopBody414_20

def loopBody414_22 : HolLoopProg 64 :=
.seq loopBody414_21 loopBody414_13

def loopBody414_23 : HolLoopProg 64 :=
.mark loopBody414_22

def loopBody414_24 : HolLoopProg 64 :=
.seq loopBody414_17 loopBody414_23

def loopBody414_25 : HolLoopProg 64 :=
.mark loopBody414_24

def loopBody414_26 : HolLoopProg 64 :=
.seq loopBody414_15 loopBody414_25

def loopBody414_27 : HolLoopProg 64 :=
.mark loopBody414_26

def loopBody414_28 : HolLoopProg 64 :=
.seq loopBody414_3 loopBody414_27

def loopBody414_29 : HolLoopProg 64 :=
.mark loopBody414_28

def loopBody414_30 : HolLoopProg 64 :=
.seq loopBody414_5 loopBody414_29

def loopBody414_31 : HolLoopProg 64 :=
.mark loopBody414_30

def loopBody414_32 : HolLoopProg 64 :=
.seq loopBody414_13 loopBody414_31

def loopBody414_33 : HolLoopProg 64 :=
.mark loopBody414_32

def loopBody414_34 : HolLoopProg 64 :=
.seq loopBody414_13 loopBody414_33

def loopBody414_35 : HolLoopProg 64 :=
.mark loopBody414_34

def loopBody414_36 : HolLoopProg 64 :=
.seq loopBody414_7 loopBody414_29

def loopBody414_37 : HolLoopProg 64 :=
.mark loopBody414_36

def loopBody414_38 : HolLoopProg 64 :=
.seq loopBody414_13 loopBody414_37

def loopBody414_39 : HolLoopProg 64 :=
.mark loopBody414_38

def loopBody414_40 : HolLoopProg 64 :=
.seq loopBody414_13 loopBody414_39

def loopBody414_41 : HolLoopProg 64 :=
.mark loopBody414_40

def loopBody414_42 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody414_35 loopBody414_41 (Flapjack.Spt.ln)

def loopBody414_43 : HolLoopProg 64 :=
.mark loopBody414_42

def loopBody414_44 : HolLoopProg 64 :=
.seq loopBody414_43 loopBody414_13

def loopBody414_45 : HolLoopProg 64 :=
.mark loopBody414_44

def loopBody414_46 : HolLoopProg 64 :=
.seq loopBody414_11 loopBody414_45

def loopBody414_47 : HolLoopProg 64 :=
.mark loopBody414_46

def loopBody414_48 : HolLoopProg 64 :=
.seq loopBody414_9 loopBody414_47

def loopBody414_49 : HolLoopProg 64 :=
.mark loopBody414_48

def loopBody414_50 : HolLoopProg 64 :=
.seq loopBody414_3 loopBody414_49

def loopBody414_51 : HolLoopProg 64 :=
.mark loopBody414_50

def loopBody414_52 : HolLoopProg 64 :=
.seq loopBody414_1 loopBody414_51

def loopBody414_53 : HolLoopProg 64 :=
.mark loopBody414_52

def loopBody414_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody414_55 : HolLoopProg 64 :=
.mark loopBody414_54

def loopBody414_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody414_57 : HolLoopProg 64 :=
.mark loopBody414_56

def loopBody414_58 : HolLoopProg 64 :=
.seq loopBody414_57 loopBody414_13

def loopBody414_59 : HolLoopProg 64 :=
.mark loopBody414_58

def loopBody414_60 : HolLoopProg 64 :=
.seq loopBody414_55 loopBody414_59

def loopBody414_61 : HolLoopProg 64 :=
.mark loopBody414_60

def loopBody414_62 : HolLoopProg 64 :=
.seq loopBody414_53 loopBody414_61

def loopBody414_63 : HolLoopProg 64 :=
.mark loopBody414_62

def output414 : Nat × List Nat × HolLoopProg 64 :=
  (478, [0], loopBody414_63)
end InitECandidate.Proofs.FrontendStages.Loop
