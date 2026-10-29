import InitECandidate.Proofs.FrontendStages.Loop.Translate94
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody110_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 55#64)

def loopBody110_1 : HolLoopProg 64 :=
.mark loopBody110_0

def loopBody110_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody110_3 : HolLoopProg 64 :=
.mark loopBody110_2

def loopBody110_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody110_5 : HolLoopProg 64 :=
.mark loopBody110_4

def loopBody110_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody110_7 : HolLoopProg 64 :=
.mark loopBody110_6

def loopBody110_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.RegImm.reg 5) loopBody110_5 loopBody110_7 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.ls PUnit.unit))

def loopBody110_9 : HolLoopProg 64 :=
.mark loopBody110_8

def loopBody110_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody110_11 : HolLoopProg 64 :=
.mark loopBody110_10

def loopBody110_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody110_13 : HolLoopProg 64 :=
.mark loopBody110_12

def loopBody110_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 2])

def loopBody110_15 : HolLoopProg 64 :=
.mark loopBody110_14

def loopBody110_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 3 4

def loopBody110_17 : HolLoopProg 64 :=
.mark loopBody110_16

def loopBody110_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody110_19 : HolLoopProg 64 :=
.mark loopBody110_18

def loopBody110_20 : HolLoopProg 64 :=
.seq loopBody110_17 loopBody110_19

def loopBody110_21 : HolLoopProg 64 :=
.mark loopBody110_20

def loopBody110_22 : HolLoopProg 64 :=
.seq loopBody110_15 loopBody110_21

def loopBody110_23 : HolLoopProg 64 :=
.mark loopBody110_22

def loopBody110_24 : HolLoopProg 64 :=
.seq loopBody110_13 loopBody110_23

def loopBody110_25 : HolLoopProg 64 :=
.mark loopBody110_24

def loopBody110_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody110_27 : HolLoopProg 64 :=
.mark loopBody110_26

def loopBody110_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody110_29 : HolLoopProg 64 :=
.mark loopBody110_28

def loopBody110_30 : HolLoopProg 64 :=
.seq loopBody110_29 loopBody110_19

def loopBody110_31 : HolLoopProg 64 :=
.mark loopBody110_30

def loopBody110_32 : HolLoopProg 64 :=
.seq loopBody110_27 loopBody110_31

def loopBody110_33 : HolLoopProg 64 :=
.mark loopBody110_32

def loopBody110_34 : HolLoopProg 64 :=
.seq loopBody110_25 loopBody110_33

def loopBody110_35 : HolLoopProg 64 :=
.mark loopBody110_34

def loopBody110_36 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody110_35 loopBody110_19 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody110_37 : HolLoopProg 64 :=
.mark loopBody110_36

def loopBody110_38 : HolLoopProg 64 :=
.seq loopBody110_37 loopBody110_19

def loopBody110_39 : HolLoopProg 64 :=
.mark loopBody110_38

def loopBody110_40 : HolLoopProg 64 :=
.seq loopBody110_11 loopBody110_39

def loopBody110_41 : HolLoopProg 64 :=
.mark loopBody110_40

def loopBody110_42 : HolLoopProg 64 :=
.seq loopBody110_9 loopBody110_41

def loopBody110_43 : HolLoopProg 64 :=
.mark loopBody110_42

def loopBody110_44 : HolLoopProg 64 :=
.seq loopBody110_3 loopBody110_43

def loopBody110_45 : HolLoopProg 64 :=
.mark loopBody110_44

def loopBody110_46 : HolLoopProg 64 :=
.seq loopBody110_1 loopBody110_45

def loopBody110_47 : HolLoopProg 64 :=
.mark loopBody110_46

def loopBody110_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody110_49 : HolLoopProg 64 :=
.mark loopBody110_48

def loopBody110_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody110_51 : HolLoopProg 64 :=
.mark loopBody110_50

