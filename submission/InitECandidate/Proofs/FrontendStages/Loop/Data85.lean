import InitECandidate.Proofs.FrontendStages.Loop.Translate69
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody85_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody85_1 : HolLoopProg 64 :=
.mark loopBody85_0

def loopBody85_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 64#64)

def loopBody85_3 : HolLoopProg 64 :=
.mark loopBody85_2

def loopBody85_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody85_5 : HolLoopProg 64 :=
.mark loopBody85_4

def loopBody85_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 68) ([2]) (some (2, loopBody85_5, loopBody85_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody85_7 : HolLoopProg 64 :=
.mark loopBody85_6

def loopBody85_8 : HolLoopProg 64 :=
.seq loopBody85_7 loopBody85_1

def loopBody85_9 : HolLoopProg 64 :=
.mark loopBody85_8

def loopBody85_10 : HolLoopProg 64 :=
.seq loopBody85_3 loopBody85_9

def loopBody85_11 : HolLoopProg 64 :=
.mark loopBody85_10

def loopBody85_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 48#64])

def loopBody85_13 : HolLoopProg 64 :=
.mark loopBody85_12

def loopBody85_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody85_15 : HolLoopProg 64 :=
.mark loopBody85_14

def loopBody85_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody85_17 : HolLoopProg 64 :=
.mark loopBody85_16

def loopBody85_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 2) 4

def loopBody85_19 : HolLoopProg 64 :=
.mark loopBody85_18

def loopBody85_20 : HolLoopProg 64 :=
.seq loopBody85_19 loopBody85_1

def loopBody85_21 : HolLoopProg 64 :=
.mark loopBody85_20

def loopBody85_22 : HolLoopProg 64 :=
.seq loopBody85_17 loopBody85_21

def loopBody85_23 : HolLoopProg 64 :=
.mark loopBody85_22

def loopBody85_24 : HolLoopProg 64 :=
.seq loopBody85_23 loopBody85_1

def loopBody85_25 : HolLoopProg 64 :=
.mark loopBody85_24

def loopBody85_26 : HolLoopProg 64 :=
.seq loopBody85_15 loopBody85_25

def loopBody85_27 : HolLoopProg 64 :=
.mark loopBody85_26

def loopBody85_28 : HolLoopProg 64 :=
.seq loopBody85_1 loopBody85_27

def loopBody85_29 : HolLoopProg 64 :=
.mark loopBody85_28

def loopBody85_30 : HolLoopProg 64 :=
.seq loopBody85_13 loopBody85_29

def loopBody85_31 : HolLoopProg 64 :=
.mark loopBody85_30

def loopBody85_32 : HolLoopProg 64 :=
.seq loopBody85_1 loopBody85_31

def loopBody85_33 : HolLoopProg 64 :=
.mark loopBody85_32

def loopBody85_34 : HolLoopProg 64 :=
.seq loopBody85_11 loopBody85_33

def loopBody85_35 : HolLoopProg 64 :=
.mark loopBody85_34

def loopBody85_36 : HolLoopProg 64 :=
.seq loopBody85_1 loopBody85_35

def loopBody85_37 : HolLoopProg 64 :=
.mark loopBody85_36

def loopBody85_38 : HolLoopProg 64 :=
.seq loopBody85_1 loopBody85_37

def loopBody85_39 : HolLoopProg 64 :=
.mark loopBody85_38

def loopBody85_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 128#64)

def loopBody85_41 : HolLoopProg 64 :=
.mark loopBody85_40

def loopBody85_42 : HolLoopProg 64 :=
.seq loopBody85_41 loopBody85_9

def loopBody85_43 : HolLoopProg 64 :=
.mark loopBody85_42

def loopBody85_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 56#64])

def loopBody85_45 : HolLoopProg 64 :=
.mark loopBody85_44

def loopBody85_46 : HolLoopProg 64 :=
.seq loopBody85_45 loopBody85_29

def loopBody85_47 : HolLoopProg 64 :=
.mark loopBody85_46

def loopBody85_48 : HolLoopProg 64 :=
.seq loopBody85_1 loopBody85_47

def loopBody85_49 : HolLoopProg 64 :=
.mark loopBody85_48

def loopBody85_50 : HolLoopProg 64 :=
.seq loopBody85_43 loopBody85_49

def loopBody85_51 : HolLoopProg 64 :=
.mark loopBody85_50

def loopBody85_52 : HolLoopProg 64 :=
.seq loopBody85_1 loopBody85_51

def loopBody85_53 : HolLoopProg 64 :=
.mark loopBody85_52

def loopBody85_54 : HolLoopProg 64 :=
.seq loopBody85_1 loopBody85_53

def loopBody85_55 : HolLoopProg 64 :=
.mark loopBody85_54

def loopBody85_56 : HolLoopProg 64 :=
.seq loopBody85_39 loopBody85_55

def loopBody85_57 : HolLoopProg 64 :=
.mark loopBody85_56

def loopBody85_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody85_59 : HolLoopProg 64 :=
.mark loopBody85_58

def loopBody85_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody85_61 : HolLoopProg 64 :=
.mark loopBody85_60

def loopBody85_62 : HolLoopProg 64 :=
.seq loopBody85_61 loopBody85_1

def loopBody85_63 : HolLoopProg 64 :=
.mark loopBody85_62

def loopBody85_64 : HolLoopProg 64 :=
.seq loopBody85_59 loopBody85_63

def loopBody85_65 : HolLoopProg 64 :=
.mark loopBody85_64

def loopBody85_66 : HolLoopProg 64 :=
.seq loopBody85_57 loopBody85_65

def loopBody85_67 : HolLoopProg 64 :=
.mark loopBody85_66

def output85 : Nat × List Nat × HolLoopProg 64 :=
  (149, [], loopBody85_67)
end InitECandidate.Proofs.FrontendStages.Loop
