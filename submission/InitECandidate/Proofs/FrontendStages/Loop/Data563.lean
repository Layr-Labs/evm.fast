import InitECandidate.Proofs.FrontendStages.Loop.Translate547
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody563_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody563_1 : HolLoopProg 64 :=
.mark loopBody563_0

def loopBody563_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 16#64)

def loopBody563_3 : HolLoopProg 64 :=
.mark loopBody563_2

def loopBody563_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody563_5 : HolLoopProg 64 :=
.mark loopBody563_4

def loopBody563_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody563_7 : HolLoopProg 64 :=
.mark loopBody563_6

def loopBody563_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.RegImm.reg 6) loopBody563_5 loopBody563_7 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody563_9 : HolLoopProg 64 :=
.mark loopBody563_8

def loopBody563_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody563_11 : HolLoopProg 64 :=
.mark loopBody563_10

def loopBody563_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor
    [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 3])

def loopBody563_13 : HolLoopProg 64 :=
.mark loopBody563_12

def loopBody563_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody563_15 : HolLoopProg 64 :=
.mark loopBody563_14

def loopBody563_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody563_17 : HolLoopProg 64 :=
.mark loopBody563_16

def loopBody563_18 : HolLoopProg 64 :=
.seq loopBody563_15 loopBody563_17

def loopBody563_19 : HolLoopProg 64 :=
.mark loopBody563_18

def loopBody563_20 : HolLoopProg 64 :=
.seq loopBody563_13 loopBody563_19

def loopBody563_21 : HolLoopProg 64 :=
.mark loopBody563_20

def loopBody563_22 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody563_21 loopBody563_17 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody563_23 : HolLoopProg 64 :=
.mark loopBody563_22

def loopBody563_24 : HolLoopProg 64 :=
.seq loopBody563_23 loopBody563_17

def loopBody563_25 : HolLoopProg 64 :=
.mark loopBody563_24

def loopBody563_26 : HolLoopProg 64 :=
.seq loopBody563_11 loopBody563_25

def loopBody563_27 : HolLoopProg 64 :=
.mark loopBody563_26

def loopBody563_28 : HolLoopProg 64 :=
.seq loopBody563_9 loopBody563_27

def loopBody563_29 : HolLoopProg 64 :=
.mark loopBody563_28

def loopBody563_30 : HolLoopProg 64 :=
.seq loopBody563_3 loopBody563_29

def loopBody563_31 : HolLoopProg 64 :=
.mark loopBody563_30

def loopBody563_32 : HolLoopProg 64 :=
.seq loopBody563_1 loopBody563_31

def loopBody563_33 : HolLoopProg 64 :=
.mark loopBody563_32

def loopBody563_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 32#64)

def loopBody563_35 : HolLoopProg 64 :=
.mark loopBody563_34

def loopBody563_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 2],
      Flapjack.HolLoopExp.op Flapjack.BinOp.and
        [Flapjack.HolLoopExp.op Flapjack.BinOp.xor [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 4294967295#64],
          Flapjack.HolLoopExp.var 3]])

def loopBody563_37 : HolLoopProg 64 :=
.mark loopBody563_36

def loopBody563_38 : HolLoopProg 64 :=
.seq loopBody563_37 loopBody563_19

def loopBody563_39 : HolLoopProg 64 :=
.mark loopBody563_38

def loopBody563_40 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody563_39 loopBody563_17 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody563_41 : HolLoopProg 64 :=
.mark loopBody563_40

def loopBody563_42 : HolLoopProg 64 :=
.seq loopBody563_41 loopBody563_17

def loopBody563_43 : HolLoopProg 64 :=
.mark loopBody563_42

def loopBody563_44 : HolLoopProg 64 :=
.seq loopBody563_11 loopBody563_43

def loopBody563_45 : HolLoopProg 64 :=
.mark loopBody563_44

def loopBody563_46 : HolLoopProg 64 :=
.seq loopBody563_9 loopBody563_45

def loopBody563_47 : HolLoopProg 64 :=
.mark loopBody563_46

def loopBody563_48 : HolLoopProg 64 :=
.seq loopBody563_35 loopBody563_47

def loopBody563_49 : HolLoopProg 64 :=
.mark loopBody563_48

def loopBody563_50 : HolLoopProg 64 :=
.seq loopBody563_1 loopBody563_49

def loopBody563_51 : HolLoopProg 64 :=
.mark loopBody563_50

def loopBody563_52 : HolLoopProg 64 :=
.seq loopBody563_33 loopBody563_51

def loopBody563_53 : HolLoopProg 64 :=
.mark loopBody563_52

def loopBody563_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 48#64)

def loopBody563_55 : HolLoopProg 64 :=
.mark loopBody563_54

