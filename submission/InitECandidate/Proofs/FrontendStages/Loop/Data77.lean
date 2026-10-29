import InitECandidate.Proofs.FrontendStages.Loop.Translate61
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody77_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody77_1 : HolLoopProg 64 :=
.mark loopBody77_0

def loopBody77_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 256#64)

def loopBody77_3 : HolLoopProg 64 :=
.mark loopBody77_2

def loopBody77_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody77_5 : HolLoopProg 64 :=
.mark loopBody77_4

def loopBody77_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody77_7 : HolLoopProg 64 :=
.mark loopBody77_6

def loopBody77_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.RegImm.reg 7) loopBody77_5 loopBody77_7 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody77_9 : HolLoopProg 64 :=
.mark loopBody77_8

def loopBody77_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody77_11 : HolLoopProg 64 :=
.mark loopBody77_10

def loopBody77_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody77_13 : HolLoopProg 64 :=
.mark loopBody77_12

def loopBody77_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody77_15 : HolLoopProg 64 :=
.mark loopBody77_14

def loopBody77_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody77_17 : HolLoopProg 64 :=
.mark loopBody77_16

def loopBody77_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5, 6, 7, 8]

def loopBody77_19 : HolLoopProg 64 :=
.mark loopBody77_18

def loopBody77_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody77_21 : HolLoopProg 64 :=
.mark loopBody77_20

def loopBody77_22 : HolLoopProg 64 :=
.seq loopBody77_19 loopBody77_21

def loopBody77_23 : HolLoopProg 64 :=
.mark loopBody77_22

def loopBody77_24 : HolLoopProg 64 :=
.seq loopBody77_17 loopBody77_23

def loopBody77_25 : HolLoopProg 64 :=
.mark loopBody77_24

def loopBody77_26 : HolLoopProg 64 :=
.seq loopBody77_15 loopBody77_25

def loopBody77_27 : HolLoopProg 64 :=
.mark loopBody77_26

def loopBody77_28 : HolLoopProg 64 :=
.seq loopBody77_7 loopBody77_27

def loopBody77_29 : HolLoopProg 64 :=
.mark loopBody77_28

def loopBody77_30 : HolLoopProg 64 :=
.seq loopBody77_13 loopBody77_29

def loopBody77_31 : HolLoopProg 64 :=
.mark loopBody77_30

def loopBody77_32 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody77_31 loopBody77_21 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody77_33 : HolLoopProg 64 :=
.mark loopBody77_32

def loopBody77_34 : HolLoopProg 64 :=
.seq loopBody77_33 loopBody77_21

def loopBody77_35 : HolLoopProg 64 :=
.mark loopBody77_34

def loopBody77_36 : HolLoopProg 64 :=
.seq loopBody77_11 loopBody77_35

def loopBody77_37 : HolLoopProg 64 :=
.mark loopBody77_36

def loopBody77_38 : HolLoopProg 64 :=
.seq loopBody77_9 loopBody77_37

def loopBody77_39 : HolLoopProg 64 :=
.mark loopBody77_38

def loopBody77_40 : HolLoopProg 64 :=
.seq loopBody77_3 loopBody77_39

def loopBody77_41 : HolLoopProg 64 :=
.mark loopBody77_40

def loopBody77_42 : HolLoopProg 64 :=
.seq loopBody77_1 loopBody77_41

def loopBody77_43 : HolLoopProg 64 :=
.mark loopBody77_42

def loopBody77_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 6#64))

def loopBody77_45 : HolLoopProg 64 :=
.mark loopBody77_44

def loopBody77_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 63#64])

def loopBody77_47 : HolLoopProg 64 :=
.mark loopBody77_46

def loopBody77_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 0)

def loopBody77_49 : HolLoopProg 64 :=
.mark loopBody77_48

def loopBody77_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody77_51 : HolLoopProg 64 :=
.mark loopBody77_50

def loopBody77_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 2)

def loopBody77_53 : HolLoopProg 64 :=
.mark loopBody77_52

def loopBody77_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 3)

def loopBody77_55 : HolLoopProg 64 :=
.mark loopBody77_54

def loopBody77_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 5)

def loopBody77_57 : HolLoopProg 64 :=
.mark loopBody77_56

def loopBody77_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 1#64)

def loopBody77_59 : HolLoopProg 64 :=
.mark loopBody77_58

