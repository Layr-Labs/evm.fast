import InitECandidate.Proofs.FrontendStages.Loop.Translate744
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody760_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody760_1 : HolLoopProg 64 :=
.mark loopBody760_0

def loopBody760_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 112#64]))

def loopBody760_3 : HolLoopProg 64 :=
.mark loopBody760_2

def loopBody760_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 96#64]))

def loopBody760_5 : HolLoopProg 64 :=
.mark loopBody760_4

def loopBody760_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody760_7 : HolLoopProg 64 :=
.mark loopBody760_6

def loopBody760_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody760_9 : HolLoopProg 64 :=
.mark loopBody760_8

def loopBody760_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody760_11 : HolLoopProg 64 :=
.mark loopBody760_10

def loopBody760_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody760_13 : HolLoopProg 64 :=
.mark loopBody760_12

def loopBody760_14 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.RegImm.reg 5) loopBody760_11 loopBody760_13 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))

def loopBody760_15 : HolLoopProg 64 :=
.mark loopBody760_14

def loopBody760_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody760_17 : HolLoopProg 64 :=
.mark loopBody760_16

def loopBody760_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 10#64)

def loopBody760_19 : HolLoopProg 64 :=
.mark loopBody760_18

def loopBody760_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 3)

def loopBody760_21 : HolLoopProg 64 :=
.mark loopBody760_20

def loopBody760_22 : HolLoopProg 64 :=
.seq loopBody760_21 loopBody760_1

def loopBody760_23 : HolLoopProg 64 :=
.mark loopBody760_22

def loopBody760_24 : HolLoopProg 64 :=
.seq loopBody760_23 loopBody760_1

def loopBody760_25 : HolLoopProg 64 :=
.mark loopBody760_24

def loopBody760_26 : HolLoopProg 64 :=
.seq loopBody760_19 loopBody760_25

def loopBody760_27 : HolLoopProg 64 :=
.mark loopBody760_26

def loopBody760_28 : HolLoopProg 64 :=
.seq loopBody760_1 loopBody760_27

def loopBody760_29 : HolLoopProg 64 :=
.mark loopBody760_28

def loopBody760_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 8#64)

def loopBody760_31 : HolLoopProg 64 :=
.mark loopBody760_30

def loopBody760_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody760_33 : HolLoopProg 64 :=
.mark loopBody760_32

def loopBody760_34 : HolLoopProg 64 :=
.seq loopBody760_31 loopBody760_33

def loopBody760_35 : HolLoopProg 64 :=
.mark loopBody760_34

def loopBody760_36 : HolLoopProg 64 :=
.seq loopBody760_29 loopBody760_35

def loopBody760_37 : HolLoopProg 64 :=
.mark loopBody760_36

def loopBody760_38 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody760_37 loopBody760_1 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))

def loopBody760_39 : HolLoopProg 64 :=
.mark loopBody760_38

def loopBody760_40 : HolLoopProg 64 :=
.seq loopBody760_39 loopBody760_1

def loopBody760_41 : HolLoopProg 64 :=
.mark loopBody760_40

def loopBody760_42 : HolLoopProg 64 :=
.seq loopBody760_17 loopBody760_41

def loopBody760_43 : HolLoopProg 64 :=
.mark loopBody760_42

def loopBody760_44 : HolLoopProg 64 :=
.seq loopBody760_15 loopBody760_43

def loopBody760_45 : HolLoopProg 64 :=
.mark loopBody760_44

def loopBody760_46 : HolLoopProg 64 :=
.seq loopBody760_9 loopBody760_45

def loopBody760_47 : HolLoopProg 64 :=
.mark loopBody760_46

def loopBody760_48 : HolLoopProg 64 :=
.seq loopBody760_7 loopBody760_47

def loopBody760_49 : HolLoopProg 64 :=
.mark loopBody760_48

def loopBody760_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody760_51 : HolLoopProg 64 :=
.mark loopBody760_50

def loopBody760_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 288#64)

def loopBody760_53 : HolLoopProg 64 :=
.mark loopBody760_52

