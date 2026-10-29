import InitECandidate.Proofs.FrontendStages.Loop.Translate118
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody134_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody134_1 : HolLoopProg 64 :=
.mark loopBody134_0

def loopBody134_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64]))

def loopBody134_3 : HolLoopProg 64 :=
.mark loopBody134_2

def loopBody134_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 24#64]))

def loopBody134_5 : HolLoopProg 64 :=
.mark loopBody134_4

def loopBody134_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody134_7 : HolLoopProg 64 :=
.mark loopBody134_6

def loopBody134_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody134_9 : HolLoopProg 64 :=
.mark loopBody134_8

def loopBody134_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 6 6 4 5)

def loopBody134_11 : HolLoopProg 64 :=
.mark loopBody134_10

def loopBody134_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 8#64])

def loopBody134_13 : HolLoopProg 64 :=
.mark loopBody134_12

def loopBody134_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody134_15 : HolLoopProg 64 :=
.mark loopBody134_14

def loopBody134_16 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([7]) (some (4, loopBody134_15, loopBody134_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody134_17 : HolLoopProg 64 :=
.mark loopBody134_16

def loopBody134_18 : HolLoopProg 64 :=
.seq loopBody134_17 loopBody134_1

def loopBody134_19 : HolLoopProg 64 :=
.mark loopBody134_18

def loopBody134_20 : HolLoopProg 64 :=
.seq loopBody134_13 loopBody134_19

def loopBody134_21 : HolLoopProg 64 :=
.mark loopBody134_20

def loopBody134_22 : HolLoopProg 64 :=
.seq loopBody134_11 loopBody134_21

def loopBody134_23 : HolLoopProg 64 :=
.mark loopBody134_22

def loopBody134_24 : HolLoopProg 64 :=
.seq loopBody134_9 loopBody134_23

def loopBody134_25 : HolLoopProg 64 :=
.mark loopBody134_24

def loopBody134_26 : HolLoopProg 64 :=
.seq loopBody134_7 loopBody134_25

def loopBody134_27 : HolLoopProg 64 :=
.mark loopBody134_26

def loopBody134_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 32#64]))

def loopBody134_29 : HolLoopProg 64 :=
.mark loopBody134_28

def loopBody134_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 48#64]))

def loopBody134_31 : HolLoopProg 64 :=
.mark loopBody134_30

def loopBody134_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody134_33 : HolLoopProg 64 :=
.mark loopBody134_32

def loopBody134_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody134_35 : HolLoopProg 64 :=
.mark loopBody134_34

def loopBody134_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 2)

def loopBody134_37 : HolLoopProg 64 :=
.mark loopBody134_36

def loopBody134_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody134_39 : HolLoopProg 64 :=
.mark loopBody134_38

def loopBody134_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody134_41 : HolLoopProg 64 :=
.mark loopBody134_40

def loopBody134_42 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.RegImm.reg 9) loopBody134_39 loopBody134_41 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody134_43 : HolLoopProg 64 :=
.mark loopBody134_42

def loopBody134_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody134_45 : HolLoopProg 64 :=
.mark loopBody134_44

def loopBody134_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 5,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 6) (Flapjack.HolLoopExp.const 3#64)]))

def loopBody134_47 : HolLoopProg 64 :=
.mark loopBody134_46

def loopBody134_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 6)

def loopBody134_49 : HolLoopProg 64 :=
.mark loopBody134_48

def loopBody134_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 1)

def loopBody134_51 : HolLoopProg 64 :=
.mark loopBody134_50

def loopBody134_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 11 11 9 10)

def loopBody134_53 : HolLoopProg 64 :=
.mark loopBody134_52

def loopBody134_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 7)

def loopBody134_55 : HolLoopProg 64 :=
.mark loopBody134_54

def loopBody134_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 1)

def loopBody134_57 : HolLoopProg 64 :=
.mark loopBody134_56

def loopBody134_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 14 14 12 13)

def loopBody134_59 : HolLoopProg 64 :=
.mark loopBody134_58

def loopBody134_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.var 11])

def loopBody134_61 : HolLoopProg 64 :=
.mark loopBody134_60

def loopBody134_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.var 14])

