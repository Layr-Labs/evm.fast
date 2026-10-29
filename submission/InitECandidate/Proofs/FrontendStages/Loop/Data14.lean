import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody14_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody14_1 : HolLoopProg 64 :=
.mark loopBody14_0

def loopBody14_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody14_3 : HolLoopProg 64 :=
.mark loopBody14_2

def loopBody14_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 7#64])

def loopBody14_5 : HolLoopProg 64 :=
.mark loopBody14_4

def loopBody14_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody14_7 : HolLoopProg 64 :=
.mark loopBody14_6

def loopBody14_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody14_9 : HolLoopProg 64 :=
.mark loopBody14_8

def loopBody14_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody14_11 : HolLoopProg 64 :=
.mark loopBody14_10

def loopBody14_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.RegImm.reg 5) loopBody14_9 loopBody14_11 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.ls PUnit.unit))

def loopBody14_13 : HolLoopProg 64 :=
.mark loopBody14_12

def loopBody14_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody14_15 : HolLoopProg 64 :=
.mark loopBody14_14

def loopBody14_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody14_17 : HolLoopProg 64 :=
.mark loopBody14_16

def loopBody14_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 32#64])

def loopBody14_19 : HolLoopProg 64 :=
.mark loopBody14_18

def loopBody14_20 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.RegImm.reg 5) loopBody14_9 loopBody14_11 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.ls PUnit.unit))

def loopBody14_21 : HolLoopProg 64 :=
.mark loopBody14_20

def loopBody14_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 2])

def loopBody14_23 : HolLoopProg 64 :=
.mark loopBody14_22

def loopBody14_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 4)

def loopBody14_25 : HolLoopProg 64 :=
.mark loopBody14_24

def loopBody14_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 3) 5

def loopBody14_27 : HolLoopProg 64 :=
.mark loopBody14_26

def loopBody14_28 : HolLoopProg 64 :=
.seq loopBody14_27 loopBody14_1

def loopBody14_29 : HolLoopProg 64 :=
.mark loopBody14_28

def loopBody14_30 : HolLoopProg 64 :=
.seq loopBody14_25 loopBody14_29

def loopBody14_31 : HolLoopProg 64 :=
.mark loopBody14_30

def loopBody14_32 : HolLoopProg 64 :=
.seq loopBody14_31 loopBody14_1

def loopBody14_33 : HolLoopProg 64 :=
.mark loopBody14_32

def loopBody14_34 : HolLoopProg 64 :=
.seq loopBody14_11 loopBody14_33

def loopBody14_35 : HolLoopProg 64 :=
.mark loopBody14_34

def loopBody14_36 : HolLoopProg 64 :=
.seq loopBody14_1 loopBody14_35

def loopBody14_37 : HolLoopProg 64 :=
.mark loopBody14_36

def loopBody14_38 : HolLoopProg 64 :=
.seq loopBody14_23 loopBody14_37

def loopBody14_39 : HolLoopProg 64 :=
.mark loopBody14_38

def loopBody14_40 : HolLoopProg 64 :=
.seq loopBody14_1 loopBody14_39

def loopBody14_41 : HolLoopProg 64 :=
.mark loopBody14_40

def loopBody14_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 8#64])

def loopBody14_43 : HolLoopProg 64 :=
.mark loopBody14_42

def loopBody14_44 : HolLoopProg 64 :=
.seq loopBody14_43 loopBody14_37

def loopBody14_45 : HolLoopProg 64 :=
.mark loopBody14_44

def loopBody14_46 : HolLoopProg 64 :=
.seq loopBody14_1 loopBody14_45

def loopBody14_47 : HolLoopProg 64 :=
.mark loopBody14_46

def loopBody14_48 : HolLoopProg 64 :=
.seq loopBody14_41 loopBody14_47

def loopBody14_49 : HolLoopProg 64 :=
.mark loopBody14_48

def loopBody14_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 16#64])

def loopBody14_51 : HolLoopProg 64 :=
.mark loopBody14_50

def loopBody14_52 : HolLoopProg 64 :=
.seq loopBody14_51 loopBody14_37