def loopBody760_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody760_55 : HolLoopProg 64 :=
.mark loopBody760_54

def loopBody760_56 : HolLoopProg 64 :=
.call (some ([3, 4], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 94) ([5, 6]) (some (5, loopBody760_55, loopBody760_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody760_57 : HolLoopProg 64 :=
.mark loopBody760_56

def loopBody760_58 : HolLoopProg 64 :=
.seq loopBody760_57 loopBody760_1

def loopBody760_59 : HolLoopProg 64 :=
.mark loopBody760_58

def loopBody760_60 : HolLoopProg 64 :=
.seq loopBody760_53 loopBody760_59

def loopBody760_61 : HolLoopProg 64 :=
.mark loopBody760_60

def loopBody760_62 : HolLoopProg 64 :=
.seq loopBody760_51 loopBody760_61

def loopBody760_63 : HolLoopProg 64 :=
.mark loopBody760_62

def loopBody760_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody760_65 : HolLoopProg 64 :=
.mark loopBody760_64

def loopBody760_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody760_67 : HolLoopProg 64 :=
.mark loopBody760_66

def loopBody760_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody760_69 : HolLoopProg 64 :=
.mark loopBody760_68

def loopBody760_70 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.reg 7) loopBody760_67 loopBody760_69 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody760_71 : HolLoopProg 64 :=
.mark loopBody760_70

def loopBody760_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody760_73 : HolLoopProg 64 :=
.mark loopBody760_72

def loopBody760_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 10#64)

def loopBody760_75 : HolLoopProg 64 :=
.mark loopBody760_74

def loopBody760_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 5)

def loopBody760_77 : HolLoopProg 64 :=
.mark loopBody760_76

def loopBody760_78 : HolLoopProg 64 :=
.seq loopBody760_77 loopBody760_1

def loopBody760_79 : HolLoopProg 64 :=
.mark loopBody760_78

def loopBody760_80 : HolLoopProg 64 :=
.seq loopBody760_79 loopBody760_1

def loopBody760_81 : HolLoopProg 64 :=
.mark loopBody760_80

def loopBody760_82 : HolLoopProg 64 :=
.seq loopBody760_75 loopBody760_81

def loopBody760_83 : HolLoopProg 64 :=
.mark loopBody760_82

def loopBody760_84 : HolLoopProg 64 :=
.seq loopBody760_1 loopBody760_83

def loopBody760_85 : HolLoopProg 64 :=
.mark loopBody760_84

def loopBody760_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 8#64)

def loopBody760_87 : HolLoopProg 64 :=
.mark loopBody760_86

def loopBody760_88 : HolLoopProg 64 :=
.seq loopBody760_87 loopBody760_55

def loopBody760_89 : HolLoopProg 64 :=
.mark loopBody760_88

def loopBody760_90 : HolLoopProg 64 :=
.seq loopBody760_85 loopBody760_89

def loopBody760_91 : HolLoopProg 64 :=
.mark loopBody760_90

def loopBody760_92 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody760_91 loopBody760_1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody760_93 : HolLoopProg 64 :=
.mark loopBody760_92

def loopBody760_94 : HolLoopProg 64 :=
.seq loopBody760_93 loopBody760_1

def loopBody760_95 : HolLoopProg 64 :=
.mark loopBody760_94

def loopBody760_96 : HolLoopProg 64 :=
.seq loopBody760_73 loopBody760_95

def loopBody760_97 : HolLoopProg 64 :=
.mark loopBody760_96

def loopBody760_98 : HolLoopProg 64 :=
.seq loopBody760_71 loopBody760_97

def loopBody760_99 : HolLoopProg 64 :=
.mark loopBody760_98

def loopBody760_100 : HolLoopProg 64 :=
.seq loopBody760_65 loopBody760_99

def loopBody760_101 : HolLoopProg 64 :=
.mark loopBody760_100

def loopBody760_102 : HolLoopProg 64 :=
.seq loopBody760_17 loopBody760_101

def loopBody760_103 : HolLoopProg 64 :=
.mark loopBody760_102

def loopBody760_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody760_105 : HolLoopProg 64 :=
.mark loopBody760_104

def loopBody760_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody760_107 : HolLoopProg 64 :=
.mark loopBody760_106

def loopBody760_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody760_109 : HolLoopProg 64 :=
.mark loopBody760_108

def loopBody760_110 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))) (some 820) ([7]) (some (7, loopBody760_109, loopBody760_1, (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))

def loopBody760_111 : HolLoopProg 64 :=
.mark loopBody760_110

def loopBody760_112 : HolLoopProg 64 :=
.seq loopBody760_111 loopBody760_1

def loopBody760_113 : HolLoopProg 64 :=
.mark loopBody760_112

def loopBody760_114 : HolLoopProg 64 :=
.seq loopBody760_107 loopBody760_113

def loopBody760_115 : HolLoopProg 64 :=
.mark loopBody760_114

def loopBody760_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 5)

