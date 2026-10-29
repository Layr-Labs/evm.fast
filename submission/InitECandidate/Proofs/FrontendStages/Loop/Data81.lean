import InitECandidate.Proofs.FrontendStages.Loop.Translate65
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody81_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody81_1 : HolLoopProg 64 :=
.mark loopBody81_0

def loopBody81_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 32#64)

def loopBody81_3 : HolLoopProg 64 :=
.mark loopBody81_2

def loopBody81_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody81_5 : HolLoopProg 64 :=
.mark loopBody81_4

def loopBody81_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody81_7 : HolLoopProg 64 :=
.mark loopBody81_6

def loopBody81_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.RegImm.reg 7) loopBody81_5 loopBody81_7 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody81_9 : HolLoopProg 64 :=
.mark loopBody81_8

def loopBody81_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody81_11 : HolLoopProg 64 :=
.mark loopBody81_10

def loopBody81_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody81_13 : HolLoopProg 64 :=
.mark loopBody81_12

def loopBody81_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody81_15 : HolLoopProg 64 :=
.mark loopBody81_14

def loopBody81_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody81_17 : HolLoopProg 64 :=
.mark loopBody81_16

def loopBody81_18 : HolLoopProg 64 :=
.seq loopBody81_15 loopBody81_17

def loopBody81_19 : HolLoopProg 64 :=
.mark loopBody81_18

def loopBody81_20 : HolLoopProg 64 :=
.seq loopBody81_13 loopBody81_19

def loopBody81_21 : HolLoopProg 64 :=
.mark loopBody81_20

def loopBody81_22 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody81_21 loopBody81_17 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody81_23 : HolLoopProg 64 :=
.mark loopBody81_22

def loopBody81_24 : HolLoopProg 64 :=
.seq loopBody81_23 loopBody81_17

def loopBody81_25 : HolLoopProg 64 :=
.mark loopBody81_24

def loopBody81_26 : HolLoopProg 64 :=
.seq loopBody81_11 loopBody81_25

def loopBody81_27 : HolLoopProg 64 :=
.mark loopBody81_26

def loopBody81_28 : HolLoopProg 64 :=
.seq loopBody81_9 loopBody81_27

def loopBody81_29 : HolLoopProg 64 :=
.mark loopBody81_28

def loopBody81_30 : HolLoopProg 64 :=
.seq loopBody81_3 loopBody81_29

def loopBody81_31 : HolLoopProg 64 :=
.mark loopBody81_30

def loopBody81_32 : HolLoopProg 64 :=
.seq loopBody81_1 loopBody81_31

def loopBody81_33 : HolLoopProg 64 :=
.mark loopBody81_32

def loopBody81_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 31#64, Flapjack.HolLoopExp.var 0])
    (Flapjack.HolLoopExp.const 3#64))

def loopBody81_35 : HolLoopProg 64 :=
.mark loopBody81_34

def loopBody81_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody81_37 : HolLoopProg 64 :=
.mark loopBody81_36

def loopBody81_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody81_39 : HolLoopProg 64 :=
.mark loopBody81_38

def loopBody81_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 3)

def loopBody81_41 : HolLoopProg 64 :=
.mark loopBody81_40

def loopBody81_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 4)

def loopBody81_43 : HolLoopProg 64 :=
.mark loopBody81_42

def loopBody81_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 5) (Flapjack.HolLoopExp.const 6#64))

def loopBody81_45 : HolLoopProg 64 :=
.mark loopBody81_44

def loopBody81_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody81_47 : HolLoopProg 64 :=
.mark loopBody81_46

def loopBody81_48 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))) (some 103) ([7, 8, 9, 10, 11]) (some (7, loopBody81_47, loopBody81_17, (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody81_49 : HolLoopProg 64 :=
.mark loopBody81_48

def loopBody81_50 : HolLoopProg 64 :=
.seq loopBody81_49 loopBody81_17

def loopBody81_51 : HolLoopProg 64 :=
.mark loopBody81_50

def loopBody81_52 : HolLoopProg 64 :=
.seq loopBody81_45 loopBody81_51

def loopBody81_53 : HolLoopProg 64 :=
.mark loopBody81_52

def loopBody81_54 : HolLoopProg 64 :=
.seq loopBody81_43 loopBody81_53

def loopBody81_55 : HolLoopProg 64 :=
.mark loopBody81_54

def loopBody81_56 : HolLoopProg 64 :=
.seq loopBody81_41 loopBody81_55

def loopBody81_57 : HolLoopProg 64 :=
.mark loopBody81_56

def loopBody81_58 : HolLoopProg 64 :=
.seq loopBody81_39 loopBody81_57

def loopBody81_59 : HolLoopProg 64 :=
.mark loopBody81_58

def loopBody81_60 : HolLoopProg 64 :=
.seq loopBody81_37 loopBody81_59

def loopBody81_61 : HolLoopProg 64 :=
.mark loopBody81_60

def loopBody81_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 6)
        (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 63#64]),
      Flapjack.HolLoopExp.const 255#64])

def loopBody81_63 : HolLoopProg 64 :=
.mark loopBody81_62

def loopBody81_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [7]

def loopBody81_65 : HolLoopProg 64 :=
.mark loopBody81_64

def loopBody81_66 : HolLoopProg 64 :=
.seq loopBody81_65 loopBody81_17

def loopBody81_67 : HolLoopProg 64 :=
.mark loopBody81_66

def loopBody81_68 : HolLoopProg 64 :=
.seq loopBody81_63 loopBody81_67

def loopBody81_69 : HolLoopProg 64 :=
.mark loopBody81_68

def loopBody81_70 : HolLoopProg 64 :=
.seq loopBody81_61 loopBody81_69

def loopBody81_71 : HolLoopProg 64 :=
.mark loopBody81_70

def loopBody81_72 : HolLoopProg 64 :=
.seq loopBody81_17 loopBody81_71

def loopBody81_73 : HolLoopProg 64 :=
.mark loopBody81_72

def loopBody81_74 : HolLoopProg 64 :=
.seq loopBody81_17 loopBody81_73

def loopBody81_75 : HolLoopProg 64 :=
.mark loopBody81_74

def loopBody81_76 : HolLoopProg 64 :=
.seq loopBody81_35 loopBody81_75

def loopBody81_77 : HolLoopProg 64 :=
.mark loopBody81_76

def loopBody81_78 : HolLoopProg 64 :=
.seq loopBody81_17 loopBody81_77

def loopBody81_79 : HolLoopProg 64 :=
.mark loopBody81_78

def loopBody81_80 : HolLoopProg 64 :=
.seq loopBody81_33 loopBody81_79

def loopBody81_81 : HolLoopProg 64 :=
.mark loopBody81_80

def output81 : Nat × List Nat × HolLoopProg 64 :=
  (145, [0, 1, 2, 3, 4], loopBody81_81)
end InitECandidate.Proofs.FrontendStages.Loop
