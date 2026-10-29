import InitECandidate.Proofs.FrontendStages.Loop.Translate281
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody297_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody297_1 : HolLoopProg 64 :=
.mark loopBody297_0

def loopBody297_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody297_3 : HolLoopProg 64 :=
.mark loopBody297_2

def loopBody297_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody297_5 : HolLoopProg 64 :=
.mark loopBody297_4

def loopBody297_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody297_7 : HolLoopProg 64 :=
.mark loopBody297_6

def loopBody297_8 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 360) ([4, 5]) (some (4, loopBody297_7, loopBody297_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody297_9 : HolLoopProg 64 :=
.mark loopBody297_8

def loopBody297_10 : HolLoopProg 64 :=
.seq loopBody297_9 loopBody297_1

def loopBody297_11 : HolLoopProg 64 :=
.mark loopBody297_10

def loopBody297_12 : HolLoopProg 64 :=
.seq loopBody297_5 loopBody297_11

def loopBody297_13 : HolLoopProg 64 :=
.mark loopBody297_12

def loopBody297_14 : HolLoopProg 64 :=
.seq loopBody297_3 loopBody297_13

def loopBody297_15 : HolLoopProg 64 :=
.mark loopBody297_14

def loopBody297_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody297_17 : HolLoopProg 64 :=
.mark loopBody297_16

def loopBody297_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody297_19 : HolLoopProg 64 :=
.mark loopBody297_18

def loopBody297_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody297_21 : HolLoopProg 64 :=
.mark loopBody297_20

def loopBody297_22 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 178) ([5, 6]) (some (5, loopBody297_21, loopBody297_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody297_23 : HolLoopProg 64 :=
.mark loopBody297_22

def loopBody297_24 : HolLoopProg 64 :=
.seq loopBody297_23 loopBody297_1

def loopBody297_25 : HolLoopProg 64 :=
.mark loopBody297_24

def loopBody297_26 : HolLoopProg 64 :=
.seq loopBody297_19 loopBody297_25

def loopBody297_27 : HolLoopProg 64 :=
.mark loopBody297_26

def loopBody297_28 : HolLoopProg 64 :=
.seq loopBody297_17 loopBody297_27

def loopBody297_29 : HolLoopProg 64 :=
.mark loopBody297_28

def loopBody297_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 4])

def loopBody297_31 : HolLoopProg 64 :=
.mark loopBody297_30

def loopBody297_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody297_33 : HolLoopProg 64 :=
.mark loopBody297_32

def loopBody297_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody297_35 : HolLoopProg 64 :=
.mark loopBody297_34

def loopBody297_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 2)

def loopBody297_37 : HolLoopProg 64 :=
.mark loopBody297_36

def loopBody297_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody297_39 : HolLoopProg 64 :=
.mark loopBody297_38

def loopBody297_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody297_41 : HolLoopProg 64 :=
.mark loopBody297_40

def loopBody297_42 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.RegImm.reg 9) loopBody297_39 loopBody297_41 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody297_43 : HolLoopProg 64 :=
.mark loopBody297_42

def loopBody297_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody297_45 : HolLoopProg 64 :=
.mark loopBody297_44

def loopBody297_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 6)

def loopBody297_47 : HolLoopProg 64 :=
.mark loopBody297_46

def loopBody297_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 24#64)

def loopBody297_49 : HolLoopProg 64 :=
.mark loopBody297_48

def loopBody297_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 9 9 7 8)

def loopBody297_51 : HolLoopProg 64 :=
.mark loopBody297_50

def loopBody297_52 : HolLoopProg 64 :=
.seq loopBody297_51 loopBody297_1

def loopBody297_53 : HolLoopProg 64 :=
.mark loopBody297_52

def loopBody297_54 : HolLoopProg 64 :=
.seq loopBody297_49 loopBody297_53

def loopBody297_55 : HolLoopProg 64 :=
.mark loopBody297_54

def loopBody297_56 : HolLoopProg 64 :=
.seq loopBody297_47 loopBody297_55

def loopBody297_57 : HolLoopProg 64 :=
.mark loopBody297_56

def loopBody297_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 9])

def loopBody297_59 : HolLoopProg 64 :=
.mark loopBody297_58

def loopBody297_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 10, Flapjack.HolLoopExp.const 16#64]))

def loopBody297_61 : HolLoopProg 64 :=
.mark loopBody297_60

def loopBody297_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 11)

def loopBody297_63 : HolLoopProg 64 :=
.mark loopBody297_62

def loopBody297_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 33#64)

def loopBody297_65 : HolLoopProg 64 :=
.mark loopBody297_64

