import InitECandidate.Proofs.FrontendStages.Loop.Translate226
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody242_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody242_1 : HolLoopProg 64 :=
.mark loopBody242_0

def loopBody242_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody242_3 : HolLoopProg 64 :=
.mark loopBody242_2

def loopBody242_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody242_5 : HolLoopProg 64 :=
.mark loopBody242_4

def loopBody242_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody242_7 : HolLoopProg 64 :=
.mark loopBody242_6

def loopBody242_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody242_9 : HolLoopProg 64 :=
.mark loopBody242_8

def loopBody242_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody242_11 : HolLoopProg 64 :=
.mark loopBody242_10

def loopBody242_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.reg 6) loopBody242_9 loopBody242_11 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody242_13 : HolLoopProg 64 :=
.mark loopBody242_12

def loopBody242_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody242_15 : HolLoopProg 64 :=
.mark loopBody242_14

def loopBody242_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64]))

def loopBody242_17 : HolLoopProg 64 :=
.mark loopBody242_16

def loopBody242_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody242_19 : HolLoopProg 64 :=
.mark loopBody242_18

def loopBody242_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody242_21 : HolLoopProg 64 :=
.mark loopBody242_20

def loopBody242_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody242_23 : HolLoopProg 64 :=
.mark loopBody242_22

def loopBody242_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.RegImm.reg 7) loopBody242_23 loopBody242_7 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody242_25 : HolLoopProg 64 :=
.mark loopBody242_24

def loopBody242_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody242_27 : HolLoopProg 64 :=
.mark loopBody242_26

def loopBody242_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 2#64)

def loopBody242_29 : HolLoopProg 64 :=
.mark loopBody242_28

def loopBody242_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody242_31 : HolLoopProg 64 :=
.mark loopBody242_30

def loopBody242_32 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 286) ([6]) (some (6, loopBody242_31, loopBody242_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody242_33 : HolLoopProg 64 :=
.mark loopBody242_32

def loopBody242_34 : HolLoopProg 64 :=
.seq loopBody242_33 loopBody242_1

def loopBody242_35 : HolLoopProg 64 :=
.mark loopBody242_34

def loopBody242_36 : HolLoopProg 64 :=
.seq loopBody242_29 loopBody242_35

def loopBody242_37 : HolLoopProg 64 :=
.mark loopBody242_36

def loopBody242_38 : HolLoopProg 64 :=
.seq loopBody242_1 loopBody242_37

def loopBody242_39 : HolLoopProg 64 :=
.mark loopBody242_38

def loopBody242_40 : HolLoopProg 64 :=
.seq loopBody242_1 loopBody242_39

def loopBody242_41 : HolLoopProg 64 :=
.mark loopBody242_40

def loopBody242_42 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody242_41 loopBody242_1 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody242_43 : HolLoopProg 64 :=
.mark loopBody242_42

def loopBody242_44 : HolLoopProg 64 :=
.seq loopBody242_43 loopBody242_1

def loopBody242_45 : HolLoopProg 64 :=
.mark loopBody242_44

def loopBody242_46 : HolLoopProg 64 :=
.seq loopBody242_27 loopBody242_45

def loopBody242_47 : HolLoopProg 64 :=
.mark loopBody242_46

def loopBody242_48 : HolLoopProg 64 :=
.seq loopBody242_25 loopBody242_47

def loopBody242_49 : HolLoopProg 64 :=
.mark loopBody242_48

def loopBody242_50 : HolLoopProg 64 :=
.seq loopBody242_21 loopBody242_49

def loopBody242_51 : HolLoopProg 64 :=
.mark loopBody242_50

def loopBody242_52 : HolLoopProg 64 :=
.seq loopBody242_19 loopBody242_51

def loopBody242_53 : HolLoopProg 64 :=
.mark loopBody242_52

def loopBody242_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody242_55 : HolLoopProg 64 :=
.mark loopBody242_54

def loopBody242_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 40#64]))

def loopBody242_57 : HolLoopProg 64 :=
.mark loopBody242_56

def loopBody242_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 3])

def loopBody242_59 : HolLoopProg 64 :=
.mark loopBody242_58

