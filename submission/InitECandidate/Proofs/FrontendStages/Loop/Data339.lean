import InitECandidate.Proofs.FrontendStages.Loop.Translate323
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody339_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody339_1 : HolLoopProg 64 :=
.mark loopBody339_0

def loopBody339_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody339_3 : HolLoopProg 64 :=
.mark loopBody339_2

def loopBody339_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody339_5 : HolLoopProg 64 :=
.mark loopBody339_4

def loopBody339_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 399) ([2]) (some (2, loopBody339_5, loopBody339_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody339_7 : HolLoopProg 64 :=
.mark loopBody339_6

def loopBody339_8 : HolLoopProg 64 :=
.seq loopBody339_7 loopBody339_1

def loopBody339_9 : HolLoopProg 64 :=
.mark loopBody339_8

def loopBody339_10 : HolLoopProg 64 :=
.seq loopBody339_3 loopBody339_9

def loopBody339_11 : HolLoopProg 64 :=
.mark loopBody339_10

def loopBody339_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody339_13 : HolLoopProg 64 :=
.mark loopBody339_12

def loopBody339_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 128#64]))

def loopBody339_15 : HolLoopProg 64 :=
.mark loopBody339_14

def loopBody339_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 32#64)

def loopBody339_17 : HolLoopProg 64 :=
.mark loopBody339_16

def loopBody339_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody339_19 : HolLoopProg 64 :=
.mark loopBody339_18

def loopBody339_20 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 79) ([3, 4, 5]) (some (3, loopBody339_19, loopBody339_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody339_21 : HolLoopProg 64 :=
.mark loopBody339_20

def loopBody339_22 : HolLoopProg 64 :=
.seq loopBody339_21 loopBody339_1

def loopBody339_23 : HolLoopProg 64 :=
.mark loopBody339_22

def loopBody339_24 : HolLoopProg 64 :=
.seq loopBody339_17 loopBody339_23

def loopBody339_25 : HolLoopProg 64 :=
.mark loopBody339_24

def loopBody339_26 : HolLoopProg 64 :=
.seq loopBody339_15 loopBody339_25

def loopBody339_27 : HolLoopProg 64 :=
.mark loopBody339_26

def loopBody339_28 : HolLoopProg 64 :=
.seq loopBody339_13 loopBody339_27

def loopBody339_29 : HolLoopProg 64 :=
.mark loopBody339_28

def loopBody339_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody339_31 : HolLoopProg 64 :=
.mark loopBody339_30

def loopBody339_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody339_33 : HolLoopProg 64 :=
.mark loopBody339_32

def loopBody339_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody339_35 : HolLoopProg 64 :=
.mark loopBody339_34

def loopBody339_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody339_37 : HolLoopProg 64 :=
.mark loopBody339_36

def loopBody339_38 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.reg 5) loopBody339_35 loopBody339_37 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)

def loopBody339_39 : HolLoopProg 64 :=
.mark loopBody339_38

def loopBody339_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody339_41 : HolLoopProg 64 :=
.mark loopBody339_40

def loopBody339_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody339_43 : HolLoopProg 64 :=
.mark loopBody339_42

def loopBody339_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody339_45 : HolLoopProg 64 :=
.mark loopBody339_44

def loopBody339_46 : HolLoopProg 64 :=
.seq loopBody339_45 loopBody339_1

def loopBody339_47 : HolLoopProg 64 :=
.mark loopBody339_46

def loopBody339_48 : HolLoopProg 64 :=
.seq loopBody339_43 loopBody339_47

def loopBody339_49 : HolLoopProg 64 :=
.mark loopBody339_48

def loopBody339_50 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody339_49 loopBody339_1 (Flapjack.Spt.ln)

def loopBody339_51 : HolLoopProg 64 :=
.mark loopBody339_50

def loopBody339_52 : HolLoopProg 64 :=
.seq loopBody339_51 loopBody339_1

def loopBody339_53 : HolLoopProg 64 :=
.mark loopBody339_52

def loopBody339_54 : HolLoopProg 64 :=
.seq loopBody339_41 loopBody339_53

def loopBody339_55 : HolLoopProg 64 :=
.mark loopBody339_54

def loopBody339_56 : HolLoopProg 64 :=
.seq loopBody339_39 loopBody339_55

def loopBody339_57 : HolLoopProg 64 :=
.mark loopBody339_56

def loopBody339_58 : HolLoopProg 64 :=
.seq loopBody339_33 loopBody339_57

def loopBody339_59 : HolLoopProg 64 :=
.mark loopBody339_58

def loopBody339_60 : HolLoopProg 64 :=
.seq loopBody339_31 loopBody339_59

def loopBody339_61 : HolLoopProg 64 :=
.mark loopBody339_60

def loopBody339_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody339_63 : HolLoopProg 64 :=
.mark loopBody339_62

def loopBody339_64 : HolLoopProg 64 :=
.seq loopBody339_63 loopBody339_47

def loopBody339_65 : HolLoopProg 64 :=
.mark loopBody339_64

def loopBody339_66 : HolLoopProg 64 :=
.seq loopBody339_61 loopBody339_65

def loopBody339_67 : HolLoopProg 64 :=
.mark loopBody339_66

def loopBody339_68 : HolLoopProg 64 :=
.seq loopBody339_29 loopBody339_67

def loopBody339_69 : HolLoopProg 64 :=
.mark loopBody339_68

def loopBody339_70 : HolLoopProg 64 :=
.seq loopBody339_1 loopBody339_69

def loopBody339_71 : HolLoopProg 64 :=
.mark loopBody339_70

def loopBody339_72 : HolLoopProg 64 :=
.seq loopBody339_1 loopBody339_71

def loopBody339_73 : HolLoopProg 64 :=
.mark loopBody339_72

def loopBody339_74 : HolLoopProg 64 :=
.seq loopBody339_11 loopBody339_73

def loopBody339_75 : HolLoopProg 64 :=
.mark loopBody339_74

def loopBody339_76 : HolLoopProg 64 :=
.seq loopBody339_1 loopBody339_75

def loopBody339_77 : HolLoopProg 64 :=
.mark loopBody339_76

def loopBody339_78 : HolLoopProg 64 :=
.seq loopBody339_1 loopBody339_77

def loopBody339_79 : HolLoopProg 64 :=
.mark loopBody339_78

def output339 : Nat × List Nat × HolLoopProg 64 :=
  (403, [0], loopBody339_79)
end InitECandidate.Proofs.FrontendStages.Loop