def loopBody297_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 14 14 12 13)

def loopBody297_67 : HolLoopProg 64 :=
.mark loopBody297_66

def loopBody297_68 : HolLoopProg 64 :=
.seq loopBody297_67 loopBody297_1

def loopBody297_69 : HolLoopProg 64 :=
.mark loopBody297_68

def loopBody297_70 : HolLoopProg 64 :=
.seq loopBody297_65 loopBody297_69

def loopBody297_71 : HolLoopProg 64 :=
.mark loopBody297_70

def loopBody297_72 : HolLoopProg 64 :=
.seq loopBody297_63 loopBody297_71

def loopBody297_73 : HolLoopProg 64 :=
.mark loopBody297_72

def loopBody297_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 14)

def loopBody297_75 : HolLoopProg 64 :=
.mark loopBody297_74

def loopBody297_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 15)

def loopBody297_77 : HolLoopProg 64 :=
.mark loopBody297_76

def loopBody297_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 17

def loopBody297_79 : HolLoopProg 64 :=
.mark loopBody297_78

def loopBody297_80 : HolLoopProg 64 :=
.call (some
  ([16],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))) (some 180) ([17]) (some (17, loopBody297_79, loopBody297_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))

def loopBody297_81 : HolLoopProg 64 :=
.mark loopBody297_80

def loopBody297_82 : HolLoopProg 64 :=
.seq loopBody297_81 loopBody297_1

def loopBody297_83 : HolLoopProg 64 :=
.mark loopBody297_82

def loopBody297_84 : HolLoopProg 64 :=
.seq loopBody297_77 loopBody297_83

def loopBody297_85 : HolLoopProg 64 :=
.mark loopBody297_84

def loopBody297_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 5)

def loopBody297_87 : HolLoopProg 64 :=
.mark loopBody297_86

def loopBody297_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.const 21#64, Flapjack.HolLoopExp.var 16, Flapjack.HolLoopExp.var 15])

def loopBody297_89 : HolLoopProg 64 :=
.mark loopBody297_88

def loopBody297_90 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))) (some 178) ([17, 18]) (some (17, loopBody297_79, loopBody297_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))

def loopBody297_91 : HolLoopProg 64 :=
.mark loopBody297_90

def loopBody297_92 : HolLoopProg 64 :=
.seq loopBody297_91 loopBody297_1

def loopBody297_93 : HolLoopProg 64 :=
.mark loopBody297_92

def loopBody297_94 : HolLoopProg 64 :=
.seq loopBody297_89 loopBody297_93

def loopBody297_95 : HolLoopProg 64 :=
.mark loopBody297_94

def loopBody297_96 : HolLoopProg 64 :=
.seq loopBody297_87 loopBody297_95

def loopBody297_97 : HolLoopProg 64 :=
.mark loopBody297_96

def loopBody297_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.var 4])

def loopBody297_99 : HolLoopProg 64 :=
.mark loopBody297_98

def loopBody297_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 17)

def loopBody297_101 : HolLoopProg 64 :=
.mark loopBody297_100

def loopBody297_102 : HolLoopProg 64 :=
.seq loopBody297_101 loopBody297_1

def loopBody297_103 : HolLoopProg 64 :=
.mark loopBody297_102

def loopBody297_104 : HolLoopProg 64 :=
.seq loopBody297_103 loopBody297_1

def loopBody297_105 : HolLoopProg 64 :=
.mark loopBody297_104

def loopBody297_106 : HolLoopProg 64 :=
.seq loopBody297_99 loopBody297_105

def loopBody297_107 : HolLoopProg 64 :=
.mark loopBody297_106

def loopBody297_108 : HolLoopProg 64 :=
.seq loopBody297_1 loopBody297_107

def loopBody297_109 : HolLoopProg 64 :=
.mark loopBody297_108

def loopBody297_110 : HolLoopProg 64 :=
.seq loopBody297_97 loopBody297_109

def loopBody297_111 : HolLoopProg 64 :=
.mark loopBody297_110

def loopBody297_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 10, Flapjack.HolLoopExp.const 0#64]))

def loopBody297_113 : HolLoopProg 64 :=
.mark loopBody297_112

def loopBody297_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.const 20#64)

def loopBody297_115 : HolLoopProg 64 :=
.mark loopBody297_114

def loopBody297_116 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))) (some 176) ([17, 18, 19]) (some (17, loopBody297_79, loopBody297_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))

def loopBody297_117 : HolLoopProg 64 :=
.mark loopBody297_116

def loopBody297_118 : HolLoopProg 64 :=
.seq loopBody297_117 loopBody297_1

