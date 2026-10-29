import InitECandidate.Proofs.FrontendStages.Loop.Translate766
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody782_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody782_1 : HolLoopProg 64 :=
.mark loopBody782_0

def loopBody782_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 80#64)

def loopBody782_3 : HolLoopProg 64 :=
.mark loopBody782_2

def loopBody782_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody782_5 : HolLoopProg 64 :=
.mark loopBody782_4

def loopBody782_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 68) ([2]) (some (2, loopBody782_5, loopBody782_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody782_7 : HolLoopProg 64 :=
.mark loopBody782_6

def loopBody782_8 : HolLoopProg 64 :=
.seq loopBody782_7 loopBody782_1

def loopBody782_9 : HolLoopProg 64 :=
.mark loopBody782_8

def loopBody782_10 : HolLoopProg 64 :=
.seq loopBody782_3 loopBody782_9

def loopBody782_11 : HolLoopProg 64 :=
.mark loopBody782_10

def loopBody782_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody782_13 : HolLoopProg 64 :=
.mark loopBody782_12

def loopBody782_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody782_15 : HolLoopProg 64 :=
.mark loopBody782_14

def loopBody782_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody782_17 : HolLoopProg 64 :=
.mark loopBody782_16

def loopBody782_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 5#64)

def loopBody782_19 : HolLoopProg 64 :=
.mark loopBody782_18

def loopBody782_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody782_21 : HolLoopProg 64 :=
.mark loopBody782_20

def loopBody782_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody782_23 : HolLoopProg 64 :=
.mark loopBody782_22

def loopBody782_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.less) 5 (Flapjack.RegImm.reg 6) loopBody782_21 loopBody782_23 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody782_25 : HolLoopProg 64 :=
.mark loopBody782_24

def loopBody782_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody782_27 : HolLoopProg 64 :=
.mark loopBody782_26

def loopBody782_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 4#64)]))

def loopBody782_29 : HolLoopProg 64 :=
.mark loopBody782_28

def loopBody782_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 4#64)]))

def loopBody782_31 : HolLoopProg 64 :=
.mark loopBody782_30

def loopBody782_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 192#64)

def loopBody782_33 : HolLoopProg 64 :=
.mark loopBody782_32

def loopBody782_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody782_35 : HolLoopProg 64 :=
.mark loopBody782_34

def loopBody782_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 1#64)

def loopBody782_37 : HolLoopProg 64 :=
.mark loopBody782_36

def loopBody782_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody782_39 : HolLoopProg 64 :=
.mark loopBody782_38

def loopBody782_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody782_41 : HolLoopProg 64 :=
.mark loopBody782_40

def loopBody782_42 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.RegImm.reg 9) loopBody782_39 loopBody782_41 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody782_43 : HolLoopProg 64 :=
.mark loopBody782_42

def loopBody782_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody782_45 : HolLoopProg 64 :=
.mark loopBody782_44

def loopBody782_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 76#64)

def loopBody782_47 : HolLoopProg 64 :=
.mark loopBody782_46

def loopBody782_48 : HolLoopProg 64 :=
.seq loopBody782_47 loopBody782_1

def loopBody782_49 : HolLoopProg 64 :=
.mark loopBody782_48

def loopBody782_50 : HolLoopProg 64 :=
.seq loopBody782_49 loopBody782_1

def loopBody782_51 : HolLoopProg 64 :=
.mark loopBody782_50

def loopBody782_52 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody782_51 loopBody782_1 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody782_53 : HolLoopProg 64 :=
.mark loopBody782_52

def loopBody782_54 : HolLoopProg 64 :=
.seq loopBody782_53 loopBody782_1

def loopBody782_55 : HolLoopProg 64 :=
.mark loopBody782_54

def loopBody782_56 : HolLoopProg 64 :=
.seq loopBody782_45 loopBody782_55

def loopBody782_57 : HolLoopProg 64 :=
.mark loopBody782_56

def loopBody782_58 : HolLoopProg 64 :=
.seq loopBody782_43 loopBody782_57

def loopBody782_59 : HolLoopProg 64 :=
.mark loopBody782_58

def loopBody782_60 : HolLoopProg 64 :=
.seq loopBody782_37 loopBody782_59

