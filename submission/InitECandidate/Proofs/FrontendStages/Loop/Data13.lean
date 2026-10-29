import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody13_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody13_1 : HolLoopProg 64 :=
.mark loopBody13_0

def loopBody13_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody13_3 : HolLoopProg 64 :=
.mark loopBody13_2

def loopBody13_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and
    [Flapjack.HolLoopExp.op Flapjack.BinOp.or [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 1],
      Flapjack.HolLoopExp.const 7#64])

def loopBody13_5 : HolLoopProg 64 :=
.mark loopBody13_4

def loopBody13_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody13_7 : HolLoopProg 64 :=
.mark loopBody13_6

def loopBody13_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody13_9 : HolLoopProg 64 :=
.mark loopBody13_8

def loopBody13_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody13_11 : HolLoopProg 64 :=
.mark loopBody13_10

def loopBody13_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.RegImm.reg 6) loopBody13_9 loopBody13_11 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody13_13 : HolLoopProg 64 :=
.mark loopBody13_12

def loopBody13_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody13_15 : HolLoopProg 64 :=
.mark loopBody13_14

def loopBody13_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody13_17 : HolLoopProg 64 :=
.mark loopBody13_16

def loopBody13_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 32#64])

def loopBody13_19 : HolLoopProg 64 :=
.mark loopBody13_18

def loopBody13_20 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.RegImm.reg 6) loopBody13_9 loopBody13_11 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody13_21 : HolLoopProg 64 :=
.mark loopBody13_20

def loopBody13_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 3])

def loopBody13_23 : HolLoopProg 64 :=
.mark loopBody13_22

def loopBody13_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 3]))

def loopBody13_25 : HolLoopProg 64 :=
.mark loopBody13_24

def loopBody13_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 5)

def loopBody13_27 : HolLoopProg 64 :=
.mark loopBody13_26

def loopBody13_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 4) 6

def loopBody13_29 : HolLoopProg 64 :=
.mark loopBody13_28

def loopBody13_30 : HolLoopProg 64 :=
.seq loopBody13_29 loopBody13_1

def loopBody13_31 : HolLoopProg 64 :=
.mark loopBody13_30

def loopBody13_32 : HolLoopProg 64 :=
.seq loopBody13_27 loopBody13_31

def loopBody13_33 : HolLoopProg 64 :=
.mark loopBody13_32

def loopBody13_34 : HolLoopProg 64 :=
.seq loopBody13_33 loopBody13_1

def loopBody13_35 : HolLoopProg 64 :=
.mark loopBody13_34

def loopBody13_36 : HolLoopProg 64 :=
.seq loopBody13_25 loopBody13_35

def loopBody13_37 : HolLoopProg 64 :=
.mark loopBody13_36

def loopBody13_38 : HolLoopProg 64 :=
.seq loopBody13_1 loopBody13_37

def loopBody13_39 : HolLoopProg 64 :=
.mark loopBody13_38

def loopBody13_40 : HolLoopProg 64 :=
.seq loopBody13_23 loopBody13_39

def loopBody13_41 : HolLoopProg 64 :=
.mark loopBody13_40

def loopBody13_42 : HolLoopProg 64 :=
.seq loopBody13_1 loopBody13_41

def loopBody13_43 : HolLoopProg 64 :=
.mark loopBody13_42

def loopBody13_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 8#64])

def loopBody13_45 : HolLoopProg 64 :=
.mark loopBody13_44

def loopBody13_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 8#64]))

def loopBody13_47 : HolLoopProg 64 :=
.mark loopBody13_46

def loopBody13_48 : HolLoopProg 64 :=
.seq loopBody13_47 loopBody13_35

def loopBody13_49 : HolLoopProg 64 :=
.mark loopBody13_48

def loopBody13_50 : HolLoopProg 64 :=
.seq loopBody13_1 loopBody13_49

def loopBody13_51 : HolLoopProg 64 :=
.mark loopBody13_50

def loopBody13_52 : HolLoopProg 64 :=
.seq loopBody13_45 loopBody13_51

def loopBody13_53 : HolLoopProg 64 :=
.mark loopBody13_52

def loopBody13_54 : HolLoopProg 64 :=
.seq loopBody13_1 loopBody13_53

def loopBody13_55 : HolLoopProg 64 :=
.mark loopBody13_54

def loopBody13_56 : HolLoopProg 64 :=
.seq loopBody13_43 loopBody13_55

