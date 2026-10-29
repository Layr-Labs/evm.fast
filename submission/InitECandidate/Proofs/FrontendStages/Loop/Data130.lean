import InitECandidate.Proofs.FrontendStages.Loop.Translate114
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody130_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody130_1 : HolLoopProg 64 :=
.mark loopBody130_0

def loopBody130_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64]))

def loopBody130_3 : HolLoopProg 64 :=
.mark loopBody130_2

def loopBody130_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody130_5 : HolLoopProg 64 :=
.mark loopBody130_4

def loopBody130_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 24#64]))

def loopBody130_7 : HolLoopProg 64 :=
.mark loopBody130_6

def loopBody130_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody130_9 : HolLoopProg 64 :=
.mark loopBody130_8

def loopBody130_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody130_11 : HolLoopProg 64 :=
.mark loopBody130_10

def loopBody130_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.RegImm.reg 5) loopBody130_9 loopBody130_11 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.ls PUnit.unit))

def loopBody130_13 : HolLoopProg 64 :=
.mark loopBody130_12

def loopBody130_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody130_15 : HolLoopProg 64 :=
.mark loopBody130_14

def loopBody130_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 24#64]),
      Flapjack.HolLoopExp.const 1#64])

def loopBody130_17 : HolLoopProg 64 :=
.mark loopBody130_16

def loopBody130_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 48#64]),
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 3#64)]))

def loopBody130_19 : HolLoopProg 64 :=
.mark loopBody130_18

def loopBody130_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody130_21 : HolLoopProg 64 :=
.mark loopBody130_20

def loopBody130_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 8 8 6 7)

def loopBody130_23 : HolLoopProg 64 :=
.mark loopBody130_22

def loopBody130_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 0)

def loopBody130_25 : HolLoopProg 64 :=
.mark loopBody130_24

def loopBody130_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 32#64]),
      Flapjack.HolLoopExp.var 8])

def loopBody130_27 : HolLoopProg 64 :=
.mark loopBody130_26

def loopBody130_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody130_29 : HolLoopProg 64 :=
.mark loopBody130_28

def loopBody130_30 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 193) ([9, 10]) (some (6, loopBody130_29, loopBody130_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody130_31 : HolLoopProg 64 :=
.mark loopBody130_30

def loopBody130_32 : HolLoopProg 64 :=
.seq loopBody130_31 loopBody130_1

def loopBody130_33 : HolLoopProg 64 :=
.mark loopBody130_32

def loopBody130_34 : HolLoopProg 64 :=
.seq loopBody130_27 loopBody130_33

def loopBody130_35 : HolLoopProg 64 :=
.mark loopBody130_34

def loopBody130_36 : HolLoopProg 64 :=
.seq loopBody130_25 loopBody130_35

def loopBody130_37 : HolLoopProg 64 :=
.mark loopBody130_36

def loopBody130_38 : HolLoopProg 64 :=
.seq loopBody130_23 loopBody130_37

def loopBody130_39 : HolLoopProg 64 :=
.mark loopBody130_38

def loopBody130_40 : HolLoopProg 64 :=
.seq loopBody130_21 loopBody130_39

def loopBody130_41 : HolLoopProg 64 :=
.mark loopBody130_40

def loopBody130_42 : HolLoopProg 64 :=
.seq loopBody130_15 loopBody130_41

def loopBody130_43 : HolLoopProg 64 :=
.mark loopBody130_42

def loopBody130_44 : HolLoopProg 64 :=
.seq loopBody130_1 loopBody130_43

def loopBody130_45 : HolLoopProg 64 :=
.mark loopBody130_44

def loopBody130_46 : HolLoopProg 64 :=
.seq loopBody130_1 loopBody130_45

def loopBody130_47 : HolLoopProg 64 :=
.mark loopBody130_46

def loopBody130_48 : HolLoopProg 64 :=
.seq loopBody130_19 loopBody130_47

def loopBody130_49 : HolLoopProg 64 :=
.mark loopBody130_48

def loopBody130_50 : HolLoopProg 64 :=
.seq loopBody130_1 loopBody130_49

def loopBody130_51 : HolLoopProg 64 :=
.mark loopBody130_50

def loopBody130_52 : HolLoopProg 64 :=
.seq loopBody130_17 loopBody130_51

def loopBody130_53 : HolLoopProg 64 :=
.mark loopBody130_52

def loopBody130_54 : HolLoopProg 64 :=
.seq loopBody130_1 loopBody130_53

def loopBody130_55 : HolLoopProg 64 :=
.mark loopBody130_54

def loopBody130_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody130_57 : HolLoopProg 64 :=
.mark loopBody130_56

def loopBody130_58 : HolLoopProg 64 :=
.seq loopBody130_55 loopBody130_57

def loopBody130_59 : HolLoopProg 64 :=
.mark loopBody130_58

def loopBody130_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody130_61 : HolLoopProg 64 :=
.mark loopBody130_60

def loopBody130_62 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody130_59 loopBody130_61 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody130_63 : HolLoopProg 64 :=
.mark loopBody130_62

def loopBody130_64 : HolLoopProg 64 :=
.seq loopBody130_63 loopBody130_1

def loopBody130_65 : HolLoopProg 64 :=
.mark loopBody130_64

def loopBody130_66 : HolLoopProg 64 :=
.seq loopBody130_15 loopBody130_65

def loopBody130_67 : HolLoopProg 64 :=
.mark loopBody130_66

def loopBody130_68 : HolLoopProg 64 :=
.seq loopBody130_13 loopBody130_67

def loopBody130_69 : HolLoopProg 64 :=
.mark loopBody130_68

def loopBody130_70 : HolLoopProg 64 :=
.seq loopBody130_7 loopBody130_69

def loopBody130_71 : HolLoopProg 64 :=
.mark loopBody130_70

def loopBody130_72 : HolLoopProg 64 :=
.seq loopBody130_5 loopBody130_71

def loopBody130_73 : HolLoopProg 64 :=
.mark loopBody130_72

def loopBody130_74 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) loopBody130_73 (Flapjack.Spt.ln)

def loopBody130_75 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody130_76 : HolLoopProg 64 :=
.mark loopBody130_75

def loopBody130_77 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody130_78 : HolLoopProg 64 :=
.mark loopBody130_77

def loopBody130_79 : HolLoopProg 64 :=
.seq loopBody130_78 loopBody130_1

def loopBody130_80 : HolLoopProg 64 :=
.mark loopBody130_79

def loopBody130_81 : HolLoopProg 64 :=
.seq loopBody130_76 loopBody130_80

def loopBody130_82 : HolLoopProg 64 :=
.mark loopBody130_81

def loopBody130_83 : HolLoopProg 64 :=
.seq loopBody130_74 loopBody130_82

def loopBody130_84 : HolLoopProg 64 :=
.seq loopBody130_3 loopBody130_83

def loopBody130_85 : HolLoopProg 64 :=
.seq loopBody130_1 loopBody130_84

def output130 : Nat × List Nat × HolLoopProg 64 :=
  (194, [0, 1], loopBody130_85)
end InitECandidate.Proofs.FrontendStages.Loop