def loopBody782_61 : HolLoopProg 64 :=
.mark loopBody782_60

def loopBody782_62 : HolLoopProg 64 :=
.seq loopBody782_35 loopBody782_61

def loopBody782_63 : HolLoopProg 64 :=
.mark loopBody782_62

def loopBody782_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 2#64)

def loopBody782_65 : HolLoopProg 64 :=
.mark loopBody782_64

def loopBody782_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 116#64)

def loopBody782_67 : HolLoopProg 64 :=
.mark loopBody782_66

def loopBody782_68 : HolLoopProg 64 :=
.seq loopBody782_67 loopBody782_1

def loopBody782_69 : HolLoopProg 64 :=
.mark loopBody782_68

def loopBody782_70 : HolLoopProg 64 :=
.seq loopBody782_69 loopBody782_1

def loopBody782_71 : HolLoopProg 64 :=
.mark loopBody782_70

def loopBody782_72 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody782_71 loopBody782_1 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody782_73 : HolLoopProg 64 :=
.mark loopBody782_72

def loopBody782_74 : HolLoopProg 64 :=
.seq loopBody782_73 loopBody782_1

def loopBody782_75 : HolLoopProg 64 :=
.mark loopBody782_74

def loopBody782_76 : HolLoopProg 64 :=
.seq loopBody782_45 loopBody782_75

def loopBody782_77 : HolLoopProg 64 :=
.mark loopBody782_76

def loopBody782_78 : HolLoopProg 64 :=
.seq loopBody782_43 loopBody782_77

def loopBody782_79 : HolLoopProg 64 :=
.mark loopBody782_78

def loopBody782_80 : HolLoopProg 64 :=
.seq loopBody782_65 loopBody782_79

def loopBody782_81 : HolLoopProg 64 :=
.mark loopBody782_80

def loopBody782_82 : HolLoopProg 64 :=
.seq loopBody782_35 loopBody782_81

def loopBody782_83 : HolLoopProg 64 :=
.mark loopBody782_82

def loopBody782_84 : HolLoopProg 64 :=
.seq loopBody782_63 loopBody782_83

def loopBody782_85 : HolLoopProg 64 :=
.mark loopBody782_84

def loopBody782_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 3#64)

def loopBody782_87 : HolLoopProg 64 :=
.mark loopBody782_86

def loopBody782_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 184#64)

def loopBody782_89 : HolLoopProg 64 :=
.mark loopBody782_88

def loopBody782_90 : HolLoopProg 64 :=
.seq loopBody782_89 loopBody782_1

def loopBody782_91 : HolLoopProg 64 :=
.mark loopBody782_90

def loopBody782_92 : HolLoopProg 64 :=
.seq loopBody782_91 loopBody782_1

def loopBody782_93 : HolLoopProg 64 :=
.mark loopBody782_92

def loopBody782_94 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody782_93 loopBody782_1 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody782_95 : HolLoopProg 64 :=
.mark loopBody782_94

def loopBody782_96 : HolLoopProg 64 :=
.seq loopBody782_95 loopBody782_1

def loopBody782_97 : HolLoopProg 64 :=
.mark loopBody782_96

def loopBody782_98 : HolLoopProg 64 :=
.seq loopBody782_45 loopBody782_97

def loopBody782_99 : HolLoopProg 64 :=
.mark loopBody782_98

def loopBody782_100 : HolLoopProg 64 :=
.seq loopBody782_43 loopBody782_99

def loopBody782_101 : HolLoopProg 64 :=
.mark loopBody782_100

def loopBody782_102 : HolLoopProg 64 :=
.seq loopBody782_87 loopBody782_101

def loopBody782_103 : HolLoopProg 64 :=
.mark loopBody782_102

def loopBody782_104 : HolLoopProg 64 :=
.seq loopBody782_35 loopBody782_103

def loopBody782_105 : HolLoopProg 64 :=
.mark loopBody782_104

def loopBody782_106 : HolLoopProg 64 :=
.seq loopBody782_85 loopBody782_105

def loopBody782_107 : HolLoopProg 64 :=
.mark loopBody782_106

def loopBody782_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 4#64)

def loopBody782_109 : HolLoopProg 64 :=
.mark loopBody782_108

def loopBody782_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 68#64)