def loopBody14_53 : HolLoopProg 64 :=
.mark loopBody14_52

def loopBody14_54 : HolLoopProg 64 :=
.seq loopBody14_1 loopBody14_53

def loopBody14_55 : HolLoopProg 64 :=
.mark loopBody14_54

def loopBody14_56 : HolLoopProg 64 :=
.seq loopBody14_49 loopBody14_55

def loopBody14_57 : HolLoopProg 64 :=
.mark loopBody14_56

def loopBody14_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 24#64])

def loopBody14_59 : HolLoopProg 64 :=
.mark loopBody14_58

def loopBody14_60 : HolLoopProg 64 :=
.seq loopBody14_59 loopBody14_37

def loopBody14_61 : HolLoopProg 64 :=
.mark loopBody14_60

def loopBody14_62 : HolLoopProg 64 :=
.seq loopBody14_1 loopBody14_61

def loopBody14_63 : HolLoopProg 64 :=
.mark loopBody14_62

def loopBody14_64 : HolLoopProg 64 :=
.seq loopBody14_57 loopBody14_63

def loopBody14_65 : HolLoopProg 64 :=
.mark loopBody14_64

def loopBody14_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 32#64])

def loopBody14_67 : HolLoopProg 64 :=
.mark loopBody14_66

def loopBody14_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 3)

def loopBody14_69 : HolLoopProg 64 :=
.mark loopBody14_68

def loopBody14_70 : HolLoopProg 64 :=
.seq loopBody14_69 loopBody14_1

def loopBody14_71 : HolLoopProg 64 :=
.mark loopBody14_70

def loopBody14_72 : HolLoopProg 64 :=
.seq loopBody14_71 loopBody14_1

def loopBody14_73 : HolLoopProg 64 :=
.mark loopBody14_72

def loopBody14_74 : HolLoopProg 64 :=
.seq loopBody14_67 loopBody14_73

def loopBody14_75 : HolLoopProg 64 :=
.mark loopBody14_74

def loopBody14_76 : HolLoopProg 64 :=
.seq loopBody14_1 loopBody14_75

def loopBody14_77 : HolLoopProg 64 :=
.mark loopBody14_76

def loopBody14_78 : HolLoopProg 64 :=
.seq loopBody14_65 loopBody14_77

def loopBody14_79 : HolLoopProg 64 :=
.mark loopBody14_78

def loopBody14_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody14_81 : HolLoopProg 64 :=
.mark loopBody14_80

def loopBody14_82 : HolLoopProg 64 :=
.seq loopBody14_79 loopBody14_81

def loopBody14_83 : HolLoopProg 64 :=
.mark loopBody14_82

def loopBody14_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody14_85 : HolLoopProg 64 :=
.mark loopBody14_84

def loopBody14_86 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody14_83 loopBody14_85 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody14_87 : HolLoopProg 64 :=
.mark loopBody14_86

def loopBody14_88 : HolLoopProg 64 :=
.seq loopBody14_87 loopBody14_1

def loopBody14_89 : HolLoopProg 64 :=
.mark loopBody14_88

def loopBody14_90 : HolLoopProg 64 :=
.seq loopBody14_15 loopBody14_89

def loopBody14_91 : HolLoopProg 64 :=
.mark loopBody14_90

def loopBody14_92 : HolLoopProg 64 :=
.seq loopBody14_21 loopBody14_91

def loopBody14_93 : HolLoopProg 64 :=
.mark loopBody14_92

def loopBody14_94 : HolLoopProg 64 :=
.seq loopBody14_19 loopBody14_93

def loopBody14_95 : HolLoopProg 64 :=
.mark loopBody14_94

def loopBody14_96 : HolLoopProg 64 :=
.seq loopBody14_17 loopBody14_95

def loopBody14_97 : HolLoopProg 64 :=
.mark loopBody14_96

def loopBody14_98 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) loopBody14_97 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody14_99 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 8#64])

def loopBody14_100 : HolLoopProg 64 :=
.mark loopBody14_99

def loopBody14_101 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 8#64])

