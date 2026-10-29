import InitECandidate.Proofs.FrontendStages.Loop.Translate14
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody30_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody30_1 : HolLoopProg 64 :=
.mark loopBody30_0

def loopBody30_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody30_3 : HolLoopProg 64 :=
.mark loopBody30_2

def loopBody30_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody30_5 : HolLoopProg 64 :=
.mark loopBody30_4

def loopBody30_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody30_7 : HolLoopProg 64 :=
.mark loopBody30_6

def loopBody30_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.RegImm.reg 4) loopBody30_5 loopBody30_7 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody30_9 : HolLoopProg 64 :=
.mark loopBody30_8

def loopBody30_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody30_11 : HolLoopProg 64 :=
.mark loopBody30_10

def loopBody30_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody30_13 : HolLoopProg 64 :=
.mark loopBody30_12

def loopBody30_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 2#64)

def loopBody30_15 : HolLoopProg 64 :=
.mark loopBody30_14

def loopBody30_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody30_17 : HolLoopProg 64 :=
.mark loopBody30_16

def loopBody30_18 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 66) ([3]) (some (3, loopBody30_17, loopBody30_13, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody30_19 : HolLoopProg 64 :=
.mark loopBody30_18

def loopBody30_20 : HolLoopProg 64 :=
.seq loopBody30_19 loopBody30_13

def loopBody30_21 : HolLoopProg 64 :=
.mark loopBody30_20

def loopBody30_22 : HolLoopProg 64 :=
.seq loopBody30_15 loopBody30_21

def loopBody30_23 : HolLoopProg 64 :=
.mark loopBody30_22

def loopBody30_24 : HolLoopProg 64 :=
.seq loopBody30_13 loopBody30_23

def loopBody30_25 : HolLoopProg 64 :=
.mark loopBody30_24

def loopBody30_26 : HolLoopProg 64 :=
.seq loopBody30_13 loopBody30_25

def loopBody30_27 : HolLoopProg 64 :=
.mark loopBody30_26

def loopBody30_28 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody30_27 loopBody30_13 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody30_29 : HolLoopProg 64 :=
.mark loopBody30_28

def loopBody30_30 : HolLoopProg 64 :=
.seq loopBody30_29 loopBody30_13

def loopBody30_31 : HolLoopProg 64 :=
.mark loopBody30_30

def loopBody30_32 : HolLoopProg 64 :=
.seq loopBody30_11 loopBody30_31

def loopBody30_33 : HolLoopProg 64 :=
.mark loopBody30_32

def loopBody30_34 : HolLoopProg 64 :=
.seq loopBody30_9 loopBody30_33

def loopBody30_35 : HolLoopProg 64 :=
.mark loopBody30_34

def loopBody30_36 : HolLoopProg 64 :=
.seq loopBody30_3 loopBody30_35

def loopBody30_37 : HolLoopProg 64 :=
.mark loopBody30_36

def loopBody30_38 : HolLoopProg 64 :=
.seq loopBody30_1 loopBody30_37

def loopBody30_39 : HolLoopProg 64 :=
.mark loopBody30_38

def loopBody30_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody30_41 : HolLoopProg 64 :=
.mark loopBody30_40

def loopBody30_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody30_43 : HolLoopProg 64 :=
.mark loopBody30_42

def loopBody30_44 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.RegImm.reg 4) loopBody30_5 loopBody30_7 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody30_45 : HolLoopProg 64 :=
.mark loopBody30_44

def loopBody30_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody30_47 : HolLoopProg 64 :=
.mark loopBody30_46

def loopBody30_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2, 3]

def loopBody30_49 : HolLoopProg 64 :=
.mark loopBody30_48

def loopBody30_50 : HolLoopProg 64 :=
.seq loopBody30_49 loopBody30_13

def loopBody30_51 : HolLoopProg 64 :=
.mark loopBody30_50

def loopBody30_52 : HolLoopProg 64 :=
.seq loopBody30_41 loopBody30_51

def loopBody30_53 : HolLoopProg 64 :=
.mark loopBody30_52

def loopBody30_54 : HolLoopProg 64 :=
.seq loopBody30_47 loopBody30_53

def loopBody30_55 : HolLoopProg 64 :=
.mark loopBody30_54

def loopBody30_56 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody30_55 loopBody30_13 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody30_57 : HolLoopProg 64 :=
.mark loopBody30_56

def loopBody30_58 : HolLoopProg 64 :=
.seq loopBody30_57 loopBody30_13

def loopBody30_59 : HolLoopProg 64 :=
.mark loopBody30_58

def loopBody30_60 : HolLoopProg 64 :=
.seq loopBody30_11 loopBody30_59

def loopBody30_61 : HolLoopProg 64 :=
.mark loopBody30_60

def loopBody30_62 : HolLoopProg 64 :=
.seq loopBody30_45 loopBody30_61

def loopBody30_63 : HolLoopProg 64 :=
.mark loopBody30_62

def loopBody30_64 : HolLoopProg 64 :=
.seq loopBody30_43 loopBody30_63

def loopBody30_65 : HolLoopProg 64 :=
.mark loopBody30_64