def loopBody77_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 1#64)

def loopBody77_61 : HolLoopProg 64 :=
.mark loopBody77_60

def loopBody77_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 0#64)

def loopBody77_63 : HolLoopProg 64 :=
.mark loopBody77_62

def loopBody77_64 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.RegImm.reg 13) loopBody77_61 loopBody77_63 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody77_65 : HolLoopProg 64 :=
.mark loopBody77_64

def loopBody77_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 12)

def loopBody77_67 : HolLoopProg 64 :=
.mark loopBody77_66

def loopBody77_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 9)

def loopBody77_69 : HolLoopProg 64 :=
.mark loopBody77_68

def loopBody77_70 : HolLoopProg 64 :=
.seq loopBody77_69 loopBody77_21

def loopBody77_71 : HolLoopProg 64 :=
.mark loopBody77_70

def loopBody77_72 : HolLoopProg 64 :=
.seq loopBody77_71 loopBody77_21

def loopBody77_73 : HolLoopProg 64 :=
.mark loopBody77_72

def loopBody77_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 8)

def loopBody77_75 : HolLoopProg 64 :=
.mark loopBody77_74

def loopBody77_76 : HolLoopProg 64 :=
.seq loopBody77_75 loopBody77_21

def loopBody77_77 : HolLoopProg 64 :=
.mark loopBody77_76

def loopBody77_78 : HolLoopProg 64 :=
.seq loopBody77_77 loopBody77_21

def loopBody77_79 : HolLoopProg 64 :=
.mark loopBody77_78

def loopBody77_80 : HolLoopProg 64 :=
.seq loopBody77_73 loopBody77_79

def loopBody77_81 : HolLoopProg 64 :=
.mark loopBody77_80

def loopBody77_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 7)

def loopBody77_83 : HolLoopProg 64 :=
.mark loopBody77_82

def loopBody77_84 : HolLoopProg 64 :=
.seq loopBody77_83 loopBody77_21

def loopBody77_85 : HolLoopProg 64 :=
.mark loopBody77_84

def loopBody77_86 : HolLoopProg 64 :=
.seq loopBody77_85 loopBody77_21

def loopBody77_87 : HolLoopProg 64 :=
.mark loopBody77_86

def loopBody77_88 : HolLoopProg 64 :=
.seq loopBody77_81 loopBody77_87

def loopBody77_89 : HolLoopProg 64 :=
.mark loopBody77_88

def loopBody77_90 : HolLoopProg 64 :=
.seq loopBody77_15 loopBody77_21

def loopBody77_91 : HolLoopProg 64 :=
.mark loopBody77_90

def loopBody77_92 : HolLoopProg 64 :=
.seq loopBody77_91 loopBody77_21

def loopBody77_93 : HolLoopProg 64 :=
.mark loopBody77_92

def loopBody77_94 : HolLoopProg 64 :=
.seq loopBody77_89 loopBody77_93

def loopBody77_95 : HolLoopProg 64 :=
.mark loopBody77_94

def loopBody77_96 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.RegImm.imm 0#64) loopBody77_95 loopBody77_21 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody77_97 : HolLoopProg 64 :=
.mark loopBody77_96

def loopBody77_98 : HolLoopProg 64 :=
.seq loopBody77_97 loopBody77_21

def loopBody77_99 : HolLoopProg 64 :=
.mark loopBody77_98

def loopBody77_100 : HolLoopProg 64 :=
.seq loopBody77_67 loopBody77_99

def loopBody77_101 : HolLoopProg 64 :=
.mark loopBody77_100

def loopBody77_102 : HolLoopProg 64 :=
.seq loopBody77_65 loopBody77_101

def loopBody77_103 : HolLoopProg 64 :=
.mark loopBody77_102

def loopBody77_104 : HolLoopProg 64 :=
.seq loopBody77_59 loopBody77_103

def loopBody77_105 : HolLoopProg 64 :=
.mark loopBody77_104

def loopBody77_106 : HolLoopProg 64 :=
.seq loopBody77_57 loopBody77_105

def loopBody77_107 : HolLoopProg 64 :=
.mark loopBody77_106

def loopBody77_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 2#64)

def loopBody77_109 : HolLoopProg 64 :=
.mark loopBody77_108

def loopBody77_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody77_111 : HolLoopProg 64 :=
.mark loopBody77_110

