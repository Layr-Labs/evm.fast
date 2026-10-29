import InitECandidate.Proofs.FrontendStages.Loop.Translate24
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody40_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody40_1 : HolLoopProg 64 :=
.mark loopBody40_0

def loopBody40_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 256#64)

def loopBody40_3 : HolLoopProg 64 :=
.mark loopBody40_2

def loopBody40_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody40_5 : HolLoopProg 64 :=
.mark loopBody40_4

def loopBody40_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody40_7 : HolLoopProg 64 :=
.mark loopBody40_6

def loopBody40_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.RegImm.reg 7) loopBody40_5 loopBody40_7 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody40_9 : HolLoopProg 64 :=
.mark loopBody40_8

def loopBody40_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody40_11 : HolLoopProg 64 :=
.mark loopBody40_10

def loopBody40_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody40_13 : HolLoopProg 64 :=
.mark loopBody40_12

def loopBody40_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody40_15 : HolLoopProg 64 :=
.mark loopBody40_14

def loopBody40_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody40_17 : HolLoopProg 64 :=
.mark loopBody40_16

def loopBody40_18 : HolLoopProg 64 :=
.seq loopBody40_15 loopBody40_17

def loopBody40_19 : HolLoopProg 64 :=
.mark loopBody40_18

def loopBody40_20 : HolLoopProg 64 :=
.seq loopBody40_13 loopBody40_19

def loopBody40_21 : HolLoopProg 64 :=
.mark loopBody40_20

def loopBody40_22 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody40_21 loopBody40_17 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody40_23 : HolLoopProg 64 :=
.mark loopBody40_22

def loopBody40_24 : HolLoopProg 64 :=
.seq loopBody40_23 loopBody40_17

def loopBody40_25 : HolLoopProg 64 :=
.mark loopBody40_24

def loopBody40_26 : HolLoopProg 64 :=
.seq loopBody40_11 loopBody40_25

def loopBody40_27 : HolLoopProg 64 :=
.mark loopBody40_26

def loopBody40_28 : HolLoopProg 64 :=
.seq loopBody40_9 loopBody40_27

def loopBody40_29 : HolLoopProg 64 :=
.mark loopBody40_28

def loopBody40_30 : HolLoopProg 64 :=
.seq loopBody40_3 loopBody40_29

def loopBody40_31 : HolLoopProg 64 :=
.mark loopBody40_30

def loopBody40_32 : HolLoopProg 64 :=
.seq loopBody40_1 loopBody40_31

def loopBody40_33 : HolLoopProg 64 :=
.mark loopBody40_32

def loopBody40_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody40_35 : HolLoopProg 64 :=
.mark loopBody40_34

def loopBody40_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody40_37 : HolLoopProg 64 :=
.mark loopBody40_36

def loopBody40_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody40_39 : HolLoopProg 64 :=
.mark loopBody40_38

def loopBody40_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 3)

def loopBody40_41 : HolLoopProg 64 :=
.mark loopBody40_40

def loopBody40_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 6#64))

def loopBody40_43 : HolLoopProg 64 :=
.mark loopBody40_42

def loopBody40_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody40_45 : HolLoopProg 64 :=
.mark loopBody40_44

def loopBody40_46 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)) (some 103) ([6, 7, 8, 9, 10]) (some (6, loopBody40_45, loopBody40_17, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody40_47 : HolLoopProg 64 :=
.mark loopBody40_46

def loopBody40_48 : HolLoopProg 64 :=
.seq loopBody40_47 loopBody40_17

def loopBody40_49 : HolLoopProg 64 :=
.mark loopBody40_48

def loopBody40_50 : HolLoopProg 64 :=
.seq loopBody40_43 loopBody40_49

def loopBody40_51 : HolLoopProg 64 :=
.mark loopBody40_50

def loopBody40_52 : HolLoopProg 64 :=
.seq loopBody40_41 loopBody40_51

def loopBody40_53 : HolLoopProg 64 :=
.mark loopBody40_52

def loopBody40_54 : HolLoopProg 64 :=
.seq loopBody40_39 loopBody40_53

def loopBody40_55 : HolLoopProg 64 :=
.mark loopBody40_54

def loopBody40_56 : HolLoopProg 64 :=
.seq loopBody40_37 loopBody40_55

def loopBody40_57 : HolLoopProg 64 :=
.mark loopBody40_56

def loopBody40_58 : HolLoopProg 64 :=
.seq loopBody40_35 loopBody40_57

def loopBody40_59 : HolLoopProg 64 :=
.mark loopBody40_58

def loopBody40_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 5)
        (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 63#64]),
      Flapjack.HolLoopExp.const 1#64])

def loopBody40_61 : HolLoopProg 64 :=
.mark loopBody40_60

def loopBody40_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody40_63 : HolLoopProg 64 :=
.mark loopBody40_62

def loopBody40_64 : HolLoopProg 64 :=
.seq loopBody40_63 loopBody40_17

def loopBody40_65 : HolLoopProg 64 :=
.mark loopBody40_64

def loopBody40_66 : HolLoopProg 64 :=
.seq loopBody40_61 loopBody40_65

def loopBody40_67 : HolLoopProg 64 :=
.mark loopBody40_66

def loopBody40_68 : HolLoopProg 64 :=
.seq loopBody40_59 loopBody40_67

def loopBody40_69 : HolLoopProg 64 :=
.mark loopBody40_68

def loopBody40_70 : HolLoopProg 64 :=
.seq loopBody40_17 loopBody40_69

def loopBody40_71 : HolLoopProg 64 :=
.mark loopBody40_70

def loopBody40_72 : HolLoopProg 64 :=
.seq loopBody40_17 loopBody40_71

def loopBody40_73 : HolLoopProg 64 :=
.mark loopBody40_72

def loopBody40_74 : HolLoopProg 64 :=
.seq loopBody40_33 loopBody40_73

def loopBody40_75 : HolLoopProg 64 :=
.mark loopBody40_74

def output40 : Nat × List Nat × HolLoopProg 64 :=
  (104, [0, 1, 2, 3, 4], loopBody40_75)
end InitECandidate.Proofs.FrontendStages.Loop
