import InitECandidate.Proofs.FrontendStages.Loop.Translate531
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody547_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody547_1 : HolLoopProg 64 :=
.mark loopBody547_0

def loopBody547_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 168#64]))

def loopBody547_3 : HolLoopProg 64 :=
.mark loopBody547_2

def loopBody547_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 264#64]))

def loopBody547_5 : HolLoopProg 64 :=
.mark loopBody547_4

def loopBody547_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody547_7 : HolLoopProg 64 :=
.mark loopBody547_6

def loopBody547_8 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 194) ([2, 3]) (some (2, loopBody547_7, loopBody547_1, (Flapjack.Spt.ls PUnit.unit)))

def loopBody547_9 : HolLoopProg 64 :=
.mark loopBody547_8

def loopBody547_10 : HolLoopProg 64 :=
.seq loopBody547_9 loopBody547_1

def loopBody547_11 : HolLoopProg 64 :=
.mark loopBody547_10

def loopBody547_12 : HolLoopProg 64 :=
.seq loopBody547_5 loopBody547_11

def loopBody547_13 : HolLoopProg 64 :=
.mark loopBody547_12

def loopBody547_14 : HolLoopProg 64 :=
.seq loopBody547_3 loopBody547_13

def loopBody547_15 : HolLoopProg 64 :=
.mark loopBody547_14

def loopBody547_16 : HolLoopProg 64 :=
.seq loopBody547_1 loopBody547_15

def loopBody547_17 : HolLoopProg 64 :=
.mark loopBody547_16

def loopBody547_18 : HolLoopProg 64 :=
.seq loopBody547_1 loopBody547_17

def loopBody547_19 : HolLoopProg 64 :=
.mark loopBody547_18

def loopBody547_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 176#64]))

def loopBody547_21 : HolLoopProg 64 :=
.mark loopBody547_20

def loopBody547_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 272#64]))

def loopBody547_23 : HolLoopProg 64 :=
.mark loopBody547_22

def loopBody547_24 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 194) ([2, 3]) (some (2, loopBody547_7, loopBody547_1, (Flapjack.Spt.ln)))

def loopBody547_25 : HolLoopProg 64 :=
.mark loopBody547_24

def loopBody547_26 : HolLoopProg 64 :=
.seq loopBody547_25 loopBody547_1

def loopBody547_27 : HolLoopProg 64 :=
.mark loopBody547_26

def loopBody547_28 : HolLoopProg 64 :=
.seq loopBody547_23 loopBody547_27

def loopBody547_29 : HolLoopProg 64 :=
.mark loopBody547_28

def loopBody547_30 : HolLoopProg 64 :=
.seq loopBody547_21 loopBody547_29

def loopBody547_31 : HolLoopProg 64 :=
.mark loopBody547_30

def loopBody547_32 : HolLoopProg 64 :=
.seq loopBody547_1 loopBody547_31

def loopBody547_33 : HolLoopProg 64 :=
.mark loopBody547_32

def loopBody547_34 : HolLoopProg 64 :=
.seq loopBody547_1 loopBody547_33

def loopBody547_35 : HolLoopProg 64 :=
.mark loopBody547_34

def loopBody547_36 : HolLoopProg 64 :=
.seq loopBody547_19 loopBody547_35

def loopBody547_37 : HolLoopProg 64 :=
.mark loopBody547_36

def loopBody547_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody547_39 : HolLoopProg 64 :=
.mark loopBody547_38

def loopBody547_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody547_41 : HolLoopProg 64 :=
.mark loopBody547_40

def loopBody547_42 : HolLoopProg 64 :=
.seq loopBody547_41 loopBody547_1

def loopBody547_43 : HolLoopProg 64 :=
.mark loopBody547_42

def loopBody547_44 : HolLoopProg 64 :=
.seq loopBody547_39 loopBody547_43

def loopBody547_45 : HolLoopProg 64 :=
.mark loopBody547_44

def loopBody547_46 : HolLoopProg 64 :=
.seq loopBody547_37 loopBody547_45

def loopBody547_47 : HolLoopProg 64 :=
.mark loopBody547_46

def output547 : Nat × List Nat × HolLoopProg 64 :=
  (611, [0], loopBody547_47)
end InitECandidate.Proofs.FrontendStages.Loop