def loopBody77_112 : HolLoopProg 64 :=
.seq loopBody77_111 loopBody77_21

def loopBody77_113 : HolLoopProg 64 :=
.mark loopBody77_112

def loopBody77_114 : HolLoopProg 64 :=
.seq loopBody77_113 loopBody77_21

def loopBody77_115 : HolLoopProg 64 :=
.mark loopBody77_114

def loopBody77_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody77_117 : HolLoopProg 64 :=
.mark loopBody77_116

def loopBody77_118 : HolLoopProg 64 :=
.seq loopBody77_117 loopBody77_21

def loopBody77_119 : HolLoopProg 64 :=
.mark loopBody77_118

def loopBody77_120 : HolLoopProg 64 :=
.seq loopBody77_119 loopBody77_21

def loopBody77_121 : HolLoopProg 64 :=
.mark loopBody77_120

def loopBody77_122 : HolLoopProg 64 :=
.seq loopBody77_115 loopBody77_121

def loopBody77_123 : HolLoopProg 64 :=
.mark loopBody77_122

def loopBody77_124 : HolLoopProg 64 :=
.seq loopBody77_17 loopBody77_21

def loopBody77_125 : HolLoopProg 64 :=
.mark loopBody77_124

def loopBody77_126 : HolLoopProg 64 :=
.seq loopBody77_125 loopBody77_21

def loopBody77_127 : HolLoopProg 64 :=
.mark loopBody77_126

def loopBody77_128 : HolLoopProg 64 :=
.seq loopBody77_123 loopBody77_127

def loopBody77_129 : HolLoopProg 64 :=
.mark loopBody77_128

def loopBody77_130 : HolLoopProg 64 :=
.seq loopBody77_129 loopBody77_93

def loopBody77_131 : HolLoopProg 64 :=
.mark loopBody77_130

def loopBody77_132 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.RegImm.imm 0#64) loopBody77_131 loopBody77_21 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody77_133 : HolLoopProg 64 :=
.mark loopBody77_132

def loopBody77_134 : HolLoopProg 64 :=
.seq loopBody77_133 loopBody77_21

def loopBody77_135 : HolLoopProg 64 :=
.mark loopBody77_134

def loopBody77_136 : HolLoopProg 64 :=
.seq loopBody77_67 loopBody77_135

def loopBody77_137 : HolLoopProg 64 :=
.mark loopBody77_136

def loopBody77_138 : HolLoopProg 64 :=
.seq loopBody77_65 loopBody77_137

def loopBody77_139 : HolLoopProg 64 :=
.mark loopBody77_138

def loopBody77_140 : HolLoopProg 64 :=
.seq loopBody77_109 loopBody77_139

def loopBody77_141 : HolLoopProg 64 :=
.mark loopBody77_140

def loopBody77_142 : HolLoopProg 64 :=
.seq loopBody77_57 loopBody77_141

def loopBody77_143 : HolLoopProg 64 :=
.mark loopBody77_142

def loopBody77_144 : HolLoopProg 64 :=
.seq loopBody77_107 loopBody77_143

def loopBody77_145 : HolLoopProg 64 :=
.mark loopBody77_144

def loopBody77_146 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 3#64)

def loopBody77_147 : HolLoopProg 64 :=
.mark loopBody77_146

def loopBody77_148 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.RegImm.reg 13) loopBody77_61 loopBody77_63 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody77_149 : HolLoopProg 64 :=
.mark loopBody77_148

def loopBody77_150 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 7)

def loopBody77_151 : HolLoopProg 64 :=
.mark loopBody77_150

def loopBody77_152 : HolLoopProg 64 :=
.seq loopBody77_151 loopBody77_21

def loopBody77_153 : HolLoopProg 64 :=
.mark loopBody77_152

def loopBody77_154 : HolLoopProg 64 :=
.seq loopBody77_153 loopBody77_21

def loopBody77_155 : HolLoopProg 64 :=
.mark loopBody77_154

def loopBody77_156 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody77_157 : HolLoopProg 64 :=
.mark loopBody77_156

def loopBody77_158 : HolLoopProg 64 :=
.seq loopBody77_157 loopBody77_21

def loopBody77_159 : HolLoopProg 64 :=
.mark loopBody77_158

def loopBody77_160 : HolLoopProg 64 :=
.seq loopBody77_159 loopBody77_21

def loopBody77_161 : HolLoopProg 64 :=
.mark loopBody77_160

