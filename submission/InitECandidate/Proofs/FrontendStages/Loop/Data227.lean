import InitECandidate.Proofs.FrontendStages.Loop.Translate211
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody227_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody227_1 : HolLoopProg 64 :=
.mark loopBody227_0

def loopBody227_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody227_3 : HolLoopProg 64 :=
.mark loopBody227_2

def loopBody227_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody227_5 : HolLoopProg 64 :=
.mark loopBody227_4

def loopBody227_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody227_7 : HolLoopProg 64 :=
.mark loopBody227_6

def loopBody227_8 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 92) ([5, 6]) (some (5, loopBody227_7, loopBody227_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody227_9 : HolLoopProg 64 :=
.mark loopBody227_8

def loopBody227_10 : HolLoopProg 64 :=
.seq loopBody227_9 loopBody227_1

def loopBody227_11 : HolLoopProg 64 :=
.mark loopBody227_10

def loopBody227_12 : HolLoopProg 64 :=
.seq loopBody227_5 loopBody227_11

def loopBody227_13 : HolLoopProg 64 :=
.mark loopBody227_12

def loopBody227_14 : HolLoopProg 64 :=
.seq loopBody227_3 loopBody227_13

def loopBody227_15 : HolLoopProg 64 :=
.mark loopBody227_14

def loopBody227_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody227_17 : HolLoopProg 64 :=
.mark loopBody227_16

def loopBody227_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody227_19 : HolLoopProg 64 :=
.mark loopBody227_18

def loopBody227_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 4)

def loopBody227_21 : HolLoopProg 64 :=
.mark loopBody227_20

def loopBody227_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody227_23 : HolLoopProg 64 :=
.mark loopBody227_22

def loopBody227_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody227_25 : HolLoopProg 64 :=
.mark loopBody227_24

def loopBody227_26 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 7 (Flapjack.RegImm.reg 8) loopBody227_23 loopBody227_25 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody227_27 : HolLoopProg 64 :=
.mark loopBody227_26

def loopBody227_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody227_29 : HolLoopProg 64 :=
.mark loopBody227_28

def loopBody227_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 5])

def loopBody227_31 : HolLoopProg 64 :=
.mark loopBody227_30

def loopBody227_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 6 6

def loopBody227_33 : HolLoopProg 64 :=
.mark loopBody227_32

def loopBody227_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 5])

def loopBody227_35 : HolLoopProg 64 :=
.mark loopBody227_34

def loopBody227_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 7 7

def loopBody227_37 : HolLoopProg 64 :=
.mark loopBody227_36

def loopBody227_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 6)

def loopBody227_39 : HolLoopProg 64 :=
.mark loopBody227_38

def loopBody227_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 7)

def loopBody227_41 : HolLoopProg 64 :=
.mark loopBody227_40

def loopBody227_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 1#64)

def loopBody227_43 : HolLoopProg 64 :=
.mark loopBody227_42

def loopBody227_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody227_45 : HolLoopProg 64 :=
.mark loopBody227_44

def loopBody227_46 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.reg 10) loopBody227_43 loopBody227_45 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit)))

def loopBody227_47 : HolLoopProg 64 :=
.mark loopBody227_46

def loopBody227_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 9)

def loopBody227_49 : HolLoopProg 64 :=
.mark loopBody227_48

def loopBody227_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 5)

def loopBody227_51 : HolLoopProg 64 :=
.mark loopBody227_50

def loopBody227_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody227_53 : HolLoopProg 64 :=
.mark loopBody227_52

def loopBody227_54 : HolLoopProg 64 :=
.seq loopBody227_53 loopBody227_1

def loopBody227_55 : HolLoopProg 64 :=
.mark loopBody227_54

def loopBody227_56 : HolLoopProg 64 :=
.seq loopBody227_51 loopBody227_55

def loopBody227_57 : HolLoopProg 64 :=
.mark loopBody227_56

def loopBody227_58 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody227_57 loopBody227_1 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody227_59 : HolLoopProg 64 :=
.mark loopBody227_58

def loopBody227_60 : HolLoopProg 64 :=
.seq loopBody227_59 loopBody227_1

def loopBody227_61 : HolLoopProg 64 :=
.mark loopBody227_60

def loopBody227_62 : HolLoopProg 64 :=
.seq loopBody227_49 loopBody227_61

def loopBody227_63 : HolLoopProg 64 :=
.mark loopBody227_62

def loopBody227_64 : HolLoopProg 64 :=
.seq loopBody227_47 loopBody227_63

def loopBody227_65 : HolLoopProg 64 :=
.mark loopBody227_64

def loopBody227_66 : HolLoopProg 64 :=
.seq loopBody227_41 loopBody227_65

def loopBody227_67 : HolLoopProg 64 :=
.mark loopBody227_66