def loopBody13_57 : HolLoopProg 64 :=
.mark loopBody13_56

def loopBody13_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 16#64])

def loopBody13_59 : HolLoopProg 64 :=
.mark loopBody13_58

def loopBody13_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 16#64]))

def loopBody13_61 : HolLoopProg 64 :=
.mark loopBody13_60

def loopBody13_62 : HolLoopProg 64 :=
.seq loopBody13_61 loopBody13_35

def loopBody13_63 : HolLoopProg 64 :=
.mark loopBody13_62

def loopBody13_64 : HolLoopProg 64 :=
.seq loopBody13_1 loopBody13_63

def loopBody13_65 : HolLoopProg 64 :=
.mark loopBody13_64

def loopBody13_66 : HolLoopProg 64 :=
.seq loopBody13_59 loopBody13_65

def loopBody13_67 : HolLoopProg 64 :=
.mark loopBody13_66

def loopBody13_68 : HolLoopProg 64 :=
.seq loopBody13_1 loopBody13_67

def loopBody13_69 : HolLoopProg 64 :=
.mark loopBody13_68

def loopBody13_70 : HolLoopProg 64 :=
.seq loopBody13_57 loopBody13_69

def loopBody13_71 : HolLoopProg 64 :=
.mark loopBody13_70

def loopBody13_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 24#64])

def loopBody13_73 : HolLoopProg 64 :=
.mark loopBody13_72

def loopBody13_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 24#64]))

def loopBody13_75 : HolLoopProg 64 :=
.mark loopBody13_74

def loopBody13_76 : HolLoopProg 64 :=
.seq loopBody13_75 loopBody13_35

def loopBody13_77 : HolLoopProg 64 :=
.mark loopBody13_76

def loopBody13_78 : HolLoopProg 64 :=
.seq loopBody13_1 loopBody13_77

def loopBody13_79 : HolLoopProg 64 :=
.mark loopBody13_78

def loopBody13_80 : HolLoopProg 64 :=
.seq loopBody13_73 loopBody13_79

def loopBody13_81 : HolLoopProg 64 :=
.mark loopBody13_80

def loopBody13_82 : HolLoopProg 64 :=
.seq loopBody13_1 loopBody13_81

def loopBody13_83 : HolLoopProg 64 :=
.mark loopBody13_82

def loopBody13_84 : HolLoopProg 64 :=
.seq loopBody13_71 loopBody13_83

def loopBody13_85 : HolLoopProg 64 :=
.mark loopBody13_84

def loopBody13_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 32#64])

def loopBody13_87 : HolLoopProg 64 :=
.mark loopBody13_86

def loopBody13_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 4)

def loopBody13_89 : HolLoopProg 64 :=
.mark loopBody13_88

def loopBody13_90 : HolLoopProg 64 :=
.seq loopBody13_89 loopBody13_1

def loopBody13_91 : HolLoopProg 64 :=
.mark loopBody13_90

def loopBody13_92 : HolLoopProg 64 :=
.seq loopBody13_91 loopBody13_1

def loopBody13_93 : HolLoopProg 64 :=
.mark loopBody13_92

def loopBody13_94 : HolLoopProg 64 :=
.seq loopBody13_87 loopBody13_93

def loopBody13_95 : HolLoopProg 64 :=
.mark loopBody13_94

def loopBody13_96 : HolLoopProg 64 :=
.seq loopBody13_1 loopBody13_95

def loopBody13_97 : HolLoopProg 64 :=
.mark loopBody13_96

def loopBody13_98 : HolLoopProg 64 :=
.seq loopBody13_85 loopBody13_97

def loopBody13_99 : HolLoopProg 64 :=
.mark loopBody13_98

def loopBody13_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody13_101 : HolLoopProg 64 :=
.mark loopBody13_100

def loopBody13_102 : HolLoopProg 64 :=
.seq loopBody13_99 loopBody13_101

def loopBody13_103 : HolLoopProg 64 :=
.mark loopBody13_102

def loopBody13_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody13_105 : HolLoopProg 64 :=
.mark loopBody13_104

def loopBody13_106 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody13_103 loopBody13_105 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody13_107 : HolLoopProg 64 :=
.mark loopBody13_106

def loopBody13_108 : HolLoopProg 64 :=
.seq loopBody13_107 loopBody13_1

def loopBody13_109 : HolLoopProg 64 :=
.mark loopBody13_108

