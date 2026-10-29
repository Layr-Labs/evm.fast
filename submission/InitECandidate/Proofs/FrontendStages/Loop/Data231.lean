import InitECandidate.Proofs.FrontendStages.Loop.Translate215
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody231_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody231_1 : HolLoopProg 64 :=
.mark loopBody231_0

def loopBody231_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 32#64)

def loopBody231_3 : HolLoopProg 64 :=
.mark loopBody231_2

def loopBody231_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody231_5 : HolLoopProg 64 :=
.mark loopBody231_4

def loopBody231_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 68) ([2]) (some (2, loopBody231_5, loopBody231_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody231_7 : HolLoopProg 64 :=
.mark loopBody231_6

def loopBody231_8 : HolLoopProg 64 :=
.seq loopBody231_7 loopBody231_1

def loopBody231_9 : HolLoopProg 64 :=
.mark loopBody231_8

def loopBody231_10 : HolLoopProg 64 :=
.seq loopBody231_3 loopBody231_9

def loopBody231_11 : HolLoopProg 64 :=
.mark loopBody231_10

def loopBody231_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 0#64])

def loopBody231_13 : HolLoopProg 64 :=
.mark loopBody231_12

def loopBody231_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody231_15 : HolLoopProg 64 :=
.mark loopBody231_14

def loopBody231_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody231_17 : HolLoopProg 64 :=
.mark loopBody231_16

def loopBody231_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 2) 4

def loopBody231_19 : HolLoopProg 64 :=
.mark loopBody231_18

def loopBody231_20 : HolLoopProg 64 :=
.seq loopBody231_19 loopBody231_1

def loopBody231_21 : HolLoopProg 64 :=
.mark loopBody231_20

def loopBody231_22 : HolLoopProg 64 :=
.seq loopBody231_17 loopBody231_21

def loopBody231_23 : HolLoopProg 64 :=
.mark loopBody231_22

def loopBody231_24 : HolLoopProg 64 :=
.seq loopBody231_23 loopBody231_1

def loopBody231_25 : HolLoopProg 64 :=
.mark loopBody231_24

def loopBody231_26 : HolLoopProg 64 :=
.seq loopBody231_15 loopBody231_25

def loopBody231_27 : HolLoopProg 64 :=
.mark loopBody231_26

def loopBody231_28 : HolLoopProg 64 :=
.seq loopBody231_1 loopBody231_27

def loopBody231_29 : HolLoopProg 64 :=
.mark loopBody231_28

def loopBody231_30 : HolLoopProg 64 :=
.seq loopBody231_13 loopBody231_29

def loopBody231_31 : HolLoopProg 64 :=
.mark loopBody231_30

def loopBody231_32 : HolLoopProg 64 :=
.seq loopBody231_1 loopBody231_31

def loopBody231_33 : HolLoopProg 64 :=
.mark loopBody231_32

def loopBody231_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 8#64])

def loopBody231_35 : HolLoopProg 64 :=
.mark loopBody231_34

def loopBody231_36 : HolLoopProg 64 :=
.seq loopBody231_35 loopBody231_29

def loopBody231_37 : HolLoopProg 64 :=
.mark loopBody231_36

def loopBody231_38 : HolLoopProg 64 :=
.seq loopBody231_1 loopBody231_37

def loopBody231_39 : HolLoopProg 64 :=
.mark loopBody231_38

def loopBody231_40 : HolLoopProg 64 :=
.seq loopBody231_33 loopBody231_39

def loopBody231_41 : HolLoopProg 64 :=
.mark loopBody231_40

def loopBody231_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 16#64])

def loopBody231_43 : HolLoopProg 64 :=
.mark loopBody231_42

def loopBody231_44 : HolLoopProg 64 :=
.seq loopBody231_43 loopBody231_29

def loopBody231_45 : HolLoopProg 64 :=
.mark loopBody231_44

def loopBody231_46 : HolLoopProg 64 :=
.seq loopBody231_1 loopBody231_45

def loopBody231_47 : HolLoopProg 64 :=
.mark loopBody231_46

def loopBody231_48 : HolLoopProg 64 :=
.seq loopBody231_41 loopBody231_47

def loopBody231_49 : HolLoopProg 64 :=
.mark loopBody231_48

def loopBody231_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 24#64])

def loopBody231_51 : HolLoopProg 64 :=
.mark loopBody231_50

def loopBody231_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody231_53 : HolLoopProg 64 :=
.mark loopBody231_52

def loopBody231_54 : HolLoopProg 64 :=
.seq loopBody231_53 loopBody231_25

def loopBody231_55 : HolLoopProg 64 :=
.mark loopBody231_54

def loopBody231_56 : HolLoopProg 64 :=
.seq loopBody231_1 loopBody231_55

def loopBody231_57 : HolLoopProg 64 :=
.mark loopBody231_56

def loopBody231_58 : HolLoopProg 64 :=
.seq loopBody231_51 loopBody231_57

def loopBody231_59 : HolLoopProg 64 :=
.mark loopBody231_58

def loopBody231_60 : HolLoopProg 64 :=
.seq loopBody231_1 loopBody231_59

def loopBody231_61 : HolLoopProg 64 :=
.mark loopBody231_60

def loopBody231_62 : HolLoopProg 64 :=
.seq loopBody231_49 loopBody231_61

def loopBody231_63 : HolLoopProg 64 :=
.mark loopBody231_62

def loopBody231_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 1)

def loopBody231_65 : HolLoopProg 64 :=
.mark loopBody231_64

def loopBody231_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody231_67 : HolLoopProg 64 :=
.mark loopBody231_66

def loopBody231_68 : HolLoopProg 64 :=
.seq loopBody231_67 loopBody231_1

def loopBody231_69 : HolLoopProg 64 :=
.mark loopBody231_68

def loopBody231_70 : HolLoopProg 64 :=
.seq loopBody231_65 loopBody231_69

def loopBody231_71 : HolLoopProg 64 :=
.mark loopBody231_70

def loopBody231_72 : HolLoopProg 64 :=
.seq loopBody231_63 loopBody231_71

def loopBody231_73 : HolLoopProg 64 :=
.mark loopBody231_72

def loopBody231_74 : HolLoopProg 64 :=
.seq loopBody231_11 loopBody231_73

def loopBody231_75 : HolLoopProg 64 :=
.mark loopBody231_74

def loopBody231_76 : HolLoopProg 64 :=
.seq loopBody231_1 loopBody231_75

def loopBody231_77 : HolLoopProg 64 :=
.mark loopBody231_76

def loopBody231_78 : HolLoopProg 64 :=
.seq loopBody231_1 loopBody231_77

def loopBody231_79 : HolLoopProg 64 :=
.mark loopBody231_78

def output231 : Nat × List Nat × HolLoopProg 64 :=
  (295, [0], loopBody231_79)
end InitECandidate.Proofs.FrontendStages.Loop