def loopBody30_66 : HolLoopProg 64 :=
.seq loopBody30_41 loopBody30_65

def loopBody30_67 : HolLoopProg 64 :=
.mark loopBody30_66

def loopBody30_68 : HolLoopProg 64 :=
.seq loopBody30_39 loopBody30_67

def loopBody30_69 : HolLoopProg 64 :=
.mark loopBody30_68

def loopBody30_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 64#64)

def loopBody30_71 : HolLoopProg 64 :=
.mark loopBody30_70

def loopBody30_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody30_73 : HolLoopProg 64 :=
.mark loopBody30_72

def loopBody30_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody30_75 : HolLoopProg 64 :=
.mark loopBody30_74

def loopBody30_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody30_77 : HolLoopProg 64 :=
.mark loopBody30_76

def loopBody30_78 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.less) 6 (Flapjack.RegImm.reg 7) loopBody30_77 loopBody30_73 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody30_79 : HolLoopProg 64 :=
.mark loopBody30_78

def loopBody30_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody30_81 : HolLoopProg 64 :=
.mark loopBody30_80

def loopBody30_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 1#64])

def loopBody30_83 : HolLoopProg 64 :=
.mark loopBody30_82

def loopBody30_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 5)

def loopBody30_85 : HolLoopProg 64 :=
.mark loopBody30_84

def loopBody30_86 : HolLoopProg 64 :=
.seq loopBody30_85 loopBody30_13

def loopBody30_87 : HolLoopProg 64 :=
.mark loopBody30_86

def loopBody30_88 : HolLoopProg 64 :=
.seq loopBody30_87 loopBody30_13

def loopBody30_89 : HolLoopProg 64 :=
.mark loopBody30_88

def loopBody30_90 : HolLoopProg 64 :=
.seq loopBody30_83 loopBody30_89

def loopBody30_91 : HolLoopProg 64 :=
.mark loopBody30_90

def loopBody30_92 : HolLoopProg 64 :=
.seq loopBody30_13 loopBody30_91

def loopBody30_93 : HolLoopProg 64 :=
.mark loopBody30_92

def loopBody30_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 1#64),
      Flapjack.HolLoopExp.op Flapjack.BinOp.and
        [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 0) (Flapjack.HolLoopExp.var 4),
          Flapjack.HolLoopExp.const 1#64]])

def loopBody30_95 : HolLoopProg 64 :=
.mark loopBody30_94

def loopBody30_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 5)

def loopBody30_97 : HolLoopProg 64 :=
.mark loopBody30_96

def loopBody30_98 : HolLoopProg 64 :=
.seq loopBody30_97 loopBody30_13

def loopBody30_99 : HolLoopProg 64 :=
.mark loopBody30_98

def loopBody30_100 : HolLoopProg 64 :=
.seq loopBody30_99 loopBody30_13

def loopBody30_101 : HolLoopProg 64 :=
.mark loopBody30_100

def loopBody30_102 : HolLoopProg 64 :=
.seq loopBody30_95 loopBody30_101

def loopBody30_103 : HolLoopProg 64 :=
.mark loopBody30_102

def loopBody30_104 : HolLoopProg 64 :=
.seq loopBody30_13 loopBody30_103

def loopBody30_105 : HolLoopProg 64 :=
.mark loopBody30_104

def loopBody30_106 : HolLoopProg 64 :=
.seq loopBody30_93 loopBody30_105

def loopBody30_107 : HolLoopProg 64 :=
.mark loopBody30_106

def loopBody30_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody30_109 : HolLoopProg 64 :=
.mark loopBody30_108

def loopBody30_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody30_111 : HolLoopProg 64 :=
.mark loopBody30_110

def loopBody30_112 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.RegImm.reg 7) loopBody30_77 loopBody30_73 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody30_113 : HolLoopProg 64 :=
.mark loopBody30_112

def loopBody30_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.var 1])

def loopBody30_115 : HolLoopProg 64 :=
.mark loopBody30_114

def loopBody30_116 : HolLoopProg 64 :=
.seq loopBody30_115 loopBody30_101

def loopBody30_117 : HolLoopProg 64 :=
.mark loopBody30_116

def loopBody30_118 : HolLoopProg 64 :=
.seq loopBody30_13 loopBody30_117

def loopBody30_119 : HolLoopProg 64 :=
.mark loopBody30_118

def loopBody30_120 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.var 2,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.const 1#64) (Flapjack.HolLoopExp.var 4)])

def loopBody30_121 : HolLoopProg 64 :=
.mark loopBody30_120

def loopBody30_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 5)

def loopBody30_123 : HolLoopProg 64 :=
.mark loopBody30_122

def loopBody30_124 : HolLoopProg 64 :=
.seq loopBody30_123 loopBody30_13

def loopBody30_125 : HolLoopProg 64 :=
.mark loopBody30_124

def loopBody30_126 : HolLoopProg 64 :=
.seq loopBody30_125 loopBody30_13

def loopBody30_127 : HolLoopProg 64 :=
.mark loopBody30_126

def loopBody30_128 : HolLoopProg 64 :=
.seq loopBody30_121 loopBody30_127

