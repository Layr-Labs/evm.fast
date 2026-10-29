import InitECandidate.Proofs.FrontendStages.Loop.Translate258
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody274_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody274_1 : HolLoopProg 64 :=
.mark loopBody274_0

def loopBody274_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 0,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 4#64)]))

def loopBody274_3 : HolLoopProg 64 :=
.mark loopBody274_2

def loopBody274_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 0,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 4#64),
        Flapjack.HolLoopExp.const 8#64]))

def loopBody274_5 : HolLoopProg 64 :=
.mark loopBody274_4

def loopBody274_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody274_7 : HolLoopProg 64 :=
.mark loopBody274_6

def loopBody274_8 : HolLoopProg 64 :=
.call (some ([2, 3, 4, 5], Flapjack.Spt.ln)) (some 161) ([6, 7]) (some (6, loopBody274_7, loopBody274_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody274_9 : HolLoopProg 64 :=
.mark loopBody274_8

def loopBody274_10 : HolLoopProg 64 :=
.seq loopBody274_9 loopBody274_1

def loopBody274_11 : HolLoopProg 64 :=
.mark loopBody274_10

def loopBody274_12 : HolLoopProg 64 :=
.seq loopBody274_5 loopBody274_11

def loopBody274_13 : HolLoopProg 64 :=
.mark loopBody274_12

def loopBody274_14 : HolLoopProg 64 :=
.seq loopBody274_3 loopBody274_13

def loopBody274_15 : HolLoopProg 64 :=
.mark loopBody274_14

def loopBody274_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody274_17 : HolLoopProg 64 :=
.mark loopBody274_16

def loopBody274_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody274_19 : HolLoopProg 64 :=
.mark loopBody274_18

def loopBody274_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody274_21 : HolLoopProg 64 :=
.mark loopBody274_20

def loopBody274_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody274_23 : HolLoopProg 64 :=
.mark loopBody274_22

def loopBody274_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.reg 8) loopBody274_21 loopBody274_23 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody274_25 : HolLoopProg 64 :=
.mark loopBody274_24

def loopBody274_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody274_27 : HolLoopProg 64 :=
.mark loopBody274_26

def loopBody274_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 15#64)

def loopBody274_29 : HolLoopProg 64 :=
.mark loopBody274_28

def loopBody274_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 6)

def loopBody274_31 : HolLoopProg 64 :=
.mark loopBody274_30

def loopBody274_32 : HolLoopProg 64 :=
.seq loopBody274_31 loopBody274_1

def loopBody274_33 : HolLoopProg 64 :=
.mark loopBody274_32

def loopBody274_34 : HolLoopProg 64 :=
.seq loopBody274_33 loopBody274_1

def loopBody274_35 : HolLoopProg 64 :=
.mark loopBody274_34

def loopBody274_36 : HolLoopProg 64 :=
.seq loopBody274_29 loopBody274_35

def loopBody274_37 : HolLoopProg 64 :=
.mark loopBody274_36

def loopBody274_38 : HolLoopProg 64 :=
.seq loopBody274_1 loopBody274_37

def loopBody274_39 : HolLoopProg 64 :=
.mark loopBody274_38

def loopBody274_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 6#64)

def loopBody274_41 : HolLoopProg 64 :=
.mark loopBody274_40

def loopBody274_42 : HolLoopProg 64 :=
.seq loopBody274_41 loopBody274_7

def loopBody274_43 : HolLoopProg 64 :=
.mark loopBody274_42

def loopBody274_44 : HolLoopProg 64 :=
.seq loopBody274_39 loopBody274_43

def loopBody274_45 : HolLoopProg 64 :=
.mark loopBody274_44

def loopBody274_46 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody274_45 loopBody274_1 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody274_47 : HolLoopProg 64 :=
.mark loopBody274_46

def loopBody274_48 : HolLoopProg 64 :=
.seq loopBody274_47 loopBody274_1

def loopBody274_49 : HolLoopProg 64 :=
.mark loopBody274_48

def loopBody274_50 : HolLoopProg 64 :=
.seq loopBody274_27 loopBody274_49

def loopBody274_51 : HolLoopProg 64 :=
.mark loopBody274_50

def loopBody274_52 : HolLoopProg 64 :=
.seq loopBody274_25 loopBody274_51

def loopBody274_53 : HolLoopProg 64 :=
.mark loopBody274_52

def loopBody274_54 : HolLoopProg 64 :=
.seq loopBody274_19 loopBody274_53

def loopBody274_55 : HolLoopProg 64 :=
.mark loopBody274_54

def loopBody274_56 : HolLoopProg 64 :=
.seq loopBody274_17 loopBody274_55

def loopBody274_57 : HolLoopProg 64 :=
.mark loopBody274_56

def loopBody274_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody274_59 : HolLoopProg 64 :=
.mark loopBody274_58

def loopBody274_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody274_61 : HolLoopProg 64 :=
.mark loopBody274_60

def loopBody274_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6, 7]

def loopBody274_63 : HolLoopProg 64 :=
.mark loopBody274_62

def loopBody274_64 : HolLoopProg 64 :=
.seq loopBody274_63 loopBody274_1

def loopBody274_65 : HolLoopProg 64 :=
.mark loopBody274_64

def loopBody274_66 : HolLoopProg 64 :=
.seq loopBody274_61 loopBody274_65

def loopBody274_67 : HolLoopProg 64 :=
.mark loopBody274_66

def loopBody274_68 : HolLoopProg 64 :=
.seq loopBody274_59 loopBody274_67

def loopBody274_69 : HolLoopProg 64 :=
.mark loopBody274_68

def loopBody274_70 : HolLoopProg 64 :=
.seq loopBody274_57 loopBody274_69

def loopBody274_71 : HolLoopProg 64 :=
.mark loopBody274_70

def loopBody274_72 : HolLoopProg 64 :=
.seq loopBody274_15 loopBody274_71

def loopBody274_73 : HolLoopProg 64 :=
.mark loopBody274_72

def loopBody274_74 : HolLoopProg 64 :=
.seq loopBody274_1 loopBody274_73

def loopBody274_75 : HolLoopProg 64 :=
.mark loopBody274_74

def loopBody274_76 : HolLoopProg 64 :=
.seq loopBody274_1 loopBody274_75

def loopBody274_77 : HolLoopProg 64 :=
.mark loopBody274_76

def loopBody274_78 : HolLoopProg 64 :=
.seq loopBody274_1 loopBody274_77

def loopBody274_79 : HolLoopProg 64 :=
.mark loopBody274_78

def loopBody274_80 : HolLoopProg 64 :=
.seq loopBody274_1 loopBody274_79

def loopBody274_81 : HolLoopProg 64 :=
.mark loopBody274_80

def loopBody274_82 : HolLoopProg 64 :=
.seq loopBody274_1 loopBody274_81

def loopBody274_83 : HolLoopProg 64 :=
.mark loopBody274_82

def loopBody274_84 : HolLoopProg 64 :=
.seq loopBody274_1 loopBody274_83

def loopBody274_85 : HolLoopProg 64 :=
.mark loopBody274_84

def loopBody274_86 : HolLoopProg 64 :=
.seq loopBody274_1 loopBody274_85

def loopBody274_87 : HolLoopProg 64 :=
.mark loopBody274_86

def loopBody274_88 : HolLoopProg 64 :=
.seq loopBody274_1 loopBody274_87

def loopBody274_89 : HolLoopProg 64 :=
.mark loopBody274_88

def output274 : Nat × List Nat × HolLoopProg 64 :=
  (338, [0, 1], loopBody274_89)
end InitECandidate.Proofs.FrontendStages.Loop
