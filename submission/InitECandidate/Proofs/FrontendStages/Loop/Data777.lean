import InitECandidate.Proofs.FrontendStages.Loop.Translate761
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody777_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody777_1 : HolLoopProg 64 :=
.mark loopBody777_0

def loopBody777_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64]))

def loopBody777_3 : HolLoopProg 64 :=
.mark loopBody777_2

def loopBody777_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64]))

def loopBody777_5 : HolLoopProg 64 :=
.mark loopBody777_4

def loopBody777_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 16#64)

def loopBody777_7 : HolLoopProg 64 :=
.mark loopBody777_6

def loopBody777_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody777_9 : HolLoopProg 64 :=
.mark loopBody777_8

def loopBody777_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody777_11 : HolLoopProg 64 :=
.mark loopBody777_10

def loopBody777_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody777_13 : HolLoopProg 64 :=
.mark loopBody777_12

def loopBody777_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody777_15 : HolLoopProg 64 :=
.mark loopBody777_14

def loopBody777_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody777_17 : HolLoopProg 64 :=
.mark loopBody777_16

def loopBody777_18 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.less) 6 (Flapjack.RegImm.reg 7) loopBody777_15 loopBody777_17 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody777_19 : HolLoopProg 64 :=
.mark loopBody777_18

def loopBody777_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody777_21 : HolLoopProg 64 :=
.mark loopBody777_20

def loopBody777_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 2,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 3#64)]))

def loopBody777_23 : HolLoopProg 64 :=
.mark loopBody777_22

def loopBody777_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 16#64]))

def loopBody777_25 : HolLoopProg 64 :=
.mark loopBody777_24

def loopBody777_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 33#64)

def loopBody777_27 : HolLoopProg 64 :=
.mark loopBody777_26

def loopBody777_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 8 8 6 7)

def loopBody777_29 : HolLoopProg 64 :=
.mark loopBody777_28

def loopBody777_30 : HolLoopProg 64 :=
.seq loopBody777_29 loopBody777_1

def loopBody777_31 : HolLoopProg 64 :=
.mark loopBody777_30

def loopBody777_32 : HolLoopProg 64 :=
.seq loopBody777_27 loopBody777_31

def loopBody777_33 : HolLoopProg 64 :=
.mark loopBody777_32

def loopBody777_34 : HolLoopProg 64 :=
.seq loopBody777_25 loopBody777_33

def loopBody777_35 : HolLoopProg 64 :=
.mark loopBody777_34

def loopBody777_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 64#64, Flapjack.HolLoopExp.var 8,
      Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 32#64])])

def loopBody777_37 : HolLoopProg 64 :=
.mark loopBody777_36

def loopBody777_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 9)

def loopBody777_39 : HolLoopProg 64 :=
.mark loopBody777_38

def loopBody777_40 : HolLoopProg 64 :=
.seq loopBody777_39 loopBody777_1

def loopBody777_41 : HolLoopProg 64 :=
.mark loopBody777_40

def loopBody777_42 : HolLoopProg 64 :=
.seq loopBody777_41 loopBody777_1

def loopBody777_43 : HolLoopProg 64 :=
.mark loopBody777_42

def loopBody777_44 : HolLoopProg 64 :=
.seq loopBody777_37 loopBody777_43

def loopBody777_45 : HolLoopProg 64 :=
.mark loopBody777_44

def loopBody777_46 : HolLoopProg 64 :=
.seq loopBody777_35 loopBody777_45

def loopBody777_47 : HolLoopProg 64 :=
.mark loopBody777_46

def loopBody777_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 1#64])

def loopBody777_49 : HolLoopProg 64 :=
.mark loopBody777_48

def loopBody777_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 6)

def loopBody777_51 : HolLoopProg 64 :=
.mark loopBody777_50

def loopBody777_52 : HolLoopProg 64 :=
.seq loopBody777_51 loopBody777_1

def loopBody777_53 : HolLoopProg 64 :=
.mark loopBody777_52

def loopBody777_54 : HolLoopProg 64 :=
.seq loopBody777_53 loopBody777_1

def loopBody777_55 : HolLoopProg 64 :=
.mark loopBody777_54