def loopBody782_111 : HolLoopProg 64 :=
.mark loopBody782_110

def loopBody782_112 : HolLoopProg 64 :=
.seq loopBody782_111 loopBody782_1

def loopBody782_113 : HolLoopProg 64 :=
.mark loopBody782_112

def loopBody782_114 : HolLoopProg 64 :=
.seq loopBody782_113 loopBody782_1

def loopBody782_115 : HolLoopProg 64 :=
.mark loopBody782_114

def loopBody782_116 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody782_115 loopBody782_1 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody782_117 : HolLoopProg 64 :=
.mark loopBody782_116

def loopBody782_118 : HolLoopProg 64 :=
.seq loopBody782_117 loopBody782_1

def loopBody782_119 : HolLoopProg 64 :=
.mark loopBody782_118

def loopBody782_120 : HolLoopProg 64 :=
.seq loopBody782_45 loopBody782_119

def loopBody782_121 : HolLoopProg 64 :=
.mark loopBody782_120

def loopBody782_122 : HolLoopProg 64 :=
.seq loopBody782_43 loopBody782_121

def loopBody782_123 : HolLoopProg 64 :=
.mark loopBody782_122

def loopBody782_124 : HolLoopProg 64 :=
.seq loopBody782_109 loopBody782_123

def loopBody782_125 : HolLoopProg 64 :=
.mark loopBody782_124

def loopBody782_126 : HolLoopProg 64 :=
.seq loopBody782_35 loopBody782_125

def loopBody782_127 : HolLoopProg 64 :=
.mark loopBody782_126

def loopBody782_128 : HolLoopProg 64 :=
.seq loopBody782_107 loopBody782_127

def loopBody782_129 : HolLoopProg 64 :=
.mark loopBody782_128

def loopBody782_130 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody782_131 : HolLoopProg 64 :=
.mark loopBody782_130

def loopBody782_132 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody782_133 : HolLoopProg 64 :=
.mark loopBody782_132

def loopBody782_134 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.reg 9) loopBody782_39 loopBody782_41 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody782_135 : HolLoopProg 64 :=
.mark loopBody782_134

def loopBody782_136 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 6)

def loopBody782_137 : HolLoopProg 64 :=
.mark loopBody782_136

def loopBody782_138 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 10 10 8 9)

def loopBody782_139 : HolLoopProg 64 :=
.mark loopBody782_138

def loopBody782_140 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 10, Flapjack.HolLoopExp.const 8#64])

def loopBody782_141 : HolLoopProg 64 :=
.mark loopBody782_140

def loopBody782_142 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody782_143 : HolLoopProg 64 :=
.mark loopBody782_142

def loopBody782_144 : HolLoopProg 64 :=
.call (some
  ([7],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([11]) (some (8, loopBody782_143, loopBody782_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody782_145 : HolLoopProg 64 :=
.mark loopBody782_144

def loopBody782_146 : HolLoopProg 64 :=
.seq loopBody782_145 loopBody782_1

def loopBody782_147 : HolLoopProg 64 :=
.mark loopBody782_146

def loopBody782_148 : HolLoopProg 64 :=
.seq loopBody782_141 loopBody782_147

def loopBody782_149 : HolLoopProg 64 :=
.mark loopBody782_148

def loopBody782_150 : HolLoopProg 64 :=
.seq loopBody782_139 loopBody782_149

def loopBody782_151 : HolLoopProg 64 :=
.mark loopBody782_150

def loopBody782_152 : HolLoopProg 64 :=
.seq loopBody782_137 loopBody782_151

def loopBody782_153 : HolLoopProg 64 :=
.mark loopBody782_152

def loopBody782_154 : HolLoopProg 64 :=
.seq loopBody782_131 loopBody782_153

def loopBody782_155 : HolLoopProg 64 :=
.mark loopBody782_154

def loopBody782_156 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 7)

def loopBody782_157 : HolLoopProg 64 :=
.mark loopBody782_156

def loopBody782_158 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 3)

def loopBody782_159 : HolLoopProg 64 :=
.mark loopBody782_158

def loopBody782_160 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 8 9

def loopBody782_161 : HolLoopProg 64 :=
.mark loopBody782_160

def loopBody782_162 : HolLoopProg 64 :=
.seq loopBody782_161 loopBody782_1

def loopBody782_163 : HolLoopProg 64 :=
.mark loopBody782_162

def loopBody782_164 : HolLoopProg 64 :=
.seq loopBody782_159 loopBody782_163

def loopBody782_165 : HolLoopProg 64 :=
.mark loopBody782_164

def loopBody782_166 : HolLoopProg 64 :=
.seq loopBody782_157 loopBody782_165

def loopBody782_167 : HolLoopProg 64 :=
.mark loopBody782_166

def loopBody782_168 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 5)

def loopBody782_169 : HolLoopProg 64 :=
.mark loopBody782_168

def loopBody782_170 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 6)

