import InitECandidate.Proofs.FrontendStages.Loop.Translate228
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody244_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody244_1 : HolLoopProg 64 :=
.mark loopBody244_0

def loopBody244_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 16#64)

def loopBody244_3 : HolLoopProg 64 :=
.mark loopBody244_2

def loopBody244_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody244_5 : HolLoopProg 64 :=
.mark loopBody244_4

def loopBody244_6 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([3]) (some (3, loopBody244_5, loopBody244_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody244_7 : HolLoopProg 64 :=
.mark loopBody244_6

def loopBody244_8 : HolLoopProg 64 :=
.seq loopBody244_7 loopBody244_1

def loopBody244_9 : HolLoopProg 64 :=
.mark loopBody244_8

def loopBody244_10 : HolLoopProg 64 :=
.seq loopBody244_3 loopBody244_9

def loopBody244_11 : HolLoopProg 64 :=
.mark loopBody244_10

def loopBody244_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 0#64])

def loopBody244_13 : HolLoopProg 64 :=
.mark loopBody244_12

def loopBody244_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody244_15 : HolLoopProg 64 :=
.mark loopBody244_14

def loopBody244_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 4)

def loopBody244_17 : HolLoopProg 64 :=
.mark loopBody244_16

def loopBody244_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 3) 5

def loopBody244_19 : HolLoopProg 64 :=
.mark loopBody244_18

def loopBody244_20 : HolLoopProg 64 :=
.seq loopBody244_19 loopBody244_1

def loopBody244_21 : HolLoopProg 64 :=
.mark loopBody244_20

def loopBody244_22 : HolLoopProg 64 :=
.seq loopBody244_17 loopBody244_21

def loopBody244_23 : HolLoopProg 64 :=
.mark loopBody244_22

def loopBody244_24 : HolLoopProg 64 :=
.seq loopBody244_23 loopBody244_1

def loopBody244_25 : HolLoopProg 64 :=
.mark loopBody244_24

def loopBody244_26 : HolLoopProg 64 :=
.seq loopBody244_15 loopBody244_25

def loopBody244_27 : HolLoopProg 64 :=
.mark loopBody244_26

def loopBody244_28 : HolLoopProg 64 :=
.seq loopBody244_1 loopBody244_27

def loopBody244_29 : HolLoopProg 64 :=
.mark loopBody244_28

def loopBody244_30 : HolLoopProg 64 :=
.seq loopBody244_13 loopBody244_29

def loopBody244_31 : HolLoopProg 64 :=
.mark loopBody244_30

def loopBody244_32 : HolLoopProg 64 :=
.seq loopBody244_1 loopBody244_31

def loopBody244_33 : HolLoopProg 64 :=
.mark loopBody244_32

def loopBody244_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 8#64])

def loopBody244_35 : HolLoopProg 64 :=
.mark loopBody244_34

def loopBody244_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody244_37 : HolLoopProg 64 :=
.mark loopBody244_36

def loopBody244_38 : HolLoopProg 64 :=
.seq loopBody244_37 loopBody244_25

def loopBody244_39 : HolLoopProg 64 :=
.mark loopBody244_38

def loopBody244_40 : HolLoopProg 64 :=
.seq loopBody244_1 loopBody244_39

def loopBody244_41 : HolLoopProg 64 :=
.mark loopBody244_40

def loopBody244_42 : HolLoopProg 64 :=
.seq loopBody244_35 loopBody244_41

def loopBody244_43 : HolLoopProg 64 :=
.mark loopBody244_42

def loopBody244_44 : HolLoopProg 64 :=
.seq loopBody244_1 loopBody244_43

def loopBody244_45 : HolLoopProg 64 :=
.mark loopBody244_44

def loopBody244_46 : HolLoopProg 64 :=
.seq loopBody244_33 loopBody244_45

def loopBody244_47 : HolLoopProg 64 :=
.mark loopBody244_46

def loopBody244_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 2)

def loopBody244_49 : HolLoopProg 64 :=
.mark loopBody244_48

def loopBody244_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody244_51 : HolLoopProg 64 :=
.mark loopBody244_50

def loopBody244_52 : HolLoopProg 64 :=
.seq loopBody244_51 loopBody244_1

def loopBody244_53 : HolLoopProg 64 :=
.mark loopBody244_52

def loopBody244_54 : HolLoopProg 64 :=
.seq loopBody244_49 loopBody244_53

def loopBody244_55 : HolLoopProg 64 :=
.mark loopBody244_54

def loopBody244_56 : HolLoopProg 64 :=
.seq loopBody244_47 loopBody244_55

def loopBody244_57 : HolLoopProg 64 :=
.mark loopBody244_56

def loopBody244_58 : HolLoopProg 64 :=
.seq loopBody244_11 loopBody244_57

def loopBody244_59 : HolLoopProg 64 :=
.mark loopBody244_58

def loopBody244_60 : HolLoopProg 64 :=
.seq loopBody244_1 loopBody244_59

def loopBody244_61 : HolLoopProg 64 :=
.mark loopBody244_60

def loopBody244_62 : HolLoopProg 64 :=
.seq loopBody244_1 loopBody244_61

def loopBody244_63 : HolLoopProg 64 :=
.mark loopBody244_62

def output244 : Nat × List Nat × HolLoopProg 64 :=
  (308, [0, 1], loopBody244_63)
end InitECandidate.Proofs.FrontendStages.Loop