def loopBody30_129 : HolLoopProg 64 :=
.mark loopBody30_128

def loopBody30_130 : HolLoopProg 64 :=
.seq loopBody30_13 loopBody30_129

def loopBody30_131 : HolLoopProg 64 :=
.mark loopBody30_130

def loopBody30_132 : HolLoopProg 64 :=
.seq loopBody30_119 loopBody30_131

def loopBody30_133 : HolLoopProg 64 :=
.mark loopBody30_132

def loopBody30_134 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody30_133 loopBody30_13 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody30_135 : HolLoopProg 64 :=
.mark loopBody30_134

def loopBody30_136 : HolLoopProg 64 :=
.seq loopBody30_135 loopBody30_13

def loopBody30_137 : HolLoopProg 64 :=
.mark loopBody30_136

def loopBody30_138 : HolLoopProg 64 :=
.seq loopBody30_81 loopBody30_137

def loopBody30_139 : HolLoopProg 64 :=
.mark loopBody30_138

def loopBody30_140 : HolLoopProg 64 :=
.seq loopBody30_113 loopBody30_139

def loopBody30_141 : HolLoopProg 64 :=
.mark loopBody30_140

def loopBody30_142 : HolLoopProg 64 :=
.seq loopBody30_111 loopBody30_141

def loopBody30_143 : HolLoopProg 64 :=
.mark loopBody30_142

def loopBody30_144 : HolLoopProg 64 :=
.seq loopBody30_109 loopBody30_143

def loopBody30_145 : HolLoopProg 64 :=
.mark loopBody30_144

def loopBody30_146 : HolLoopProg 64 :=
.seq loopBody30_107 loopBody30_145

def loopBody30_147 : HolLoopProg 64 :=
.mark loopBody30_146

def loopBody30_148 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody30_149 : HolLoopProg 64 :=
.mark loopBody30_148

def loopBody30_150 : HolLoopProg 64 :=
.seq loopBody30_147 loopBody30_149

def loopBody30_151 : HolLoopProg 64 :=
.mark loopBody30_150

def loopBody30_152 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody30_153 : HolLoopProg 64 :=
.mark loopBody30_152

def loopBody30_154 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody30_151 loopBody30_153 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody30_155 : HolLoopProg 64 :=
.mark loopBody30_154

def loopBody30_156 : HolLoopProg 64 :=
.seq loopBody30_155 loopBody30_13

def loopBody30_157 : HolLoopProg 64 :=
.mark loopBody30_156

def loopBody30_158 : HolLoopProg 64 :=
.seq loopBody30_81 loopBody30_157

def loopBody30_159 : HolLoopProg 64 :=
.mark loopBody30_158

def loopBody30_160 : HolLoopProg 64 :=
.seq loopBody30_79 loopBody30_159

def loopBody30_161 : HolLoopProg 64 :=
.mark loopBody30_160

def loopBody30_162 : HolLoopProg 64 :=
.seq loopBody30_75 loopBody30_161

def loopBody30_163 : HolLoopProg 64 :=
.mark loopBody30_162

def loopBody30_164 : HolLoopProg 64 :=
.seq loopBody30_73 loopBody30_163

def loopBody30_165 : HolLoopProg 64 :=
.mark loopBody30_164

def loopBody30_166 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody30_165 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody30_167 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody30_168 : HolLoopProg 64 :=
.mark loopBody30_167

def loopBody30_169 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5, 6]

def loopBody30_170 : HolLoopProg 64 :=
.mark loopBody30_169

def loopBody30_171 : HolLoopProg 64 :=
.seq loopBody30_170 loopBody30_13

def loopBody30_172 : HolLoopProg 64 :=
.mark loopBody30_171

def loopBody30_173 : HolLoopProg 64 :=
.seq loopBody30_109 loopBody30_172

def loopBody30_174 : HolLoopProg 64 :=
.mark loopBody30_173

def loopBody30_175 : HolLoopProg 64 :=
.seq loopBody30_168 loopBody30_174

def loopBody30_176 : HolLoopProg 64 :=
.mark loopBody30_175

def loopBody30_177 : HolLoopProg 64 :=
.seq loopBody30_166 loopBody30_176

def loopBody30_178 : HolLoopProg 64 :=
.seq loopBody30_71 loopBody30_177

def loopBody30_179 : HolLoopProg 64 :=
.seq loopBody30_13 loopBody30_178

def loopBody30_180 : HolLoopProg 64 :=
.seq loopBody30_7 loopBody30_179

def loopBody30_181 : HolLoopProg 64 :=
.seq loopBody30_13 loopBody30_180

def loopBody30_182 : HolLoopProg 64 :=
.seq loopBody30_47 loopBody30_181

def loopBody30_183 : HolLoopProg 64 :=
.seq loopBody30_13 loopBody30_182

def loopBody30_184 : HolLoopProg 64 :=
.seq loopBody30_69 loopBody30_183

def output30 : Nat × List Nat × HolLoopProg 64 :=
  (94, [0, 1], loopBody30_184)
end InitECandidate.Proofs.FrontendStages.Loop
