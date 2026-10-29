import InitECandidate.Proofs.FrontendStages.Loop.Translate107
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody123_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody123_1 : HolLoopProg 64 :=
.mark loopBody123_0

def loopBody123_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody123_3 : HolLoopProg 64 :=
.mark loopBody123_2

def loopBody123_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody123_5 : HolLoopProg 64 :=
.mark loopBody123_4

def loopBody123_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody123_7 : HolLoopProg 64 :=
.mark loopBody123_6

def loopBody123_8 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 185) ([3, 4]) (some (3, loopBody123_7, loopBody123_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody123_9 : HolLoopProg 64 :=
.mark loopBody123_8

def loopBody123_10 : HolLoopProg 64 :=
.seq loopBody123_9 loopBody123_1

def loopBody123_11 : HolLoopProg 64 :=
.mark loopBody123_10

def loopBody123_12 : HolLoopProg 64 :=
.seq loopBody123_5 loopBody123_11

def loopBody123_13 : HolLoopProg 64 :=
.mark loopBody123_12

def loopBody123_14 : HolLoopProg 64 :=
.seq loopBody123_3 loopBody123_13

def loopBody123_15 : HolLoopProg 64 :=
.mark loopBody123_14

def loopBody123_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody123_17 : HolLoopProg 64 :=
.mark loopBody123_16

def loopBody123_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody123_19 : HolLoopProg 64 :=
.mark loopBody123_18

def loopBody123_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody123_21 : HolLoopProg 64 :=
.mark loopBody123_20

def loopBody123_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody123_23 : HolLoopProg 64 :=
.mark loopBody123_22

def loopBody123_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.RegImm.reg 5) loopBody123_21 loopBody123_23 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.ls PUnit.unit))

def loopBody123_25 : HolLoopProg 64 :=
.mark loopBody123_24

def loopBody123_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody123_27 : HolLoopProg 64 :=
.mark loopBody123_26

def loopBody123_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody123_29 : HolLoopProg 64 :=
.mark loopBody123_28

def loopBody123_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody123_31 : HolLoopProg 64 :=
.mark loopBody123_30

def loopBody123_32 : HolLoopProg 64 :=
.seq loopBody123_31 loopBody123_1

def loopBody123_33 : HolLoopProg 64 :=
.mark loopBody123_32

def loopBody123_34 : HolLoopProg 64 :=
.seq loopBody123_29 loopBody123_33

def loopBody123_35 : HolLoopProg 64 :=
.mark loopBody123_34

def loopBody123_36 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody123_35 loopBody123_1 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody123_37 : HolLoopProg 64 :=
.mark loopBody123_36

def loopBody123_38 : HolLoopProg 64 :=
.seq loopBody123_37 loopBody123_1

def loopBody123_39 : HolLoopProg 64 :=
.mark loopBody123_38

def loopBody123_40 : HolLoopProg 64 :=
.seq loopBody123_27 loopBody123_39

def loopBody123_41 : HolLoopProg 64 :=
.mark loopBody123_40

def loopBody123_42 : HolLoopProg 64 :=
.seq loopBody123_25 loopBody123_41

def loopBody123_43 : HolLoopProg 64 :=
.mark loopBody123_42

def loopBody123_44 : HolLoopProg 64 :=
.seq loopBody123_19 loopBody123_43

def loopBody123_45 : HolLoopProg 64 :=
.mark loopBody123_44

def loopBody123_46 : HolLoopProg 64 :=
.seq loopBody123_17 loopBody123_45

def loopBody123_47 : HolLoopProg 64 :=
.mark loopBody123_46

def loopBody123_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64]))

def loopBody123_49 : HolLoopProg 64 :=
.mark loopBody123_48

def loopBody123_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64]))

def loopBody123_51 : HolLoopProg 64 :=
.mark loopBody123_50

def loopBody123_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 32#64]))

def loopBody123_53 : HolLoopProg 64 :=
.mark loopBody123_52

def loopBody123_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody123_55 : HolLoopProg 64 :=
.mark loopBody123_54

def loopBody123_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 4)

def loopBody123_57 : HolLoopProg 64 :=
.mark loopBody123_56

def loopBody123_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 9 9 7 8)

def loopBody123_59 : HolLoopProg 64 :=
.mark loopBody123_58

def loopBody123_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.var 9])

def loopBody123_61 : HolLoopProg 64 :=
.mark loopBody123_60

def loopBody123_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 1)

def loopBody123_63 : HolLoopProg 64 :=
.mark loopBody123_62

def loopBody123_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 3)

def loopBody123_65 : HolLoopProg 64 :=
.mark loopBody123_64

def loopBody123_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody123_67 : HolLoopProg 64 :=
.mark loopBody123_66

