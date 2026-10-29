import InitECandidate.Proofs.FrontendStages.Loop.Translate389
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody405_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 64#64]))

def loopBody405_1 : HolLoopProg 64 :=
.mark loopBody405_0

def loopBody405_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody405_3 : HolLoopProg 64 :=
.mark loopBody405_2

def loopBody405_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody405_5 : HolLoopProg 64 :=
.mark loopBody405_4

def loopBody405_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody405_7 : HolLoopProg 64 :=
.mark loopBody405_6

def loopBody405_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.RegImm.reg 3) loopBody405_5 loopBody405_7 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)

def loopBody405_9 : HolLoopProg 64 :=
.mark loopBody405_8

def loopBody405_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody405_11 : HolLoopProg 64 :=
.mark loopBody405_10

def loopBody405_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody405_13 : HolLoopProg 64 :=
.mark loopBody405_12

def loopBody405_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 4#64)

def loopBody405_15 : HolLoopProg 64 :=
.mark loopBody405_14

def loopBody405_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 1)

def loopBody405_17 : HolLoopProg 64 :=
.mark loopBody405_16

def loopBody405_18 : HolLoopProg 64 :=
.seq loopBody405_17 loopBody405_13

def loopBody405_19 : HolLoopProg 64 :=
.mark loopBody405_18

def loopBody405_20 : HolLoopProg 64 :=
.seq loopBody405_19 loopBody405_13

def loopBody405_21 : HolLoopProg 64 :=
.mark loopBody405_20

def loopBody405_22 : HolLoopProg 64 :=
.seq loopBody405_15 loopBody405_21

def loopBody405_23 : HolLoopProg 64 :=
.mark loopBody405_22

def loopBody405_24 : HolLoopProg 64 :=
.seq loopBody405_13 loopBody405_23

def loopBody405_25 : HolLoopProg 64 :=
.mark loopBody405_24

def loopBody405_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 8#64)

def loopBody405_27 : HolLoopProg 64 :=
.mark loopBody405_26

def loopBody405_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 1

def loopBody405_29 : HolLoopProg 64 :=
.mark loopBody405_28

def loopBody405_30 : HolLoopProg 64 :=
.seq loopBody405_27 loopBody405_29

def loopBody405_31 : HolLoopProg 64 :=
.mark loopBody405_30

def loopBody405_32 : HolLoopProg 64 :=
.seq loopBody405_25 loopBody405_31

def loopBody405_33 : HolLoopProg 64 :=
.mark loopBody405_32

def loopBody405_34 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody405_33 loopBody405_13 (Flapjack.Spt.ln)

def loopBody405_35 : HolLoopProg 64 :=
.mark loopBody405_34

def loopBody405_36 : HolLoopProg 64 :=
.seq loopBody405_35 loopBody405_13

def loopBody405_37 : HolLoopProg 64 :=
.mark loopBody405_36

def loopBody405_38 : HolLoopProg 64 :=
.seq loopBody405_11 loopBody405_37

def loopBody405_39 : HolLoopProg 64 :=
.mark loopBody405_38

def loopBody405_40 : HolLoopProg 64 :=
.seq loopBody405_9 loopBody405_39

def loopBody405_41 : HolLoopProg 64 :=
.mark loopBody405_40

def loopBody405_42 : HolLoopProg 64 :=
.seq loopBody405_3 loopBody405_41

def loopBody405_43 : HolLoopProg 64 :=
.mark loopBody405_42

def loopBody405_44 : HolLoopProg 64 :=
.seq loopBody405_1 loopBody405_43

def loopBody405_45 : HolLoopProg 64 :=
.mark loopBody405_44

def loopBody405_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody405_47 : HolLoopProg 64 :=
.mark loopBody405_46

def loopBody405_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody405_49 : HolLoopProg 64 :=
.mark loopBody405_48

def loopBody405_50 : HolLoopProg 64 :=
.seq loopBody405_49 loopBody405_13

def loopBody405_51 : HolLoopProg 64 :=
.mark loopBody405_50

def loopBody405_52 : HolLoopProg 64 :=
.seq loopBody405_47 loopBody405_51

def loopBody405_53 : HolLoopProg 64 :=
.mark loopBody405_52

def loopBody405_54 : HolLoopProg 64 :=
.seq loopBody405_45 loopBody405_53

def loopBody405_55 : HolLoopProg 64 :=
.mark loopBody405_54

def output405 : Nat × List Nat × HolLoopProg 64 :=
  (469, [0], loopBody405_55)
end InitECandidate.Proofs.FrontendStages.Loop