def loopBody242_60 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.RegImm.reg 8) loopBody242_55 loopBody242_21 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody242_61 : HolLoopProg 64 :=
.mark loopBody242_60

def loopBody242_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody242_63 : HolLoopProg 64 :=
.mark loopBody242_62

def loopBody242_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 32#64]))

def loopBody242_65 : HolLoopProg 64 :=
.mark loopBody242_64

def loopBody242_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 3])

def loopBody242_67 : HolLoopProg 64 :=
.mark loopBody242_66

def loopBody242_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 5)

def loopBody242_69 : HolLoopProg 64 :=
.mark loopBody242_68

def loopBody242_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody242_71 : HolLoopProg 64 :=
.mark loopBody242_70

def loopBody242_72 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.ls PUnit.unit)) (some 79) ([7, 8, 9]) (some (7, loopBody242_71, loopBody242_1, (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)))

def loopBody242_73 : HolLoopProg 64 :=
.mark loopBody242_72

def loopBody242_74 : HolLoopProg 64 :=
.seq loopBody242_73 loopBody242_1

def loopBody242_75 : HolLoopProg 64 :=
.mark loopBody242_74

def loopBody242_76 : HolLoopProg 64 :=
.seq loopBody242_69 loopBody242_75

def loopBody242_77 : HolLoopProg 64 :=
.mark loopBody242_76

def loopBody242_78 : HolLoopProg 64 :=
.seq loopBody242_67 loopBody242_77

def loopBody242_79 : HolLoopProg 64 :=
.mark loopBody242_78

def loopBody242_80 : HolLoopProg 64 :=
.seq loopBody242_65 loopBody242_79

def loopBody242_81 : HolLoopProg 64 :=
.mark loopBody242_80

def loopBody242_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody242_83 : HolLoopProg 64 :=
.mark loopBody242_82

def loopBody242_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody242_85 : HolLoopProg 64 :=
.mark loopBody242_84

def loopBody242_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody242_87 : HolLoopProg 64 :=
.mark loopBody242_86

def loopBody242_88 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.reg 9) loopBody242_85 loopBody242_87 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln)

def loopBody242_89 : HolLoopProg 64 :=
.mark loopBody242_88

def loopBody242_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody242_91 : HolLoopProg 64 :=
.mark loopBody242_90

def loopBody242_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 48#64]))

def loopBody242_93 : HolLoopProg 64 :=
.mark loopBody242_92

def loopBody242_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 56#64]))

def loopBody242_95 : HolLoopProg 64 :=
.mark loopBody242_94

def loopBody242_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [7, 8, 9]

def loopBody242_97 : HolLoopProg 64 :=
.mark loopBody242_96

def loopBody242_98 : HolLoopProg 64 :=
.seq loopBody242_97 loopBody242_1

def loopBody242_99 : HolLoopProg 64 :=
.mark loopBody242_98

def loopBody242_100 : HolLoopProg 64 :=
.seq loopBody242_95 loopBody242_99

def loopBody242_101 : HolLoopProg 64 :=
.mark loopBody242_100

def loopBody242_102 : HolLoopProg 64 :=
.seq loopBody242_93 loopBody242_101

def loopBody242_103 : HolLoopProg 64 :=
.mark loopBody242_102

def loopBody242_104 : HolLoopProg 64 :=
.seq loopBody242_55 loopBody242_103

def loopBody242_105 : HolLoopProg 64 :=
.mark loopBody242_104

def loopBody242_106 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody242_105 loopBody242_1 (Flapjack.Spt.ln)

def loopBody242_107 : HolLoopProg 64 :=
.mark loopBody242_106

def loopBody242_108 : HolLoopProg 64 :=
.seq loopBody242_107 loopBody242_1

def loopBody242_109 : HolLoopProg 64 :=
.mark loopBody242_108

def loopBody242_110 : HolLoopProg 64 :=
.seq loopBody242_91 loopBody242_109

def loopBody242_111 : HolLoopProg 64 :=
.mark loopBody242_110

def loopBody242_112 : HolLoopProg 64 :=
.seq loopBody242_89 loopBody242_111