def loopBody782_171 : HolLoopProg 64 :=
.mark loopBody782_170

def loopBody782_172 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 11 11 9 10)

def loopBody782_173 : HolLoopProg 64 :=
.mark loopBody782_172

def loopBody782_174 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.const 1#64])

def loopBody782_175 : HolLoopProg 64 :=
.mark loopBody782_174

def loopBody782_176 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 4)

def loopBody782_177 : HolLoopProg 64 :=
.mark loopBody782_176

def loopBody782_178 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 11)

def loopBody782_179 : HolLoopProg 64 :=
.mark loopBody782_178

def loopBody782_180 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody782_181 : HolLoopProg 64 :=
.mark loopBody782_180

def loopBody782_182 : HolLoopProg 64 :=
.call (some
  ([8],
    Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 77) ([12, 13, 14]) (some (9, loopBody782_181, loopBody782_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody782_183 : HolLoopProg 64 :=
.mark loopBody782_182

def loopBody782_184 : HolLoopProg 64 :=
.seq loopBody782_183 loopBody782_1

def loopBody782_185 : HolLoopProg 64 :=
.mark loopBody782_184

def loopBody782_186 : HolLoopProg 64 :=
.seq loopBody782_179 loopBody782_185

def loopBody782_187 : HolLoopProg 64 :=
.mark loopBody782_186

def loopBody782_188 : HolLoopProg 64 :=
.seq loopBody782_177 loopBody782_187

def loopBody782_189 : HolLoopProg 64 :=
.mark loopBody782_188

def loopBody782_190 : HolLoopProg 64 :=
.seq loopBody782_175 loopBody782_189

def loopBody782_191 : HolLoopProg 64 :=
.mark loopBody782_190

def loopBody782_192 : HolLoopProg 64 :=
.seq loopBody782_173 loopBody782_191

def loopBody782_193 : HolLoopProg 64 :=
.mark loopBody782_192

def loopBody782_194 : HolLoopProg 64 :=
.seq loopBody782_171 loopBody782_193

def loopBody782_195 : HolLoopProg 64 :=
.mark loopBody782_194

def loopBody782_196 : HolLoopProg 64 :=
.seq loopBody782_169 loopBody782_195

def loopBody782_197 : HolLoopProg 64 :=
.mark loopBody782_196

def loopBody782_198 : HolLoopProg 64 :=
.seq loopBody782_1 loopBody782_197

def loopBody782_199 : HolLoopProg 64 :=
.mark loopBody782_198

def loopBody782_200 : HolLoopProg 64 :=
.seq loopBody782_1 loopBody782_199

def loopBody782_201 : HolLoopProg 64 :=
.mark loopBody782_200

def loopBody782_202 : HolLoopProg 64 :=
.seq loopBody782_167 loopBody782_201

def loopBody782_203 : HolLoopProg 64 :=
.mark loopBody782_202

def loopBody782_204 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 1,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 4#64)])

def loopBody782_205 : HolLoopProg 64 :=
.mark loopBody782_204

def loopBody782_206 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody782_207 : HolLoopProg 64 :=
.mark loopBody782_206

def loopBody782_208 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 9)

def loopBody782_209 : HolLoopProg 64 :=
.mark loopBody782_208

def loopBody782_210 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 8) 10

def loopBody782_211 : HolLoopProg 64 :=
.mark loopBody782_210

def loopBody782_212 : HolLoopProg 64 :=
.seq loopBody782_211 loopBody782_1

def loopBody782_213 : HolLoopProg 64 :=
.mark loopBody782_212

def loopBody782_214 : HolLoopProg 64 :=
.seq loopBody782_209 loopBody782_213

def loopBody782_215 : HolLoopProg 64 :=
.mark loopBody782_214

def loopBody782_216 : HolLoopProg 64 :=
.seq loopBody782_215 loopBody782_1

def loopBody782_217 : HolLoopProg 64 :=
.mark loopBody782_216

def loopBody782_218 : HolLoopProg 64 :=
.seq loopBody782_207 loopBody782_217

def loopBody782_219 : HolLoopProg 64 :=
.mark loopBody782_218

def loopBody782_220 : HolLoopProg 64 :=
.seq loopBody782_1 loopBody782_219

def loopBody782_221 : HolLoopProg 64 :=
.mark loopBody782_220

def loopBody782_222 : HolLoopProg 64 :=
.seq loopBody782_205 loopBody782_221

def loopBody782_223 : HolLoopProg 64 :=
.mark loopBody782_222

def loopBody782_224 : HolLoopProg 64 :=
.seq loopBody782_1 loopBody782_223

def loopBody782_225 : HolLoopProg 64 :=
.mark loopBody782_224

def loopBody782_226 : HolLoopProg 64 :=
.seq loopBody782_203 loopBody782_225

def loopBody782_227 : HolLoopProg 64 :=
.mark loopBody782_226

def loopBody782_228 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 1,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 4#64),
      Flapjack.HolLoopExp.const 8#64])

def loopBody782_229 : HolLoopProg 64 :=
.mark loopBody782_228

def loopBody782_230 : HolLoopProg 64 :=
.seq loopBody782_173 loopBody782_1

def loopBody782_231 : HolLoopProg 64 :=
.mark loopBody782_230

def loopBody782_232 : HolLoopProg 64 :=
.seq loopBody782_171 loopBody782_231

def loopBody782_233 : HolLoopProg 64 :=
.mark loopBody782_232

def loopBody782_234 : HolLoopProg 64 :=
.seq loopBody782_169 loopBody782_233

def loopBody782_235 : HolLoopProg 64 :=
.mark loopBody782_234

def loopBody782_236 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 11, Flapjack.HolLoopExp.const 1#64])

def loopBody782_237 : HolLoopProg 64 :=
.mark loopBody782_236

def loopBody782_238 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 12)