def loopBody13_110 : HolLoopProg 64 :=
.seq loopBody13_15 loopBody13_109

def loopBody13_111 : HolLoopProg 64 :=
.mark loopBody13_110

def loopBody13_112 : HolLoopProg 64 :=
.seq loopBody13_21 loopBody13_111

def loopBody13_113 : HolLoopProg 64 :=
.mark loopBody13_112

def loopBody13_114 : HolLoopProg 64 :=
.seq loopBody13_19 loopBody13_113

def loopBody13_115 : HolLoopProg 64 :=
.mark loopBody13_114

def loopBody13_116 : HolLoopProg 64 :=
.seq loopBody13_17 loopBody13_115

def loopBody13_117 : HolLoopProg 64 :=
.mark loopBody13_116

def loopBody13_118 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody13_117 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody13_119 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 8#64])

def loopBody13_120 : HolLoopProg 64 :=
.mark loopBody13_119

def loopBody13_121 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 8#64])

def loopBody13_122 : HolLoopProg 64 :=
.mark loopBody13_121

def loopBody13_123 : HolLoopProg 64 :=
.seq loopBody13_122 loopBody13_93

def loopBody13_124 : HolLoopProg 64 :=
.mark loopBody13_123

def loopBody13_125 : HolLoopProg 64 :=
.seq loopBody13_1 loopBody13_124

def loopBody13_126 : HolLoopProg 64 :=
.mark loopBody13_125

def loopBody13_127 : HolLoopProg 64 :=
.seq loopBody13_43 loopBody13_126

def loopBody13_128 : HolLoopProg 64 :=
.mark loopBody13_127

def loopBody13_129 : HolLoopProg 64 :=
.seq loopBody13_128 loopBody13_101

def loopBody13_130 : HolLoopProg 64 :=
.mark loopBody13_129

def loopBody13_131 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody13_130 loopBody13_105 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody13_132 : HolLoopProg 64 :=
.mark loopBody13_131

def loopBody13_133 : HolLoopProg 64 :=
.seq loopBody13_132 loopBody13_1

def loopBody13_134 : HolLoopProg 64 :=
.mark loopBody13_133

def loopBody13_135 : HolLoopProg 64 :=
.seq loopBody13_15 loopBody13_134

def loopBody13_136 : HolLoopProg 64 :=
.mark loopBody13_135

def loopBody13_137 : HolLoopProg 64 :=
.seq loopBody13_21 loopBody13_136

def loopBody13_138 : HolLoopProg 64 :=
.mark loopBody13_137

def loopBody13_139 : HolLoopProg 64 :=
.seq loopBody13_120 loopBody13_138

def loopBody13_140 : HolLoopProg 64 :=
.mark loopBody13_139

def loopBody13_141 : HolLoopProg 64 :=
.seq loopBody13_17 loopBody13_140

def loopBody13_142 : HolLoopProg 64 :=
.mark loopBody13_141

def loopBody13_143 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody13_142 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody13_144 : HolLoopProg 64 :=
.seq loopBody13_118 loopBody13_143

def loopBody13_145 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody13_144 loopBody13_1 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody13_146 : HolLoopProg 64 :=
.seq loopBody13_145 loopBody13_1

def loopBody13_147 : HolLoopProg 64 :=
.seq loopBody13_15 loopBody13_146

def loopBody13_148 : HolLoopProg 64 :=
.seq loopBody13_13 loopBody13_147

def loopBody13_149 : HolLoopProg 64 :=
.seq loopBody13_7 loopBody13_148

def loopBody13_150 : HolLoopProg 64 :=
.seq loopBody13_5 loopBody13_149

def loopBody13_151 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 3])

def loopBody13_152 : HolLoopProg 64 :=
.mark loopBody13_151

def loopBody13_153 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 4 4

def loopBody13_154 : HolLoopProg 64 :=
.mark loopBody13_153

def loopBody13_155 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 3])

def loopBody13_156 : HolLoopProg 64 :=
.mark loopBody13_155

def loopBody13_157 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody13_158 : HolLoopProg 64 :=
.mark loopBody13_157

def loopBody13_159 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 5 6

def loopBody13_160 : HolLoopProg 64 :=
.mark loopBody13_159

def loopBody13_161 : HolLoopProg 64 :=
.seq loopBody13_160 loopBody13_1

