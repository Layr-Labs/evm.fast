import InitECandidate.Proofs.FrontendStages.Loop.Translate305
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody321_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody321_1 : HolLoopProg 64 :=
.mark loopBody321_0

def loopBody321_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody321_3 : HolLoopProg 64 :=
.mark loopBody321_2

def loopBody321_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody321_5 : HolLoopProg 64 :=
.mark loopBody321_4

def loopBody321_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody321_7 : HolLoopProg 64 :=
.mark loopBody321_6

def loopBody321_8 : HolLoopProg 64 :=
.call (some ([2, 3, 4], Flapjack.Spt.ls PUnit.unit)) (some 384) ([5, 6]) (some (5, loopBody321_7, loopBody321_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody321_9 : HolLoopProg 64 :=
.mark loopBody321_8

def loopBody321_10 : HolLoopProg 64 :=
.seq loopBody321_9 loopBody321_1

def loopBody321_11 : HolLoopProg 64 :=
.mark loopBody321_10

def loopBody321_12 : HolLoopProg 64 :=
.seq loopBody321_5 loopBody321_11

def loopBody321_13 : HolLoopProg 64 :=
.mark loopBody321_12

def loopBody321_14 : HolLoopProg 64 :=
.seq loopBody321_3 loopBody321_13

def loopBody321_15 : HolLoopProg 64 :=
.mark loopBody321_14

def loopBody321_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 144#64]))

def loopBody321_17 : HolLoopProg 64 :=
.mark loopBody321_16

def loopBody321_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 4294967295#64)

def loopBody321_19 : HolLoopProg 64 :=
.mark loopBody321_18

def loopBody321_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody321_21 : HolLoopProg 64 :=
.mark loopBody321_20

def loopBody321_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody321_23 : HolLoopProg 64 :=
.mark loopBody321_22

def loopBody321_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody321_25 : HolLoopProg 64 :=
.mark loopBody321_24

def loopBody321_26 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 7 (Flapjack.RegImm.reg 8) loopBody321_23 loopBody321_25 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody321_27 : HolLoopProg 64 :=
.mark loopBody321_26

def loopBody321_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody321_29 : HolLoopProg 64 :=
.mark loopBody321_28

def loopBody321_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 66#64)

def loopBody321_31 : HolLoopProg 64 :=
.mark loopBody321_30

def loopBody321_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 6)

def loopBody321_33 : HolLoopProg 64 :=
.mark loopBody321_32

def loopBody321_34 : HolLoopProg 64 :=
.seq loopBody321_33 loopBody321_1

def loopBody321_35 : HolLoopProg 64 :=
.mark loopBody321_34

def loopBody321_36 : HolLoopProg 64 :=
.seq loopBody321_35 loopBody321_1

def loopBody321_37 : HolLoopProg 64 :=
.mark loopBody321_36

def loopBody321_38 : HolLoopProg 64 :=
.seq loopBody321_31 loopBody321_37

def loopBody321_39 : HolLoopProg 64 :=
.mark loopBody321_38

def loopBody321_40 : HolLoopProg 64 :=
.seq loopBody321_1 loopBody321_39

def loopBody321_41 : HolLoopProg 64 :=
.mark loopBody321_40

def loopBody321_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 6#64)

def loopBody321_43 : HolLoopProg 64 :=
.mark loopBody321_42

def loopBody321_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody321_45 : HolLoopProg 64 :=
.mark loopBody321_44

def loopBody321_46 : HolLoopProg 64 :=
.seq loopBody321_43 loopBody321_45

def loopBody321_47 : HolLoopProg 64 :=
.mark loopBody321_46

def loopBody321_48 : HolLoopProg 64 :=
.seq loopBody321_41 loopBody321_47

def loopBody321_49 : HolLoopProg 64 :=
.mark loopBody321_48

def loopBody321_50 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody321_49 loopBody321_1 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))

def loopBody321_51 : HolLoopProg 64 :=
.mark loopBody321_50

def loopBody321_52 : HolLoopProg 64 :=
.seq loopBody321_51 loopBody321_1

def loopBody321_53 : HolLoopProg 64 :=
.mark loopBody321_52

def loopBody321_54 : HolLoopProg 64 :=
.seq loopBody321_29 loopBody321_53

def loopBody321_55 : HolLoopProg 64 :=
.mark loopBody321_54

