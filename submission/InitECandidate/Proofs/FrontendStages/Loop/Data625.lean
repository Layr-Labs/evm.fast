import InitECandidate.Proofs.FrontendStages.Loop.Translate609
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody625_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody625_1 : HolLoopProg 64 :=
.mark loopBody625_0

def loopBody625_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 1)

def loopBody625_3 : HolLoopProg 64 :=
.mark loopBody625_2

def loopBody625_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody625_5 : HolLoopProg 64 :=
.mark loopBody625_4

def loopBody625_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody625_7 : HolLoopProg 64 :=
.mark loopBody625_6

def loopBody625_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody625_9 : HolLoopProg 64 :=
.mark loopBody625_8

def loopBody625_10 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.RegImm.reg 5) loopBody625_9 loopBody625_5 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.ls PUnit.unit))

def loopBody625_11 : HolLoopProg 64 :=
.mark loopBody625_10

def loopBody625_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody625_13 : HolLoopProg 64 :=
.mark loopBody625_12

def loopBody625_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 1#64])

def loopBody625_15 : HolLoopProg 64 :=
.mark loopBody625_14

def loopBody625_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 3)

def loopBody625_17 : HolLoopProg 64 :=
.mark loopBody625_16

def loopBody625_18 : HolLoopProg 64 :=
.seq loopBody625_17 loopBody625_1

def loopBody625_19 : HolLoopProg 64 :=
.mark loopBody625_18

def loopBody625_20 : HolLoopProg 64 :=
.seq loopBody625_19 loopBody625_1

def loopBody625_21 : HolLoopProg 64 :=
.mark loopBody625_20

def loopBody625_22 : HolLoopProg 64 :=
.seq loopBody625_15 loopBody625_21

def loopBody625_23 : HolLoopProg 64 :=
.mark loopBody625_22

def loopBody625_24 : HolLoopProg 64 :=
.seq loopBody625_1 loopBody625_23

def loopBody625_25 : HolLoopProg 64 :=
.mark loopBody625_24

def loopBody625_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 5#64)])

def loopBody625_27 : HolLoopProg 64 :=
.mark loopBody625_26

def loopBody625_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 32#64)

def loopBody625_29 : HolLoopProg 64 :=
.mark loopBody625_28

def loopBody625_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody625_31 : HolLoopProg 64 :=
.mark loopBody625_30

def loopBody625_32 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 80) ([4, 5]) (some (4, loopBody625_31, loopBody625_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody625_33 : HolLoopProg 64 :=
.mark loopBody625_32

def loopBody625_34 : HolLoopProg 64 :=
.seq loopBody625_33 loopBody625_1

def loopBody625_35 : HolLoopProg 64 :=
.mark loopBody625_34

def loopBody625_36 : HolLoopProg 64 :=
.seq loopBody625_29 loopBody625_35

def loopBody625_37 : HolLoopProg 64 :=
.mark loopBody625_36

def loopBody625_38 : HolLoopProg 64 :=
.seq loopBody625_27 loopBody625_37

def loopBody625_39 : HolLoopProg 64 :=
.mark loopBody625_38

def loopBody625_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody625_41 : HolLoopProg 64 :=
.mark loopBody625_40

def loopBody625_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody625_43 : HolLoopProg 64 :=
.mark loopBody625_42

def loopBody625_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody625_45 : HolLoopProg 64 :=
.mark loopBody625_44

def loopBody625_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody625_47 : HolLoopProg 64 :=
.mark loopBody625_46

def loopBody625_48 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.RegImm.reg 6) loopBody625_45 loopBody625_47 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))

def loopBody625_49 : HolLoopProg 64 :=
.mark loopBody625_48

def loopBody625_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody625_51 : HolLoopProg 64 :=
.mark loopBody625_50

def loopBody625_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody625_53 : HolLoopProg 64 :=
.mark loopBody625_52

def loopBody625_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody625_55 : HolLoopProg 64 :=
.mark loopBody625_54

def loopBody625_56 : HolLoopProg 64 :=
.seq loopBody625_55 loopBody625_1

def loopBody625_57 : HolLoopProg 64 :=
.mark loopBody625_56

def loopBody625_58 : HolLoopProg 64 :=
.seq loopBody625_53 loopBody625_57

def loopBody625_59 : HolLoopProg 64 :=
.mark loopBody625_58

def loopBody625_60 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody625_59 loopBody625_1 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody625_61 : HolLoopProg 64 :=
.mark loopBody625_60