def loopBody297_119 : HolLoopProg 64 :=
.mark loopBody297_118

def loopBody297_120 : HolLoopProg 64 :=
.seq loopBody297_115 loopBody297_119

def loopBody297_121 : HolLoopProg 64 :=
.mark loopBody297_120

def loopBody297_122 : HolLoopProg 64 :=
.seq loopBody297_113 loopBody297_121

def loopBody297_123 : HolLoopProg 64 :=
.mark loopBody297_122

def loopBody297_124 : HolLoopProg 64 :=
.seq loopBody297_87 loopBody297_123

def loopBody297_125 : HolLoopProg 64 :=
.mark loopBody297_124

def loopBody297_126 : HolLoopProg 64 :=
.seq loopBody297_111 loopBody297_125

def loopBody297_127 : HolLoopProg 64 :=
.mark loopBody297_126

def loopBody297_128 : HolLoopProg 64 :=
.seq loopBody297_127 loopBody297_109

def loopBody297_129 : HolLoopProg 64 :=
.mark loopBody297_128

def loopBody297_130 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 15)

def loopBody297_131 : HolLoopProg 64 :=
.mark loopBody297_130

def loopBody297_132 : HolLoopProg 64 :=
.seq loopBody297_131 loopBody297_93

def loopBody297_133 : HolLoopProg 64 :=
.mark loopBody297_132

def loopBody297_134 : HolLoopProg 64 :=
.seq loopBody297_87 loopBody297_133

def loopBody297_135 : HolLoopProg 64 :=
.mark loopBody297_134

def loopBody297_136 : HolLoopProg 64 :=
.seq loopBody297_129 loopBody297_135

def loopBody297_137 : HolLoopProg 64 :=
.mark loopBody297_136

def loopBody297_138 : HolLoopProg 64 :=
.seq loopBody297_137 loopBody297_109

def loopBody297_139 : HolLoopProg 64 :=
.mark loopBody297_138

def loopBody297_140 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 10, Flapjack.HolLoopExp.const 8#64]))

def loopBody297_141 : HolLoopProg 64 :=
.mark loopBody297_140

def loopBody297_142 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.const 0#64)

def loopBody297_143 : HolLoopProg 64 :=
.mark loopBody297_142

def loopBody297_144 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 18)

def loopBody297_145 : HolLoopProg 64 :=
.mark loopBody297_144

def loopBody297_146 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.var 11)

def loopBody297_147 : HolLoopProg 64 :=
.mark loopBody297_146

def loopBody297_148 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.const 1#64)

def loopBody297_149 : HolLoopProg 64 :=
.mark loopBody297_148

def loopBody297_150 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.const 0#64)

def loopBody297_151 : HolLoopProg 64 :=
.mark loopBody297_150

def loopBody297_152 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 20 (Flapjack.RegImm.reg 21) loopBody297_149 loopBody297_151 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody297_153 : HolLoopProg 64 :=
.mark loopBody297_152

def loopBody297_154 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 22 (Flapjack.HolLoopExp.var 20)

def loopBody297_155 : HolLoopProg 64 :=
.mark loopBody297_154

def loopBody297_156 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 5)

def loopBody297_157 : HolLoopProg 64 :=
.mark loopBody297_156

def loopBody297_158 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 17,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 18) (Flapjack.HolLoopExp.const 5#64)])

def loopBody297_159 : HolLoopProg 64 :=
.mark loopBody297_158

def loopBody297_160 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.const 32#64)

def loopBody297_161 : HolLoopProg 64 :=
.mark loopBody297_160

def loopBody297_162 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 19

def loopBody297_163 : HolLoopProg 64 :=
.mark loopBody297_162

def loopBody297_164 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))) (some 176) ([19, 20, 21]) (some (19, loopBody297_163, loopBody297_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))

def loopBody297_165 : HolLoopProg 64 :=
.mark loopBody297_164

def loopBody297_166 : HolLoopProg 64 :=
.seq loopBody297_165 loopBody297_1

def loopBody297_167 : HolLoopProg 64 :=
.mark loopBody297_166

def loopBody297_168 : HolLoopProg 64 :=
.seq loopBody297_161 loopBody297_167

def loopBody297_169 : HolLoopProg 64 :=
.mark loopBody297_168

def loopBody297_170 : HolLoopProg 64 :=
.seq loopBody297_159 loopBody297_169

def loopBody297_171 : HolLoopProg 64 :=
.mark loopBody297_170

def loopBody297_172 : HolLoopProg 64 :=
.seq loopBody297_157 loopBody297_171

def loopBody297_173 : HolLoopProg 64 :=
.mark loopBody297_172

def loopBody297_174 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.var 4])