def loopBody77_162 : HolLoopProg 64 :=
.seq loopBody77_155 loopBody77_161

def loopBody77_163 : HolLoopProg 64 :=
.mark loopBody77_162

def loopBody77_164 : HolLoopProg 64 :=
.seq loopBody77_163 loopBody77_127

def loopBody77_165 : HolLoopProg 64 :=
.mark loopBody77_164

def loopBody77_166 : HolLoopProg 64 :=
.seq loopBody77_165 loopBody77_93

def loopBody77_167 : HolLoopProg 64 :=
.mark loopBody77_166

def loopBody77_168 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.RegImm.imm 0#64) loopBody77_167 loopBody77_21 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody77_169 : HolLoopProg 64 :=
.mark loopBody77_168

def loopBody77_170 : HolLoopProg 64 :=
.seq loopBody77_169 loopBody77_21

def loopBody77_171 : HolLoopProg 64 :=
.mark loopBody77_170

def loopBody77_172 : HolLoopProg 64 :=
.seq loopBody77_67 loopBody77_171

def loopBody77_173 : HolLoopProg 64 :=
.mark loopBody77_172

def loopBody77_174 : HolLoopProg 64 :=
.seq loopBody77_149 loopBody77_173

def loopBody77_175 : HolLoopProg 64 :=
.mark loopBody77_174

def loopBody77_176 : HolLoopProg 64 :=
.seq loopBody77_147 loopBody77_175

def loopBody77_177 : HolLoopProg 64 :=
.mark loopBody77_176

def loopBody77_178 : HolLoopProg 64 :=
.seq loopBody77_57 loopBody77_177

def loopBody77_179 : HolLoopProg 64 :=
.mark loopBody77_178

def loopBody77_180 : HolLoopProg 64 :=
.seq loopBody77_145 loopBody77_179

def loopBody77_181 : HolLoopProg 64 :=
.mark loopBody77_180

def loopBody77_182 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 6)

def loopBody77_183 : HolLoopProg 64 :=
.mark loopBody77_182

def loopBody77_184 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 0#64)

def loopBody77_185 : HolLoopProg 64 :=
.mark loopBody77_184

def loopBody77_186 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.RegImm.reg 13) loopBody77_61 loopBody77_63 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody77_187 : HolLoopProg 64 :=
.mark loopBody77_186

def loopBody77_188 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 10) (Flapjack.HolLoopExp.var 6),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 9)
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 64#64, Flapjack.HolLoopExp.var 6])])

def loopBody77_189 : HolLoopProg 64 :=
.mark loopBody77_188

def loopBody77_190 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 11)

def loopBody77_191 : HolLoopProg 64 :=
.mark loopBody77_190

def loopBody77_192 : HolLoopProg 64 :=
.seq loopBody77_191 loopBody77_21

def loopBody77_193 : HolLoopProg 64 :=
.mark loopBody77_192

def loopBody77_194 : HolLoopProg 64 :=
.seq loopBody77_193 loopBody77_21

def loopBody77_195 : HolLoopProg 64 :=
.mark loopBody77_194

def loopBody77_196 : HolLoopProg 64 :=
.seq loopBody77_189 loopBody77_195

def loopBody77_197 : HolLoopProg 64 :=
.mark loopBody77_196

def loopBody77_198 : HolLoopProg 64 :=
.seq loopBody77_21 loopBody77_197

def loopBody77_199 : HolLoopProg 64 :=
.mark loopBody77_198

def loopBody77_200 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 9) (Flapjack.HolLoopExp.var 6),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 8)
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 64#64, Flapjack.HolLoopExp.var 6])])

def loopBody77_201 : HolLoopProg 64 :=
.mark loopBody77_200

def loopBody77_202 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 11)

def loopBody77_203 : HolLoopProg 64 :=
.mark loopBody77_202

def loopBody77_204 : HolLoopProg 64 :=
.seq loopBody77_203 loopBody77_21

def loopBody77_205 : HolLoopProg 64 :=
.mark loopBody77_204

def loopBody77_206 : HolLoopProg 64 :=
.seq loopBody77_205 loopBody77_21

def loopBody77_207 : HolLoopProg 64 :=
.mark loopBody77_206

def loopBody77_208 : HolLoopProg 64 :=
.seq loopBody77_201 loopBody77_207

def loopBody77_209 : HolLoopProg 64 :=
.mark loopBody77_208