def loopBody760_117 : HolLoopProg 64 :=
.mark loopBody760_116

def loopBody760_118 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 22500#64)

def loopBody760_119 : HolLoopProg 64 :=
.mark loopBody760_118

def loopBody760_120 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 11 11 9 10)

def loopBody760_121 : HolLoopProg 64 :=
.mark loopBody760_120

def loopBody760_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 11)

def loopBody760_123 : HolLoopProg 64 :=
.mark loopBody760_122

def loopBody760_124 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 6)

def loopBody760_125 : HolLoopProg 64 :=
.mark loopBody760_124

def loopBody760_126 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 14 14 12 13)

def loopBody760_127 : HolLoopProg 64 :=
.mark loopBody760_126

def loopBody760_128 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 14)

def loopBody760_129 : HolLoopProg 64 :=
.mark loopBody760_128

def loopBody760_130 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.const 1000#64)

def loopBody760_131 : HolLoopProg 64 :=
.mark loopBody760_130

def loopBody760_132 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody760_133 : HolLoopProg 64 :=
.mark loopBody760_132

def loopBody760_134 : HolLoopProg 64 :=
.call (some ([7, 8], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))) (some 94) ([15, 16]) (some (9, loopBody760_133, loopBody760_1, (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody760_135 : HolLoopProg 64 :=
.mark loopBody760_134

def loopBody760_136 : HolLoopProg 64 :=
.seq loopBody760_135 loopBody760_1

def loopBody760_137 : HolLoopProg 64 :=
.mark loopBody760_136

def loopBody760_138 : HolLoopProg 64 :=
.seq loopBody760_131 loopBody760_137

def loopBody760_139 : HolLoopProg 64 :=
.mark loopBody760_138

def loopBody760_140 : HolLoopProg 64 :=
.seq loopBody760_129 loopBody760_139

def loopBody760_141 : HolLoopProg 64 :=
.mark loopBody760_140

def loopBody760_142 : HolLoopProg 64 :=
.seq loopBody760_127 loopBody760_141

def loopBody760_143 : HolLoopProg 64 :=
.mark loopBody760_142

def loopBody760_144 : HolLoopProg 64 :=
.seq loopBody760_125 loopBody760_143

def loopBody760_145 : HolLoopProg 64 :=
.mark loopBody760_144

def loopBody760_146 : HolLoopProg 64 :=
.seq loopBody760_123 loopBody760_145

def loopBody760_147 : HolLoopProg 64 :=
.mark loopBody760_146

def loopBody760_148 : HolLoopProg 64 :=
.seq loopBody760_121 loopBody760_147

def loopBody760_149 : HolLoopProg 64 :=
.mark loopBody760_148

def loopBody760_150 : HolLoopProg 64 :=
.seq loopBody760_119 loopBody760_149

def loopBody760_151 : HolLoopProg 64 :=
.mark loopBody760_150

def loopBody760_152 : HolLoopProg 64 :=
.seq loopBody760_117 loopBody760_151

def loopBody760_153 : HolLoopProg 64 :=
.mark loopBody760_152

def loopBody760_154 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 7)

def loopBody760_155 : HolLoopProg 64 :=
.mark loopBody760_154

def loopBody760_156 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody760_157 : HolLoopProg 64 :=
.mark loopBody760_156

def loopBody760_158 : HolLoopProg 64 :=
.call (some ([9], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))) (some 470) ([10]) (some (10, loopBody760_157, loopBody760_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))

def loopBody760_159 : HolLoopProg 64 :=
.mark loopBody760_158

def loopBody760_160 : HolLoopProg 64 :=
.seq loopBody760_159 loopBody760_1

def loopBody760_161 : HolLoopProg 64 :=
.mark loopBody760_160

def loopBody760_162 : HolLoopProg 64 :=
.seq loopBody760_155 loopBody760_161

def loopBody760_163 : HolLoopProg 64 :=
.mark loopBody760_162

def loopBody760_164 : HolLoopProg 64 :=
.seq loopBody760_1 loopBody760_163

def loopBody760_165 : HolLoopProg 64 :=
.mark loopBody760_164

def loopBody760_166 : HolLoopProg 64 :=
.seq loopBody760_1 loopBody760_165

def loopBody760_167 : HolLoopProg 64 :=
.mark loopBody760_166

def loopBody760_168 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 256#64)

def loopBody760_169 : HolLoopProg 64 :=
.mark loopBody760_168

def loopBody760_170 : HolLoopProg 64 :=
.call (some ([9], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))) (some 68) ([10]) (some (10, loopBody760_157, loopBody760_1, (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))))

