import InitECandidate.Proofs.FrontendStages.Loop.Translate320
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody336_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody336_1 : HolLoopProg 64 :=
.mark loopBody336_0

def loopBody336_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 168#64]),
        Flapjack.HolLoopExp.const 32#64]))

def loopBody336_3 : HolLoopProg 64 :=
.mark loopBody336_2

def loopBody336_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody336_5 : HolLoopProg 64 :=
.mark loopBody336_4

def loopBody336_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody336_7 : HolLoopProg 64 :=
.mark loopBody336_6

def loopBody336_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody336_9 : HolLoopProg 64 :=
.mark loopBody336_8

def loopBody336_10 : HolLoopProg 64 :=
.call (some ([2, 3], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 186) ([4, 5]) (some (4, loopBody336_9, loopBody336_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody336_11 : HolLoopProg 64 :=
.mark loopBody336_10

def loopBody336_12 : HolLoopProg 64 :=
.seq loopBody336_11 loopBody336_1

def loopBody336_13 : HolLoopProg 64 :=
.mark loopBody336_12

def loopBody336_14 : HolLoopProg 64 :=
.seq loopBody336_7 loopBody336_13

def loopBody336_15 : HolLoopProg 64 :=
.mark loopBody336_14

def loopBody336_16 : HolLoopProg 64 :=
.seq loopBody336_5 loopBody336_15

def loopBody336_17 : HolLoopProg 64 :=
.mark loopBody336_16

def loopBody336_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody336_19 : HolLoopProg 64 :=
.mark loopBody336_18

def loopBody336_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody336_21 : HolLoopProg 64 :=
.mark loopBody336_20

def loopBody336_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody336_23 : HolLoopProg 64 :=
.mark loopBody336_22

def loopBody336_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody336_25 : HolLoopProg 64 :=
.mark loopBody336_24

def loopBody336_26 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.reg 6) loopBody336_23 loopBody336_25 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody336_27 : HolLoopProg 64 :=
.mark loopBody336_26

def loopBody336_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody336_29 : HolLoopProg 64 :=
.mark loopBody336_28

def loopBody336_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 1#64])

def loopBody336_31 : HolLoopProg 64 :=
.mark loopBody336_30

def loopBody336_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody336_33 : HolLoopProg 64 :=
.mark loopBody336_32

def loopBody336_34 : HolLoopProg 64 :=
.seq loopBody336_33 loopBody336_1

def loopBody336_35 : HolLoopProg 64 :=
.mark loopBody336_34

def loopBody336_36 : HolLoopProg 64 :=
.seq loopBody336_31 loopBody336_35

def loopBody336_37 : HolLoopProg 64 :=
.mark loopBody336_36

def loopBody336_38 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody336_37 loopBody336_1 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody336_39 : HolLoopProg 64 :=
.mark loopBody336_38

def loopBody336_40 : HolLoopProg 64 :=
.seq loopBody336_39 loopBody336_1

def loopBody336_41 : HolLoopProg 64 :=
.mark loopBody336_40

def loopBody336_42 : HolLoopProg 64 :=
.seq loopBody336_29 loopBody336_41

def loopBody336_43 : HolLoopProg 64 :=
.mark loopBody336_42

def loopBody336_44 : HolLoopProg 64 :=
.seq loopBody336_27 loopBody336_43

def loopBody336_45 : HolLoopProg 64 :=
.mark loopBody336_44

def loopBody336_46 : HolLoopProg 64 :=
.seq loopBody336_21 loopBody336_45

def loopBody336_47 : HolLoopProg 64 :=
.mark loopBody336_46

def loopBody336_48 : HolLoopProg 64 :=
.seq loopBody336_19 loopBody336_47

def loopBody336_49 : HolLoopProg 64 :=
.mark loopBody336_48

def loopBody336_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 168#64]),
        Flapjack.HolLoopExp.const 0#64]))

def loopBody336_51 : HolLoopProg 64 :=
.mark loopBody336_50

def loopBody336_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody336_53 : HolLoopProg 64 :=
.mark loopBody336_52

def loopBody336_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody336_55 : HolLoopProg 64 :=
.mark loopBody336_54

def loopBody336_56 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 305) ([5, 6]) (some (5, loopBody336_55, loopBody336_1, (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody336_57 : HolLoopProg 64 :=
.mark loopBody336_56

def loopBody336_58 : HolLoopProg 64 :=
.seq loopBody336_57 loopBody336_1

def loopBody336_59 : HolLoopProg 64 :=
.mark loopBody336_58

def loopBody336_60 : HolLoopProg 64 :=
.seq loopBody336_53 loopBody336_59

def loopBody336_61 : HolLoopProg 64 :=
.mark loopBody336_60

def loopBody336_62 : HolLoopProg 64 :=
.seq loopBody336_51 loopBody336_61

def loopBody336_63 : HolLoopProg 64 :=
.mark loopBody336_62

def loopBody336_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody336_65 : HolLoopProg 64 :=
.mark loopBody336_64

def loopBody336_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 0)

def loopBody336_67 : HolLoopProg 64 :=
.mark loopBody336_66

def loopBody336_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 1#64])

def loopBody336_69 : HolLoopProg 64 :=
.mark loopBody336_68

def loopBody336_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody336_71 : HolLoopProg 64 :=
.mark loopBody336_70

def loopBody336_72 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)) (some 192) ([6, 7, 8]) (some (6, loopBody336_71, loopBody336_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))

def loopBody336_73 : HolLoopProg 64 :=
.mark loopBody336_72

def loopBody336_74 : HolLoopProg 64 :=
.seq loopBody336_73 loopBody336_1

def loopBody336_75 : HolLoopProg 64 :=
.mark loopBody336_74

def loopBody336_76 : HolLoopProg 64 :=
.seq loopBody336_69 loopBody336_75

def loopBody336_77 : HolLoopProg 64 :=
.mark loopBody336_76

def loopBody336_78 : HolLoopProg 64 :=
.seq loopBody336_67 loopBody336_77

def loopBody336_79 : HolLoopProg 64 :=
.mark loopBody336_78

def loopBody336_80 : HolLoopProg 64 :=
.seq loopBody336_65 loopBody336_79

def loopBody336_81 : HolLoopProg 64 :=
.mark loopBody336_80

def loopBody336_82 : HolLoopProg 64 :=
.seq loopBody336_1 loopBody336_81

def loopBody336_83 : HolLoopProg 64 :=
.mark loopBody336_82

def loopBody336_84 : HolLoopProg 64 :=
.seq loopBody336_1 loopBody336_83

def loopBody336_85 : HolLoopProg 64 :=
.mark loopBody336_84

def loopBody336_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 4)