def loopBody563_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor
    [Flapjack.HolLoopExp.op Flapjack.BinOp.or
        [Flapjack.HolLoopExp.var 1,
          Flapjack.HolLoopExp.op Flapjack.BinOp.xor
            [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 4294967295#64]],
      Flapjack.HolLoopExp.var 3])

def loopBody563_57 : HolLoopProg 64 :=
.mark loopBody563_56

def loopBody563_58 : HolLoopProg 64 :=
.seq loopBody563_57 loopBody563_19

def loopBody563_59 : HolLoopProg 64 :=
.mark loopBody563_58

def loopBody563_60 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody563_59 loopBody563_17 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody563_61 : HolLoopProg 64 :=
.mark loopBody563_60

def loopBody563_62 : HolLoopProg 64 :=
.seq loopBody563_61 loopBody563_17

def loopBody563_63 : HolLoopProg 64 :=
.mark loopBody563_62

def loopBody563_64 : HolLoopProg 64 :=
.seq loopBody563_11 loopBody563_63

def loopBody563_65 : HolLoopProg 64 :=
.mark loopBody563_64

def loopBody563_66 : HolLoopProg 64 :=
.seq loopBody563_9 loopBody563_65

def loopBody563_67 : HolLoopProg 64 :=
.mark loopBody563_66

def loopBody563_68 : HolLoopProg 64 :=
.seq loopBody563_55 loopBody563_67

def loopBody563_69 : HolLoopProg 64 :=
.mark loopBody563_68

def loopBody563_70 : HolLoopProg 64 :=
.seq loopBody563_1 loopBody563_69

def loopBody563_71 : HolLoopProg 64 :=
.mark loopBody563_70

def loopBody563_72 : HolLoopProg 64 :=
.seq loopBody563_53 loopBody563_71

def loopBody563_73 : HolLoopProg 64 :=
.mark loopBody563_72

def loopBody563_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 64#64)

def loopBody563_75 : HolLoopProg 64 :=
.mark loopBody563_74

def loopBody563_76 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.RegImm.reg 6) loopBody563_5 loopBody563_7 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody563_77 : HolLoopProg 64 :=
.mark loopBody563_76

def loopBody563_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 3],
      Flapjack.HolLoopExp.op Flapjack.BinOp.and
        [Flapjack.HolLoopExp.var 2,
          Flapjack.HolLoopExp.op Flapjack.BinOp.xor
            [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 4294967295#64]]])

def loopBody563_79 : HolLoopProg 64 :=
.mark loopBody563_78

def loopBody563_80 : HolLoopProg 64 :=
.seq loopBody563_79 loopBody563_19

def loopBody563_81 : HolLoopProg 64 :=
.mark loopBody563_80

def loopBody563_82 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody563_81 loopBody563_17 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody563_83 : HolLoopProg 64 :=
.mark loopBody563_82

def loopBody563_84 : HolLoopProg 64 :=
.seq loopBody563_83 loopBody563_17

def loopBody563_85 : HolLoopProg 64 :=
.mark loopBody563_84

def loopBody563_86 : HolLoopProg 64 :=
.seq loopBody563_11 loopBody563_85

def loopBody563_87 : HolLoopProg 64 :=
.mark loopBody563_86

def loopBody563_88 : HolLoopProg 64 :=
.seq loopBody563_77 loopBody563_87

def loopBody563_89 : HolLoopProg 64 :=
.mark loopBody563_88

def loopBody563_90 : HolLoopProg 64 :=
.seq loopBody563_75 loopBody563_89

def loopBody563_91 : HolLoopProg 64 :=
.mark loopBody563_90

def loopBody563_92 : HolLoopProg 64 :=
.seq loopBody563_1 loopBody563_91

def loopBody563_93 : HolLoopProg 64 :=
.mark loopBody563_92

def loopBody563_94 : HolLoopProg 64 :=
.seq loopBody563_73 loopBody563_93

def loopBody563_95 : HolLoopProg 64 :=
.mark loopBody563_94

def loopBody563_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor
    [Flapjack.HolLoopExp.var 1,
      Flapjack.HolLoopExp.op Flapjack.BinOp.or
        [Flapjack.HolLoopExp.var 2,
          Flapjack.HolLoopExp.op Flapjack.BinOp.xor
            [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 4294967295#64]]])

def loopBody563_97 : HolLoopProg 64 :=
.mark loopBody563_96

def loopBody563_98 : HolLoopProg 64 :=
.seq loopBody563_97 loopBody563_19

def loopBody563_99 : HolLoopProg 64 :=
.mark loopBody563_98

def loopBody563_100 : HolLoopProg 64 :=
.seq loopBody563_95 loopBody563_99

def loopBody563_101 : HolLoopProg 64 :=
.mark loopBody563_100

def output563 : Nat × List Nat × HolLoopProg 64 :=
  (627, [0, 1, 2, 3], loopBody563_101)
end InitECandidate.Proofs.FrontendStages.Loop