def loopBody14_102 : HolLoopProg 64 :=
.mark loopBody14_101

def loopBody14_103 : HolLoopProg 64 :=
.seq loopBody14_102 loopBody14_73

def loopBody14_104 : HolLoopProg 64 :=
.mark loopBody14_103

def loopBody14_105 : HolLoopProg 64 :=
.seq loopBody14_1 loopBody14_104

def loopBody14_106 : HolLoopProg 64 :=
.mark loopBody14_105

def loopBody14_107 : HolLoopProg 64 :=
.seq loopBody14_41 loopBody14_106

def loopBody14_108 : HolLoopProg 64 :=
.mark loopBody14_107

def loopBody14_109 : HolLoopProg 64 :=
.seq loopBody14_108 loopBody14_81

def loopBody14_110 : HolLoopProg 64 :=
.mark loopBody14_109

def loopBody14_111 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody14_110 loopBody14_85 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody14_112 : HolLoopProg 64 :=
.mark loopBody14_111

def loopBody14_113 : HolLoopProg 64 :=
.seq loopBody14_112 loopBody14_1

def loopBody14_114 : HolLoopProg 64 :=
.mark loopBody14_113

def loopBody14_115 : HolLoopProg 64 :=
.seq loopBody14_15 loopBody14_114

def loopBody14_116 : HolLoopProg 64 :=
.mark loopBody14_115

def loopBody14_117 : HolLoopProg 64 :=
.seq loopBody14_21 loopBody14_116

def loopBody14_118 : HolLoopProg 64 :=
.mark loopBody14_117

def loopBody14_119 : HolLoopProg 64 :=
.seq loopBody14_100 loopBody14_118

def loopBody14_120 : HolLoopProg 64 :=
.mark loopBody14_119

def loopBody14_121 : HolLoopProg 64 :=
.seq loopBody14_17 loopBody14_120

def loopBody14_122 : HolLoopProg 64 :=
.mark loopBody14_121

def loopBody14_123 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) loopBody14_122 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody14_124 : HolLoopProg 64 :=
.seq loopBody14_98 loopBody14_123

def loopBody14_125 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody14_124 loopBody14_1 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody14_126 : HolLoopProg 64 :=
.seq loopBody14_125 loopBody14_1

def loopBody14_127 : HolLoopProg 64 :=
.seq loopBody14_15 loopBody14_126

def loopBody14_128 : HolLoopProg 64 :=
.seq loopBody14_13 loopBody14_127

def loopBody14_129 : HolLoopProg 64 :=
.seq loopBody14_7 loopBody14_128

def loopBody14_130 : HolLoopProg 64 :=
.seq loopBody14_5 loopBody14_129

def loopBody14_131 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 3 4

def loopBody14_132 : HolLoopProg 64 :=
.mark loopBody14_131

def loopBody14_133 : HolLoopProg 64 :=
.seq loopBody14_132 loopBody14_1

def loopBody14_134 : HolLoopProg 64 :=
.mark loopBody14_133

def loopBody14_135 : HolLoopProg 64 :=
.seq loopBody14_11 loopBody14_134

def loopBody14_136 : HolLoopProg 64 :=
.mark loopBody14_135

def loopBody14_137 : HolLoopProg 64 :=
.seq loopBody14_23 loopBody14_136

def loopBody14_138 : HolLoopProg 64 :=
.mark loopBody14_137

def loopBody14_139 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 1#64])

def loopBody14_140 : HolLoopProg 64 :=
.mark loopBody14_139

def loopBody14_141 : HolLoopProg 64 :=
.seq loopBody14_140 loopBody14_136

def loopBody14_142 : HolLoopProg 64 :=
.mark loopBody14_141

def loopBody14_143 : HolLoopProg 64 :=
.seq loopBody14_138 loopBody14_142

def loopBody14_144 : HolLoopProg 64 :=
.mark loopBody14_143

def loopBody14_145 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 2#64])

def loopBody14_146 : HolLoopProg 64 :=
.mark loopBody14_145

def loopBody14_147 : HolLoopProg 64 :=
.seq loopBody14_146 loopBody14_136

