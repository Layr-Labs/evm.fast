import InitECandidate.Proofs.FrontendStages.Loop.Translate591
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody607_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody607_1 : HolLoopProg 64 :=
.mark loopBody607_0

def loopBody607_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 12#64)

def loopBody607_3 : HolLoopProg 64 :=
.mark loopBody607_2

def loopBody607_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody607_5 : HolLoopProg 64 :=
.mark loopBody607_4

def loopBody607_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody607_7 : HolLoopProg 64 :=
.mark loopBody607_6

def loopBody607_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.RegImm.reg 5) loopBody607_5 loopBody607_7 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.ls PUnit.unit))

def loopBody607_9 : HolLoopProg 64 :=
.mark loopBody607_8

def loopBody607_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody607_11 : HolLoopProg 64 :=
.mark loopBody607_10

def loopBody607_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody607_13 : HolLoopProg 64 :=
.mark loopBody607_12

def loopBody607_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody607_15 : HolLoopProg 64 :=
.mark loopBody607_14

def loopBody607_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody607_17 : HolLoopProg 64 :=
.mark loopBody607_16

def loopBody607_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody607_19 : HolLoopProg 64 :=
.mark loopBody607_18

def loopBody607_20 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.ln)) (some 669) ([4, 5]) (some (4, loopBody607_19, loopBody607_13, (Flapjack.Spt.ln)))

def loopBody607_21 : HolLoopProg 64 :=
.mark loopBody607_20

def loopBody607_22 : HolLoopProg 64 :=
.seq loopBody607_21 loopBody607_13

def loopBody607_23 : HolLoopProg 64 :=
.mark loopBody607_22

def loopBody607_24 : HolLoopProg 64 :=
.seq loopBody607_17 loopBody607_23

def loopBody607_25 : HolLoopProg 64 :=
.mark loopBody607_24

def loopBody607_26 : HolLoopProg 64 :=
.seq loopBody607_15 loopBody607_25

def loopBody607_27 : HolLoopProg 64 :=
.mark loopBody607_26

def loopBody607_28 : HolLoopProg 64 :=
.seq loopBody607_13 loopBody607_27

def loopBody607_29 : HolLoopProg 64 :=
.mark loopBody607_28

def loopBody607_30 : HolLoopProg 64 :=
.seq loopBody607_13 loopBody607_29

def loopBody607_31 : HolLoopProg 64 :=
.mark loopBody607_30

def loopBody607_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody607_33 : HolLoopProg 64 :=
.mark loopBody607_32

def loopBody607_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody607_35 : HolLoopProg 64 :=
.mark loopBody607_34

def loopBody607_36 : HolLoopProg 64 :=
.seq loopBody607_35 loopBody607_13

def loopBody607_37 : HolLoopProg 64 :=
.mark loopBody607_36

def loopBody607_38 : HolLoopProg 64 :=
.seq loopBody607_33 loopBody607_37

def loopBody607_39 : HolLoopProg 64 :=
.mark loopBody607_38

def loopBody607_40 : HolLoopProg 64 :=
.seq loopBody607_31 loopBody607_39

def loopBody607_41 : HolLoopProg 64 :=
.mark loopBody607_40

def loopBody607_42 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody607_41 loopBody607_13 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody607_43 : HolLoopProg 64 :=
.mark loopBody607_42

def loopBody607_44 : HolLoopProg 64 :=
.seq loopBody607_43 loopBody607_13

def loopBody607_45 : HolLoopProg 64 :=
.mark loopBody607_44

def loopBody607_46 : HolLoopProg 64 :=
.seq loopBody607_11 loopBody607_45

def loopBody607_47 : HolLoopProg 64 :=
.mark loopBody607_46

def loopBody607_48 : HolLoopProg 64 :=
.seq loopBody607_9 loopBody607_47

def loopBody607_49 : HolLoopProg 64 :=
.mark loopBody607_48

def loopBody607_50 : HolLoopProg 64 :=
.seq loopBody607_3 loopBody607_49

def loopBody607_51 : HolLoopProg 64 :=
.mark loopBody607_50

def loopBody607_52 : HolLoopProg 64 :=
.seq loopBody607_1 loopBody607_51

def loopBody607_53 : HolLoopProg 64 :=
.mark loopBody607_52

def loopBody607_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody607_55 : HolLoopProg 64 :=
.mark loopBody607_54

def loopBody607_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody607_57 : HolLoopProg 64 :=
.mark loopBody607_56

def loopBody607_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody607_59 : HolLoopProg 64 :=
.mark loopBody607_58

def loopBody607_60 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.ln)) (some 670) ([4, 5, 6, 7]) (some (4, loopBody607_19, loopBody607_13, (Flapjack.Spt.ln)))

def loopBody607_61 : HolLoopProg 64 :=
.mark loopBody607_60

def loopBody607_62 : HolLoopProg 64 :=
.seq loopBody607_61 loopBody607_13

def loopBody607_63 : HolLoopProg 64 :=
.mark loopBody607_62

def loopBody607_64 : HolLoopProg 64 :=
.seq loopBody607_59 loopBody607_63

def loopBody607_65 : HolLoopProg 64 :=
.mark loopBody607_64

def loopBody607_66 : HolLoopProg 64 :=
.seq loopBody607_57 loopBody607_65

def loopBody607_67 : HolLoopProg 64 :=
.mark loopBody607_66

def loopBody607_68 : HolLoopProg 64 :=
.seq loopBody607_55 loopBody607_67

def loopBody607_69 : HolLoopProg 64 :=
.mark loopBody607_68

def loopBody607_70 : HolLoopProg 64 :=
.seq loopBody607_1 loopBody607_69

def loopBody607_71 : HolLoopProg 64 :=
.mark loopBody607_70

def loopBody607_72 : HolLoopProg 64 :=
.seq loopBody607_13 loopBody607_71

def loopBody607_73 : HolLoopProg 64 :=
.mark loopBody607_72

def loopBody607_74 : HolLoopProg 64 :=
.seq loopBody607_13 loopBody607_73

def loopBody607_75 : HolLoopProg 64 :=
.mark loopBody607_74

def loopBody607_76 : HolLoopProg 64 :=
.seq loopBody607_53 loopBody607_75

def loopBody607_77 : HolLoopProg 64 :=
.mark loopBody607_76

def loopBody607_78 : HolLoopProg 64 :=
.seq loopBody607_77 loopBody607_39

def loopBody607_79 : HolLoopProg 64 :=
.mark loopBody607_78

def output607 : Nat × List Nat × HolLoopProg 64 :=
  (671, [0, 1, 2], loopBody607_79)
end InitECandidate.Proofs.FrontendStages.Loop