def loopBody321_56 : HolLoopProg 64 :=
.seq loopBody321_27 loopBody321_55

def loopBody321_57 : HolLoopProg 64 :=
.mark loopBody321_56

def loopBody321_58 : HolLoopProg 64 :=
.seq loopBody321_21 loopBody321_57

def loopBody321_59 : HolLoopProg 64 :=
.mark loopBody321_58

def loopBody321_60 : HolLoopProg 64 :=
.seq loopBody321_19 loopBody321_59

def loopBody321_61 : HolLoopProg 64 :=
.mark loopBody321_60

def loopBody321_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody321_63 : HolLoopProg 64 :=
.mark loopBody321_62

def loopBody321_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 3])

def loopBody321_65 : HolLoopProg 64 :=
.mark loopBody321_64

def loopBody321_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 60#64)

def loopBody321_67 : HolLoopProg 64 :=
.mark loopBody321_66

def loopBody321_68 : HolLoopProg 64 :=
.seq loopBody321_67 loopBody321_37

def loopBody321_69 : HolLoopProg 64 :=
.mark loopBody321_68

def loopBody321_70 : HolLoopProg 64 :=
.seq loopBody321_1 loopBody321_69

def loopBody321_71 : HolLoopProg 64 :=
.mark loopBody321_70

def loopBody321_72 : HolLoopProg 64 :=
.seq loopBody321_71 loopBody321_47

def loopBody321_73 : HolLoopProg 64 :=
.mark loopBody321_72

def loopBody321_74 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody321_73 loopBody321_1 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))

def loopBody321_75 : HolLoopProg 64 :=
.mark loopBody321_74

def loopBody321_76 : HolLoopProg 64 :=
.seq loopBody321_75 loopBody321_1

def loopBody321_77 : HolLoopProg 64 :=
.mark loopBody321_76

def loopBody321_78 : HolLoopProg 64 :=
.seq loopBody321_29 loopBody321_77

def loopBody321_79 : HolLoopProg 64 :=
.mark loopBody321_78

def loopBody321_80 : HolLoopProg 64 :=
.seq loopBody321_27 loopBody321_79

def loopBody321_81 : HolLoopProg 64 :=
.mark loopBody321_80

def loopBody321_82 : HolLoopProg 64 :=
.seq loopBody321_65 loopBody321_81

def loopBody321_83 : HolLoopProg 64 :=
.mark loopBody321_82

def loopBody321_84 : HolLoopProg 64 :=
.seq loopBody321_63 loopBody321_83

def loopBody321_85 : HolLoopProg 64 :=
.mark loopBody321_84

def loopBody321_86 : HolLoopProg 64 :=
.seq loopBody321_61 loopBody321_85

def loopBody321_87 : HolLoopProg 64 :=
.mark loopBody321_86

def loopBody321_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 4)

def loopBody321_89 : HolLoopProg 64 :=
.mark loopBody321_88

def loopBody321_90 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 7 (Flapjack.RegImm.reg 8) loopBody321_23 loopBody321_25 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody321_91 : HolLoopProg 64 :=
.mark loopBody321_90

def loopBody321_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 61#64)

def loopBody321_93 : HolLoopProg 64 :=
.mark loopBody321_92

def loopBody321_94 : HolLoopProg 64 :=
.seq loopBody321_93 loopBody321_37

def loopBody321_95 : HolLoopProg 64 :=
.mark loopBody321_94

def loopBody321_96 : HolLoopProg 64 :=
.seq loopBody321_1 loopBody321_95

def loopBody321_97 : HolLoopProg 64 :=
.mark loopBody321_96

def loopBody321_98 : HolLoopProg 64 :=
.seq loopBody321_97 loopBody321_47

def loopBody321_99 : HolLoopProg 64 :=
.mark loopBody321_98

def loopBody321_100 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody321_99 loopBody321_1 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody321_101 : HolLoopProg 64 :=
.mark loopBody321_100

def loopBody321_102 : HolLoopProg 64 :=
.seq loopBody321_101 loopBody321_1

def loopBody321_103 : HolLoopProg 64 :=
.mark loopBody321_102

def loopBody321_104 : HolLoopProg 64 :=
.seq loopBody321_29 loopBody321_103

def loopBody321_105 : HolLoopProg 64 :=
.mark loopBody321_104

def loopBody321_106 : HolLoopProg 64 :=
.seq loopBody321_91 loopBody321_105