def loopBody14_148 : HolLoopProg 64 :=
.mark loopBody14_147

def loopBody14_149 : HolLoopProg 64 :=
.seq loopBody14_144 loopBody14_148

def loopBody14_150 : HolLoopProg 64 :=
.mark loopBody14_149

def loopBody14_151 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 3#64])

def loopBody14_152 : HolLoopProg 64 :=
.mark loopBody14_151

def loopBody14_153 : HolLoopProg 64 :=
.seq loopBody14_152 loopBody14_136

def loopBody14_154 : HolLoopProg 64 :=
.mark loopBody14_153

def loopBody14_155 : HolLoopProg 64 :=
.seq loopBody14_150 loopBody14_154

def loopBody14_156 : HolLoopProg 64 :=
.mark loopBody14_155

def loopBody14_157 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 4#64])

def loopBody14_158 : HolLoopProg 64 :=
.mark loopBody14_157

def loopBody14_159 : HolLoopProg 64 :=
.seq loopBody14_158 loopBody14_136

def loopBody14_160 : HolLoopProg 64 :=
.mark loopBody14_159

def loopBody14_161 : HolLoopProg 64 :=
.seq loopBody14_156 loopBody14_160

def loopBody14_162 : HolLoopProg 64 :=
.mark loopBody14_161

def loopBody14_163 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 5#64])

def loopBody14_164 : HolLoopProg 64 :=
.mark loopBody14_163

def loopBody14_165 : HolLoopProg 64 :=
.seq loopBody14_164 loopBody14_136

def loopBody14_166 : HolLoopProg 64 :=
.mark loopBody14_165

def loopBody14_167 : HolLoopProg 64 :=
.seq loopBody14_162 loopBody14_166

def loopBody14_168 : HolLoopProg 64 :=
.mark loopBody14_167

def loopBody14_169 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 6#64])

def loopBody14_170 : HolLoopProg 64 :=
.mark loopBody14_169

def loopBody14_171 : HolLoopProg 64 :=
.seq loopBody14_170 loopBody14_136

def loopBody14_172 : HolLoopProg 64 :=
.mark loopBody14_171

def loopBody14_173 : HolLoopProg 64 :=
.seq loopBody14_168 loopBody14_172

def loopBody14_174 : HolLoopProg 64 :=
.mark loopBody14_173

def loopBody14_175 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 7#64])

def loopBody14_176 : HolLoopProg 64 :=
.mark loopBody14_175

def loopBody14_177 : HolLoopProg 64 :=
.seq loopBody14_176 loopBody14_136

def loopBody14_178 : HolLoopProg 64 :=
.mark loopBody14_177

def loopBody14_179 : HolLoopProg 64 :=
.seq loopBody14_174 loopBody14_178

def loopBody14_180 : HolLoopProg 64 :=
.mark loopBody14_179

def loopBody14_181 : HolLoopProg 64 :=
.seq loopBody14_180 loopBody14_106

def loopBody14_182 : HolLoopProg 64 :=
.mark loopBody14_181

def loopBody14_183 : HolLoopProg 64 :=
.seq loopBody14_182 loopBody14_81

def loopBody14_184 : HolLoopProg 64 :=
.mark loopBody14_183

def loopBody14_185 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody14_184 loopBody14_85 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody14_186 : HolLoopProg 64 :=
.mark loopBody14_185

def loopBody14_187 : HolLoopProg 64 :=
.seq loopBody14_186 loopBody14_1

def loopBody14_188 : HolLoopProg 64 :=
.mark loopBody14_187

def loopBody14_189 : HolLoopProg 64 :=
.seq loopBody14_15 loopBody14_188

def loopBody14_190 : HolLoopProg 64 :=
.mark loopBody14_189

def loopBody14_191 : HolLoopProg 64 :=
.seq loopBody14_21 loopBody14_190

def loopBody14_192 : HolLoopProg 64 :=
.mark loopBody14_191

def loopBody14_193 : HolLoopProg 64 :=
.seq loopBody14_100 loopBody14_192