def loopBody297_175 : HolLoopProg 64 :=
.mark loopBody297_174

def loopBody297_176 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 19)

def loopBody297_177 : HolLoopProg 64 :=
.mark loopBody297_176

def loopBody297_178 : HolLoopProg 64 :=
.seq loopBody297_177 loopBody297_1

def loopBody297_179 : HolLoopProg 64 :=
.mark loopBody297_178

def loopBody297_180 : HolLoopProg 64 :=
.seq loopBody297_179 loopBody297_1

def loopBody297_181 : HolLoopProg 64 :=
.mark loopBody297_180

def loopBody297_182 : HolLoopProg 64 :=
.seq loopBody297_175 loopBody297_181

def loopBody297_183 : HolLoopProg 64 :=
.mark loopBody297_182

def loopBody297_184 : HolLoopProg 64 :=
.seq loopBody297_1 loopBody297_183

def loopBody297_185 : HolLoopProg 64 :=
.mark loopBody297_184

def loopBody297_186 : HolLoopProg 64 :=
.seq loopBody297_173 loopBody297_185

def loopBody297_187 : HolLoopProg 64 :=
.mark loopBody297_186

def loopBody297_188 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 18, Flapjack.HolLoopExp.const 1#64])

def loopBody297_189 : HolLoopProg 64 :=
.mark loopBody297_188

def loopBody297_190 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 19)

def loopBody297_191 : HolLoopProg 64 :=
.mark loopBody297_190

def loopBody297_192 : HolLoopProg 64 :=
.seq loopBody297_191 loopBody297_1

def loopBody297_193 : HolLoopProg 64 :=
.mark loopBody297_192

def loopBody297_194 : HolLoopProg 64 :=
.seq loopBody297_193 loopBody297_1

def loopBody297_195 : HolLoopProg 64 :=
.mark loopBody297_194

def loopBody297_196 : HolLoopProg 64 :=
.seq loopBody297_189 loopBody297_195

def loopBody297_197 : HolLoopProg 64 :=
.mark loopBody297_196

def loopBody297_198 : HolLoopProg 64 :=
.seq loopBody297_1 loopBody297_197

def loopBody297_199 : HolLoopProg 64 :=
.mark loopBody297_198

def loopBody297_200 : HolLoopProg 64 :=
.seq loopBody297_187 loopBody297_199

def loopBody297_201 : HolLoopProg 64 :=
.mark loopBody297_200

def loopBody297_202 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody297_203 : HolLoopProg 64 :=
.mark loopBody297_202

def loopBody297_204 : HolLoopProg 64 :=
.seq loopBody297_201 loopBody297_203

def loopBody297_205 : HolLoopProg 64 :=
.mark loopBody297_204

def loopBody297_206 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody297_207 : HolLoopProg 64 :=
.mark loopBody297_206

def loopBody297_208 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.RegImm.imm 0#64) loopBody297_205 loopBody297_207 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody297_209 : HolLoopProg 64 :=
.mark loopBody297_208

def loopBody297_210 : HolLoopProg 64 :=
.seq loopBody297_209 loopBody297_1

def loopBody297_211 : HolLoopProg 64 :=
.mark loopBody297_210

def loopBody297_212 : HolLoopProg 64 :=
.seq loopBody297_155 loopBody297_211

def loopBody297_213 : HolLoopProg 64 :=
.mark loopBody297_212

def loopBody297_214 : HolLoopProg 64 :=
.seq loopBody297_153 loopBody297_213

def loopBody297_215 : HolLoopProg 64 :=
.mark loopBody297_214

def loopBody297_216 : HolLoopProg 64 :=
.seq loopBody297_147 loopBody297_215

def loopBody297_217 : HolLoopProg 64 :=
.mark loopBody297_216

def loopBody297_218 : HolLoopProg 64 :=
.seq loopBody297_145 loopBody297_217

def loopBody297_219 : HolLoopProg 64 :=
.mark loopBody297_218

def loopBody297_220 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))) loopBody297_219 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody297_221 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 1#64])

def loopBody297_222 : HolLoopProg 64 :=
.mark loopBody297_221

def loopBody297_223 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 19)

def loopBody297_224 : HolLoopProg 64 :=
.mark loopBody297_223

def loopBody297_225 : HolLoopProg 64 :=
.seq loopBody297_224 loopBody297_1

def loopBody297_226 : HolLoopProg 64 :=
.mark loopBody297_225

def loopBody297_227 : HolLoopProg 64 :=
.seq loopBody297_226 loopBody297_1

def loopBody297_228 : HolLoopProg 64 :=
.mark loopBody297_227