def loopBody242_113 : HolLoopProg 64 :=
.mark loopBody242_112

def loopBody242_114 : HolLoopProg 64 :=
.seq loopBody242_83 loopBody242_113

def loopBody242_115 : HolLoopProg 64 :=
.mark loopBody242_114

def loopBody242_116 : HolLoopProg 64 :=
.seq loopBody242_27 loopBody242_115

def loopBody242_117 : HolLoopProg 64 :=
.mark loopBody242_116

def loopBody242_118 : HolLoopProg 64 :=
.seq loopBody242_81 loopBody242_117

def loopBody242_119 : HolLoopProg 64 :=
.mark loopBody242_118

def loopBody242_120 : HolLoopProg 64 :=
.seq loopBody242_1 loopBody242_119

def loopBody242_121 : HolLoopProg 64 :=
.mark loopBody242_120

def loopBody242_122 : HolLoopProg 64 :=
.seq loopBody242_1 loopBody242_121

def loopBody242_123 : HolLoopProg 64 :=
.mark loopBody242_122

def loopBody242_124 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody242_123 loopBody242_1 (Flapjack.Spt.ln)

def loopBody242_125 : HolLoopProg 64 :=
.mark loopBody242_124

def loopBody242_126 : HolLoopProg 64 :=
.seq loopBody242_125 loopBody242_1

def loopBody242_127 : HolLoopProg 64 :=
.mark loopBody242_126

def loopBody242_128 : HolLoopProg 64 :=
.seq loopBody242_63 loopBody242_127

def loopBody242_129 : HolLoopProg 64 :=
.mark loopBody242_128

def loopBody242_130 : HolLoopProg 64 :=
.seq loopBody242_61 loopBody242_129

def loopBody242_131 : HolLoopProg 64 :=
.mark loopBody242_130

def loopBody242_132 : HolLoopProg 64 :=
.seq loopBody242_59 loopBody242_131

def loopBody242_133 : HolLoopProg 64 :=
.mark loopBody242_132

def loopBody242_134 : HolLoopProg 64 :=
.seq loopBody242_15 loopBody242_133

def loopBody242_135 : HolLoopProg 64 :=
.mark loopBody242_134

def loopBody242_136 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6, 7, 8]

def loopBody242_137 : HolLoopProg 64 :=
.mark loopBody242_136

def loopBody242_138 : HolLoopProg 64 :=
.seq loopBody242_137 loopBody242_1

def loopBody242_139 : HolLoopProg 64 :=
.mark loopBody242_138

def loopBody242_140 : HolLoopProg 64 :=
.seq loopBody242_87 loopBody242_139

def loopBody242_141 : HolLoopProg 64 :=
.mark loopBody242_140

def loopBody242_142 : HolLoopProg 64 :=
.seq loopBody242_21 loopBody242_141

def loopBody242_143 : HolLoopProg 64 :=
.mark loopBody242_142

def loopBody242_144 : HolLoopProg 64 :=
.seq loopBody242_7 loopBody242_143

def loopBody242_145 : HolLoopProg 64 :=
.mark loopBody242_144

def loopBody242_146 : HolLoopProg 64 :=
.seq loopBody242_135 loopBody242_145

def loopBody242_147 : HolLoopProg 64 :=
.mark loopBody242_146

def loopBody242_148 : HolLoopProg 64 :=
.seq loopBody242_57 loopBody242_147

def loopBody242_149 : HolLoopProg 64 :=
.mark loopBody242_148

def loopBody242_150 : HolLoopProg 64 :=
.seq loopBody242_1 loopBody242_149

def loopBody242_151 : HolLoopProg 64 :=
.mark loopBody242_150

def loopBody242_152 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody242_151 loopBody242_1 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody242_153 : HolLoopProg 64 :=
.mark loopBody242_152

def loopBody242_154 : HolLoopProg 64 :=
.seq loopBody242_153 loopBody242_1

def loopBody242_155 : HolLoopProg 64 :=
.mark loopBody242_154

def loopBody242_156 : HolLoopProg 64 :=
.seq loopBody242_27 loopBody242_155

def loopBody242_157 : HolLoopProg 64 :=
.mark loopBody242_156