def loopBody321_107 : HolLoopProg 64 :=
.mark loopBody321_106

def loopBody321_108 : HolLoopProg 64 :=
.seq loopBody321_89 loopBody321_107

def loopBody321_109 : HolLoopProg 64 :=
.mark loopBody321_108

def loopBody321_110 : HolLoopProg 64 :=
.seq loopBody321_63 loopBody321_109

def loopBody321_111 : HolLoopProg 64 :=
.mark loopBody321_110

def loopBody321_112 : HolLoopProg 64 :=
.seq loopBody321_87 loopBody321_111

def loopBody321_113 : HolLoopProg 64 :=
.mark loopBody321_112

def loopBody321_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 152#64]))

def loopBody321_115 : HolLoopProg 64 :=
.mark loopBody321_114

def loopBody321_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody321_117 : HolLoopProg 64 :=
.mark loopBody321_116

def loopBody321_118 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.RegImm.reg 8) loopBody321_23 loopBody321_25 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody321_119 : HolLoopProg 64 :=
.mark loopBody321_118

def loopBody321_120 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 131072#64)

def loopBody321_121 : HolLoopProg 64 :=
.mark loopBody321_120

def loopBody321_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 200#64]))

def loopBody321_123 : HolLoopProg 64 :=
.mark loopBody321_122

def loopBody321_124 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 62#64)

def loopBody321_125 : HolLoopProg 64 :=
.mark loopBody321_124

def loopBody321_126 : HolLoopProg 64 :=
.seq loopBody321_125 loopBody321_37

def loopBody321_127 : HolLoopProg 64 :=
.mark loopBody321_126

def loopBody321_128 : HolLoopProg 64 :=
.seq loopBody321_1 loopBody321_127

def loopBody321_129 : HolLoopProg 64 :=
.mark loopBody321_128

def loopBody321_130 : HolLoopProg 64 :=
.seq loopBody321_129 loopBody321_47

def loopBody321_131 : HolLoopProg 64 :=
.mark loopBody321_130

def loopBody321_132 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody321_131 loopBody321_1 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody321_133 : HolLoopProg 64 :=
.mark loopBody321_132

def loopBody321_134 : HolLoopProg 64 :=
.seq loopBody321_133 loopBody321_1

def loopBody321_135 : HolLoopProg 64 :=
.mark loopBody321_134

def loopBody321_136 : HolLoopProg 64 :=
.seq loopBody321_29 loopBody321_135

def loopBody321_137 : HolLoopProg 64 :=
.mark loopBody321_136

def loopBody321_138 : HolLoopProg 64 :=
.seq loopBody321_91 loopBody321_137

def loopBody321_139 : HolLoopProg 64 :=
.mark loopBody321_138

def loopBody321_140 : HolLoopProg 64 :=
.seq loopBody321_123 loopBody321_139

def loopBody321_141 : HolLoopProg 64 :=
.mark loopBody321_140

def loopBody321_142 : HolLoopProg 64 :=
.seq loopBody321_121 loopBody321_141

def loopBody321_143 : HolLoopProg 64 :=
.mark loopBody321_142

def loopBody321_144 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody321_143 loopBody321_1 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody321_145 : HolLoopProg 64 :=
.mark loopBody321_144

def loopBody321_146 : HolLoopProg 64 :=
.seq loopBody321_145 loopBody321_1

def loopBody321_147 : HolLoopProg 64 :=
.mark loopBody321_146

def loopBody321_148 : HolLoopProg 64 :=
.seq loopBody321_29 loopBody321_147

def loopBody321_149 : HolLoopProg 64 :=
.mark loopBody321_148

def loopBody321_150 : HolLoopProg 64 :=
.seq loopBody321_119 loopBody321_149

def loopBody321_151 : HolLoopProg 64 :=
.mark loopBody321_150

def loopBody321_152 : HolLoopProg 64 :=
.seq loopBody321_117 loopBody321_151

def loopBody321_153 : HolLoopProg 64 :=
.mark loopBody321_152

def loopBody321_154 : HolLoopProg 64 :=
.seq loopBody321_115 loopBody321_153

def loopBody321_155 : HolLoopProg 64 :=
.mark loopBody321_154

def loopBody321_156 : HolLoopProg 64 :=
.seq loopBody321_113 loopBody321_155