def loopBody77_210 : HolLoopProg 64 :=
.seq loopBody77_21 loopBody77_209

def loopBody77_211 : HolLoopProg 64 :=
.mark loopBody77_210

def loopBody77_212 : HolLoopProg 64 :=
.seq loopBody77_199 loopBody77_211

def loopBody77_213 : HolLoopProg 64 :=
.mark loopBody77_212

def loopBody77_214 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 8) (Flapjack.HolLoopExp.var 6),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 7)
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 64#64, Flapjack.HolLoopExp.var 6])])

def loopBody77_215 : HolLoopProg 64 :=
.mark loopBody77_214

def loopBody77_216 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 11)

def loopBody77_217 : HolLoopProg 64 :=
.mark loopBody77_216

def loopBody77_218 : HolLoopProg 64 :=
.seq loopBody77_217 loopBody77_21

def loopBody77_219 : HolLoopProg 64 :=
.mark loopBody77_218

def loopBody77_220 : HolLoopProg 64 :=
.seq loopBody77_219 loopBody77_21

def loopBody77_221 : HolLoopProg 64 :=
.mark loopBody77_220

def loopBody77_222 : HolLoopProg 64 :=
.seq loopBody77_215 loopBody77_221

def loopBody77_223 : HolLoopProg 64 :=
.mark loopBody77_222

def loopBody77_224 : HolLoopProg 64 :=
.seq loopBody77_21 loopBody77_223

def loopBody77_225 : HolLoopProg 64 :=
.mark loopBody77_224

def loopBody77_226 : HolLoopProg 64 :=
.seq loopBody77_213 loopBody77_225

def loopBody77_227 : HolLoopProg 64 :=
.mark loopBody77_226

def loopBody77_228 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 7) (Flapjack.HolLoopExp.var 6))

def loopBody77_229 : HolLoopProg 64 :=
.mark loopBody77_228

def loopBody77_230 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 11)

def loopBody77_231 : HolLoopProg 64 :=
.mark loopBody77_230

def loopBody77_232 : HolLoopProg 64 :=
.seq loopBody77_231 loopBody77_21

def loopBody77_233 : HolLoopProg 64 :=
.mark loopBody77_232

def loopBody77_234 : HolLoopProg 64 :=
.seq loopBody77_233 loopBody77_21

def loopBody77_235 : HolLoopProg 64 :=
.mark loopBody77_234

def loopBody77_236 : HolLoopProg 64 :=
.seq loopBody77_229 loopBody77_235

def loopBody77_237 : HolLoopProg 64 :=
.mark loopBody77_236

def loopBody77_238 : HolLoopProg 64 :=
.seq loopBody77_21 loopBody77_237

def loopBody77_239 : HolLoopProg 64 :=
.mark loopBody77_238

def loopBody77_240 : HolLoopProg 64 :=
.seq loopBody77_227 loopBody77_239

def loopBody77_241 : HolLoopProg 64 :=
.mark loopBody77_240

def loopBody77_242 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.RegImm.imm 0#64) loopBody77_241 loopBody77_21 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody77_243 : HolLoopProg 64 :=
.mark loopBody77_242

def loopBody77_244 : HolLoopProg 64 :=
.seq loopBody77_243 loopBody77_21

def loopBody77_245 : HolLoopProg 64 :=
.mark loopBody77_244

def loopBody77_246 : HolLoopProg 64 :=
.seq loopBody77_67 loopBody77_245

def loopBody77_247 : HolLoopProg 64 :=
.mark loopBody77_246

def loopBody77_248 : HolLoopProg 64 :=
.seq loopBody77_187 loopBody77_247

def loopBody77_249 : HolLoopProg 64 :=
.mark loopBody77_248

def loopBody77_250 : HolLoopProg 64 :=
.seq loopBody77_185 loopBody77_249

def loopBody77_251 : HolLoopProg 64 :=
.mark loopBody77_250

def loopBody77_252 : HolLoopProg 64 :=
.seq loopBody77_183 loopBody77_251

def loopBody77_253 : HolLoopProg 64 :=
.mark loopBody77_252

def loopBody77_254 : HolLoopProg 64 :=
.seq loopBody77_181 loopBody77_253

def loopBody77_255 : HolLoopProg 64 :=
.mark loopBody77_254

def loopBody77_256 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 7)

def loopBody77_257 : HolLoopProg 64 :=
.mark loopBody77_256

