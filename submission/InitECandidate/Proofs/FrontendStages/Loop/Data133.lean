import InitECandidate.Proofs.FrontendStages.Loop.Translate117
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody133_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody133_1 : HolLoopProg 64 :=
.mark loopBody133_0

def loopBody133_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 24#64]))

def loopBody133_3 : HolLoopProg 64 :=
.mark loopBody133_2

def loopBody133_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody133_5 : HolLoopProg 64 :=
.mark loopBody133_4

def loopBody133_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody133_7 : HolLoopProg 64 :=
.mark loopBody133_6

def loopBody133_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notLower) 3 (Flapjack.RegImm.reg 4) loopBody133_5 loopBody133_7 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody133_9 : HolLoopProg 64 :=
.mark loopBody133_8

def loopBody133_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody133_11 : HolLoopProg 64 :=
.mark loopBody133_10

def loopBody133_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody133_13 : HolLoopProg 64 :=
.mark loopBody133_12

def loopBody133_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody133_15 : HolLoopProg 64 :=
.mark loopBody133_14

def loopBody133_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2, 3, 4]

def loopBody133_17 : HolLoopProg 64 :=
.mark loopBody133_16

def loopBody133_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody133_19 : HolLoopProg 64 :=
.mark loopBody133_18

def loopBody133_20 : HolLoopProg 64 :=
.seq loopBody133_17 loopBody133_19

def loopBody133_21 : HolLoopProg 64 :=
.mark loopBody133_20

def loopBody133_22 : HolLoopProg 64 :=
.seq loopBody133_15 loopBody133_21

def loopBody133_23 : HolLoopProg 64 :=
.mark loopBody133_22

def loopBody133_24 : HolLoopProg 64 :=
.seq loopBody133_7 loopBody133_23

def loopBody133_25 : HolLoopProg 64 :=
.mark loopBody133_24

def loopBody133_26 : HolLoopProg 64 :=
.seq loopBody133_13 loopBody133_25

def loopBody133_27 : HolLoopProg 64 :=
.mark loopBody133_26

def loopBody133_28 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody133_27 loopBody133_19 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody133_29 : HolLoopProg 64 :=
.mark loopBody133_28

def loopBody133_30 : HolLoopProg 64 :=
.seq loopBody133_29 loopBody133_19

def loopBody133_31 : HolLoopProg 64 :=
.mark loopBody133_30

def loopBody133_32 : HolLoopProg 64 :=
.seq loopBody133_11 loopBody133_31

def loopBody133_33 : HolLoopProg 64 :=
.mark loopBody133_32

def loopBody133_34 : HolLoopProg 64 :=
.seq loopBody133_9 loopBody133_33

def loopBody133_35 : HolLoopProg 64 :=
.mark loopBody133_34

def loopBody133_36 : HolLoopProg 64 :=
.seq loopBody133_3 loopBody133_35

def loopBody133_37 : HolLoopProg 64 :=
.mark loopBody133_36

def loopBody133_38 : HolLoopProg 64 :=
.seq loopBody133_1 loopBody133_37

def loopBody133_39 : HolLoopProg 64 :=
.mark loopBody133_38

def loopBody133_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 48#64]),
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 3#64)]))

def loopBody133_41 : HolLoopProg 64 :=
.mark loopBody133_40

def loopBody133_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64]))

def loopBody133_43 : HolLoopProg 64 :=
.mark loopBody133_42

def loopBody133_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody133_45 : HolLoopProg 64 :=
.mark loopBody133_44

def loopBody133_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 6 6 4 5)

def loopBody133_47 : HolLoopProg 64 :=
.mark loopBody133_46

def loopBody133_48 : HolLoopProg 64 :=
.seq loopBody133_47 loopBody133_19

def loopBody133_49 : HolLoopProg 64 :=
.mark loopBody133_48

def loopBody133_50 : HolLoopProg 64 :=
.seq loopBody133_11 loopBody133_49

def loopBody133_51 : HolLoopProg 64 :=
.mark loopBody133_50

def loopBody133_52 : HolLoopProg 64 :=
.seq loopBody133_45 loopBody133_51

def loopBody133_53 : HolLoopProg 64 :=
.mark loopBody133_52

def loopBody133_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 32#64]),
      Flapjack.HolLoopExp.var 6])

def loopBody133_55 : HolLoopProg 64 :=
.mark loopBody133_54

def loopBody133_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 40#64]),
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 5#64),
        Flapjack.HolLoopExp.const 8#64]))

def loopBody133_57 : HolLoopProg 64 :=
.mark loopBody133_56

def loopBody133_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 1#64)

def loopBody133_59 : HolLoopProg 64 :=
.mark loopBody133_58

def loopBody133_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 7)

def loopBody133_61 : HolLoopProg 64 :=
.mark loopBody133_60

def loopBody133_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 8)

def loopBody133_63 : HolLoopProg 64 :=
.mark loopBody133_62

def loopBody133_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [9, 10, 11]

def loopBody133_65 : HolLoopProg 64 :=
.mark loopBody133_64

def loopBody133_66 : HolLoopProg 64 :=
.seq loopBody133_65 loopBody133_19

def loopBody133_67 : HolLoopProg 64 :=
.mark loopBody133_66

def loopBody133_68 : HolLoopProg 64 :=
.seq loopBody133_63 loopBody133_67

def loopBody133_69 : HolLoopProg 64 :=
.mark loopBody133_68

def loopBody133_70 : HolLoopProg 64 :=
.seq loopBody133_61 loopBody133_69

def loopBody133_71 : HolLoopProg 64 :=
.mark loopBody133_70

def loopBody133_72 : HolLoopProg 64 :=
.seq loopBody133_59 loopBody133_71

def loopBody133_73 : HolLoopProg 64 :=
.mark loopBody133_72

def loopBody133_74 : HolLoopProg 64 :=
.seq loopBody133_57 loopBody133_73

def loopBody133_75 : HolLoopProg 64 :=
.mark loopBody133_74

def loopBody133_76 : HolLoopProg 64 :=
.seq loopBody133_19 loopBody133_75

def loopBody133_77 : HolLoopProg 64 :=
.mark loopBody133_76

def loopBody133_78 : HolLoopProg 64 :=
.seq loopBody133_55 loopBody133_77

def loopBody133_79 : HolLoopProg 64 :=
.mark loopBody133_78

def loopBody133_80 : HolLoopProg 64 :=
.seq loopBody133_53 loopBody133_79

def loopBody133_81 : HolLoopProg 64 :=
.mark loopBody133_80

def loopBody133_82 : HolLoopProg 64 :=
.seq loopBody133_43 loopBody133_81

def loopBody133_83 : HolLoopProg 64 :=
.mark loopBody133_82

def loopBody133_84 : HolLoopProg 64 :=
.seq loopBody133_19 loopBody133_83

def loopBody133_85 : HolLoopProg 64 :=
.mark loopBody133_84

def loopBody133_86 : HolLoopProg 64 :=
.seq loopBody133_41 loopBody133_85

def loopBody133_87 : HolLoopProg 64 :=
.mark loopBody133_86

def loopBody133_88 : HolLoopProg 64 :=
.seq loopBody133_19 loopBody133_87

def loopBody133_89 : HolLoopProg 64 :=
.mark loopBody133_88

def loopBody133_90 : HolLoopProg 64 :=
.seq loopBody133_39 loopBody133_89

def loopBody133_91 : HolLoopProg 64 :=
.mark loopBody133_90

def output133 : Nat × List Nat × HolLoopProg 64 :=
  (197, [0, 1], loopBody133_91)
end InitECandidate.Proofs.FrontendStages.Loop
