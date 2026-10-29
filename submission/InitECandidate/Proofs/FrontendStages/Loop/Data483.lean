import InitECandidate.Proofs.FrontendStages.Loop.Translate467
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody483_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody483_1 : HolLoopProg 64 :=
.mark loopBody483_0

def loopBody483_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody483_3 : HolLoopProg 64 :=
.mark loopBody483_2

def loopBody483_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody483_5 : HolLoopProg 64 :=
.mark loopBody483_4

def loopBody483_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody483_7 : HolLoopProg 64 :=
.mark loopBody483_6

def loopBody483_8 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 392) ([3, 4]) (some (3, loopBody483_7, loopBody483_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody483_9 : HolLoopProg 64 :=
.mark loopBody483_8

def loopBody483_10 : HolLoopProg 64 :=
.seq loopBody483_9 loopBody483_1

def loopBody483_11 : HolLoopProg 64 :=
.mark loopBody483_10

def loopBody483_12 : HolLoopProg 64 :=
.seq loopBody483_5 loopBody483_11

def loopBody483_13 : HolLoopProg 64 :=
.mark loopBody483_12

def loopBody483_14 : HolLoopProg 64 :=
.seq loopBody483_3 loopBody483_13

def loopBody483_15 : HolLoopProg 64 :=
.mark loopBody483_14

def loopBody483_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 176#64]))

def loopBody483_17 : HolLoopProg 64 :=
.mark loopBody483_16

def loopBody483_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody483_19 : HolLoopProg 64 :=
.mark loopBody483_18

def loopBody483_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody483_21 : HolLoopProg 64 :=
.mark loopBody483_20

def loopBody483_22 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.ln)) (some 187) ([4, 5]) (some (4, loopBody483_21, loopBody483_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody483_23 : HolLoopProg 64 :=
.mark loopBody483_22

def loopBody483_24 : HolLoopProg 64 :=
.seq loopBody483_23 loopBody483_1

def loopBody483_25 : HolLoopProg 64 :=
.mark loopBody483_24

def loopBody483_26 : HolLoopProg 64 :=
.seq loopBody483_19 loopBody483_25

def loopBody483_27 : HolLoopProg 64 :=
.mark loopBody483_26

def loopBody483_28 : HolLoopProg 64 :=
.seq loopBody483_17 loopBody483_27

def loopBody483_29 : HolLoopProg 64 :=
.mark loopBody483_28

def loopBody483_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody483_31 : HolLoopProg 64 :=
.mark loopBody483_30

def loopBody483_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody483_33 : HolLoopProg 64 :=
.mark loopBody483_32

def loopBody483_34 : HolLoopProg 64 :=
.seq loopBody483_33 loopBody483_1

def loopBody483_35 : HolLoopProg 64 :=
.mark loopBody483_34

def loopBody483_36 : HolLoopProg 64 :=
.seq loopBody483_31 loopBody483_35

def loopBody483_37 : HolLoopProg 64 :=
.mark loopBody483_36

def loopBody483_38 : HolLoopProg 64 :=
.seq loopBody483_29 loopBody483_37

def loopBody483_39 : HolLoopProg 64 :=
.mark loopBody483_38

def loopBody483_40 : HolLoopProg 64 :=
.seq loopBody483_1 loopBody483_39

def loopBody483_41 : HolLoopProg 64 :=
.mark loopBody483_40

def loopBody483_42 : HolLoopProg 64 :=
.seq loopBody483_1 loopBody483_41

def loopBody483_43 : HolLoopProg 64 :=
.mark loopBody483_42

def loopBody483_44 : HolLoopProg 64 :=
.seq loopBody483_15 loopBody483_43

def loopBody483_45 : HolLoopProg 64 :=
.mark loopBody483_44

def loopBody483_46 : HolLoopProg 64 :=
.seq loopBody483_1 loopBody483_45

def loopBody483_47 : HolLoopProg 64 :=
.mark loopBody483_46

def loopBody483_48 : HolLoopProg 64 :=
.seq loopBody483_1 loopBody483_47

def loopBody483_49 : HolLoopProg 64 :=
.mark loopBody483_48

def output483 : Nat × List Nat × HolLoopProg 64 :=
  (547, [0, 1], loopBody483_49)
end InitECandidate.Proofs.FrontendStages.Loop
