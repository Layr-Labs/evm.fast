import InitECandidate.Proofs.FrontendStages.Loop.Translate312
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody328_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody328_1 : HolLoopProg 64 :=
.mark loopBody328_0

def loopBody328_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 192#64]))

def loopBody328_3 : HolLoopProg 64 :=
.mark loopBody328_2

def loopBody328_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody328_5 : HolLoopProg 64 :=
.mark loopBody328_4

def loopBody328_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 20#64)

def loopBody328_7 : HolLoopProg 64 :=
.mark loopBody328_6

def loopBody328_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody328_9 : HolLoopProg 64 :=
.mark loopBody328_8

def loopBody328_10 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 77) ([3, 4, 5]) (some (3, loopBody328_9, loopBody328_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody328_11 : HolLoopProg 64 :=
.mark loopBody328_10

def loopBody328_12 : HolLoopProg 64 :=
.seq loopBody328_11 loopBody328_1

def loopBody328_13 : HolLoopProg 64 :=
.mark loopBody328_12

def loopBody328_14 : HolLoopProg 64 :=
.seq loopBody328_7 loopBody328_13

def loopBody328_15 : HolLoopProg 64 :=
.mark loopBody328_14

def loopBody328_16 : HolLoopProg 64 :=
.seq loopBody328_5 loopBody328_15

def loopBody328_17 : HolLoopProg 64 :=
.mark loopBody328_16

def loopBody328_18 : HolLoopProg 64 :=
.seq loopBody328_3 loopBody328_17

def loopBody328_19 : HolLoopProg 64 :=
.mark loopBody328_18

def loopBody328_20 : HolLoopProg 64 :=
.seq loopBody328_1 loopBody328_19

def loopBody328_21 : HolLoopProg 64 :=
.mark loopBody328_20

def loopBody328_22 : HolLoopProg 64 :=
.seq loopBody328_1 loopBody328_21

def loopBody328_23 : HolLoopProg 64 :=
.mark loopBody328_22

def loopBody328_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 192#64]),
      Flapjack.HolLoopExp.const 20#64])

def loopBody328_25 : HolLoopProg 64 :=
.mark loopBody328_24

def loopBody328_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody328_27 : HolLoopProg 64 :=
.mark loopBody328_26

def loopBody328_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 32#64)

def loopBody328_29 : HolLoopProg 64 :=
.mark loopBody328_28

def loopBody328_30 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 77) ([3, 4, 5]) (some (3, loopBody328_9, loopBody328_1, (Flapjack.Spt.ln)))

def loopBody328_31 : HolLoopProg 64 :=
.mark loopBody328_30

def loopBody328_32 : HolLoopProg 64 :=
.seq loopBody328_31 loopBody328_1

def loopBody328_33 : HolLoopProg 64 :=
.mark loopBody328_32

def loopBody328_34 : HolLoopProg 64 :=
.seq loopBody328_29 loopBody328_33

def loopBody328_35 : HolLoopProg 64 :=
.mark loopBody328_34

def loopBody328_36 : HolLoopProg 64 :=
.seq loopBody328_27 loopBody328_35

def loopBody328_37 : HolLoopProg 64 :=
.mark loopBody328_36

def loopBody328_38 : HolLoopProg 64 :=
.seq loopBody328_25 loopBody328_37

def loopBody328_39 : HolLoopProg 64 :=
.mark loopBody328_38

def loopBody328_40 : HolLoopProg 64 :=
.seq loopBody328_1 loopBody328_39

def loopBody328_41 : HolLoopProg 64 :=
.mark loopBody328_40

def loopBody328_42 : HolLoopProg 64 :=
.seq loopBody328_1 loopBody328_41

def loopBody328_43 : HolLoopProg 64 :=
.mark loopBody328_42

def loopBody328_44 : HolLoopProg 64 :=
.seq loopBody328_23 loopBody328_43

def loopBody328_45 : HolLoopProg 64 :=
.mark loopBody328_44

def loopBody328_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 192#64]))

def loopBody328_47 : HolLoopProg 64 :=
.mark loopBody328_46

def loopBody328_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody328_49 : HolLoopProg 64 :=
.mark loopBody328_48

def loopBody328_50 : HolLoopProg 64 :=
.seq loopBody328_49 loopBody328_1

def loopBody328_51 : HolLoopProg 64 :=
.mark loopBody328_50

def loopBody328_52 : HolLoopProg 64 :=
.seq loopBody328_47 loopBody328_51

def loopBody328_53 : HolLoopProg 64 :=
.mark loopBody328_52

def loopBody328_54 : HolLoopProg 64 :=
.seq loopBody328_45 loopBody328_53

def loopBody328_55 : HolLoopProg 64 :=
.mark loopBody328_54

def output328 : Nat × List Nat × HolLoopProg 64 :=
  (392, [0, 1], loopBody328_55)
end InitECandidate.Proofs.FrontendStages.Loop