def loopBody297_229 : HolLoopProg 64 :=
.seq loopBody297_222 loopBody297_228

def loopBody297_230 : HolLoopProg 64 :=
.mark loopBody297_229

def loopBody297_231 : HolLoopProg 64 :=
.seq loopBody297_1 loopBody297_230

def loopBody297_232 : HolLoopProg 64 :=
.mark loopBody297_231

def loopBody297_233 : HolLoopProg 64 :=
.seq loopBody297_220 loopBody297_232

def loopBody297_234 : HolLoopProg 64 :=
.seq loopBody297_143 loopBody297_233

def loopBody297_235 : HolLoopProg 64 :=
.seq loopBody297_1 loopBody297_234

def loopBody297_236 : HolLoopProg 64 :=
.seq loopBody297_141 loopBody297_235

def loopBody297_237 : HolLoopProg 64 :=
.seq loopBody297_1 loopBody297_236

def loopBody297_238 : HolLoopProg 64 :=
.seq loopBody297_139 loopBody297_237

def loopBody297_239 : HolLoopProg 64 :=
.seq loopBody297_85 loopBody297_238

def loopBody297_240 : HolLoopProg 64 :=
.seq loopBody297_1 loopBody297_239

def loopBody297_241 : HolLoopProg 64 :=
.seq loopBody297_1 loopBody297_240

def loopBody297_242 : HolLoopProg 64 :=
.seq loopBody297_75 loopBody297_241

def loopBody297_243 : HolLoopProg 64 :=
.seq loopBody297_73 loopBody297_242

def loopBody297_244 : HolLoopProg 64 :=
.seq loopBody297_61 loopBody297_243

def loopBody297_245 : HolLoopProg 64 :=
.seq loopBody297_1 loopBody297_244

def loopBody297_246 : HolLoopProg 64 :=
.seq loopBody297_59 loopBody297_245

def loopBody297_247 : HolLoopProg 64 :=
.seq loopBody297_57 loopBody297_246

def loopBody297_248 : HolLoopProg 64 :=
.seq loopBody297_247 loopBody297_203

def loopBody297_249 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody297_248 loopBody297_207 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody297_250 : HolLoopProg 64 :=
.seq loopBody297_249 loopBody297_1

def loopBody297_251 : HolLoopProg 64 :=
.seq loopBody297_45 loopBody297_250

def loopBody297_252 : HolLoopProg 64 :=
.seq loopBody297_43 loopBody297_251

def loopBody297_253 : HolLoopProg 64 :=
.seq loopBody297_37 loopBody297_252

def loopBody297_254 : HolLoopProg 64 :=
.seq loopBody297_35 loopBody297_253

def loopBody297_255 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody297_254 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))

def loopBody297_256 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.var 0])

def loopBody297_257 : HolLoopProg 64 :=
.mark loopBody297_256

def loopBody297_258 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [7]

def loopBody297_259 : HolLoopProg 64 :=
.mark loopBody297_258

def loopBody297_260 : HolLoopProg 64 :=
.seq loopBody297_259 loopBody297_1

def loopBody297_261 : HolLoopProg 64 :=
.mark loopBody297_260

def loopBody297_262 : HolLoopProg 64 :=
.seq loopBody297_257 loopBody297_261

def loopBody297_263 : HolLoopProg 64 :=
.mark loopBody297_262

def loopBody297_264 : HolLoopProg 64 :=
.seq loopBody297_255 loopBody297_263

def loopBody297_265 : HolLoopProg 64 :=
.seq loopBody297_33 loopBody297_264

def loopBody297_266 : HolLoopProg 64 :=
.seq loopBody297_1 loopBody297_265

def loopBody297_267 : HolLoopProg 64 :=
.seq loopBody297_31 loopBody297_266

def loopBody297_268 : HolLoopProg 64 :=
.seq loopBody297_1 loopBody297_267

def loopBody297_269 : HolLoopProg 64 :=
.seq loopBody297_29 loopBody297_268

def loopBody297_270 : HolLoopProg 64 :=
.seq loopBody297_1 loopBody297_269

def loopBody297_271 : HolLoopProg 64 :=
.seq loopBody297_1 loopBody297_270

def loopBody297_272 : HolLoopProg 64 :=
.seq loopBody297_15 loopBody297_271

def loopBody297_273 : HolLoopProg 64 :=
.seq loopBody297_1 loopBody297_272

def loopBody297_274 : HolLoopProg 64 :=
.seq loopBody297_1 loopBody297_273

def output297 : Nat × List Nat × HolLoopProg 64 :=
  (361, [0, 1, 2], loopBody297_274)
end InitECandidate.Proofs.FrontendStages.Loop