def loopBody242_158 : HolLoopProg 64 :=
.seq loopBody242_25 loopBody242_157

def loopBody242_159 : HolLoopProg 64 :=
.mark loopBody242_158

def loopBody242_160 : HolLoopProg 64 :=
.seq loopBody242_55 loopBody242_159

def loopBody242_161 : HolLoopProg 64 :=
.mark loopBody242_160

def loopBody242_162 : HolLoopProg 64 :=
.seq loopBody242_19 loopBody242_161

def loopBody242_163 : HolLoopProg 64 :=
.mark loopBody242_162

def loopBody242_164 : HolLoopProg 64 :=
.seq loopBody242_53 loopBody242_163

def loopBody242_165 : HolLoopProg 64 :=
.mark loopBody242_164

def loopBody242_166 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 2#64)

def loopBody242_167 : HolLoopProg 64 :=
.mark loopBody242_166

def loopBody242_168 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.RegImm.reg 7) loopBody242_23 loopBody242_7 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody242_169 : HolLoopProg 64 :=
.mark loopBody242_168

def loopBody242_170 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 3])

def loopBody242_171 : HolLoopProg 64 :=
.mark loopBody242_170

def loopBody242_172 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody242_173 : HolLoopProg 64 :=
.mark loopBody242_172

def loopBody242_174 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 7 (Flapjack.RegImm.reg 8) loopBody242_55 loopBody242_21 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody242_175 : HolLoopProg 64 :=
.mark loopBody242_174

def loopBody242_176 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody242_145 loopBody242_1 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody242_177 : HolLoopProg 64 :=
.mark loopBody242_176

def loopBody242_178 : HolLoopProg 64 :=
.seq loopBody242_177 loopBody242_1

def loopBody242_179 : HolLoopProg 64 :=
.mark loopBody242_178

def loopBody242_180 : HolLoopProg 64 :=
.seq loopBody242_63 loopBody242_179

def loopBody242_181 : HolLoopProg 64 :=
.mark loopBody242_180

def loopBody242_182 : HolLoopProg 64 :=
.seq loopBody242_175 loopBody242_181

def loopBody242_183 : HolLoopProg 64 :=
.mark loopBody242_182

def loopBody242_184 : HolLoopProg 64 :=
.seq loopBody242_173 loopBody242_183

def loopBody242_185 : HolLoopProg 64 :=
.mark loopBody242_184

def loopBody242_186 : HolLoopProg 64 :=
.seq loopBody242_171 loopBody242_185

def loopBody242_187 : HolLoopProg 64 :=
.mark loopBody242_186

def loopBody242_188 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 79) ([7, 8, 9]) (some (7, loopBody242_71, loopBody242_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody242_189 : HolLoopProg 64 :=
.mark loopBody242_188

def loopBody242_190 : HolLoopProg 64 :=
.seq loopBody242_189 loopBody242_1

def loopBody242_191 : HolLoopProg 64 :=
.mark loopBody242_190

def loopBody242_192 : HolLoopProg 64 :=
.seq loopBody242_69 loopBody242_191

def loopBody242_193 : HolLoopProg 64 :=
.mark loopBody242_192

def loopBody242_194 : HolLoopProg 64 :=
.seq loopBody242_67 loopBody242_193

def loopBody242_195 : HolLoopProg 64 :=
.mark loopBody242_194

def loopBody242_196 : HolLoopProg 64 :=
.seq loopBody242_65 loopBody242_195

def loopBody242_197 : HolLoopProg 64 :=
.mark loopBody242_196

def loopBody242_198 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.RegImm.reg 9) loopBody242_85 loopBody242_87 (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody242_199 : HolLoopProg 64 :=
.mark loopBody242_198

def loopBody242_200 : HolLoopProg 64 :=
.seq loopBody242_83 loopBody242_99

def loopBody242_201 : HolLoopProg 64 :=
.mark loopBody242_200

def loopBody242_202 : HolLoopProg 64 :=
.seq loopBody242_87 loopBody242_201

def loopBody242_203 : HolLoopProg 64 :=
.mark loopBody242_202

def loopBody242_204 : HolLoopProg 64 :=
.seq loopBody242_21 loopBody242_203

def loopBody242_205 : HolLoopProg 64 :=
.mark loopBody242_204

def loopBody242_206 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody242_205 loopBody242_1 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody242_207 : HolLoopProg 64 :=
.mark loopBody242_206

def loopBody242_208 : HolLoopProg 64 :=
.seq loopBody242_207 loopBody242_1

def loopBody242_209 : HolLoopProg 64 :=
.mark loopBody242_208

def loopBody242_210 : HolLoopProg 64 :=
.seq loopBody242_91 loopBody242_209

def loopBody242_211 : HolLoopProg 64 :=
.mark loopBody242_210

def loopBody242_212 : HolLoopProg 64 :=
.seq loopBody242_199 loopBody242_211

def loopBody242_213 : HolLoopProg 64 :=
.mark loopBody242_212

def loopBody242_214 : HolLoopProg 64 :=
.seq loopBody242_83 loopBody242_213

def loopBody242_215 : HolLoopProg 64 :=
.mark loopBody242_214

def loopBody242_216 : HolLoopProg 64 :=
.seq loopBody242_27 loopBody242_215

def loopBody242_217 : HolLoopProg 64 :=
.mark loopBody242_216

def loopBody242_218 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.var 5])

