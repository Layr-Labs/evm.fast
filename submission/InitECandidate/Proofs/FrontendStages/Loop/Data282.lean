import InitECandidate.Proofs.FrontendStages.Loop.Translate266
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody282_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody282_1 : HolLoopProg 64 :=
.mark loopBody282_0

def loopBody282_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody282_3 : HolLoopProg 64 :=
.mark loopBody282_2

def loopBody282_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody282_5 : HolLoopProg 64 :=
.mark loopBody282_4

def loopBody282_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody282_7 : HolLoopProg 64 :=
.mark loopBody282_6

def loopBody282_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.tick

def loopBody282_9 : HolLoopProg 64 :=
.mark loopBody282_8

def loopBody282_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.lookup 0#5)

def loopBody282_11 : HolLoopProg 64 :=
.mark loopBody282_10

def loopBody282_12 : HolLoopProg 64 :=
.seq loopBody282_11 loopBody282_1

def loopBody282_13 : HolLoopProg 64 :=
.mark loopBody282_12

def loopBody282_14 : HolLoopProg 64 :=
.seq loopBody282_13 loopBody282_1

def loopBody282_15 : HolLoopProg 64 :=
.mark loopBody282_14

def loopBody282_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.const 100#64, Flapjack.HolLoopExp.var 3])

def loopBody282_17 : HolLoopProg 64 :=
.mark loopBody282_16

def loopBody282_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 4)

def loopBody282_19 : HolLoopProg 64 :=
.mark loopBody282_18

def loopBody282_20 : HolLoopProg 64 :=
.seq loopBody282_19 loopBody282_1

def loopBody282_21 : HolLoopProg 64 :=
.mark loopBody282_20

def loopBody282_22 : HolLoopProg 64 :=
.seq loopBody282_21 loopBody282_1

def loopBody282_23 : HolLoopProg 64 :=
.mark loopBody282_22

def loopBody282_24 : HolLoopProg 64 :=
.seq loopBody282_17 loopBody282_23

def loopBody282_25 : HolLoopProg 64 :=
.mark loopBody282_24

def loopBody282_26 : HolLoopProg 64 :=
.seq loopBody282_1 loopBody282_25

def loopBody282_27 : HolLoopProg 64 :=
.mark loopBody282_26

def loopBody282_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 6#64)

def loopBody282_29 : HolLoopProg 64 :=
.mark loopBody282_28

def loopBody282_30 : HolLoopProg 64 :=
.seq loopBody282_29 loopBody282_7

def loopBody282_31 : HolLoopProg 64 :=
.mark loopBody282_30

def loopBody282_32 : HolLoopProg 64 :=
.seq loopBody282_27 loopBody282_31

def loopBody282_33 : HolLoopProg 64 :=
.mark loopBody282_32

def loopBody282_34 : HolLoopProg 64 :=
.seq loopBody282_15 loopBody282_33

def loopBody282_35 : HolLoopProg 64 :=
.mark loopBody282_34

def loopBody282_36 : HolLoopProg 64 :=
.seq loopBody282_9 loopBody282_35

def loopBody282_37 : HolLoopProg 64 :=
.mark loopBody282_36

def loopBody282_38 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 1#64) loopBody282_7 loopBody282_37 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)

def loopBody282_39 : HolLoopProg 64 :=
.mark loopBody282_38

def loopBody282_40 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 345) ([4, 5]) (some (4, loopBody282_39, loopBody282_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody282_41 : HolLoopProg 64 :=
.mark loopBody282_40

def loopBody282_42 : HolLoopProg 64 :=
.seq loopBody282_41 loopBody282_1

def loopBody282_43 : HolLoopProg 64 :=
.mark loopBody282_42

def loopBody282_44 : HolLoopProg 64 :=
.seq loopBody282_5 loopBody282_43

def loopBody282_45 : HolLoopProg 64 :=
.mark loopBody282_44

def loopBody282_46 : HolLoopProg 64 :=
.seq loopBody282_3 loopBody282_45

def loopBody282_47 : HolLoopProg 64 :=
.mark loopBody282_46

def loopBody282_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody282_49 : HolLoopProg 64 :=
.mark loopBody282_48

def loopBody282_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody282_51 : HolLoopProg 64 :=
.mark loopBody282_50

def loopBody282_52 : HolLoopProg 64 :=
.seq loopBody282_51 loopBody282_1

def loopBody282_53 : HolLoopProg 64 :=
.mark loopBody282_52

def loopBody282_54 : HolLoopProg 64 :=
.seq loopBody282_49 loopBody282_53

def loopBody282_55 : HolLoopProg 64 :=
.mark loopBody282_54

def loopBody282_56 : HolLoopProg 64 :=
.seq loopBody282_47 loopBody282_55

def loopBody282_57 : HolLoopProg 64 :=
.mark loopBody282_56

def loopBody282_58 : HolLoopProg 64 :=
.seq loopBody282_1 loopBody282_57

def loopBody282_59 : HolLoopProg 64 :=
.mark loopBody282_58

def loopBody282_60 : HolLoopProg 64 :=
.seq loopBody282_1 loopBody282_59

def loopBody282_61 : HolLoopProg 64 :=
.mark loopBody282_60

def loopBody282_62 : HolLoopProg 64 :=
.seq loopBody282_1 loopBody282_61

def loopBody282_63 : HolLoopProg 64 :=
.mark loopBody282_62

def loopBody282_64 : HolLoopProg 64 :=
.seq loopBody282_1 loopBody282_63

def loopBody282_65 : HolLoopProg 64 :=
.mark loopBody282_64

def output282 : Nat × List Nat × HolLoopProg 64 :=
  (346, [0, 1], loopBody282_65)
end InitECandidate.Proofs.FrontendStages.Loop