def loopBody760_171 : HolLoopProg 64 :=
.mark loopBody760_170

def loopBody760_172 : HolLoopProg 64 :=
.seq loopBody760_171 loopBody760_1

def loopBody760_173 : HolLoopProg 64 :=
.mark loopBody760_172

def loopBody760_174 : HolLoopProg 64 :=
.seq loopBody760_169 loopBody760_173

def loopBody760_175 : HolLoopProg 64 :=
.mark loopBody760_174

def loopBody760_176 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 88#64]))

def loopBody760_177 : HolLoopProg 64 :=
.mark loopBody760_176

def loopBody760_178 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 5)

def loopBody760_179 : HolLoopProg 64 :=
.mark loopBody760_178

def loopBody760_180 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 9)

def loopBody760_181 : HolLoopProg 64 :=
.mark loopBody760_180

def loopBody760_182 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 11

def loopBody760_183 : HolLoopProg 64 :=
.mark loopBody760_182

def loopBody760_184 : HolLoopProg 64 :=
.call (some
  ([10],
    Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))) (some 813) ([11, 12, 13]) (some (11, loopBody760_183, loopBody760_1, (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))

def loopBody760_185 : HolLoopProg 64 :=
.mark loopBody760_184

def loopBody760_186 : HolLoopProg 64 :=
.seq loopBody760_185 loopBody760_1

def loopBody760_187 : HolLoopProg 64 :=
.mark loopBody760_186

def loopBody760_188 : HolLoopProg 64 :=
.seq loopBody760_181 loopBody760_187

def loopBody760_189 : HolLoopProg 64 :=
.mark loopBody760_188

def loopBody760_190 : HolLoopProg 64 :=
.seq loopBody760_179 loopBody760_189

def loopBody760_191 : HolLoopProg 64 :=
.mark loopBody760_190

def loopBody760_192 : HolLoopProg 64 :=
.seq loopBody760_177 loopBody760_191

def loopBody760_193 : HolLoopProg 64 :=
.mark loopBody760_192

def loopBody760_194 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 10)

def loopBody760_195 : HolLoopProg 64 :=
.mark loopBody760_194

def loopBody760_196 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 0#64)

def loopBody760_197 : HolLoopProg 64 :=
.mark loopBody760_196

def loopBody760_198 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 1#64)

def loopBody760_199 : HolLoopProg 64 :=
.mark loopBody760_198

def loopBody760_200 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 0#64)

def loopBody760_201 : HolLoopProg 64 :=
.mark loopBody760_200

def loopBody760_202 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.RegImm.reg 13) loopBody760_199 loopBody760_201 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))

def loopBody760_203 : HolLoopProg 64 :=
.mark loopBody760_202

def loopBody760_204 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 12)

