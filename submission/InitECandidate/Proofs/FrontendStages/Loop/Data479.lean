import InitECandidate.Proofs.FrontendStages.Loop.Translate463
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody479_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody479_1 : HolLoopProg 64 :=
.mark loopBody479_0

def loopBody479_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 3#64)

def loopBody479_3 : HolLoopProg 64 :=
.mark loopBody479_2

def loopBody479_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody479_5 : HolLoopProg 64 :=
.mark loopBody479_4

def loopBody479_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 470) ([2]) (some (2, loopBody479_5, loopBody479_1, (Flapjack.Spt.ln)))

def loopBody479_7 : HolLoopProg 64 :=
.mark loopBody479_6

def loopBody479_8 : HolLoopProg 64 :=
.seq loopBody479_7 loopBody479_1

def loopBody479_9 : HolLoopProg 64 :=
.mark loopBody479_8

def loopBody479_10 : HolLoopProg 64 :=
.seq loopBody479_3 loopBody479_9

def loopBody479_11 : HolLoopProg 64 :=
.mark loopBody479_10

def loopBody479_12 : HolLoopProg 64 :=
.seq loopBody479_1 loopBody479_11

def loopBody479_13 : HolLoopProg 64 :=
.mark loopBody479_12

def loopBody479_14 : HolLoopProg 64 :=
.seq loopBody479_1 loopBody479_13

def loopBody479_15 : HolLoopProg 64 :=
.mark loopBody479_14

def loopBody479_16 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 540) ([]) (some (2, loopBody479_5, loopBody479_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody479_17 : HolLoopProg 64 :=
.mark loopBody479_16

def loopBody479_18 : HolLoopProg 64 :=
.seq loopBody479_17 loopBody479_1

def loopBody479_19 : HolLoopProg 64 :=
.mark loopBody479_18

def loopBody479_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody479_21 : HolLoopProg 64 :=
.mark loopBody479_20

def loopBody479_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody479_23 : HolLoopProg 64 :=
.mark loopBody479_22

def loopBody479_24 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 541) ([3]) (some (3, loopBody479_23, loopBody479_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody479_25 : HolLoopProg 64 :=
.mark loopBody479_24

def loopBody479_26 : HolLoopProg 64 :=
.seq loopBody479_25 loopBody479_1

def loopBody479_27 : HolLoopProg 64 :=
.mark loopBody479_26

def loopBody479_28 : HolLoopProg 64 :=
.seq loopBody479_21 loopBody479_27

def loopBody479_29 : HolLoopProg 64 :=
.mark loopBody479_28

def loopBody479_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 16#64]))

def loopBody479_31 : HolLoopProg 64 :=
.mark loopBody479_30

def loopBody479_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 1#64])

def loopBody479_33 : HolLoopProg 64 :=
.mark loopBody479_32

def loopBody479_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody479_35 : HolLoopProg 64 :=
.mark loopBody479_34

def loopBody479_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody479_37 : HolLoopProg 64 :=
.mark loopBody479_36

def loopBody479_38 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.RegImm.reg 5) loopBody479_35 loopBody479_37 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)

def loopBody479_39 : HolLoopProg 64 :=
.mark loopBody479_38

def loopBody479_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody479_41 : HolLoopProg 64 :=
.mark loopBody479_40

def loopBody479_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 2#64)

def loopBody479_43 : HolLoopProg 64 :=
.mark loopBody479_42

def loopBody479_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 3)

def loopBody479_45 : HolLoopProg 64 :=
.mark loopBody479_44

def loopBody479_46 : HolLoopProg 64 :=
.seq loopBody479_45 loopBody479_1

def loopBody479_47 : HolLoopProg 64 :=
.mark loopBody479_46

def loopBody479_48 : HolLoopProg 64 :=
.seq loopBody479_47 loopBody479_1

def loopBody479_49 : HolLoopProg 64 :=
.mark loopBody479_48

def loopBody479_50 : HolLoopProg 64 :=
.seq loopBody479_43 loopBody479_49

def loopBody479_51 : HolLoopProg 64 :=
.mark loopBody479_50

def loopBody479_52 : HolLoopProg 64 :=
.seq loopBody479_1 loopBody479_51

def loopBody479_53 : HolLoopProg 64 :=
.mark loopBody479_52

def loopBody479_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 8#64)

def loopBody479_55 : HolLoopProg 64 :=
.mark loopBody479_54

def loopBody479_56 : HolLoopProg 64 :=
.seq loopBody479_55 loopBody479_23

def loopBody479_57 : HolLoopProg 64 :=
.mark loopBody479_56

def loopBody479_58 : HolLoopProg 64 :=
.seq loopBody479_53 loopBody479_57

def loopBody479_59 : HolLoopProg 64 :=
.mark loopBody479_58

def loopBody479_60 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody479_59 loopBody479_1 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)

def loopBody479_61 : HolLoopProg 64 :=
.mark loopBody479_60

def loopBody479_62 : HolLoopProg 64 :=
.seq loopBody479_61 loopBody479_1

def loopBody479_63 : HolLoopProg 64 :=
.mark loopBody479_62

def loopBody479_64 : HolLoopProg 64 :=
.seq loopBody479_41 loopBody479_63

def loopBody479_65 : HolLoopProg 64 :=
.mark loopBody479_64

def loopBody479_66 : HolLoopProg 64 :=
.seq loopBody479_39 loopBody479_65

def loopBody479_67 : HolLoopProg 64 :=
.mark loopBody479_66