def loopBody242_219 : HolLoopProg 64 :=
.mark loopBody242_218

def loopBody242_220 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 7)

def loopBody242_221 : HolLoopProg 64 :=
.mark loopBody242_220

def loopBody242_222 : HolLoopProg 64 :=
.seq loopBody242_221 loopBody242_1

def loopBody242_223 : HolLoopProg 64 :=
.mark loopBody242_222

def loopBody242_224 : HolLoopProg 64 :=
.seq loopBody242_223 loopBody242_1

def loopBody242_225 : HolLoopProg 64 :=
.mark loopBody242_224

def loopBody242_226 : HolLoopProg 64 :=
.seq loopBody242_219 loopBody242_225

def loopBody242_227 : HolLoopProg 64 :=
.mark loopBody242_226

def loopBody242_228 : HolLoopProg 64 :=
.seq loopBody242_1 loopBody242_227

def loopBody242_229 : HolLoopProg 64 :=
.mark loopBody242_228

def loopBody242_230 : HolLoopProg 64 :=
.seq loopBody242_217 loopBody242_229

def loopBody242_231 : HolLoopProg 64 :=
.mark loopBody242_230

def loopBody242_232 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 48#64]))

def loopBody242_233 : HolLoopProg 64 :=
.mark loopBody242_232

def loopBody242_234 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 0 (Flapjack.HolLoopExp.var 7)

def loopBody242_235 : HolLoopProg 64 :=
.mark loopBody242_234

def loopBody242_236 : HolLoopProg 64 :=
.seq loopBody242_235 loopBody242_1

def loopBody242_237 : HolLoopProg 64 :=
.mark loopBody242_236

def loopBody242_238 : HolLoopProg 64 :=
.seq loopBody242_237 loopBody242_1

def loopBody242_239 : HolLoopProg 64 :=
.mark loopBody242_238

def loopBody242_240 : HolLoopProg 64 :=
.seq loopBody242_233 loopBody242_239

def loopBody242_241 : HolLoopProg 64 :=
.mark loopBody242_240

def loopBody242_242 : HolLoopProg 64 :=
.seq loopBody242_1 loopBody242_241

def loopBody242_243 : HolLoopProg 64 :=
.mark loopBody242_242

def loopBody242_244 : HolLoopProg 64 :=
.seq loopBody242_231 loopBody242_243

def loopBody242_245 : HolLoopProg 64 :=
.mark loopBody242_244

def loopBody242_246 : HolLoopProg 64 :=
.seq loopBody242_197 loopBody242_245

def loopBody242_247 : HolLoopProg 64 :=
.mark loopBody242_246

def loopBody242_248 : HolLoopProg 64 :=
.seq loopBody242_1 loopBody242_247

def loopBody242_249 : HolLoopProg 64 :=
.mark loopBody242_248

def loopBody242_250 : HolLoopProg 64 :=
.seq loopBody242_1 loopBody242_249

