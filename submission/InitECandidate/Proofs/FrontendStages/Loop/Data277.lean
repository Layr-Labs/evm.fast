import InitECandidate.Proofs.FrontendStages.Loop.Translate261
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody277_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody277_1 : HolLoopProg 64 :=
.mark loopBody277_0

def loopBody277_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 0,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 4#64)]))

def loopBody277_3 : HolLoopProg 64 :=
.mark loopBody277_2

def loopBody277_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 0,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 4#64),
        Flapjack.HolLoopExp.const 8#64]))

def loopBody277_5 : HolLoopProg 64 :=
.mark loopBody277_4

def loopBody277_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody277_7 : HolLoopProg 64 :=
.mark loopBody277_6

def loopBody277_8 : HolLoopProg 64 :=
.call (some ([2, 3, 4, 5], Flapjack.Spt.ln)) (some 161) ([6, 7]) (some (6, loopBody277_7, loopBody277_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody277_9 : HolLoopProg 64 :=
.mark loopBody277_8

def loopBody277_10 : HolLoopProg 64 :=
.seq loopBody277_9 loopBody277_1

def loopBody277_11 : HolLoopProg 64 :=
.mark loopBody277_10

def loopBody277_12 : HolLoopProg 64 :=
.seq loopBody277_5 loopBody277_11

def loopBody277_13 : HolLoopProg 64 :=
.mark loopBody277_12

def loopBody277_14 : HolLoopProg 64 :=
.seq loopBody277_3 loopBody277_13

def loopBody277_15 : HolLoopProg 64 :=
.mark loopBody277_14

def loopBody277_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody277_17 : HolLoopProg 64 :=
.mark loopBody277_16

def loopBody277_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody277_19 : HolLoopProg 64 :=
.mark loopBody277_18

def loopBody277_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody277_21 : HolLoopProg 64 :=
.mark loopBody277_20

def loopBody277_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody277_23 : HolLoopProg 64 :=
.mark loopBody277_22

def loopBody277_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.reg 8) loopBody277_21 loopBody277_23 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody277_25 : HolLoopProg 64 :=
.mark loopBody277_24

def loopBody277_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody277_27 : HolLoopProg 64 :=
.mark loopBody277_26

def loopBody277_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 18#64)

def loopBody277_29 : HolLoopProg 64 :=
.mark loopBody277_28

def loopBody277_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 6)

def loopBody277_31 : HolLoopProg 64 :=
.mark loopBody277_30

def loopBody277_32 : HolLoopProg 64 :=
.seq loopBody277_31 loopBody277_1

def loopBody277_33 : HolLoopProg 64 :=
.mark loopBody277_32

def loopBody277_34 : HolLoopProg 64 :=
.seq loopBody277_33 loopBody277_1

def loopBody277_35 : HolLoopProg 64 :=
.mark loopBody277_34

def loopBody277_36 : HolLoopProg 64 :=
.seq loopBody277_29 loopBody277_35

def loopBody277_37 : HolLoopProg 64 :=
.mark loopBody277_36

def loopBody277_38 : HolLoopProg 64 :=
.seq loopBody277_1 loopBody277_37

def loopBody277_39 : HolLoopProg 64 :=
.mark loopBody277_38

def loopBody277_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 6#64)

def loopBody277_41 : HolLoopProg 64 :=
.mark loopBody277_40

def loopBody277_42 : HolLoopProg 64 :=
.seq loopBody277_41 loopBody277_7

def loopBody277_43 : HolLoopProg 64 :=
.mark loopBody277_42

def loopBody277_44 : HolLoopProg 64 :=
.seq loopBody277_39 loopBody277_43

def loopBody277_45 : HolLoopProg 64 :=
.mark loopBody277_44

def loopBody277_46 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody277_45 loopBody277_1 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody277_47 : HolLoopProg 64 :=
.mark loopBody277_46

