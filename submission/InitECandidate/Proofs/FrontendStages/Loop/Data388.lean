import InitECandidate.Proofs.FrontendStages.Loop.Translate372
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody388_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody388_1 : HolLoopProg 64 :=
.mark loopBody388_0

def loopBody388_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 216#64]))

def loopBody388_3 : HolLoopProg 64 :=
.mark loopBody388_2

def loopBody388_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 0)

def loopBody388_5 : HolLoopProg 64 :=
.mark loopBody388_4

def loopBody388_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody388_7 : HolLoopProg 64 :=
.mark loopBody388_6

def loopBody388_8 : HolLoopProg 64 :=
.call (some
  ([4, 5],
    Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 186) ([6, 7]) (some (6, loopBody388_7, loopBody388_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody388_9 : HolLoopProg 64 :=
.mark loopBody388_8

def loopBody388_10 : HolLoopProg 64 :=
.seq loopBody388_9 loopBody388_1

def loopBody388_11 : HolLoopProg 64 :=
.mark loopBody388_10

def loopBody388_12 : HolLoopProg 64 :=
.seq loopBody388_5 loopBody388_11

def loopBody388_13 : HolLoopProg 64 :=
.mark loopBody388_12

def loopBody388_14 : HolLoopProg 64 :=
.seq loopBody388_3 loopBody388_13

def loopBody388_15 : HolLoopProg 64 :=
.mark loopBody388_14

def loopBody388_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody388_17 : HolLoopProg 64 :=
.mark loopBody388_16

def loopBody388_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody388_19 : HolLoopProg 64 :=
.mark loopBody388_18

def loopBody388_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody388_21 : HolLoopProg 64 :=
.mark loopBody388_20

def loopBody388_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody388_23 : HolLoopProg 64 :=
.mark loopBody388_22

def loopBody388_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.RegImm.reg 8) loopBody388_21 loopBody388_23 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody388_25 : HolLoopProg 64 :=
.mark loopBody388_24

def loopBody388_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody388_27 : HolLoopProg 64 :=
.mark loopBody388_26

def loopBody388_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody388_29 : HolLoopProg 64 :=
.mark loopBody388_28

def loopBody388_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody388_31 : HolLoopProg 64 :=
.mark loopBody388_30

def loopBody388_32 : HolLoopProg 64 :=
.seq loopBody388_31 loopBody388_1

def loopBody388_33 : HolLoopProg 64 :=
.mark loopBody388_32

def loopBody388_34 : HolLoopProg 64 :=
.seq loopBody388_29 loopBody388_33

def loopBody388_35 : HolLoopProg 64 :=
.mark loopBody388_34

def loopBody388_36 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody388_35 loopBody388_1 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody388_37 : HolLoopProg 64 :=
.mark loopBody388_36

def loopBody388_38 : HolLoopProg 64 :=
.seq loopBody388_37 loopBody388_1

def loopBody388_39 : HolLoopProg 64 :=
.mark loopBody388_38

def loopBody388_40 : HolLoopProg 64 :=
.seq loopBody388_27 loopBody388_39

def loopBody388_41 : HolLoopProg 64 :=
.mark loopBody388_40

def loopBody388_42 : HolLoopProg 64 :=
.seq loopBody388_25 loopBody388_41

def loopBody388_43 : HolLoopProg 64 :=
.mark loopBody388_42

def loopBody388_44 : HolLoopProg 64 :=
.seq loopBody388_19 loopBody388_43

def loopBody388_45 : HolLoopProg 64 :=
.mark loopBody388_44

def loopBody388_46 : HolLoopProg 64 :=
.seq loopBody388_17 loopBody388_45

def loopBody388_47 : HolLoopProg 64 :=
.mark loopBody388_46

def loopBody388_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.var 1]))

def loopBody388_49 : HolLoopProg 64 :=
.mark loopBody388_48

def loopBody388_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody388_51 : HolLoopProg 64 :=
.mark loopBody388_50

def loopBody388_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 3)

def loopBody388_53 : HolLoopProg 64 :=
.mark loopBody388_52

def loopBody388_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody388_55 : HolLoopProg 64 :=
.mark loopBody388_54

def loopBody388_56 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.ln)) (some 451) ([7, 8, 9]) (some (7, loopBody388_55, loopBody388_1, (Flapjack.Spt.ln)))

def loopBody388_57 : HolLoopProg 64 :=
.mark loopBody388_56

def loopBody388_58 : HolLoopProg 64 :=
.seq loopBody388_57 loopBody388_1

def loopBody388_59 : HolLoopProg 64 :=
.mark loopBody388_58

def loopBody388_60 : HolLoopProg 64 :=
.seq loopBody388_53 loopBody388_59

def loopBody388_61 : HolLoopProg 64 :=
.mark loopBody388_60

def loopBody388_62 : HolLoopProg 64 :=
.seq loopBody388_51 loopBody388_61

def loopBody388_63 : HolLoopProg 64 :=
.mark loopBody388_62

def loopBody388_64 : HolLoopProg 64 :=
.seq loopBody388_49 loopBody388_63

def loopBody388_65 : HolLoopProg 64 :=
.mark loopBody388_64

def loopBody388_66 : HolLoopProg 64 :=
.seq loopBody388_1 loopBody388_65

def loopBody388_67 : HolLoopProg 64 :=
.mark loopBody388_66

def loopBody388_68 : HolLoopProg 64 :=
.seq loopBody388_1 loopBody388_67

def loopBody388_69 : HolLoopProg 64 :=
.mark loopBody388_68

def loopBody388_70 : HolLoopProg 64 :=
.seq loopBody388_47 loopBody388_69

def loopBody388_71 : HolLoopProg 64 :=
.mark loopBody388_70

def loopBody388_72 : HolLoopProg 64 :=
.seq loopBody388_71 loopBody388_35

def loopBody388_73 : HolLoopProg 64 :=
.mark loopBody388_72

def loopBody388_74 : HolLoopProg 64 :=
.seq loopBody388_15 loopBody388_73

def loopBody388_75 : HolLoopProg 64 :=
.mark loopBody388_74

def loopBody388_76 : HolLoopProg 64 :=
.seq loopBody388_1 loopBody388_75

def loopBody388_77 : HolLoopProg 64 :=
.mark loopBody388_76

def loopBody388_78 : HolLoopProg 64 :=
.seq loopBody388_1 loopBody388_77

def loopBody388_79 : HolLoopProg 64 :=
.mark loopBody388_78

def loopBody388_80 : HolLoopProg 64 :=
.seq loopBody388_1 loopBody388_79

def loopBody388_81 : HolLoopProg 64 :=
.mark loopBody388_80

def loopBody388_82 : HolLoopProg 64 :=
.seq loopBody388_1 loopBody388_81

def loopBody388_83 : HolLoopProg 64 :=
.mark loopBody388_82

def output388 : Nat × List Nat × HolLoopProg 64 :=
  (452, [0, 1, 2, 3], loopBody388_83)
end InitECandidate.Proofs.FrontendStages.Loop