def loopBody123_68 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.ln)) (some 79) ([10, 11, 12]) (some (7, loopBody123_67, loopBody123_1, (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))

def loopBody123_69 : HolLoopProg 64 :=
.mark loopBody123_68

def loopBody123_70 : HolLoopProg 64 :=
.seq loopBody123_69 loopBody123_1

def loopBody123_71 : HolLoopProg 64 :=
.mark loopBody123_70

def loopBody123_72 : HolLoopProg 64 :=
.seq loopBody123_65 loopBody123_71

def loopBody123_73 : HolLoopProg 64 :=
.mark loopBody123_72

def loopBody123_74 : HolLoopProg 64 :=
.seq loopBody123_63 loopBody123_73

def loopBody123_75 : HolLoopProg 64 :=
.mark loopBody123_74

def loopBody123_76 : HolLoopProg 64 :=
.seq loopBody123_61 loopBody123_75

def loopBody123_77 : HolLoopProg 64 :=
.mark loopBody123_76

def loopBody123_78 : HolLoopProg 64 :=
.seq loopBody123_59 loopBody123_77

def loopBody123_79 : HolLoopProg 64 :=
.mark loopBody123_78

def loopBody123_80 : HolLoopProg 64 :=
.seq loopBody123_57 loopBody123_79

def loopBody123_81 : HolLoopProg 64 :=
.mark loopBody123_80

def loopBody123_82 : HolLoopProg 64 :=
.seq loopBody123_55 loopBody123_81

def loopBody123_83 : HolLoopProg 64 :=
.mark loopBody123_82

def loopBody123_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 6)

def loopBody123_85 : HolLoopProg 64 :=
.mark loopBody123_84

def loopBody123_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [7]

def loopBody123_87 : HolLoopProg 64 :=
.mark loopBody123_86

def loopBody123_88 : HolLoopProg 64 :=
.seq loopBody123_87 loopBody123_1

def loopBody123_89 : HolLoopProg 64 :=
.mark loopBody123_88

def loopBody123_90 : HolLoopProg 64 :=
.seq loopBody123_85 loopBody123_89

def loopBody123_91 : HolLoopProg 64 :=
.mark loopBody123_90

def loopBody123_92 : HolLoopProg 64 :=
.seq loopBody123_83 loopBody123_91

def loopBody123_93 : HolLoopProg 64 :=
.mark loopBody123_92

def loopBody123_94 : HolLoopProg 64 :=
.seq loopBody123_1 loopBody123_93

def loopBody123_95 : HolLoopProg 64 :=
.mark loopBody123_94

def loopBody123_96 : HolLoopProg 64 :=
.seq loopBody123_1 loopBody123_95

def loopBody123_97 : HolLoopProg 64 :=
.mark loopBody123_96

def loopBody123_98 : HolLoopProg 64 :=
.seq loopBody123_53 loopBody123_97

def loopBody123_99 : HolLoopProg 64 :=
.mark loopBody123_98

def loopBody123_100 : HolLoopProg 64 :=
.seq loopBody123_1 loopBody123_99

def loopBody123_101 : HolLoopProg 64 :=
.mark loopBody123_100

def loopBody123_102 : HolLoopProg 64 :=
.seq loopBody123_51 loopBody123_101

def loopBody123_103 : HolLoopProg 64 :=
.mark loopBody123_102

def loopBody123_104 : HolLoopProg 64 :=
.seq loopBody123_1 loopBody123_103

def loopBody123_105 : HolLoopProg 64 :=
.mark loopBody123_104

def loopBody123_106 : HolLoopProg 64 :=
.seq loopBody123_49 loopBody123_105

def loopBody123_107 : HolLoopProg 64 :=
.mark loopBody123_106

def loopBody123_108 : HolLoopProg 64 :=
.seq loopBody123_1 loopBody123_107

def loopBody123_109 : HolLoopProg 64 :=
.mark loopBody123_108

def loopBody123_110 : HolLoopProg 64 :=
.seq loopBody123_47 loopBody123_109

def loopBody123_111 : HolLoopProg 64 :=
.mark loopBody123_110

def loopBody123_112 : HolLoopProg 64 :=
.seq loopBody123_15 loopBody123_111

def loopBody123_113 : HolLoopProg 64 :=
.mark loopBody123_112

def loopBody123_114 : HolLoopProg 64 :=
.seq loopBody123_1 loopBody123_113

def loopBody123_115 : HolLoopProg 64 :=
.mark loopBody123_114

def loopBody123_116 : HolLoopProg 64 :=
.seq loopBody123_1 loopBody123_115

def loopBody123_117 : HolLoopProg 64 :=
.mark loopBody123_116

def output123 : Nat × List Nat × HolLoopProg 64 :=
  (187, [0, 1], loopBody123_117)
end InitECandidate.Proofs.FrontendStages.Loop
