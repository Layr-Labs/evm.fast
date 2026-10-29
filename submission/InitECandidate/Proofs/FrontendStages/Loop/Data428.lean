import InitECandidate.Proofs.FrontendStages.Loop.Translate412
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody428_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.add
            [Flapjack.HolLoopExp.load
                (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                  [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
              Flapjack.HolLoopExp.const 112#64]),
        Flapjack.HolLoopExp.const 144#64]))

def loopBody428_1 : HolLoopProg 64 :=
.mark loopBody428_0

def loopBody428_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody428_3 : HolLoopProg 64 :=
.mark loopBody428_2

def loopBody428_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody428_5 : HolLoopProg 64 :=
.mark loopBody428_4

def loopBody428_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody428_7 : HolLoopProg 64 :=
.mark loopBody428_6

def loopBody428_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.RegImm.reg 3) loopBody428_5 loopBody428_7 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)

def loopBody428_9 : HolLoopProg 64 :=
.mark loopBody428_8

def loopBody428_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody428_11 : HolLoopProg 64 :=
.mark loopBody428_10

def loopBody428_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody428_13 : HolLoopProg 64 :=
.mark loopBody428_12

def loopBody428_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 8#64)

def loopBody428_15 : HolLoopProg 64 :=
.mark loopBody428_14

def loopBody428_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 1)

def loopBody428_17 : HolLoopProg 64 :=
.mark loopBody428_16

def loopBody428_18 : HolLoopProg 64 :=
.seq loopBody428_17 loopBody428_13

def loopBody428_19 : HolLoopProg 64 :=
.mark loopBody428_18

def loopBody428_20 : HolLoopProg 64 :=
.seq loopBody428_19 loopBody428_13

def loopBody428_21 : HolLoopProg 64 :=
.mark loopBody428_20

def loopBody428_22 : HolLoopProg 64 :=
.seq loopBody428_15 loopBody428_21

def loopBody428_23 : HolLoopProg 64 :=
.mark loopBody428_22

def loopBody428_24 : HolLoopProg 64 :=
.seq loopBody428_13 loopBody428_23

def loopBody428_25 : HolLoopProg 64 :=
.mark loopBody428_24

def loopBody428_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 1

def loopBody428_27 : HolLoopProg 64 :=
.mark loopBody428_26

def loopBody428_28 : HolLoopProg 64 :=
.seq loopBody428_15 loopBody428_27

def loopBody428_29 : HolLoopProg 64 :=
.mark loopBody428_28

def loopBody428_30 : HolLoopProg 64 :=
.seq loopBody428_25 loopBody428_29

def loopBody428_31 : HolLoopProg 64 :=
.mark loopBody428_30

def loopBody428_32 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody428_31 loopBody428_13 (Flapjack.Spt.ln)

def loopBody428_33 : HolLoopProg 64 :=
.mark loopBody428_32

def loopBody428_34 : HolLoopProg 64 :=
.seq loopBody428_33 loopBody428_13

def loopBody428_35 : HolLoopProg 64 :=
.mark loopBody428_34

def loopBody428_36 : HolLoopProg 64 :=
.seq loopBody428_11 loopBody428_35

def loopBody428_37 : HolLoopProg 64 :=
.mark loopBody428_36

def loopBody428_38 : HolLoopProg 64 :=
.seq loopBody428_9 loopBody428_37

def loopBody428_39 : HolLoopProg 64 :=
.mark loopBody428_38

def loopBody428_40 : HolLoopProg 64 :=
.seq loopBody428_3 loopBody428_39

def loopBody428_41 : HolLoopProg 64 :=
.mark loopBody428_40

def loopBody428_42 : HolLoopProg 64 :=
.seq loopBody428_1 loopBody428_41

def loopBody428_43 : HolLoopProg 64 :=
.mark loopBody428_42

def loopBody428_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody428_45 : HolLoopProg 64 :=
.mark loopBody428_44

def loopBody428_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody428_47 : HolLoopProg 64 :=
.mark loopBody428_46

def loopBody428_48 : HolLoopProg 64 :=
.seq loopBody428_47 loopBody428_13

def loopBody428_49 : HolLoopProg 64 :=
.mark loopBody428_48

def loopBody428_50 : HolLoopProg 64 :=
.seq loopBody428_45 loopBody428_49

def loopBody428_51 : HolLoopProg 64 :=
.mark loopBody428_50

def loopBody428_52 : HolLoopProg 64 :=
.seq loopBody428_43 loopBody428_51

def loopBody428_53 : HolLoopProg 64 :=
.mark loopBody428_52

def output428 : Nat × List Nat × HolLoopProg 64 :=
  (492, [], loopBody428_53)
end InitECandidate.Proofs.FrontendStages.Loop