def loopBody336_87 : HolLoopProg 64 :=
.mark loopBody336_86

def loopBody336_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody336_89 : HolLoopProg 64 :=
.mark loopBody336_88

def loopBody336_90 : HolLoopProg 64 :=
.seq loopBody336_89 loopBody336_1

def loopBody336_91 : HolLoopProg 64 :=
.mark loopBody336_90

def loopBody336_92 : HolLoopProg 64 :=
.seq loopBody336_87 loopBody336_91

def loopBody336_93 : HolLoopProg 64 :=
.mark loopBody336_92

def loopBody336_94 : HolLoopProg 64 :=
.seq loopBody336_85 loopBody336_93

def loopBody336_95 : HolLoopProg 64 :=
.mark loopBody336_94

def loopBody336_96 : HolLoopProg 64 :=
.seq loopBody336_63 loopBody336_95

def loopBody336_97 : HolLoopProg 64 :=
.mark loopBody336_96

def loopBody336_98 : HolLoopProg 64 :=
.seq loopBody336_1 loopBody336_97

def loopBody336_99 : HolLoopProg 64 :=
.mark loopBody336_98

def loopBody336_100 : HolLoopProg 64 :=
.seq loopBody336_1 loopBody336_99

def loopBody336_101 : HolLoopProg 64 :=
.mark loopBody336_100

def loopBody336_102 : HolLoopProg 64 :=
.seq loopBody336_49 loopBody336_101

def loopBody336_103 : HolLoopProg 64 :=
.mark loopBody336_102

def loopBody336_104 : HolLoopProg 64 :=
.seq loopBody336_17 loopBody336_103

def loopBody336_105 : HolLoopProg 64 :=
.mark loopBody336_104

def loopBody336_106 : HolLoopProg 64 :=
.seq loopBody336_1 loopBody336_105

def loopBody336_107 : HolLoopProg 64 :=
.mark loopBody336_106

def loopBody336_108 : HolLoopProg 64 :=
.seq loopBody336_1 loopBody336_107

def loopBody336_109 : HolLoopProg 64 :=
.mark loopBody336_108

def loopBody336_110 : HolLoopProg 64 :=
.seq loopBody336_1 loopBody336_109

def loopBody336_111 : HolLoopProg 64 :=
.mark loopBody336_110

def loopBody336_112 : HolLoopProg 64 :=
.seq loopBody336_1 loopBody336_111

def loopBody336_113 : HolLoopProg 64 :=
.mark loopBody336_112

def loopBody336_114 : HolLoopProg 64 :=
.seq loopBody336_3 loopBody336_113

def loopBody336_115 : HolLoopProg 64 :=
.mark loopBody336_114

def loopBody336_116 : HolLoopProg 64 :=
.seq loopBody336_1 loopBody336_115

def loopBody336_117 : HolLoopProg 64 :=
.mark loopBody336_116

def output336 : Nat × List Nat × HolLoopProg 64 :=
  (400, [0], loopBody336_117)
end InitECandidate.Proofs.FrontendStages.Loop