def loopBody782_239 : HolLoopProg 64 :=
.mark loopBody782_238

def loopBody782_240 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 8) 13

def loopBody782_241 : HolLoopProg 64 :=
.mark loopBody782_240

def loopBody782_242 : HolLoopProg 64 :=
.seq loopBody782_241 loopBody782_1

def loopBody782_243 : HolLoopProg 64 :=
.mark loopBody782_242

def loopBody782_244 : HolLoopProg 64 :=
.seq loopBody782_239 loopBody782_243

def loopBody782_245 : HolLoopProg 64 :=
.mark loopBody782_244

def loopBody782_246 : HolLoopProg 64 :=
.seq loopBody782_245 loopBody782_1

def loopBody782_247 : HolLoopProg 64 :=
.mark loopBody782_246

def loopBody782_248 : HolLoopProg 64 :=
.seq loopBody782_237 loopBody782_247

def loopBody782_249 : HolLoopProg 64 :=
.mark loopBody782_248

def loopBody782_250 : HolLoopProg 64 :=
.seq loopBody782_235 loopBody782_249

def loopBody782_251 : HolLoopProg 64 :=
.mark loopBody782_250

def loopBody782_252 : HolLoopProg 64 :=
.seq loopBody782_229 loopBody782_251

def loopBody782_253 : HolLoopProg 64 :=
.mark loopBody782_252

def loopBody782_254 : HolLoopProg 64 :=
.seq loopBody782_1 loopBody782_253

def loopBody782_255 : HolLoopProg 64 :=
.mark loopBody782_254

def loopBody782_256 : HolLoopProg 64 :=
.seq loopBody782_227 loopBody782_255

def loopBody782_257 : HolLoopProg 64 :=
.mark loopBody782_256

def loopBody782_258 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 1#64])

def loopBody782_259 : HolLoopProg 64 :=
.mark loopBody782_258

def loopBody782_260 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 8)

def loopBody782_261 : HolLoopProg 64 :=
.mark loopBody782_260

def loopBody782_262 : HolLoopProg 64 :=
.seq loopBody782_261 loopBody782_1