def loopBody625_62 : HolLoopProg 64 :=
.seq loopBody625_61 loopBody625_1

def loopBody625_63 : HolLoopProg 64 :=
.mark loopBody625_62

def loopBody625_64 : HolLoopProg 64 :=
.seq loopBody625_51 loopBody625_63

def loopBody625_65 : HolLoopProg 64 :=
.mark loopBody625_64

def loopBody625_66 : HolLoopProg 64 :=
.seq loopBody625_49 loopBody625_65

def loopBody625_67 : HolLoopProg 64 :=
.mark loopBody625_66

def loopBody625_68 : HolLoopProg 64 :=
.seq loopBody625_43 loopBody625_67

def loopBody625_69 : HolLoopProg 64 :=
.mark loopBody625_68

def loopBody625_70 : HolLoopProg 64 :=
.seq loopBody625_41 loopBody625_69

def loopBody625_71 : HolLoopProg 64 :=
.mark loopBody625_70

def loopBody625_72 : HolLoopProg 64 :=
.seq loopBody625_39 loopBody625_71

def loopBody625_73 : HolLoopProg 64 :=
.mark loopBody625_72

def loopBody625_74 : HolLoopProg 64 :=
.seq loopBody625_1 loopBody625_73

def loopBody625_75 : HolLoopProg 64 :=
.mark loopBody625_74

def loopBody625_76 : HolLoopProg 64 :=
.seq loopBody625_1 loopBody625_75

def loopBody625_77 : HolLoopProg 64 :=
.mark loopBody625_76

def loopBody625_78 : HolLoopProg 64 :=
.seq loopBody625_25 loopBody625_77

def loopBody625_79 : HolLoopProg 64 :=
.mark loopBody625_78

def loopBody625_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody625_81 : HolLoopProg 64 :=
.mark loopBody625_80

def loopBody625_82 : HolLoopProg 64 :=
.seq loopBody625_79 loopBody625_81

def loopBody625_83 : HolLoopProg 64 :=
.mark loopBody625_82

def loopBody625_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody625_85 : HolLoopProg 64 :=
.mark loopBody625_84

def loopBody625_86 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody625_83 loopBody625_85 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody625_87 : HolLoopProg 64 :=
.mark loopBody625_86

def loopBody625_88 : HolLoopProg 64 :=
.seq loopBody625_87 loopBody625_1

def loopBody625_89 : HolLoopProg 64 :=
.mark loopBody625_88

def loopBody625_90 : HolLoopProg 64 :=
.seq loopBody625_13 loopBody625_89

def loopBody625_91 : HolLoopProg 64 :=
.mark loopBody625_90

def loopBody625_92 : HolLoopProg 64 :=
.seq loopBody625_11 loopBody625_91

def loopBody625_93 : HolLoopProg 64 :=
.mark loopBody625_92

def loopBody625_94 : HolLoopProg 64 :=
.seq loopBody625_7 loopBody625_93

def loopBody625_95 : HolLoopProg 64 :=
.mark loopBody625_94

def loopBody625_96 : HolLoopProg 64 :=
.seq loopBody625_5 loopBody625_95

def loopBody625_97 : HolLoopProg 64 :=
.mark loopBody625_96

def loopBody625_98 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) loopBody625_97 (Flapjack.Spt.ln)

def loopBody625_99 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 0#64, Flapjack.HolLoopExp.const 1#64])

def loopBody625_100 : HolLoopProg 64 :=
.mark loopBody625_99

def loopBody625_101 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody625_102 : HolLoopProg 64 :=
.mark loopBody625_101

def loopBody625_103 : HolLoopProg 64 :=
.seq loopBody625_102 loopBody625_1

def loopBody625_104 : HolLoopProg 64 :=
.mark loopBody625_103

def loopBody625_105 : HolLoopProg 64 :=
.seq loopBody625_100 loopBody625_104

def loopBody625_106 : HolLoopProg 64 :=
.mark loopBody625_105

def loopBody625_107 : HolLoopProg 64 :=
.seq loopBody625_98 loopBody625_106

def loopBody625_108 : HolLoopProg 64 :=
.seq loopBody625_3 loopBody625_107

def loopBody625_109 : HolLoopProg 64 :=
.seq loopBody625_1 loopBody625_108

def output625 : Nat × List Nat × HolLoopProg 64 :=
  (689, [0, 1], loopBody625_109)
end InitECandidate.Proofs.FrontendStages.Loop