def loopBody242_251 : HolLoopProg 64 :=
.mark loopBody242_250

def loopBody242_252 : HolLoopProg 64 :=
.seq loopBody242_187 loopBody242_251

def loopBody242_253 : HolLoopProg 64 :=
.mark loopBody242_252

def loopBody242_254 : HolLoopProg 64 :=
.seq loopBody242_57 loopBody242_253

def loopBody242_255 : HolLoopProg 64 :=
.mark loopBody242_254

def loopBody242_256 : HolLoopProg 64 :=
.seq loopBody242_1 loopBody242_255

def loopBody242_257 : HolLoopProg 64 :=
.mark loopBody242_256

def loopBody242_258 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody242_259 : HolLoopProg 64 :=
.mark loopBody242_258

def loopBody242_260 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody242_261 : HolLoopProg 64 :=
.mark loopBody242_260

def loopBody242_262 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 168#64]))

def loopBody242_263 : HolLoopProg 64 :=
.mark loopBody242_262

def loopBody242_264 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.RegImm.reg 8) loopBody242_55 loopBody242_21 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody242_265 : HolLoopProg 64 :=
.mark loopBody242_264

def loopBody242_266 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody242_145 loopBody242_1 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))

def loopBody242_267 : HolLoopProg 64 :=
.mark loopBody242_266

def loopBody242_268 : HolLoopProg 64 :=
.seq loopBody242_267 loopBody242_1

def loopBody242_269 : HolLoopProg 64 :=
.mark loopBody242_268

def loopBody242_270 : HolLoopProg 64 :=
.seq loopBody242_63 loopBody242_269

def loopBody242_271 : HolLoopProg 64 :=
.mark loopBody242_270

def loopBody242_272 : HolLoopProg 64 :=
.seq loopBody242_265 loopBody242_271

def loopBody242_273 : HolLoopProg 64 :=
.mark loopBody242_272

def loopBody242_274 : HolLoopProg 64 :=
.seq loopBody242_87 loopBody242_273

def loopBody242_275 : HolLoopProg 64 :=
.mark loopBody242_274

def loopBody242_276 : HolLoopProg 64 :=
.seq loopBody242_15 loopBody242_275

def loopBody242_277 : HolLoopProg 64 :=
.mark loopBody242_276

def loopBody242_278 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 160#64]))

def loopBody242_279 : HolLoopProg 64 :=
.mark loopBody242_278

def loopBody242_280 : HolLoopProg 64 :=
.seq loopBody242_173 loopBody242_139

def loopBody242_281 : HolLoopProg 64 :=
.mark loopBody242_280

def loopBody242_282 : HolLoopProg 64 :=
.seq loopBody242_279 loopBody242_281

def loopBody242_283 : HolLoopProg 64 :=
.mark loopBody242_282

def loopBody242_284 : HolLoopProg 64 :=
.seq loopBody242_23 loopBody242_283

def loopBody242_285 : HolLoopProg 64 :=
.mark loopBody242_284

def loopBody242_286 : HolLoopProg 64 :=
.seq loopBody242_277 loopBody242_285

def loopBody242_287 : HolLoopProg 64 :=
.mark loopBody242_286

def loopBody242_288 : HolLoopProg 64 :=
.seq loopBody242_263 loopBody242_287

def loopBody242_289 : HolLoopProg 64 :=
.mark loopBody242_288

def loopBody242_290 : HolLoopProg 64 :=
.seq loopBody242_1 loopBody242_289

def loopBody242_291 : HolLoopProg 64 :=
.mark loopBody242_290

def loopBody242_292 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody242_291 loopBody242_1 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody242_293 : HolLoopProg 64 :=
.mark loopBody242_292

def loopBody242_294 : HolLoopProg 64 :=
.seq loopBody242_293 loopBody242_1

def loopBody242_295 : HolLoopProg 64 :=
.mark loopBody242_294

def loopBody242_296 : HolLoopProg 64 :=
.seq loopBody242_27 loopBody242_295

def loopBody242_297 : HolLoopProg 64 :=
.mark loopBody242_296

def loopBody242_298 : HolLoopProg 64 :=
.seq loopBody242_169 loopBody242_297