def loopBody110_52 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 172) ([4]) (some (4, loopBody110_51, loopBody110_19, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody110_53 : HolLoopProg 64 :=
.mark loopBody110_52

def loopBody110_54 : HolLoopProg 64 :=
.seq loopBody110_53 loopBody110_19

def loopBody110_55 : HolLoopProg 64 :=
.mark loopBody110_54

def loopBody110_56 : HolLoopProg 64 :=
.seq loopBody110_49 loopBody110_55

def loopBody110_57 : HolLoopProg 64 :=
.mark loopBody110_56

def loopBody110_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody110_59 : HolLoopProg 64 :=
.mark loopBody110_58

def loopBody110_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 55#64, Flapjack.HolLoopExp.var 3])

def loopBody110_61 : HolLoopProg 64 :=
.mark loopBody110_60

def loopBody110_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 4 5

def loopBody110_63 : HolLoopProg 64 :=
.mark loopBody110_62

def loopBody110_64 : HolLoopProg 64 :=
.seq loopBody110_63 loopBody110_19

def loopBody110_65 : HolLoopProg 64 :=
.mark loopBody110_64

def loopBody110_66 : HolLoopProg 64 :=
.seq loopBody110_61 loopBody110_65

def loopBody110_67 : HolLoopProg 64 :=
.mark loopBody110_66

def loopBody110_68 : HolLoopProg 64 :=
.seq loopBody110_59 loopBody110_67

def loopBody110_69 : HolLoopProg 64 :=
.mark loopBody110_68

def loopBody110_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 1#64])

def loopBody110_71 : HolLoopProg 64 :=
.mark loopBody110_70

def loopBody110_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody110_73 : HolLoopProg 64 :=
.mark loopBody110_72

def loopBody110_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody110_75 : HolLoopProg 64 :=
.mark loopBody110_74

def loopBody110_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody110_77 : HolLoopProg 64 :=
.mark loopBody110_76

def loopBody110_78 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 173) ([5, 6, 7]) (some (5, loopBody110_77, loopBody110_19, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody110_79 : HolLoopProg 64 :=
.mark loopBody110_78

def loopBody110_80 : HolLoopProg 64 :=
.seq loopBody110_79 loopBody110_19

def loopBody110_81 : HolLoopProg 64 :=
.mark loopBody110_80

def loopBody110_82 : HolLoopProg 64 :=
.seq loopBody110_75 loopBody110_81

def loopBody110_83 : HolLoopProg 64 :=
.mark loopBody110_82

def loopBody110_84 : HolLoopProg 64 :=
.seq loopBody110_73 loopBody110_83

def loopBody110_85 : HolLoopProg 64 :=
.mark loopBody110_84

def loopBody110_86 : HolLoopProg 64 :=
.seq loopBody110_71 loopBody110_85

def loopBody110_87 : HolLoopProg 64 :=
.mark loopBody110_86

def loopBody110_88 : HolLoopProg 64 :=
.seq loopBody110_19 loopBody110_87

def loopBody110_89 : HolLoopProg 64 :=
.mark loopBody110_88

def loopBody110_90 : HolLoopProg 64 :=
.seq loopBody110_19 loopBody110_89

def loopBody110_91 : HolLoopProg 64 :=
.mark loopBody110_90

def loopBody110_92 : HolLoopProg 64 :=
.seq loopBody110_69 loopBody110_91

def loopBody110_93 : HolLoopProg 64 :=
.mark loopBody110_92

def loopBody110_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.const 1#64, Flapjack.HolLoopExp.var 3])

def loopBody110_95 : HolLoopProg 64 :=
.mark loopBody110_94

def loopBody110_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody110_97 : HolLoopProg 64 :=
.mark loopBody110_96

def loopBody110_98 : HolLoopProg 64 :=
.seq loopBody110_97 loopBody110_19

def loopBody110_99 : HolLoopProg 64 :=
.mark loopBody110_98

def loopBody110_100 : HolLoopProg 64 :=
.seq loopBody110_95 loopBody110_99

def loopBody110_101 : HolLoopProg 64 :=
.mark loopBody110_100

def loopBody110_102 : HolLoopProg 64 :=
.seq loopBody110_93 loopBody110_101

def loopBody110_103 : HolLoopProg 64 :=
.mark loopBody110_102

def loopBody110_104 : HolLoopProg 64 :=
.seq loopBody110_57 loopBody110_103

def loopBody110_105 : HolLoopProg 64 :=
.mark loopBody110_104

def loopBody110_106 : HolLoopProg 64 :=
.seq loopBody110_19 loopBody110_105

def loopBody110_107 : HolLoopProg 64 :=
.mark loopBody110_106

def loopBody110_108 : HolLoopProg 64 :=
.seq loopBody110_19 loopBody110_107

def loopBody110_109 : HolLoopProg 64 :=
.mark loopBody110_108

def loopBody110_110 : HolLoopProg 64 :=
.seq loopBody110_47 loopBody110_109

def loopBody110_111 : HolLoopProg 64 :=
.mark loopBody110_110

def output110 : Nat × List Nat × HolLoopProg 64 :=
  (174, [0, 1, 2], loopBody110_111)
end InitECandidate.Proofs.FrontendStages.Loop