def loopBody277_48 : HolLoopProg 64 :=
.seq loopBody277_47 loopBody277_1

def loopBody277_49 : HolLoopProg 64 :=
.mark loopBody277_48

def loopBody277_50 : HolLoopProg 64 :=
.seq loopBody277_27 loopBody277_49

def loopBody277_51 : HolLoopProg 64 :=
.mark loopBody277_50

def loopBody277_52 : HolLoopProg 64 :=
.seq loopBody277_25 loopBody277_51

def loopBody277_53 : HolLoopProg 64 :=
.mark loopBody277_52

def loopBody277_54 : HolLoopProg 64 :=
.seq loopBody277_19 loopBody277_53

def loopBody277_55 : HolLoopProg 64 :=
.mark loopBody277_54

def loopBody277_56 : HolLoopProg 64 :=
.seq loopBody277_17 loopBody277_55

def loopBody277_57 : HolLoopProg 64 :=
.mark loopBody277_56

def loopBody277_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody277_59 : HolLoopProg 64 :=
.mark loopBody277_58

def loopBody277_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody277_61 : HolLoopProg 64 :=
.mark loopBody277_60

def loopBody277_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6, 7]

def loopBody277_63 : HolLoopProg 64 :=
.mark loopBody277_62

def loopBody277_64 : HolLoopProg 64 :=
.seq loopBody277_63 loopBody277_1

def loopBody277_65 : HolLoopProg 64 :=
.mark loopBody277_64

def loopBody277_66 : HolLoopProg 64 :=
.seq loopBody277_61 loopBody277_65

def loopBody277_67 : HolLoopProg 64 :=
.mark loopBody277_66

def loopBody277_68 : HolLoopProg 64 :=
.seq loopBody277_59 loopBody277_67

def loopBody277_69 : HolLoopProg 64 :=
.mark loopBody277_68

def loopBody277_70 : HolLoopProg 64 :=
.seq loopBody277_57 loopBody277_69

def loopBody277_71 : HolLoopProg 64 :=
.mark loopBody277_70

def loopBody277_72 : HolLoopProg 64 :=
.seq loopBody277_15 loopBody277_71

def loopBody277_73 : HolLoopProg 64 :=
.mark loopBody277_72

def loopBody277_74 : HolLoopProg 64 :=
.seq loopBody277_1 loopBody277_73

def loopBody277_75 : HolLoopProg 64 :=
.mark loopBody277_74

def loopBody277_76 : HolLoopProg 64 :=
.seq loopBody277_1 loopBody277_75

def loopBody277_77 : HolLoopProg 64 :=
.mark loopBody277_76

def loopBody277_78 : HolLoopProg 64 :=
.seq loopBody277_1 loopBody277_77

def loopBody277_79 : HolLoopProg 64 :=
.mark loopBody277_78

def loopBody277_80 : HolLoopProg 64 :=
.seq loopBody277_1 loopBody277_79

def loopBody277_81 : HolLoopProg 64 :=
.mark loopBody277_80

def loopBody277_82 : HolLoopProg 64 :=
.seq loopBody277_1 loopBody277_81

def loopBody277_83 : HolLoopProg 64 :=
.mark loopBody277_82

def loopBody277_84 : HolLoopProg 64 :=
.seq loopBody277_1 loopBody277_83

def loopBody277_85 : HolLoopProg 64 :=
.mark loopBody277_84

def loopBody277_86 : HolLoopProg 64 :=
.seq loopBody277_1 loopBody277_85

def loopBody277_87 : HolLoopProg 64 :=
.mark loopBody277_86

def loopBody277_88 : HolLoopProg 64 :=
.seq loopBody277_1 loopBody277_87

def loopBody277_89 : HolLoopProg 64 :=
.mark loopBody277_88

def output277 : Nat × List Nat × HolLoopProg 64 :=
  (341, [0, 1], loopBody277_89)
end InitECandidate.Proofs.FrontendStages.Loop