def loopBody242_299 : HolLoopProg 64 :=
.mark loopBody242_298

def loopBody242_300 : HolLoopProg 64 :=
.seq loopBody242_261 loopBody242_299

def loopBody242_301 : HolLoopProg 64 :=
.mark loopBody242_300

def loopBody242_302 : HolLoopProg 64 :=
.seq loopBody242_259 loopBody242_301

def loopBody242_303 : HolLoopProg 64 :=
.mark loopBody242_302

def loopBody242_304 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 3])

def loopBody242_305 : HolLoopProg 64 :=
.mark loopBody242_304

def loopBody242_306 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 5 5

def loopBody242_307 : HolLoopProg 64 :=
.mark loopBody242_306

def loopBody242_308 : HolLoopProg 64 :=
.seq loopBody242_307 loopBody242_1

def loopBody242_309 : HolLoopProg 64 :=
.mark loopBody242_308

def loopBody242_310 : HolLoopProg 64 :=
.seq loopBody242_305 loopBody242_309

def loopBody242_311 : HolLoopProg 64 :=
.mark loopBody242_310

def loopBody242_312 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 32#64,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 5) (Flapjack.HolLoopExp.const 3#64)]))

def loopBody242_313 : HolLoopProg 64 :=
.mark loopBody242_312

def loopBody242_314 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 0 (Flapjack.HolLoopExp.var 6)

def loopBody242_315 : HolLoopProg 64 :=
.mark loopBody242_314

def loopBody242_316 : HolLoopProg 64 :=
.seq loopBody242_315 loopBody242_1

def loopBody242_317 : HolLoopProg 64 :=
.mark loopBody242_316

def loopBody242_318 : HolLoopProg 64 :=
.seq loopBody242_317 loopBody242_1

def loopBody242_319 : HolLoopProg 64 :=
.mark loopBody242_318

def loopBody242_320 : HolLoopProg 64 :=
.seq loopBody242_313 loopBody242_319

def loopBody242_321 : HolLoopProg 64 :=
.mark loopBody242_320

def loopBody242_322 : HolLoopProg 64 :=
.seq loopBody242_311 loopBody242_321

def loopBody242_323 : HolLoopProg 64 :=
.mark loopBody242_322

def loopBody242_324 : HolLoopProg 64 :=
.seq loopBody242_303 loopBody242_323

def loopBody242_325 : HolLoopProg 64 :=
.mark loopBody242_324

def loopBody242_326 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 1#64])

def loopBody242_327 : HolLoopProg 64 :=
.mark loopBody242_326

def loopBody242_328 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 5)

def loopBody242_329 : HolLoopProg 64 :=
.mark loopBody242_328

def loopBody242_330 : HolLoopProg 64 :=
.seq loopBody242_329 loopBody242_1

def loopBody242_331 : HolLoopProg 64 :=
.mark loopBody242_330

def loopBody242_332 : HolLoopProg 64 :=
.seq loopBody242_331 loopBody242_1

def loopBody242_333 : HolLoopProg 64 :=
.mark loopBody242_332

def loopBody242_334 : HolLoopProg 64 :=
.seq loopBody242_327 loopBody242_333

def loopBody242_335 : HolLoopProg 64 :=
.mark loopBody242_334

def loopBody242_336 : HolLoopProg 64 :=
.seq loopBody242_1 loopBody242_335

def loopBody242_337 : HolLoopProg 64 :=
.mark loopBody242_336

def loopBody242_338 : HolLoopProg 64 :=
.seq loopBody242_325 loopBody242_337

def loopBody242_339 : HolLoopProg 64 :=
.mark loopBody242_338

def loopBody242_340 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody242_257 loopBody242_339 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody242_341 : HolLoopProg 64 :=
.mark loopBody242_340

def loopBody242_342 : HolLoopProg 64 :=
.seq loopBody242_341 loopBody242_1

def loopBody242_343 : HolLoopProg 64 :=
.mark loopBody242_342

def loopBody242_344 : HolLoopProg 64 :=
.seq loopBody242_27 loopBody242_343

def loopBody242_345 : HolLoopProg 64 :=
.mark loopBody242_344

def loopBody242_346 : HolLoopProg 64 :=
.seq loopBody242_169 loopBody242_345