def loopBody760_205 : HolLoopProg 64 :=
.mark loopBody760_204

def loopBody760_206 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 10#64)

def loopBody760_207 : HolLoopProg 64 :=
.mark loopBody760_206

def loopBody760_208 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 11)

def loopBody760_209 : HolLoopProg 64 :=
.mark loopBody760_208

def loopBody760_210 : HolLoopProg 64 :=
.seq loopBody760_209 loopBody760_1

def loopBody760_211 : HolLoopProg 64 :=
.mark loopBody760_210

def loopBody760_212 : HolLoopProg 64 :=
.seq loopBody760_211 loopBody760_1

def loopBody760_213 : HolLoopProg 64 :=
.mark loopBody760_212

def loopBody760_214 : HolLoopProg 64 :=
.seq loopBody760_207 loopBody760_213

def loopBody760_215 : HolLoopProg 64 :=
.mark loopBody760_214

def loopBody760_216 : HolLoopProg 64 :=
.seq loopBody760_1 loopBody760_215

def loopBody760_217 : HolLoopProg 64 :=
.mark loopBody760_216

def loopBody760_218 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 8#64)

def loopBody760_219 : HolLoopProg 64 :=
.mark loopBody760_218

def loopBody760_220 : HolLoopProg 64 :=
.seq loopBody760_219 loopBody760_183

def loopBody760_221 : HolLoopProg 64 :=
.mark loopBody760_220

def loopBody760_222 : HolLoopProg 64 :=
.seq loopBody760_217 loopBody760_221

def loopBody760_223 : HolLoopProg 64 :=
.mark loopBody760_222

def loopBody760_224 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.RegImm.imm 0#64) loopBody760_223 loopBody760_1 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))

def loopBody760_225 : HolLoopProg 64 :=
.mark loopBody760_224

def loopBody760_226 : HolLoopProg 64 :=
.seq loopBody760_225 loopBody760_1

def loopBody760_227 : HolLoopProg 64 :=
.mark loopBody760_226

def loopBody760_228 : HolLoopProg 64 :=
.seq loopBody760_205 loopBody760_227

def loopBody760_229 : HolLoopProg 64 :=
.mark loopBody760_228

def loopBody760_230 : HolLoopProg 64 :=
.seq loopBody760_203 loopBody760_229

def loopBody760_231 : HolLoopProg 64 :=
.mark loopBody760_230

def loopBody760_232 : HolLoopProg 64 :=
.seq loopBody760_197 loopBody760_231

def loopBody760_233 : HolLoopProg 64 :=
.mark loopBody760_232

def loopBody760_234 : HolLoopProg 64 :=
.seq loopBody760_195 loopBody760_233

def loopBody760_235 : HolLoopProg 64 :=
.mark loopBody760_234

def loopBody760_236 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 120#64])

def loopBody760_237 : HolLoopProg 64 :=
.mark loopBody760_236

def loopBody760_238 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 9)

def loopBody760_239 : HolLoopProg 64 :=
.mark loopBody760_238

def loopBody760_240 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 12)

def loopBody760_241 : HolLoopProg 64 :=
.mark loopBody760_240

def loopBody760_242 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 11) 13

def loopBody760_243 : HolLoopProg 64 :=
.mark loopBody760_242

def loopBody760_244 : HolLoopProg 64 :=
.seq loopBody760_243 loopBody760_1

def loopBody760_245 : HolLoopProg 64 :=
.mark loopBody760_244

def loopBody760_246 : HolLoopProg 64 :=
.seq loopBody760_241 loopBody760_245

def loopBody760_247 : HolLoopProg 64 :=
.mark loopBody760_246

def loopBody760_248 : HolLoopProg 64 :=
.seq loopBody760_247 loopBody760_1

def loopBody760_249 : HolLoopProg 64 :=
.mark loopBody760_248

def loopBody760_250 : HolLoopProg 64 :=
.seq loopBody760_239 loopBody760_249

def loopBody760_251 : HolLoopProg 64 :=
.mark loopBody760_250

def loopBody760_252 : HolLoopProg 64 :=
.seq loopBody760_1 loopBody760_251