def loopBody13_162 : HolLoopProg 64 :=
.mark loopBody13_161

def loopBody13_163 : HolLoopProg 64 :=
.seq loopBody13_158 loopBody13_162

def loopBody13_164 : HolLoopProg 64 :=
.mark loopBody13_163

def loopBody13_165 : HolLoopProg 64 :=
.seq loopBody13_156 loopBody13_164

def loopBody13_166 : HolLoopProg 64 :=
.mark loopBody13_165

def loopBody13_167 : HolLoopProg 64 :=
.seq loopBody13_154 loopBody13_166

def loopBody13_168 : HolLoopProg 64 :=
.mark loopBody13_167

def loopBody13_169 : HolLoopProg 64 :=
.seq loopBody13_152 loopBody13_168

def loopBody13_170 : HolLoopProg 64 :=
.mark loopBody13_169

def loopBody13_171 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 1#64])

def loopBody13_172 : HolLoopProg 64 :=
.mark loopBody13_171

def loopBody13_173 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 1#64])

def loopBody13_174 : HolLoopProg 64 :=
.mark loopBody13_173

def loopBody13_175 : HolLoopProg 64 :=
.seq loopBody13_174 loopBody13_164

def loopBody13_176 : HolLoopProg 64 :=
.mark loopBody13_175

def loopBody13_177 : HolLoopProg 64 :=
.seq loopBody13_154 loopBody13_176

def loopBody13_178 : HolLoopProg 64 :=
.mark loopBody13_177

def loopBody13_179 : HolLoopProg 64 :=
.seq loopBody13_172 loopBody13_178

def loopBody13_180 : HolLoopProg 64 :=
.mark loopBody13_179

def loopBody13_181 : HolLoopProg 64 :=
.seq loopBody13_170 loopBody13_180

def loopBody13_182 : HolLoopProg 64 :=
.mark loopBody13_181

def loopBody13_183 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 2#64])

def loopBody13_184 : HolLoopProg 64 :=
.mark loopBody13_183

def loopBody13_185 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 2#64])

def loopBody13_186 : HolLoopProg 64 :=
.mark loopBody13_185

def loopBody13_187 : HolLoopProg 64 :=
.seq loopBody13_186 loopBody13_164

def loopBody13_188 : HolLoopProg 64 :=
.mark loopBody13_187

def loopBody13_189 : HolLoopProg 64 :=
.seq loopBody13_154 loopBody13_188

def loopBody13_190 : HolLoopProg 64 :=
.mark loopBody13_189

def loopBody13_191 : HolLoopProg 64 :=
.seq loopBody13_184 loopBody13_190

def loopBody13_192 : HolLoopProg 64 :=
.mark loopBody13_191

def loopBody13_193 : HolLoopProg 64 :=
.seq loopBody13_182 loopBody13_192

def loopBody13_194 : HolLoopProg 64 :=
.mark loopBody13_193

def loopBody13_195 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 3#64])

def loopBody13_196 : HolLoopProg 64 :=
.mark loopBody13_195

def loopBody13_197 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 3#64])

def loopBody13_198 : HolLoopProg 64 :=
.mark loopBody13_197

def loopBody13_199 : HolLoopProg 64 :=
.seq loopBody13_198 loopBody13_164

def loopBody13_200 : HolLoopProg 64 :=
.mark loopBody13_199

def loopBody13_201 : HolLoopProg 64 :=
.seq loopBody13_154 loopBody13_200

def loopBody13_202 : HolLoopProg 64 :=
.mark loopBody13_201

def loopBody13_203 : HolLoopProg 64 :=
.seq loopBody13_196 loopBody13_202

def loopBody13_204 : HolLoopProg 64 :=
.mark loopBody13_203

def loopBody13_205 : HolLoopProg 64 :=
.seq loopBody13_194 loopBody13_204

def loopBody13_206 : HolLoopProg 64 :=
.mark loopBody13_205

def loopBody13_207 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 4#64])

def loopBody13_208 : HolLoopProg 64 :=
.mark loopBody13_207

def loopBody13_209 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 4#64])

def loopBody13_210 : HolLoopProg 64 :=
.mark loopBody13_209

def loopBody13_211 : HolLoopProg 64 :=
.seq loopBody13_210 loopBody13_164

def loopBody13_212 : HolLoopProg 64 :=
.mark loopBody13_211

def loopBody13_213 : HolLoopProg 64 :=
.seq loopBody13_154 loopBody13_212