def loopBody321_157 : HolLoopProg 64 :=
.mark loopBody321_156

def loopBody321_158 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 16777216#64)

def loopBody321_159 : HolLoopProg 64 :=
.mark loopBody321_158

def loopBody321_160 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody321_161 : HolLoopProg 64 :=
.mark loopBody321_160

def loopBody321_162 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 63#64)

def loopBody321_163 : HolLoopProg 64 :=
.mark loopBody321_162

def loopBody321_164 : HolLoopProg 64 :=
.seq loopBody321_163 loopBody321_37

def loopBody321_165 : HolLoopProg 64 :=
.mark loopBody321_164

def loopBody321_166 : HolLoopProg 64 :=
.seq loopBody321_1 loopBody321_165

def loopBody321_167 : HolLoopProg 64 :=
.mark loopBody321_166

def loopBody321_168 : HolLoopProg 64 :=
.seq loopBody321_167 loopBody321_47

def loopBody321_169 : HolLoopProg 64 :=
.mark loopBody321_168

def loopBody321_170 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody321_169 loopBody321_1 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody321_171 : HolLoopProg 64 :=
.mark loopBody321_170

def loopBody321_172 : HolLoopProg 64 :=
.seq loopBody321_171 loopBody321_1

def loopBody321_173 : HolLoopProg 64 :=
.mark loopBody321_172

def loopBody321_174 : HolLoopProg 64 :=
.seq loopBody321_29 loopBody321_173

def loopBody321_175 : HolLoopProg 64 :=
.mark loopBody321_174

def loopBody321_176 : HolLoopProg 64 :=
.seq loopBody321_91 loopBody321_175

def loopBody321_177 : HolLoopProg 64 :=
.mark loopBody321_176

def loopBody321_178 : HolLoopProg 64 :=
.seq loopBody321_161 loopBody321_177

def loopBody321_179 : HolLoopProg 64 :=
.mark loopBody321_178

def loopBody321_180 : HolLoopProg 64 :=
.seq loopBody321_159 loopBody321_179

def loopBody321_181 : HolLoopProg 64 :=
.mark loopBody321_180

def loopBody321_182 : HolLoopProg 64 :=
.seq loopBody321_157 loopBody321_181

def loopBody321_183 : HolLoopProg 64 :=
.mark loopBody321_182

def loopBody321_184 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 64#64)

def loopBody321_185 : HolLoopProg 64 :=
.mark loopBody321_184

def loopBody321_186 : HolLoopProg 64 :=
.seq loopBody321_185 loopBody321_37

def loopBody321_187 : HolLoopProg 64 :=
.mark loopBody321_186

def loopBody321_188 : HolLoopProg 64 :=
.seq loopBody321_1 loopBody321_187

def loopBody321_189 : HolLoopProg 64 :=
.mark loopBody321_188

def loopBody321_190 : HolLoopProg 64 :=
.seq loopBody321_189 loopBody321_47

def loopBody321_191 : HolLoopProg 64 :=
.mark loopBody321_190

def loopBody321_192 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody321_191 loopBody321_1 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody321_193 : HolLoopProg 64 :=
.mark loopBody321_192

def loopBody321_194 : HolLoopProg 64 :=
.seq loopBody321_193 loopBody321_1

def loopBody321_195 : HolLoopProg 64 :=
.mark loopBody321_194

def loopBody321_196 : HolLoopProg 64 :=
.seq loopBody321_29 loopBody321_195

def loopBody321_197 : HolLoopProg 64 :=
.mark loopBody321_196

def loopBody321_198 : HolLoopProg 64 :=
.seq loopBody321_91 loopBody321_197

def loopBody321_199 : HolLoopProg 64 :=
.mark loopBody321_198

def loopBody321_200 : HolLoopProg 64 :=
.seq loopBody321_89 loopBody321_199

def loopBody321_201 : HolLoopProg 64 :=
.mark loopBody321_200

def loopBody321_202 : HolLoopProg 64 :=
.seq loopBody321_159 loopBody321_201

def loopBody321_203 : HolLoopProg 64 :=
.mark loopBody321_202

def loopBody321_204 : HolLoopProg 64 :=
.seq loopBody321_183 loopBody321_203

def loopBody321_205 : HolLoopProg 64 :=
.mark loopBody321_204

def loopBody321_206 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 16#64]))

def loopBody321_207 : HolLoopProg 64 :=
.mark loopBody321_206