def loopBody782_263 : HolLoopProg 64 :=
.mark loopBody782_262

def loopBody782_264 : HolLoopProg 64 :=
.seq loopBody782_263 loopBody782_1

def loopBody782_265 : HolLoopProg 64 :=
.mark loopBody782_264

def loopBody782_266 : HolLoopProg 64 :=
.seq loopBody782_259 loopBody782_265

def loopBody782_267 : HolLoopProg 64 :=
.mark loopBody782_266

def loopBody782_268 : HolLoopProg 64 :=
.seq loopBody782_1 loopBody782_267

def loopBody782_269 : HolLoopProg 64 :=
.mark loopBody782_268

def loopBody782_270 : HolLoopProg 64 :=
.seq loopBody782_257 loopBody782_269

def loopBody782_271 : HolLoopProg 64 :=
.mark loopBody782_270

def loopBody782_272 : HolLoopProg 64 :=
.seq loopBody782_155 loopBody782_271

def loopBody782_273 : HolLoopProg 64 :=
.mark loopBody782_272

def loopBody782_274 : HolLoopProg 64 :=
.seq loopBody782_1 loopBody782_273

def loopBody782_275 : HolLoopProg 64 :=
.mark loopBody782_274

def loopBody782_276 : HolLoopProg 64 :=
.seq loopBody782_1 loopBody782_275

def loopBody782_277 : HolLoopProg 64 :=
.mark loopBody782_276

def loopBody782_278 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody782_277 loopBody782_1 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody782_279 : HolLoopProg 64 :=
.mark loopBody782_278

def loopBody782_280 : HolLoopProg 64 :=
.seq loopBody782_279 loopBody782_1

def loopBody782_281 : HolLoopProg 64 :=
.mark loopBody782_280

def loopBody782_282 : HolLoopProg 64 :=
.seq loopBody782_45 loopBody782_281

def loopBody782_283 : HolLoopProg 64 :=
.mark loopBody782_282

def loopBody782_284 : HolLoopProg 64 :=
.seq loopBody782_135 loopBody782_283

def loopBody782_285 : HolLoopProg 64 :=
.mark loopBody782_284

def loopBody782_286 : HolLoopProg 64 :=
.seq loopBody782_133 loopBody782_285

def loopBody782_287 : HolLoopProg 64 :=
.mark loopBody782_286

def loopBody782_288 : HolLoopProg 64 :=
.seq loopBody782_131 loopBody782_287

def loopBody782_289 : HolLoopProg 64 :=
.mark loopBody782_288

def loopBody782_290 : HolLoopProg 64 :=
.seq loopBody782_129 loopBody782_289

def loopBody782_291 : HolLoopProg 64 :=
.mark loopBody782_290

def loopBody782_292 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 1#64])

def loopBody782_293 : HolLoopProg 64 :=
.mark loopBody782_292

def loopBody782_294 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 7)

def loopBody782_295 : HolLoopProg 64 :=
.mark loopBody782_294

def loopBody782_296 : HolLoopProg 64 :=
.seq loopBody782_295 loopBody782_1

def loopBody782_297 : HolLoopProg 64 :=
.mark loopBody782_296

def loopBody782_298 : HolLoopProg 64 :=
.seq loopBody782_297 loopBody782_1

def loopBody782_299 : HolLoopProg 64 :=
.mark loopBody782_298

def loopBody782_300 : HolLoopProg 64 :=
.seq loopBody782_293 loopBody782_299

def loopBody782_301 : HolLoopProg 64 :=
.mark loopBody782_300

def loopBody782_302 : HolLoopProg 64 :=
.seq loopBody782_1 loopBody782_301

def loopBody782_303 : HolLoopProg 64 :=
.mark loopBody782_302

def loopBody782_304 : HolLoopProg 64 :=
.seq loopBody782_291 loopBody782_303

def loopBody782_305 : HolLoopProg 64 :=
.mark loopBody782_304

def loopBody782_306 : HolLoopProg 64 :=
.seq loopBody782_33 loopBody782_305

def loopBody782_307 : HolLoopProg 64 :=
.mark loopBody782_306

def loopBody782_308 : HolLoopProg 64 :=
.seq loopBody782_1 loopBody782_307