def loopBody13_214 : HolLoopProg 64 :=
.mark loopBody13_213

def loopBody13_215 : HolLoopProg 64 :=
.seq loopBody13_208 loopBody13_214

def loopBody13_216 : HolLoopProg 64 :=
.mark loopBody13_215

def loopBody13_217 : HolLoopProg 64 :=
.seq loopBody13_206 loopBody13_216

def loopBody13_218 : HolLoopProg 64 :=
.mark loopBody13_217

def loopBody13_219 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 5#64])

def loopBody13_220 : HolLoopProg 64 :=
.mark loopBody13_219

def loopBody13_221 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 5#64])

def loopBody13_222 : HolLoopProg 64 :=
.mark loopBody13_221

def loopBody13_223 : HolLoopProg 64 :=
.seq loopBody13_222 loopBody13_164

def loopBody13_224 : HolLoopProg 64 :=
.mark loopBody13_223

def loopBody13_225 : HolLoopProg 64 :=
.seq loopBody13_154 loopBody13_224

def loopBody13_226 : HolLoopProg 64 :=
.mark loopBody13_225

def loopBody13_227 : HolLoopProg 64 :=
.seq loopBody13_220 loopBody13_226

def loopBody13_228 : HolLoopProg 64 :=
.mark loopBody13_227

def loopBody13_229 : HolLoopProg 64 :=
.seq loopBody13_218 loopBody13_228

def loopBody13_230 : HolLoopProg 64 :=
.mark loopBody13_229

def loopBody13_231 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 6#64])

def loopBody13_232 : HolLoopProg 64 :=
.mark loopBody13_231

def loopBody13_233 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 6#64])

def loopBody13_234 : HolLoopProg 64 :=
.mark loopBody13_233

def loopBody13_235 : HolLoopProg 64 :=
.seq loopBody13_234 loopBody13_164

def loopBody13_236 : HolLoopProg 64 :=
.mark loopBody13_235

def loopBody13_237 : HolLoopProg 64 :=
.seq loopBody13_154 loopBody13_236

def loopBody13_238 : HolLoopProg 64 :=
.mark loopBody13_237

def loopBody13_239 : HolLoopProg 64 :=
.seq loopBody13_232 loopBody13_238

def loopBody13_240 : HolLoopProg 64 :=
.mark loopBody13_239

def loopBody13_241 : HolLoopProg 64 :=
.seq loopBody13_230 loopBody13_240

def loopBody13_242 : HolLoopProg 64 :=
.mark loopBody13_241

def loopBody13_243 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 7#64])

def loopBody13_244 : HolLoopProg 64 :=
.mark loopBody13_243

def loopBody13_245 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 7#64])

def loopBody13_246 : HolLoopProg 64 :=
.mark loopBody13_245

def loopBody13_247 : HolLoopProg 64 :=
.seq loopBody13_246 loopBody13_164

def loopBody13_248 : HolLoopProg 64 :=
.mark loopBody13_247

def loopBody13_249 : HolLoopProg 64 :=
.seq loopBody13_154 loopBody13_248

def loopBody13_250 : HolLoopProg 64 :=
.mark loopBody13_249

def loopBody13_251 : HolLoopProg 64 :=
.seq loopBody13_244 loopBody13_250

def loopBody13_252 : HolLoopProg 64 :=
.mark loopBody13_251

def loopBody13_253 : HolLoopProg 64 :=
.seq loopBody13_242 loopBody13_252

def loopBody13_254 : HolLoopProg 64 :=
.mark loopBody13_253

def loopBody13_255 : HolLoopProg 64 :=
.seq loopBody13_254 loopBody13_126

def loopBody13_256 : HolLoopProg 64 :=
.mark loopBody13_255

def loopBody13_257 : HolLoopProg 64 :=
.seq loopBody13_256 loopBody13_101

def loopBody13_258 : HolLoopProg 64 :=
.mark loopBody13_257

def loopBody13_259 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody13_258 loopBody13_105 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody13_260 : HolLoopProg 64 :=
.mark loopBody13_259

def loopBody13_261 : HolLoopProg 64 :=
.seq loopBody13_260 loopBody13_1

def loopBody13_262 : HolLoopProg 64 :=
.mark loopBody13_261

def loopBody13_263 : HolLoopProg 64 :=
.seq loopBody13_15 loopBody13_262