def loopBody242_347 : HolLoopProg 64 :=
.mark loopBody242_346

def loopBody242_348 : HolLoopProg 64 :=
.seq loopBody242_167 loopBody242_347

def loopBody242_349 : HolLoopProg 64 :=
.mark loopBody242_348

def loopBody242_350 : HolLoopProg 64 :=
.seq loopBody242_19 loopBody242_349

def loopBody242_351 : HolLoopProg 64 :=
.mark loopBody242_350

def loopBody242_352 : HolLoopProg 64 :=
.seq loopBody242_165 loopBody242_351

def loopBody242_353 : HolLoopProg 64 :=
.mark loopBody242_352

def loopBody242_354 : HolLoopProg 64 :=
.seq loopBody242_17 loopBody242_353

def loopBody242_355 : HolLoopProg 64 :=
.mark loopBody242_354

def loopBody242_356 : HolLoopProg 64 :=
.seq loopBody242_1 loopBody242_355

def loopBody242_357 : HolLoopProg 64 :=
.mark loopBody242_356

def loopBody242_358 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody242_359 : HolLoopProg 64 :=
.mark loopBody242_358

def loopBody242_360 : HolLoopProg 64 :=
.seq loopBody242_357 loopBody242_359

def loopBody242_361 : HolLoopProg 64 :=
.mark loopBody242_360

def loopBody242_362 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody242_363 : HolLoopProg 64 :=
.mark loopBody242_362

def loopBody242_364 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody242_361 loopBody242_363 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody242_365 : HolLoopProg 64 :=
.mark loopBody242_364

def loopBody242_366 : HolLoopProg 64 :=
.seq loopBody242_365 loopBody242_1

def loopBody242_367 : HolLoopProg 64 :=
.mark loopBody242_366

def loopBody242_368 : HolLoopProg 64 :=
.seq loopBody242_15 loopBody242_367

def loopBody242_369 : HolLoopProg 64 :=
.mark loopBody242_368

def loopBody242_370 : HolLoopProg 64 :=
.seq loopBody242_13 loopBody242_369

def loopBody242_371 : HolLoopProg 64 :=
.mark loopBody242_370

def loopBody242_372 : HolLoopProg 64 :=
.seq loopBody242_7 loopBody242_371

def loopBody242_373 : HolLoopProg 64 :=
.mark loopBody242_372

def loopBody242_374 : HolLoopProg 64 :=
.seq loopBody242_5 loopBody242_373

def loopBody242_375 : HolLoopProg 64 :=
.mark loopBody242_374

def loopBody242_376 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody242_375 (Flapjack.Spt.ln)

def loopBody242_377 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody242_378 : HolLoopProg 64 :=
.mark loopBody242_377

def loopBody242_379 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4, 5, 6]

def loopBody242_380 : HolLoopProg 64 :=
.mark loopBody242_379

def loopBody242_381 : HolLoopProg 64 :=
.seq loopBody242_380 loopBody242_1

def loopBody242_382 : HolLoopProg 64 :=
.mark loopBody242_381

def loopBody242_383 : HolLoopProg 64 :=
.seq loopBody242_7 loopBody242_382

def loopBody242_384 : HolLoopProg 64 :=
.mark loopBody242_383

def loopBody242_385 : HolLoopProg 64 :=
.seq loopBody242_11 loopBody242_384

def loopBody242_386 : HolLoopProg 64 :=
.mark loopBody242_385

def loopBody242_387 : HolLoopProg 64 :=
.seq loopBody242_378 loopBody242_386

def loopBody242_388 : HolLoopProg 64 :=
.mark loopBody242_387

def loopBody242_389 : HolLoopProg 64 :=
.seq loopBody242_376 loopBody242_388

def loopBody242_390 : HolLoopProg 64 :=
.seq loopBody242_3 loopBody242_389

def loopBody242_391 : HolLoopProg 64 :=
.seq loopBody242_1 loopBody242_390

def output242 : Nat × List Nat × HolLoopProg 64 :=
  (306, [0, 1, 2], loopBody242_391)
end InitECandidate.Proofs.FrontendStages.Loop