def loopBody777_56 : HolLoopProg 64 :=
.seq loopBody777_49 loopBody777_55

def loopBody777_57 : HolLoopProg 64 :=
.mark loopBody777_56

def loopBody777_58 : HolLoopProg 64 :=
.seq loopBody777_1 loopBody777_57

def loopBody777_59 : HolLoopProg 64 :=
.mark loopBody777_58

def loopBody777_60 : HolLoopProg 64 :=
.seq loopBody777_47 loopBody777_59

def loopBody777_61 : HolLoopProg 64 :=
.mark loopBody777_60

def loopBody777_62 : HolLoopProg 64 :=
.seq loopBody777_23 loopBody777_61

def loopBody777_63 : HolLoopProg 64 :=
.mark loopBody777_62

def loopBody777_64 : HolLoopProg 64 :=
.seq loopBody777_1 loopBody777_63

def loopBody777_65 : HolLoopProg 64 :=
.mark loopBody777_64

def loopBody777_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody777_67 : HolLoopProg 64 :=
.mark loopBody777_66

def loopBody777_68 : HolLoopProg 64 :=
.seq loopBody777_65 loopBody777_67

def loopBody777_69 : HolLoopProg 64 :=
.mark loopBody777_68

def loopBody777_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody777_71 : HolLoopProg 64 :=
.mark loopBody777_70

def loopBody777_72 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody777_69 loopBody777_71 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody777_73 : HolLoopProg 64 :=
.mark loopBody777_72

def loopBody777_74 : HolLoopProg 64 :=
.seq loopBody777_73 loopBody777_1

def loopBody777_75 : HolLoopProg 64 :=
.mark loopBody777_74

def loopBody777_76 : HolLoopProg 64 :=
.seq loopBody777_21 loopBody777_75

def loopBody777_77 : HolLoopProg 64 :=
.mark loopBody777_76

def loopBody777_78 : HolLoopProg 64 :=
.seq loopBody777_19 loopBody777_77

def loopBody777_79 : HolLoopProg 64 :=
.mark loopBody777_78

def loopBody777_80 : HolLoopProg 64 :=
.seq loopBody777_13 loopBody777_79

def loopBody777_81 : HolLoopProg 64 :=
.mark loopBody777_80

def loopBody777_82 : HolLoopProg 64 :=
.seq loopBody777_11 loopBody777_81

def loopBody777_83 : HolLoopProg 64 :=
.mark loopBody777_82

def loopBody777_84 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody777_83 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody777_85 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody777_86 : HolLoopProg 64 :=
.mark loopBody777_85

def loopBody777_87 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody777_88 : HolLoopProg 64 :=
.mark loopBody777_87

def loopBody777_89 : HolLoopProg 64 :=
.seq loopBody777_88 loopBody777_1

def loopBody777_90 : HolLoopProg 64 :=
.mark loopBody777_89

def loopBody777_91 : HolLoopProg 64 :=
.seq loopBody777_86 loopBody777_90

def loopBody777_92 : HolLoopProg 64 :=
.mark loopBody777_91

def loopBody777_93 : HolLoopProg 64 :=
.seq loopBody777_84 loopBody777_92

def loopBody777_94 : HolLoopProg 64 :=
.seq loopBody777_9 loopBody777_93

def loopBody777_95 : HolLoopProg 64 :=
.seq loopBody777_1 loopBody777_94

def loopBody777_96 : HolLoopProg 64 :=
.seq loopBody777_7 loopBody777_95

def loopBody777_97 : HolLoopProg 64 :=
.seq loopBody777_1 loopBody777_96

def loopBody777_98 : HolLoopProg 64 :=
.seq loopBody777_5 loopBody777_97

def loopBody777_99 : HolLoopProg 64 :=
.seq loopBody777_1 loopBody777_98

def loopBody777_100 : HolLoopProg 64 :=
.seq loopBody777_3 loopBody777_99

def loopBody777_101 : HolLoopProg 64 :=
.seq loopBody777_1 loopBody777_100

def output777 : Nat × List Nat × HolLoopProg 64 :=
  (841, [0], loopBody777_101)
end InitECandidate.Proofs.FrontendStages.Loop