def loopBody321_208 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 16#64],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody321_209 : HolLoopProg 64 :=
.mark loopBody321_208

def loopBody321_210 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 16#64],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody321_211 : HolLoopProg 64 :=
.mark loopBody321_210

def loopBody321_212 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 16#64],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody321_213 : HolLoopProg 64 :=
.mark loopBody321_212

def loopBody321_214 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 6)

def loopBody321_215 : HolLoopProg 64 :=
.mark loopBody321_214

def loopBody321_216 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 7)

def loopBody321_217 : HolLoopProg 64 :=
.mark loopBody321_216

def loopBody321_218 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 8)

def loopBody321_219 : HolLoopProg 64 :=
.mark loopBody321_218

def loopBody321_220 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 9)

def loopBody321_221 : HolLoopProg 64 :=
.mark loopBody321_220

def loopBody321_222 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 11

def loopBody321_223 : HolLoopProg 64 :=
.mark loopBody321_222

def loopBody321_224 : HolLoopProg 64 :=
.call (some
  ([10],
    Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 101) ([11, 12, 13, 14]) (some (11, loopBody321_223, loopBody321_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody321_225 : HolLoopProg 64 :=
.mark loopBody321_224

def loopBody321_226 : HolLoopProg 64 :=
.seq loopBody321_225 loopBody321_1

def loopBody321_227 : HolLoopProg 64 :=
.mark loopBody321_226

def loopBody321_228 : HolLoopProg 64 :=
.seq loopBody321_221 loopBody321_227

def loopBody321_229 : HolLoopProg 64 :=
.mark loopBody321_228

def loopBody321_230 : HolLoopProg 64 :=
.seq loopBody321_219 loopBody321_229

def loopBody321_231 : HolLoopProg 64 :=
.mark loopBody321_230

def loopBody321_232 : HolLoopProg 64 :=
.seq loopBody321_217 loopBody321_231

def loopBody321_233 : HolLoopProg 64 :=
.mark loopBody321_232

def loopBody321_234 : HolLoopProg 64 :=
.seq loopBody321_215 loopBody321_233

def loopBody321_235 : HolLoopProg 64 :=
.mark loopBody321_234

def loopBody321_236 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 10)

def loopBody321_237 : HolLoopProg 64 :=
.mark loopBody321_236

def loopBody321_238 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 0#64)

def loopBody321_239 : HolLoopProg 64 :=
.mark loopBody321_238

def loopBody321_240 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 1#64)

def loopBody321_241 : HolLoopProg 64 :=
.mark loopBody321_240

def loopBody321_242 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 0#64)

def loopBody321_243 : HolLoopProg 64 :=
.mark loopBody321_242

def loopBody321_244 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.RegImm.reg 13) loopBody321_241 loopBody321_243 (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody321_245 : HolLoopProg 64 :=
.mark loopBody321_244

def loopBody321_246 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 12)

def loopBody321_247 : HolLoopProg 64 :=
.mark loopBody321_246

def loopBody321_248 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 65#64)

def loopBody321_249 : HolLoopProg 64 :=
.mark loopBody321_248

def loopBody321_250 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 11)

def loopBody321_251 : HolLoopProg 64 :=
.mark loopBody321_250

def loopBody321_252 : HolLoopProg 64 :=
.seq loopBody321_251 loopBody321_1

def loopBody321_253 : HolLoopProg 64 :=
.mark loopBody321_252

def loopBody321_254 : HolLoopProg 64 :=
.seq loopBody321_253 loopBody321_1

def loopBody321_255 : HolLoopProg 64 :=
.mark loopBody321_254

def loopBody321_256 : HolLoopProg 64 :=
.seq loopBody321_249 loopBody321_255

def loopBody321_257 : HolLoopProg 64 :=
.mark loopBody321_256

def loopBody321_258 : HolLoopProg 64 :=
.seq loopBody321_1 loopBody321_257

def loopBody321_259 : HolLoopProg 64 :=
.mark loopBody321_258

def loopBody321_260 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 6#64)

def loopBody321_261 : HolLoopProg 64 :=
.mark loopBody321_260

def loopBody321_262 : HolLoopProg 64 :=
.seq loopBody321_261 loopBody321_223

def loopBody321_263 : HolLoopProg 64 :=
.mark loopBody321_262

def loopBody321_264 : HolLoopProg 64 :=
.seq loopBody321_259 loopBody321_263