def loopBody13_264 : HolLoopProg 64 :=
.mark loopBody13_263

def loopBody13_265 : HolLoopProg 64 :=
.seq loopBody13_21 loopBody13_264

def loopBody13_266 : HolLoopProg 64 :=
.mark loopBody13_265

def loopBody13_267 : HolLoopProg 64 :=
.seq loopBody13_120 loopBody13_266

def loopBody13_268 : HolLoopProg 64 :=
.mark loopBody13_267

def loopBody13_269 : HolLoopProg 64 :=
.seq loopBody13_17 loopBody13_268

def loopBody13_270 : HolLoopProg 64 :=
.mark loopBody13_269

def loopBody13_271 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody13_270 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody13_272 : HolLoopProg 64 :=
.seq loopBody13_150 loopBody13_271

def loopBody13_273 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody13_274 : HolLoopProg 64 :=
.mark loopBody13_273

def loopBody13_275 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody13_276 : HolLoopProg 64 :=
.mark loopBody13_275

def loopBody13_277 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.RegImm.reg 6) loopBody13_9 loopBody13_11 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody13_278 : HolLoopProg 64 :=
.mark loopBody13_277

def loopBody13_279 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 1#64])

def loopBody13_280 : HolLoopProg 64 :=
.mark loopBody13_279

def loopBody13_281 : HolLoopProg 64 :=
.seq loopBody13_280 loopBody13_93

def loopBody13_282 : HolLoopProg 64 :=
.mark loopBody13_281

def loopBody13_283 : HolLoopProg 64 :=
.seq loopBody13_1 loopBody13_282

def loopBody13_284 : HolLoopProg 64 :=
.mark loopBody13_283

def loopBody13_285 : HolLoopProg 64 :=
.seq loopBody13_170 loopBody13_284

def loopBody13_286 : HolLoopProg 64 :=
.mark loopBody13_285

def loopBody13_287 : HolLoopProg 64 :=
.seq loopBody13_286 loopBody13_101

def loopBody13_288 : HolLoopProg 64 :=
.mark loopBody13_287

def loopBody13_289 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody13_288 loopBody13_105 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody13_290 : HolLoopProg 64 :=
.mark loopBody13_289

def loopBody13_291 : HolLoopProg 64 :=
.seq loopBody13_290 loopBody13_1

def loopBody13_292 : HolLoopProg 64 :=
.mark loopBody13_291

def loopBody13_293 : HolLoopProg 64 :=
.seq loopBody13_15 loopBody13_292

def loopBody13_294 : HolLoopProg 64 :=
.mark loopBody13_293

def loopBody13_295 : HolLoopProg 64 :=
.seq loopBody13_278 loopBody13_294

def loopBody13_296 : HolLoopProg 64 :=
.mark loopBody13_295

def loopBody13_297 : HolLoopProg 64 :=
.seq loopBody13_276 loopBody13_296

def loopBody13_298 : HolLoopProg 64 :=
.mark loopBody13_297

def loopBody13_299 : HolLoopProg 64 :=
.seq loopBody13_274 loopBody13_298

def loopBody13_300 : HolLoopProg 64 :=
.mark loopBody13_299

def loopBody13_301 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody13_300 (Flapjack.Spt.ln)

def loopBody13_302 : HolLoopProg 64 :=
.seq loopBody13_272 loopBody13_301

def loopBody13_303 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody13_304 : HolLoopProg 64 :=
.mark loopBody13_303

def loopBody13_305 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody13_306 : HolLoopProg 64 :=
.mark loopBody13_305

def loopBody13_307 : HolLoopProg 64 :=
.seq loopBody13_306 loopBody13_1

def loopBody13_308 : HolLoopProg 64 :=
.mark loopBody13_307

def loopBody13_309 : HolLoopProg 64 :=
.seq loopBody13_304 loopBody13_308

def loopBody13_310 : HolLoopProg 64 :=
.mark loopBody13_309

def loopBody13_311 : HolLoopProg 64 :=
.seq loopBody13_302 loopBody13_310

def loopBody13_312 : HolLoopProg 64 :=
.seq loopBody13_3 loopBody13_311

def loopBody13_313 : HolLoopProg 64 :=
.seq loopBody13_1 loopBody13_312

def output13 : Nat × List Nat × HolLoopProg 64 :=
  (77, [0, 1, 2], loopBody13_313)
end InitECandidate.Proofs.FrontendStages.Loop