def loopBody14_194 : HolLoopProg 64 :=
.mark loopBody14_193

def loopBody14_195 : HolLoopProg 64 :=
.seq loopBody14_17 loopBody14_194

def loopBody14_196 : HolLoopProg 64 :=
.mark loopBody14_195

def loopBody14_197 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) loopBody14_196 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody14_198 : HolLoopProg 64 :=
.seq loopBody14_130 loopBody14_197

def loopBody14_199 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody14_200 : HolLoopProg 64 :=
.mark loopBody14_199

def loopBody14_201 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody14_202 : HolLoopProg 64 :=
.mark loopBody14_201

def loopBody14_203 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.RegImm.reg 5) loopBody14_9 loopBody14_11 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.ls PUnit.unit))

def loopBody14_204 : HolLoopProg 64 :=
.mark loopBody14_203

def loopBody14_205 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 1#64])

def loopBody14_206 : HolLoopProg 64 :=
.mark loopBody14_205

def loopBody14_207 : HolLoopProg 64 :=
.seq loopBody14_206 loopBody14_73

def loopBody14_208 : HolLoopProg 64 :=
.mark loopBody14_207

def loopBody14_209 : HolLoopProg 64 :=
.seq loopBody14_1 loopBody14_208

def loopBody14_210 : HolLoopProg 64 :=
.mark loopBody14_209

def loopBody14_211 : HolLoopProg 64 :=
.seq loopBody14_138 loopBody14_210

def loopBody14_212 : HolLoopProg 64 :=
.mark loopBody14_211

def loopBody14_213 : HolLoopProg 64 :=
.seq loopBody14_212 loopBody14_81

def loopBody14_214 : HolLoopProg 64 :=
.mark loopBody14_213

def loopBody14_215 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody14_214 loopBody14_85 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody14_216 : HolLoopProg 64 :=
.mark loopBody14_215

def loopBody14_217 : HolLoopProg 64 :=
.seq loopBody14_216 loopBody14_1

def loopBody14_218 : HolLoopProg 64 :=
.mark loopBody14_217

def loopBody14_219 : HolLoopProg 64 :=
.seq loopBody14_15 loopBody14_218

def loopBody14_220 : HolLoopProg 64 :=
.mark loopBody14_219

def loopBody14_221 : HolLoopProg 64 :=
.seq loopBody14_204 loopBody14_220

def loopBody14_222 : HolLoopProg 64 :=
.mark loopBody14_221

def loopBody14_223 : HolLoopProg 64 :=
.seq loopBody14_202 loopBody14_222

def loopBody14_224 : HolLoopProg 64 :=
.mark loopBody14_223

def loopBody14_225 : HolLoopProg 64 :=
.seq loopBody14_200 loopBody14_224

def loopBody14_226 : HolLoopProg 64 :=
.mark loopBody14_225

def loopBody14_227 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) loopBody14_226 (Flapjack.Spt.ln)

def loopBody14_228 : HolLoopProg 64 :=
.seq loopBody14_198 loopBody14_227

def loopBody14_229 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody14_230 : HolLoopProg 64 :=
.mark loopBody14_229

def loopBody14_231 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody14_232 : HolLoopProg 64 :=
.mark loopBody14_231

def loopBody14_233 : HolLoopProg 64 :=
.seq loopBody14_232 loopBody14_1

def loopBody14_234 : HolLoopProg 64 :=
.mark loopBody14_233

def loopBody14_235 : HolLoopProg 64 :=
.seq loopBody14_230 loopBody14_234

def loopBody14_236 : HolLoopProg 64 :=
.mark loopBody14_235

def loopBody14_237 : HolLoopProg 64 :=
.seq loopBody14_228 loopBody14_236

def loopBody14_238 : HolLoopProg 64 :=
.seq loopBody14_3 loopBody14_237

def loopBody14_239 : HolLoopProg 64 :=
.seq loopBody14_1 loopBody14_238

def output14 : Nat × List Nat × HolLoopProg 64 :=
  (78, [0, 1], loopBody14_239)
end InitECandidate.Proofs.FrontendStages.Loop