def loopBody227_68 : HolLoopProg 64 :=
.seq loopBody227_39 loopBody227_67

def loopBody227_69 : HolLoopProg 64 :=
.mark loopBody227_68

def loopBody227_70 : HolLoopProg 64 :=
.seq loopBody227_37 loopBody227_69

def loopBody227_71 : HolLoopProg 64 :=
.mark loopBody227_70

def loopBody227_72 : HolLoopProg 64 :=
.seq loopBody227_35 loopBody227_71

def loopBody227_73 : HolLoopProg 64 :=
.mark loopBody227_72

def loopBody227_74 : HolLoopProg 64 :=
.seq loopBody227_33 loopBody227_73

def loopBody227_75 : HolLoopProg 64 :=
.mark loopBody227_74

def loopBody227_76 : HolLoopProg 64 :=
.seq loopBody227_31 loopBody227_75

def loopBody227_77 : HolLoopProg 64 :=
.mark loopBody227_76

def loopBody227_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 1#64])

def loopBody227_79 : HolLoopProg 64 :=
.mark loopBody227_78

def loopBody227_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 6)

def loopBody227_81 : HolLoopProg 64 :=
.mark loopBody227_80

def loopBody227_82 : HolLoopProg 64 :=
.seq loopBody227_81 loopBody227_1

def loopBody227_83 : HolLoopProg 64 :=
.mark loopBody227_82

def loopBody227_84 : HolLoopProg 64 :=
.seq loopBody227_83 loopBody227_1

def loopBody227_85 : HolLoopProg 64 :=
.mark loopBody227_84

def loopBody227_86 : HolLoopProg 64 :=
.seq loopBody227_79 loopBody227_85

def loopBody227_87 : HolLoopProg 64 :=
.mark loopBody227_86

def loopBody227_88 : HolLoopProg 64 :=
.seq loopBody227_1 loopBody227_87

def loopBody227_89 : HolLoopProg 64 :=
.mark loopBody227_88

def loopBody227_90 : HolLoopProg 64 :=
.seq loopBody227_77 loopBody227_89

def loopBody227_91 : HolLoopProg 64 :=
.mark loopBody227_90

def loopBody227_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody227_93 : HolLoopProg 64 :=
.mark loopBody227_92

def loopBody227_94 : HolLoopProg 64 :=
.seq loopBody227_91 loopBody227_93

def loopBody227_95 : HolLoopProg 64 :=
.mark loopBody227_94

def loopBody227_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody227_97 : HolLoopProg 64 :=
.mark loopBody227_96

def loopBody227_98 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody227_95 loopBody227_97 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody227_99 : HolLoopProg 64 :=
.mark loopBody227_98

def loopBody227_100 : HolLoopProg 64 :=
.seq loopBody227_99 loopBody227_1

def loopBody227_101 : HolLoopProg 64 :=
.mark loopBody227_100

def loopBody227_102 : HolLoopProg 64 :=
.seq loopBody227_29 loopBody227_101

def loopBody227_103 : HolLoopProg 64 :=
.mark loopBody227_102

def loopBody227_104 : HolLoopProg 64 :=
.seq loopBody227_27 loopBody227_103

def loopBody227_105 : HolLoopProg 64 :=
.mark loopBody227_104

def loopBody227_106 : HolLoopProg 64 :=
.seq loopBody227_21 loopBody227_105

def loopBody227_107 : HolLoopProg 64 :=
.mark loopBody227_106

def loopBody227_108 : HolLoopProg 64 :=
.seq loopBody227_19 loopBody227_107

def loopBody227_109 : HolLoopProg 64 :=
.mark loopBody227_108

def loopBody227_110 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody227_109 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)

def loopBody227_111 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody227_112 : HolLoopProg 64 :=
.mark loopBody227_111

def loopBody227_113 : HolLoopProg 64 :=
.seq loopBody227_112 loopBody227_55

def loopBody227_114 : HolLoopProg 64 :=
.mark loopBody227_113

def loopBody227_115 : HolLoopProg 64 :=
.seq loopBody227_110 loopBody227_114

def loopBody227_116 : HolLoopProg 64 :=
.seq loopBody227_17 loopBody227_115

def loopBody227_117 : HolLoopProg 64 :=
.seq loopBody227_1 loopBody227_116

def loopBody227_118 : HolLoopProg 64 :=
.seq loopBody227_15 loopBody227_117

def loopBody227_119 : HolLoopProg 64 :=
.seq loopBody227_1 loopBody227_118

def loopBody227_120 : HolLoopProg 64 :=
.seq loopBody227_1 loopBody227_119

def output227 : Nat × List Nat × HolLoopProg 64 :=
  (291, [0, 1, 2, 3], loopBody227_120)
end InitECandidate.Proofs.FrontendStages.Loop