def loopBody760_253 : HolLoopProg 64 :=
.mark loopBody760_252

def loopBody760_254 : HolLoopProg 64 :=
.seq loopBody760_237 loopBody760_253

def loopBody760_255 : HolLoopProg 64 :=
.mark loopBody760_254

def loopBody760_256 : HolLoopProg 64 :=
.seq loopBody760_1 loopBody760_255

def loopBody760_257 : HolLoopProg 64 :=
.mark loopBody760_256

def loopBody760_258 : HolLoopProg 64 :=
.seq loopBody760_235 loopBody760_257

def loopBody760_259 : HolLoopProg 64 :=
.mark loopBody760_258

def loopBody760_260 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 128#64])

def loopBody760_261 : HolLoopProg 64 :=
.mark loopBody760_260

def loopBody760_262 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 256#64)

def loopBody760_263 : HolLoopProg 64 :=
.mark loopBody760_262

def loopBody760_264 : HolLoopProg 64 :=
.seq loopBody760_263 loopBody760_249

def loopBody760_265 : HolLoopProg 64 :=
.mark loopBody760_264

def loopBody760_266 : HolLoopProg 64 :=
.seq loopBody760_1 loopBody760_265

def loopBody760_267 : HolLoopProg 64 :=
.mark loopBody760_266

def loopBody760_268 : HolLoopProg 64 :=
.seq loopBody760_261 loopBody760_267

def loopBody760_269 : HolLoopProg 64 :=
.mark loopBody760_268

def loopBody760_270 : HolLoopProg 64 :=
.seq loopBody760_1 loopBody760_269

def loopBody760_271 : HolLoopProg 64 :=
.mark loopBody760_270

def loopBody760_272 : HolLoopProg 64 :=
.seq loopBody760_259 loopBody760_271

def loopBody760_273 : HolLoopProg 64 :=
.mark loopBody760_272

def loopBody760_274 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 0#64)

def loopBody760_275 : HolLoopProg 64 :=
.mark loopBody760_274

def loopBody760_276 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [11]

def loopBody760_277 : HolLoopProg 64 :=
.mark loopBody760_276

def loopBody760_278 : HolLoopProg 64 :=
.seq loopBody760_277 loopBody760_1

def loopBody760_279 : HolLoopProg 64 :=
.mark loopBody760_278

def loopBody760_280 : HolLoopProg 64 :=
.seq loopBody760_275 loopBody760_279

def loopBody760_281 : HolLoopProg 64 :=
.mark loopBody760_280

def loopBody760_282 : HolLoopProg 64 :=
.seq loopBody760_273 loopBody760_281

def loopBody760_283 : HolLoopProg 64 :=
.mark loopBody760_282

def loopBody760_284 : HolLoopProg 64 :=
.seq loopBody760_193 loopBody760_283

def loopBody760_285 : HolLoopProg 64 :=
.mark loopBody760_284

def loopBody760_286 : HolLoopProg 64 :=
.seq loopBody760_1 loopBody760_285

def loopBody760_287 : HolLoopProg 64 :=
.mark loopBody760_286

def loopBody760_288 : HolLoopProg 64 :=
.seq loopBody760_1 loopBody760_287

def loopBody760_289 : HolLoopProg 64 :=
.mark loopBody760_288

def loopBody760_290 : HolLoopProg 64 :=
.seq loopBody760_175 loopBody760_289

def loopBody760_291 : HolLoopProg 64 :=
.mark loopBody760_290

def loopBody760_292 : HolLoopProg 64 :=
.seq loopBody760_1 loopBody760_291

def loopBody760_293 : HolLoopProg 64 :=
.mark loopBody760_292

def loopBody760_294 : HolLoopProg 64 :=
.seq loopBody760_1 loopBody760_293

def loopBody760_295 : HolLoopProg 64 :=
.mark loopBody760_294

def loopBody760_296 : HolLoopProg 64 :=
.seq loopBody760_167 loopBody760_295

def loopBody760_297 : HolLoopProg 64 :=
.mark loopBody760_296

def loopBody760_298 : HolLoopProg 64 :=
.seq loopBody760_153 loopBody760_297