def loopBody782_309 : HolLoopProg 64 :=
.mark loopBody782_308

def loopBody782_310 : HolLoopProg 64 :=
.seq loopBody782_31 loopBody782_309

def loopBody782_311 : HolLoopProg 64 :=
.mark loopBody782_310

def loopBody782_312 : HolLoopProg 64 :=
.seq loopBody782_1 loopBody782_311

def loopBody782_313 : HolLoopProg 64 :=
.mark loopBody782_312

def loopBody782_314 : HolLoopProg 64 :=
.seq loopBody782_29 loopBody782_313

def loopBody782_315 : HolLoopProg 64 :=
.mark loopBody782_314

def loopBody782_316 : HolLoopProg 64 :=
.seq loopBody782_1 loopBody782_315

def loopBody782_317 : HolLoopProg 64 :=
.mark loopBody782_316

def loopBody782_318 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody782_319 : HolLoopProg 64 :=
.mark loopBody782_318

def loopBody782_320 : HolLoopProg 64 :=
.seq loopBody782_317 loopBody782_319

def loopBody782_321 : HolLoopProg 64 :=
.mark loopBody782_320

def loopBody782_322 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody782_323 : HolLoopProg 64 :=
.mark loopBody782_322

def loopBody782_324 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody782_321 loopBody782_323 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody782_325 : HolLoopProg 64 :=
.mark loopBody782_324

def loopBody782_326 : HolLoopProg 64 :=
.seq loopBody782_325 loopBody782_1

def loopBody782_327 : HolLoopProg 64 :=
.mark loopBody782_326

def loopBody782_328 : HolLoopProg 64 :=
.seq loopBody782_27 loopBody782_327

def loopBody782_329 : HolLoopProg 64 :=
.mark loopBody782_328

def loopBody782_330 : HolLoopProg 64 :=
.seq loopBody782_25 loopBody782_329

def loopBody782_331 : HolLoopProg 64 :=
.mark loopBody782_330

def loopBody782_332 : HolLoopProg 64 :=
.seq loopBody782_19 loopBody782_331

def loopBody782_333 : HolLoopProg 64 :=
.mark loopBody782_332

def loopBody782_334 : HolLoopProg 64 :=
.seq loopBody782_17 loopBody782_333

def loopBody782_335 : HolLoopProg 64 :=
.mark loopBody782_334

def loopBody782_336 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody782_335 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))

def loopBody782_337 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody782_338 : HolLoopProg 64 :=
.mark loopBody782_337

def loopBody782_339 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody782_340 : HolLoopProg 64 :=
.mark loopBody782_339

def loopBody782_341 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4, 5]

def loopBody782_342 : HolLoopProg 64 :=
.mark loopBody782_341

def loopBody782_343 : HolLoopProg 64 :=
.seq loopBody782_342 loopBody782_1

def loopBody782_344 : HolLoopProg 64 :=
.mark loopBody782_343

def loopBody782_345 : HolLoopProg 64 :=
.seq loopBody782_340 loopBody782_344

def loopBody782_346 : HolLoopProg 64 :=
.mark loopBody782_345

def loopBody782_347 : HolLoopProg 64 :=
.seq loopBody782_338 loopBody782_346

def loopBody782_348 : HolLoopProg 64 :=
.mark loopBody782_347

def loopBody782_349 : HolLoopProg 64 :=
.seq loopBody782_336 loopBody782_348

def loopBody782_350 : HolLoopProg 64 :=
.seq loopBody782_15 loopBody782_349

def loopBody782_351 : HolLoopProg 64 :=
.seq loopBody782_1 loopBody782_350

def loopBody782_352 : HolLoopProg 64 :=
.seq loopBody782_13 loopBody782_351

def loopBody782_353 : HolLoopProg 64 :=
.seq loopBody782_1 loopBody782_352

def loopBody782_354 : HolLoopProg 64 :=
.seq loopBody782_11 loopBody782_353

def loopBody782_355 : HolLoopProg 64 :=
.seq loopBody782_1 loopBody782_354

def loopBody782_356 : HolLoopProg 64 :=
.seq loopBody782_1 loopBody782_355

def output782 : Nat × List Nat × HolLoopProg 64 :=
  (846, [0], loopBody782_356)
end InitECandidate.Proofs.FrontendStages.Loop