def loopBody134_63 : HolLoopProg 64 :=
.mark loopBody134_62

def loopBody134_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 1)

def loopBody134_65 : HolLoopProg 64 :=
.mark loopBody134_64

def loopBody134_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody134_67 : HolLoopProg 64 :=
.mark loopBody134_66

def loopBody134_68 : HolLoopProg 64 :=
.call (some
  ([8],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 77) ([15, 16, 17]) (some (9, loopBody134_67, loopBody134_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody134_69 : HolLoopProg 64 :=
.mark loopBody134_68

def loopBody134_70 : HolLoopProg 64 :=
.seq loopBody134_69 loopBody134_1

def loopBody134_71 : HolLoopProg 64 :=
.mark loopBody134_70

def loopBody134_72 : HolLoopProg 64 :=
.seq loopBody134_65 loopBody134_71

def loopBody134_73 : HolLoopProg 64 :=
.mark loopBody134_72

def loopBody134_74 : HolLoopProg 64 :=
.seq loopBody134_63 loopBody134_73

def loopBody134_75 : HolLoopProg 64 :=
.mark loopBody134_74

def loopBody134_76 : HolLoopProg 64 :=
.seq loopBody134_61 loopBody134_75

def loopBody134_77 : HolLoopProg 64 :=
.mark loopBody134_76

def loopBody134_78 : HolLoopProg 64 :=
.seq loopBody134_59 loopBody134_77

def loopBody134_79 : HolLoopProg 64 :=
.mark loopBody134_78

def loopBody134_80 : HolLoopProg 64 :=
.seq loopBody134_57 loopBody134_79

def loopBody134_81 : HolLoopProg 64 :=
.mark loopBody134_80

def loopBody134_82 : HolLoopProg 64 :=
.seq loopBody134_55 loopBody134_81

def loopBody134_83 : HolLoopProg 64 :=
.mark loopBody134_82

def loopBody134_84 : HolLoopProg 64 :=
.seq loopBody134_53 loopBody134_83

def loopBody134_85 : HolLoopProg 64 :=
.mark loopBody134_84

def loopBody134_86 : HolLoopProg 64 :=
.seq loopBody134_51 loopBody134_85

def loopBody134_87 : HolLoopProg 64 :=
.mark loopBody134_86

def loopBody134_88 : HolLoopProg 64 :=
.seq loopBody134_49 loopBody134_87

def loopBody134_89 : HolLoopProg 64 :=
.mark loopBody134_88

def loopBody134_90 : HolLoopProg 64 :=
.seq loopBody134_1 loopBody134_89

def loopBody134_91 : HolLoopProg 64 :=
.mark loopBody134_90

def loopBody134_92 : HolLoopProg 64 :=
.seq loopBody134_1 loopBody134_91

def loopBody134_93 : HolLoopProg 64 :=
.mark loopBody134_92

def loopBody134_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 1#64])

def loopBody134_95 : HolLoopProg 64 :=
.mark loopBody134_94

def loopBody134_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 8)

def loopBody134_97 : HolLoopProg 64 :=
.mark loopBody134_96

def loopBody134_98 : HolLoopProg 64 :=
.seq loopBody134_97 loopBody134_1

def loopBody134_99 : HolLoopProg 64 :=
.mark loopBody134_98

def loopBody134_100 : HolLoopProg 64 :=
.seq loopBody134_99 loopBody134_1

def loopBody134_101 : HolLoopProg 64 :=
.mark loopBody134_100

def loopBody134_102 : HolLoopProg 64 :=
.seq loopBody134_95 loopBody134_101

def loopBody134_103 : HolLoopProg 64 :=
.mark loopBody134_102

def loopBody134_104 : HolLoopProg 64 :=
.seq loopBody134_1 loopBody134_103

def loopBody134_105 : HolLoopProg 64 :=
.mark loopBody134_104

def loopBody134_106 : HolLoopProg 64 :=
.seq loopBody134_93 loopBody134_105

def loopBody134_107 : HolLoopProg 64 :=
.mark loopBody134_106

def loopBody134_108 : HolLoopProg 64 :=
.seq loopBody134_47 loopBody134_107

def loopBody134_109 : HolLoopProg 64 :=
.mark loopBody134_108

def loopBody134_110 : HolLoopProg 64 :=
.seq loopBody134_1 loopBody134_109

def loopBody134_111 : HolLoopProg 64 :=
.mark loopBody134_110

def loopBody134_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody134_113 : HolLoopProg 64 :=
.mark loopBody134_112

def loopBody134_114 : HolLoopProg 64 :=
.seq loopBody134_111 loopBody134_113

def loopBody134_115 : HolLoopProg 64 :=
.mark loopBody134_114

def loopBody134_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody134_117 : HolLoopProg 64 :=
.mark loopBody134_116

def loopBody134_118 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody134_115 loopBody134_117 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody134_119 : HolLoopProg 64 :=
.mark loopBody134_118

def loopBody134_120 : HolLoopProg 64 :=
.seq loopBody134_119 loopBody134_1

def loopBody134_121 : HolLoopProg 64 :=
.mark loopBody134_120

def loopBody134_122 : HolLoopProg 64 :=
.seq loopBody134_45 loopBody134_121

def loopBody134_123 : HolLoopProg 64 :=
.mark loopBody134_122

def loopBody134_124 : HolLoopProg 64 :=
.seq loopBody134_43 loopBody134_123

def loopBody134_125 : HolLoopProg 64 :=
.mark loopBody134_124

def loopBody134_126 : HolLoopProg 64 :=
.seq loopBody134_37 loopBody134_125

def loopBody134_127 : HolLoopProg 64 :=
.mark loopBody134_126

def loopBody134_128 : HolLoopProg 64 :=
.seq loopBody134_35 loopBody134_127

def loopBody134_129 : HolLoopProg 64 :=
.mark loopBody134_128

def loopBody134_130 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody134_129 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody134_131 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody134_132 : HolLoopProg 64 :=
.mark loopBody134_131

def loopBody134_133 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody134_134 : HolLoopProg 64 :=
.mark loopBody134_133

def loopBody134_135 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [7, 8]

def loopBody134_136 : HolLoopProg 64 :=
.mark loopBody134_135

def loopBody134_137 : HolLoopProg 64 :=
.seq loopBody134_136 loopBody134_1

def loopBody134_138 : HolLoopProg 64 :=
.mark loopBody134_137

def loopBody134_139 : HolLoopProg 64 :=
.seq loopBody134_134 loopBody134_138

def loopBody134_140 : HolLoopProg 64 :=
.mark loopBody134_139

def loopBody134_141 : HolLoopProg 64 :=
.seq loopBody134_132 loopBody134_140

def loopBody134_142 : HolLoopProg 64 :=
.mark loopBody134_141

def loopBody134_143 : HolLoopProg 64 :=
.seq loopBody134_130 loopBody134_142

def loopBody134_144 : HolLoopProg 64 :=
.seq loopBody134_33 loopBody134_143

def loopBody134_145 : HolLoopProg 64 :=
.seq loopBody134_1 loopBody134_144

def loopBody134_146 : HolLoopProg 64 :=
.seq loopBody134_31 loopBody134_145

def loopBody134_147 : HolLoopProg 64 :=
.seq loopBody134_1 loopBody134_146

def loopBody134_148 : HolLoopProg 64 :=
.seq loopBody134_29 loopBody134_147

def loopBody134_149 : HolLoopProg 64 :=
.seq loopBody134_1 loopBody134_148

def loopBody134_150 : HolLoopProg 64 :=
.seq loopBody134_27 loopBody134_149

def loopBody134_151 : HolLoopProg 64 :=
.seq loopBody134_1 loopBody134_150

def loopBody134_152 : HolLoopProg 64 :=
.seq loopBody134_1 loopBody134_151

def loopBody134_153 : HolLoopProg 64 :=
.seq loopBody134_5 loopBody134_152

def loopBody134_154 : HolLoopProg 64 :=
.seq loopBody134_1 loopBody134_153

def loopBody134_155 : HolLoopProg 64 :=
.seq loopBody134_3 loopBody134_154

def loopBody134_156 : HolLoopProg 64 :=
.seq loopBody134_1 loopBody134_155

def output134 : Nat × List Nat × HolLoopProg 64 :=
  (198, [0], loopBody134_156)
end InitECandidate.Proofs.FrontendStages.Loop