def loopBody479_68 : HolLoopProg 64 :=
.seq loopBody479_33 loopBody479_67

def loopBody479_69 : HolLoopProg 64 :=
.mark loopBody479_68

def loopBody479_70 : HolLoopProg 64 :=
.seq loopBody479_31 loopBody479_69

def loopBody479_71 : HolLoopProg 64 :=
.mark loopBody479_70

def loopBody479_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody479_73 : HolLoopProg 64 :=
.mark loopBody479_72

def loopBody479_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody479_75 : HolLoopProg 64 :=
.mark loopBody479_74

def loopBody479_76 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.ln)) (some 538) ([4, 5]) (some (4, loopBody479_75, loopBody479_1, (Flapjack.Spt.ln)))

def loopBody479_77 : HolLoopProg 64 :=
.mark loopBody479_76

def loopBody479_78 : HolLoopProg 64 :=
.seq loopBody479_77 loopBody479_1

def loopBody479_79 : HolLoopProg 64 :=
.mark loopBody479_78

def loopBody479_80 : HolLoopProg 64 :=
.seq loopBody479_73 loopBody479_79

def loopBody479_81 : HolLoopProg 64 :=
.mark loopBody479_80

def loopBody479_82 : HolLoopProg 64 :=
.seq loopBody479_37 loopBody479_81

def loopBody479_83 : HolLoopProg 64 :=
.mark loopBody479_82

def loopBody479_84 : HolLoopProg 64 :=
.seq loopBody479_1 loopBody479_83

def loopBody479_85 : HolLoopProg 64 :=
.mark loopBody479_84

def loopBody479_86 : HolLoopProg 64 :=
.seq loopBody479_1 loopBody479_85

def loopBody479_87 : HolLoopProg 64 :=
.mark loopBody479_86

def loopBody479_88 : HolLoopProg 64 :=
.seq loopBody479_71 loopBody479_87

def loopBody479_89 : HolLoopProg 64 :=
.mark loopBody479_88

def loopBody479_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 2#64)

def loopBody479_91 : HolLoopProg 64 :=
.mark loopBody479_90

def loopBody479_92 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.ln)) (some 490) ([4]) (some (4, loopBody479_75, loopBody479_1, (Flapjack.Spt.ln)))

def loopBody479_93 : HolLoopProg 64 :=
.mark loopBody479_92

def loopBody479_94 : HolLoopProg 64 :=
.seq loopBody479_93 loopBody479_1

def loopBody479_95 : HolLoopProg 64 :=
.mark loopBody479_94

def loopBody479_96 : HolLoopProg 64 :=
.seq loopBody479_91 loopBody479_95

def loopBody479_97 : HolLoopProg 64 :=
.mark loopBody479_96

def loopBody479_98 : HolLoopProg 64 :=
.seq loopBody479_1 loopBody479_97

def loopBody479_99 : HolLoopProg 64 :=
.mark loopBody479_98

def loopBody479_100 : HolLoopProg 64 :=
.seq loopBody479_1 loopBody479_99

def loopBody479_101 : HolLoopProg 64 :=
.mark loopBody479_100

def loopBody479_102 : HolLoopProg 64 :=
.seq loopBody479_89 loopBody479_101

def loopBody479_103 : HolLoopProg 64 :=
.mark loopBody479_102

def loopBody479_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody479_105 : HolLoopProg 64 :=
.mark loopBody479_104

def loopBody479_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody479_107 : HolLoopProg 64 :=
.mark loopBody479_106

def loopBody479_108 : HolLoopProg 64 :=
.seq loopBody479_107 loopBody479_1

def loopBody479_109 : HolLoopProg 64 :=
.mark loopBody479_108

def loopBody479_110 : HolLoopProg 64 :=
.seq loopBody479_105 loopBody479_109

def loopBody479_111 : HolLoopProg 64 :=
.mark loopBody479_110

def loopBody479_112 : HolLoopProg 64 :=
.seq loopBody479_103 loopBody479_111

def loopBody479_113 : HolLoopProg 64 :=
.mark loopBody479_112

def loopBody479_114 : HolLoopProg 64 :=
.seq loopBody479_29 loopBody479_113

def loopBody479_115 : HolLoopProg 64 :=
.mark loopBody479_114

def loopBody479_116 : HolLoopProg 64 :=
.seq loopBody479_1 loopBody479_115

def loopBody479_117 : HolLoopProg 64 :=
.mark loopBody479_116

def loopBody479_118 : HolLoopProg 64 :=
.seq loopBody479_1 loopBody479_117

def loopBody479_119 : HolLoopProg 64 :=
.mark loopBody479_118

def loopBody479_120 : HolLoopProg 64 :=
.seq loopBody479_19 loopBody479_119

def loopBody479_121 : HolLoopProg 64 :=
.mark loopBody479_120

def loopBody479_122 : HolLoopProg 64 :=
.seq loopBody479_1 loopBody479_121

def loopBody479_123 : HolLoopProg 64 :=
.mark loopBody479_122

def loopBody479_124 : HolLoopProg 64 :=
.seq loopBody479_1 loopBody479_123

def loopBody479_125 : HolLoopProg 64 :=
.mark loopBody479_124

def loopBody479_126 : HolLoopProg 64 :=
.seq loopBody479_15 loopBody479_125

def loopBody479_127 : HolLoopProg 64 :=
.mark loopBody479_126

def output479 : Nat × List Nat × HolLoopProg 64 :=
  (543, [], loopBody479_127)
end InitECandidate.Proofs.FrontendStages.Loop