def loopBody321_265 : HolLoopProg 64 :=
.mark loopBody321_264

def loopBody321_266 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.RegImm.imm 0#64) loopBody321_265 loopBody321_1 (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody321_267 : HolLoopProg 64 :=
.mark loopBody321_266

def loopBody321_268 : HolLoopProg 64 :=
.seq loopBody321_267 loopBody321_1

def loopBody321_269 : HolLoopProg 64 :=
.mark loopBody321_268

def loopBody321_270 : HolLoopProg 64 :=
.seq loopBody321_247 loopBody321_269

def loopBody321_271 : HolLoopProg 64 :=
.mark loopBody321_270

def loopBody321_272 : HolLoopProg 64 :=
.seq loopBody321_245 loopBody321_271

def loopBody321_273 : HolLoopProg 64 :=
.mark loopBody321_272

def loopBody321_274 : HolLoopProg 64 :=
.seq loopBody321_239 loopBody321_273

def loopBody321_275 : HolLoopProg 64 :=
.mark loopBody321_274

def loopBody321_276 : HolLoopProg 64 :=
.seq loopBody321_237 loopBody321_275

def loopBody321_277 : HolLoopProg 64 :=
.mark loopBody321_276

def loopBody321_278 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 6)

def loopBody321_279 : HolLoopProg 64 :=
.mark loopBody321_278

def loopBody321_280 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 0#64, Flapjack.HolLoopExp.const 1#64])

def loopBody321_281 : HolLoopProg 64 :=
.mark loopBody321_280

def loopBody321_282 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.RegImm.reg 13) loopBody321_241 loopBody321_243 (Flapjack.Spt.bn
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody321_283 : HolLoopProg 64 :=
.mark loopBody321_282

def loopBody321_284 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.RegImm.imm 0#64) loopBody321_265 loopBody321_1 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody321_285 : HolLoopProg 64 :=
.mark loopBody321_284

def loopBody321_286 : HolLoopProg 64 :=
.seq loopBody321_285 loopBody321_1

def loopBody321_287 : HolLoopProg 64 :=
.mark loopBody321_286

def loopBody321_288 : HolLoopProg 64 :=
.seq loopBody321_247 loopBody321_287

def loopBody321_289 : HolLoopProg 64 :=
.mark loopBody321_288

def loopBody321_290 : HolLoopProg 64 :=
.seq loopBody321_283 loopBody321_289

def loopBody321_291 : HolLoopProg 64 :=
.mark loopBody321_290

def loopBody321_292 : HolLoopProg 64 :=
.seq loopBody321_281 loopBody321_291

def loopBody321_293 : HolLoopProg 64 :=
.mark loopBody321_292

def loopBody321_294 : HolLoopProg 64 :=
.seq loopBody321_279 loopBody321_293

def loopBody321_295 : HolLoopProg 64 :=
.mark loopBody321_294

def loopBody321_296 : HolLoopProg 64 :=
.seq loopBody321_277 loopBody321_295

def loopBody321_297 : HolLoopProg 64 :=
.mark loopBody321_296

def loopBody321_298 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 2)

def loopBody321_299 : HolLoopProg 64 :=
.mark loopBody321_298

def loopBody321_300 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 3)

def loopBody321_301 : HolLoopProg 64 :=
.mark loopBody321_300

def loopBody321_302 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 4)

def loopBody321_303 : HolLoopProg 64 :=
.mark loopBody321_302

def loopBody321_304 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [11, 12, 13]

def loopBody321_305 : HolLoopProg 64 :=
.mark loopBody321_304

def loopBody321_306 : HolLoopProg 64 :=
.seq loopBody321_305 loopBody321_1

def loopBody321_307 : HolLoopProg 64 :=
.mark loopBody321_306

def loopBody321_308 : HolLoopProg 64 :=
.seq loopBody321_303 loopBody321_307

def loopBody321_309 : HolLoopProg 64 :=
.mark loopBody321_308

def loopBody321_310 : HolLoopProg 64 :=
.seq loopBody321_301 loopBody321_309

def loopBody321_311 : HolLoopProg 64 :=
.mark loopBody321_310

def loopBody321_312 : HolLoopProg 64 :=
.seq loopBody321_299 loopBody321_311

def loopBody321_313 : HolLoopProg 64 :=
.mark loopBody321_312