def loopBody760_299 : HolLoopProg 64 :=
.mark loopBody760_298

def loopBody760_300 : HolLoopProg 64 :=
.seq loopBody760_1 loopBody760_299

def loopBody760_301 : HolLoopProg 64 :=
.mark loopBody760_300

def loopBody760_302 : HolLoopProg 64 :=
.seq loopBody760_1 loopBody760_301

def loopBody760_303 : HolLoopProg 64 :=
.mark loopBody760_302

def loopBody760_304 : HolLoopProg 64 :=
.seq loopBody760_1 loopBody760_303

def loopBody760_305 : HolLoopProg 64 :=
.mark loopBody760_304

def loopBody760_306 : HolLoopProg 64 :=
.seq loopBody760_1 loopBody760_305

def loopBody760_307 : HolLoopProg 64 :=
.mark loopBody760_306

def loopBody760_308 : HolLoopProg 64 :=
.seq loopBody760_115 loopBody760_307

def loopBody760_309 : HolLoopProg 64 :=
.mark loopBody760_308

def loopBody760_310 : HolLoopProg 64 :=
.seq loopBody760_1 loopBody760_309

def loopBody760_311 : HolLoopProg 64 :=
.mark loopBody760_310

def loopBody760_312 : HolLoopProg 64 :=
.seq loopBody760_1 loopBody760_311

def loopBody760_313 : HolLoopProg 64 :=
.mark loopBody760_312

def loopBody760_314 : HolLoopProg 64 :=
.seq loopBody760_105 loopBody760_313

def loopBody760_315 : HolLoopProg 64 :=
.mark loopBody760_314

def loopBody760_316 : HolLoopProg 64 :=
.seq loopBody760_1 loopBody760_315

def loopBody760_317 : HolLoopProg 64 :=
.mark loopBody760_316

def loopBody760_318 : HolLoopProg 64 :=
.seq loopBody760_103 loopBody760_317

def loopBody760_319 : HolLoopProg 64 :=
.mark loopBody760_318

def loopBody760_320 : HolLoopProg 64 :=
.seq loopBody760_63 loopBody760_319

def loopBody760_321 : HolLoopProg 64 :=
.mark loopBody760_320

def loopBody760_322 : HolLoopProg 64 :=
.seq loopBody760_1 loopBody760_321

def loopBody760_323 : HolLoopProg 64 :=
.mark loopBody760_322

def loopBody760_324 : HolLoopProg 64 :=
.seq loopBody760_1 loopBody760_323

def loopBody760_325 : HolLoopProg 64 :=
.mark loopBody760_324

def loopBody760_326 : HolLoopProg 64 :=
.seq loopBody760_1 loopBody760_325

def loopBody760_327 : HolLoopProg 64 :=
.mark loopBody760_326

def loopBody760_328 : HolLoopProg 64 :=
.seq loopBody760_1 loopBody760_327

def loopBody760_329 : HolLoopProg 64 :=
.mark loopBody760_328

def loopBody760_330 : HolLoopProg 64 :=
.seq loopBody760_49 loopBody760_329

def loopBody760_331 : HolLoopProg 64 :=
.mark loopBody760_330

def loopBody760_332 : HolLoopProg 64 :=
.seq loopBody760_5 loopBody760_331

def loopBody760_333 : HolLoopProg 64 :=
.mark loopBody760_332

def loopBody760_334 : HolLoopProg 64 :=
.seq loopBody760_1 loopBody760_333

def loopBody760_335 : HolLoopProg 64 :=
.mark loopBody760_334

def loopBody760_336 : HolLoopProg 64 :=
.seq loopBody760_3 loopBody760_335

def loopBody760_337 : HolLoopProg 64 :=
.mark loopBody760_336

def loopBody760_338 : HolLoopProg 64 :=
.seq loopBody760_1 loopBody760_337

def loopBody760_339 : HolLoopProg 64 :=
.mark loopBody760_338

def output760 : Nat × List Nat × HolLoopProg 64 :=
  (824, [], loopBody760_339)
end InitECandidate.Proofs.FrontendStages.Loop