def loopBody77_258 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 8)

def loopBody77_259 : HolLoopProg 64 :=
.mark loopBody77_258

def loopBody77_260 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 9)

def loopBody77_261 : HolLoopProg 64 :=
.mark loopBody77_260

def loopBody77_262 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 10)

def loopBody77_263 : HolLoopProg 64 :=
.mark loopBody77_262

def loopBody77_264 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [11, 12, 13, 14]

def loopBody77_265 : HolLoopProg 64 :=
.mark loopBody77_264

def loopBody77_266 : HolLoopProg 64 :=
.seq loopBody77_265 loopBody77_21

def loopBody77_267 : HolLoopProg 64 :=
.mark loopBody77_266

def loopBody77_268 : HolLoopProg 64 :=
.seq loopBody77_263 loopBody77_267

def loopBody77_269 : HolLoopProg 64 :=
.mark loopBody77_268

def loopBody77_270 : HolLoopProg 64 :=
.seq loopBody77_261 loopBody77_269

def loopBody77_271 : HolLoopProg 64 :=
.mark loopBody77_270

def loopBody77_272 : HolLoopProg 64 :=
.seq loopBody77_259 loopBody77_271

def loopBody77_273 : HolLoopProg 64 :=
.mark loopBody77_272

def loopBody77_274 : HolLoopProg 64 :=
.seq loopBody77_257 loopBody77_273

def loopBody77_275 : HolLoopProg 64 :=
.mark loopBody77_274

def loopBody77_276 : HolLoopProg 64 :=
.seq loopBody77_255 loopBody77_275

def loopBody77_277 : HolLoopProg 64 :=
.mark loopBody77_276

def loopBody77_278 : HolLoopProg 64 :=
.seq loopBody77_55 loopBody77_277

def loopBody77_279 : HolLoopProg 64 :=
.mark loopBody77_278

def loopBody77_280 : HolLoopProg 64 :=
.seq loopBody77_21 loopBody77_279

def loopBody77_281 : HolLoopProg 64 :=
.mark loopBody77_280

def loopBody77_282 : HolLoopProg 64 :=
.seq loopBody77_53 loopBody77_281

def loopBody77_283 : HolLoopProg 64 :=
.mark loopBody77_282

def loopBody77_284 : HolLoopProg 64 :=
.seq loopBody77_21 loopBody77_283

def loopBody77_285 : HolLoopProg 64 :=
.mark loopBody77_284

def loopBody77_286 : HolLoopProg 64 :=
.seq loopBody77_51 loopBody77_285

def loopBody77_287 : HolLoopProg 64 :=
.mark loopBody77_286

def loopBody77_288 : HolLoopProg 64 :=
.seq loopBody77_21 loopBody77_287

def loopBody77_289 : HolLoopProg 64 :=
.mark loopBody77_288

def loopBody77_290 : HolLoopProg 64 :=
.seq loopBody77_49 loopBody77_289

def loopBody77_291 : HolLoopProg 64 :=
.mark loopBody77_290

def loopBody77_292 : HolLoopProg 64 :=
.seq loopBody77_21 loopBody77_291

def loopBody77_293 : HolLoopProg 64 :=
.mark loopBody77_292

def loopBody77_294 : HolLoopProg 64 :=
.seq loopBody77_47 loopBody77_293

def loopBody77_295 : HolLoopProg 64 :=
.mark loopBody77_294

def loopBody77_296 : HolLoopProg 64 :=
.seq loopBody77_21 loopBody77_295

def loopBody77_297 : HolLoopProg 64 :=
.mark loopBody77_296

def loopBody77_298 : HolLoopProg 64 :=
.seq loopBody77_45 loopBody77_297

def loopBody77_299 : HolLoopProg 64 :=
.mark loopBody77_298

def loopBody77_300 : HolLoopProg 64 :=
.seq loopBody77_21 loopBody77_299

def loopBody77_301 : HolLoopProg 64 :=
.mark loopBody77_300

def loopBody77_302 : HolLoopProg 64 :=
.seq loopBody77_43 loopBody77_301

def loopBody77_303 : HolLoopProg 64 :=
.mark loopBody77_302

def output77 : Nat × List Nat × HolLoopProg 64 :=
  (141, [0, 1, 2, 3, 4], loopBody77_303)
end InitECandidate.Proofs.FrontendStages.Loop