def loopBody321_314 : HolLoopProg 64 :=
.seq loopBody321_297 loopBody321_313

def loopBody321_315 : HolLoopProg 64 :=
.mark loopBody321_314

def loopBody321_316 : HolLoopProg 64 :=
.seq loopBody321_235 loopBody321_315

def loopBody321_317 : HolLoopProg 64 :=
.mark loopBody321_316

def loopBody321_318 : HolLoopProg 64 :=
.seq loopBody321_1 loopBody321_317

def loopBody321_319 : HolLoopProg 64 :=
.mark loopBody321_318

def loopBody321_320 : HolLoopProg 64 :=
.seq loopBody321_1 loopBody321_319

def loopBody321_321 : HolLoopProg 64 :=
.mark loopBody321_320

def loopBody321_322 : HolLoopProg 64 :=
.seq loopBody321_213 loopBody321_321

def loopBody321_323 : HolLoopProg 64 :=
.mark loopBody321_322

def loopBody321_324 : HolLoopProg 64 :=
.seq loopBody321_1 loopBody321_323

def loopBody321_325 : HolLoopProg 64 :=
.mark loopBody321_324

def loopBody321_326 : HolLoopProg 64 :=
.seq loopBody321_211 loopBody321_325

def loopBody321_327 : HolLoopProg 64 :=
.mark loopBody321_326

def loopBody321_328 : HolLoopProg 64 :=
.seq loopBody321_1 loopBody321_327

def loopBody321_329 : HolLoopProg 64 :=
.mark loopBody321_328

def loopBody321_330 : HolLoopProg 64 :=
.seq loopBody321_209 loopBody321_329

def loopBody321_331 : HolLoopProg 64 :=
.mark loopBody321_330

def loopBody321_332 : HolLoopProg 64 :=
.seq loopBody321_1 loopBody321_331

def loopBody321_333 : HolLoopProg 64 :=
.mark loopBody321_332

def loopBody321_334 : HolLoopProg 64 :=
.seq loopBody321_207 loopBody321_333

def loopBody321_335 : HolLoopProg 64 :=
.mark loopBody321_334

def loopBody321_336 : HolLoopProg 64 :=
.seq loopBody321_1 loopBody321_335

def loopBody321_337 : HolLoopProg 64 :=
.mark loopBody321_336

def loopBody321_338 : HolLoopProg 64 :=
.seq loopBody321_205 loopBody321_337

def loopBody321_339 : HolLoopProg 64 :=
.mark loopBody321_338

def loopBody321_340 : HolLoopProg 64 :=
.seq loopBody321_17 loopBody321_339

def loopBody321_341 : HolLoopProg 64 :=
.mark loopBody321_340

def loopBody321_342 : HolLoopProg 64 :=
.seq loopBody321_1 loopBody321_341

def loopBody321_343 : HolLoopProg 64 :=
.mark loopBody321_342

def loopBody321_344 : HolLoopProg 64 :=
.seq loopBody321_15 loopBody321_343

def loopBody321_345 : HolLoopProg 64 :=
.mark loopBody321_344

def loopBody321_346 : HolLoopProg 64 :=
.seq loopBody321_1 loopBody321_345

def loopBody321_347 : HolLoopProg 64 :=
.mark loopBody321_346

def loopBody321_348 : HolLoopProg 64 :=
.seq loopBody321_1 loopBody321_347

def loopBody321_349 : HolLoopProg 64 :=
.mark loopBody321_348

def loopBody321_350 : HolLoopProg 64 :=
.seq loopBody321_1 loopBody321_349

def loopBody321_351 : HolLoopProg 64 :=
.mark loopBody321_350

def loopBody321_352 : HolLoopProg 64 :=
.seq loopBody321_1 loopBody321_351

def loopBody321_353 : HolLoopProg 64 :=
.mark loopBody321_352

def loopBody321_354 : HolLoopProg 64 :=
.seq loopBody321_1 loopBody321_353

def loopBody321_355 : HolLoopProg 64 :=
.mark loopBody321_354

def loopBody321_356 : HolLoopProg 64 :=
.seq loopBody321_1 loopBody321_355

def loopBody321_357 : HolLoopProg 64 :=
.mark loopBody321_356

def output321 : Nat × List Nat × HolLoopProg 64 :=
  (385, [0, 1], loopBody321_357)
end InitECandidate.Proofs.FrontendStages.Loop
