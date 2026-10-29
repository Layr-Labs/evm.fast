import InitECandidate.Proofs.FrontendStages.Loop.Translate62
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody78_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody78_1 : HolLoopProg 64 :=
.mark loopBody78_0

def loopBody78_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 256#64)

def loopBody78_3 : HolLoopProg 64 :=
.mark loopBody78_2

def loopBody78_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody78_5 : HolLoopProg 64 :=
.mark loopBody78_4

def loopBody78_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody78_7 : HolLoopProg 64 :=
.mark loopBody78_6

def loopBody78_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.RegImm.reg 7) loopBody78_5 loopBody78_7 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody78_9 : HolLoopProg 64 :=
.mark loopBody78_8

def loopBody78_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody78_11 : HolLoopProg 64 :=
.mark loopBody78_10

def loopBody78_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody78_13 : HolLoopProg 64 :=
.mark loopBody78_12

def loopBody78_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody78_15 : HolLoopProg 64 :=
.mark loopBody78_14

def loopBody78_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody78_17 : HolLoopProg 64 :=
.mark loopBody78_16

def loopBody78_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5, 6, 7, 8]

def loopBody78_19 : HolLoopProg 64 :=
.mark loopBody78_18

def loopBody78_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody78_21 : HolLoopProg 64 :=
.mark loopBody78_20

def loopBody78_22 : HolLoopProg 64 :=
.seq loopBody78_19 loopBody78_21

def loopBody78_23 : HolLoopProg 64 :=
.mark loopBody78_22

def loopBody78_24 : HolLoopProg 64 :=
.seq loopBody78_17 loopBody78_23

def loopBody78_25 : HolLoopProg 64 :=
.mark loopBody78_24

def loopBody78_26 : HolLoopProg 64 :=
.seq loopBody78_15 loopBody78_25

def loopBody78_27 : HolLoopProg 64 :=
.mark loopBody78_26

def loopBody78_28 : HolLoopProg 64 :=
.seq loopBody78_7 loopBody78_27

def loopBody78_29 : HolLoopProg 64 :=
.mark loopBody78_28

def loopBody78_30 : HolLoopProg 64 :=
.seq loopBody78_13 loopBody78_29

def loopBody78_31 : HolLoopProg 64 :=
.mark loopBody78_30

def loopBody78_32 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody78_31 loopBody78_21 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody78_33 : HolLoopProg 64 :=
.mark loopBody78_32

def loopBody78_34 : HolLoopProg 64 :=
.seq loopBody78_33 loopBody78_21

def loopBody78_35 : HolLoopProg 64 :=
.mark loopBody78_34

def loopBody78_36 : HolLoopProg 64 :=
.seq loopBody78_11 loopBody78_35

def loopBody78_37 : HolLoopProg 64 :=
.mark loopBody78_36

def loopBody78_38 : HolLoopProg 64 :=
.seq loopBody78_9 loopBody78_37

def loopBody78_39 : HolLoopProg 64 :=
.mark loopBody78_38

def loopBody78_40 : HolLoopProg 64 :=
.seq loopBody78_3 loopBody78_39

def loopBody78_41 : HolLoopProg 64 :=
.mark loopBody78_40

def loopBody78_42 : HolLoopProg 64 :=
.seq loopBody78_1 loopBody78_41

def loopBody78_43 : HolLoopProg 64 :=
.mark loopBody78_42

def loopBody78_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 6#64))

def loopBody78_45 : HolLoopProg 64 :=
.mark loopBody78_44

def loopBody78_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 63#64])

def loopBody78_47 : HolLoopProg 64 :=
.mark loopBody78_46

def loopBody78_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 0)

def loopBody78_49 : HolLoopProg 64 :=
.mark loopBody78_48

def loopBody78_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody78_51 : HolLoopProg 64 :=
.mark loopBody78_50

def loopBody78_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 2)

def loopBody78_53 : HolLoopProg 64 :=
.mark loopBody78_52

def loopBody78_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 3)

def loopBody78_55 : HolLoopProg 64 :=
.mark loopBody78_54

def loopBody78_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 5)

def loopBody78_57 : HolLoopProg 64 :=
.mark loopBody78_56

def loopBody78_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 1#64)

def loopBody78_59 : HolLoopProg 64 :=
.mark loopBody78_58

def loopBody78_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 1#64)

def loopBody78_61 : HolLoopProg 64 :=
.mark loopBody78_60

def loopBody78_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 0#64)

def loopBody78_63 : HolLoopProg 64 :=
.mark loopBody78_62

def loopBody78_64 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.RegImm.reg 13) loopBody78_61 loopBody78_63 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody78_65 : HolLoopProg 64 :=
.mark loopBody78_64

def loopBody78_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 12)

def loopBody78_67 : HolLoopProg 64 :=
.mark loopBody78_66

def loopBody78_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 8)

def loopBody78_69 : HolLoopProg 64 :=
.mark loopBody78_68

def loopBody78_70 : HolLoopProg 64 :=
.seq loopBody78_69 loopBody78_21

def loopBody78_71 : HolLoopProg 64 :=
.mark loopBody78_70

def loopBody78_72 : HolLoopProg 64 :=
.seq loopBody78_71 loopBody78_21

def loopBody78_73 : HolLoopProg 64 :=
.mark loopBody78_72

def loopBody78_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 9)

def loopBody78_75 : HolLoopProg 64 :=
.mark loopBody78_74

def loopBody78_76 : HolLoopProg 64 :=
.seq loopBody78_75 loopBody78_21

def loopBody78_77 : HolLoopProg 64 :=
.mark loopBody78_76

def loopBody78_78 : HolLoopProg 64 :=
.seq loopBody78_77 loopBody78_21

def loopBody78_79 : HolLoopProg 64 :=
.mark loopBody78_78

def loopBody78_80 : HolLoopProg 64 :=
.seq loopBody78_73 loopBody78_79

def loopBody78_81 : HolLoopProg 64 :=
.mark loopBody78_80

def loopBody78_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 10)

def loopBody78_83 : HolLoopProg 64 :=
.mark loopBody78_82

def loopBody78_84 : HolLoopProg 64 :=
.seq loopBody78_83 loopBody78_21

def loopBody78_85 : HolLoopProg 64 :=
.mark loopBody78_84

def loopBody78_86 : HolLoopProg 64 :=
.seq loopBody78_85 loopBody78_21

def loopBody78_87 : HolLoopProg 64 :=
.mark loopBody78_86

def loopBody78_88 : HolLoopProg 64 :=
.seq loopBody78_81 loopBody78_87

def loopBody78_89 : HolLoopProg 64 :=
.mark loopBody78_88

def loopBody78_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody78_91 : HolLoopProg 64 :=
.mark loopBody78_90

def loopBody78_92 : HolLoopProg 64 :=
.seq loopBody78_91 loopBody78_21

def loopBody78_93 : HolLoopProg 64 :=
.mark loopBody78_92

def loopBody78_94 : HolLoopProg 64 :=
.seq loopBody78_93 loopBody78_21

def loopBody78_95 : HolLoopProg 64 :=
.mark loopBody78_94

def loopBody78_96 : HolLoopProg 64 :=
.seq loopBody78_89 loopBody78_95

def loopBody78_97 : HolLoopProg 64 :=
.mark loopBody78_96

def loopBody78_98 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.RegImm.imm 0#64) loopBody78_97 loopBody78_21 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody78_99 : HolLoopProg 64 :=
.mark loopBody78_98

def loopBody78_100 : HolLoopProg 64 :=
.seq loopBody78_99 loopBody78_21

def loopBody78_101 : HolLoopProg 64 :=
.mark loopBody78_100

def loopBody78_102 : HolLoopProg 64 :=
.seq loopBody78_67 loopBody78_101

def loopBody78_103 : HolLoopProg 64 :=
.mark loopBody78_102

def loopBody78_104 : HolLoopProg 64 :=
.seq loopBody78_65 loopBody78_103

def loopBody78_105 : HolLoopProg 64 :=
.mark loopBody78_104

def loopBody78_106 : HolLoopProg 64 :=
.seq loopBody78_59 loopBody78_105

def loopBody78_107 : HolLoopProg 64 :=
.mark loopBody78_106

def loopBody78_108 : HolLoopProg 64 :=
.seq loopBody78_57 loopBody78_107

def loopBody78_109 : HolLoopProg 64 :=
.mark loopBody78_108

def loopBody78_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 2#64)

def loopBody78_111 : HolLoopProg 64 :=
.mark loopBody78_110

def loopBody78_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 9)

def loopBody78_113 : HolLoopProg 64 :=
.mark loopBody78_112

def loopBody78_114 : HolLoopProg 64 :=
.seq loopBody78_113 loopBody78_21

def loopBody78_115 : HolLoopProg 64 :=
.mark loopBody78_114

def loopBody78_116 : HolLoopProg 64 :=
.seq loopBody78_115 loopBody78_21

def loopBody78_117 : HolLoopProg 64 :=
.mark loopBody78_116

def loopBody78_118 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 10)

def loopBody78_119 : HolLoopProg 64 :=
.mark loopBody78_118

def loopBody78_120 : HolLoopProg 64 :=
.seq loopBody78_119 loopBody78_21

def loopBody78_121 : HolLoopProg 64 :=
.mark loopBody78_120

def loopBody78_122 : HolLoopProg 64 :=
.seq loopBody78_121 loopBody78_21

def loopBody78_123 : HolLoopProg 64 :=
.mark loopBody78_122

def loopBody78_124 : HolLoopProg 64 :=
.seq loopBody78_117 loopBody78_123

def loopBody78_125 : HolLoopProg 64 :=
.mark loopBody78_124

def loopBody78_126 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody78_127 : HolLoopProg 64 :=
.mark loopBody78_126

def loopBody78_128 : HolLoopProg 64 :=
.seq loopBody78_127 loopBody78_21

def loopBody78_129 : HolLoopProg 64 :=
.mark loopBody78_128

def loopBody78_130 : HolLoopProg 64 :=
.seq loopBody78_129 loopBody78_21

def loopBody78_131 : HolLoopProg 64 :=
.mark loopBody78_130

def loopBody78_132 : HolLoopProg 64 :=
.seq loopBody78_125 loopBody78_131

def loopBody78_133 : HolLoopProg 64 :=
.mark loopBody78_132

def loopBody78_134 : HolLoopProg 64 :=
.seq loopBody78_133 loopBody78_95

def loopBody78_135 : HolLoopProg 64 :=
.mark loopBody78_134

def loopBody78_136 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.RegImm.imm 0#64) loopBody78_135 loopBody78_21 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody78_137 : HolLoopProg 64 :=
.mark loopBody78_136

def loopBody78_138 : HolLoopProg 64 :=
.seq loopBody78_137 loopBody78_21

def loopBody78_139 : HolLoopProg 64 :=
.mark loopBody78_138

def loopBody78_140 : HolLoopProg 64 :=
.seq loopBody78_67 loopBody78_139

def loopBody78_141 : HolLoopProg 64 :=
.mark loopBody78_140

def loopBody78_142 : HolLoopProg 64 :=
.seq loopBody78_65 loopBody78_141

def loopBody78_143 : HolLoopProg 64 :=
.mark loopBody78_142

def loopBody78_144 : HolLoopProg 64 :=
.seq loopBody78_111 loopBody78_143

def loopBody78_145 : HolLoopProg 64 :=
.mark loopBody78_144

def loopBody78_146 : HolLoopProg 64 :=
.seq loopBody78_57 loopBody78_145

def loopBody78_147 : HolLoopProg 64 :=
.mark loopBody78_146

def loopBody78_148 : HolLoopProg 64 :=
.seq loopBody78_109 loopBody78_147

def loopBody78_149 : HolLoopProg 64 :=
.mark loopBody78_148

def loopBody78_150 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 3#64)

def loopBody78_151 : HolLoopProg 64 :=
.mark loopBody78_150

def loopBody78_152 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.RegImm.reg 13) loopBody78_61 loopBody78_63 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody78_153 : HolLoopProg 64 :=
.mark loopBody78_152

def loopBody78_154 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 10)

def loopBody78_155 : HolLoopProg 64 :=
.mark loopBody78_154

def loopBody78_156 : HolLoopProg 64 :=
.seq loopBody78_155 loopBody78_21

def loopBody78_157 : HolLoopProg 64 :=
.mark loopBody78_156

def loopBody78_158 : HolLoopProg 64 :=
.seq loopBody78_157 loopBody78_21

def loopBody78_159 : HolLoopProg 64 :=
.mark loopBody78_158

def loopBody78_160 : HolLoopProg 64 :=
.seq loopBody78_17 loopBody78_21

def loopBody78_161 : HolLoopProg 64 :=
.mark loopBody78_160

def loopBody78_162 : HolLoopProg 64 :=
.seq loopBody78_161 loopBody78_21

def loopBody78_163 : HolLoopProg 64 :=
.mark loopBody78_162

def loopBody78_164 : HolLoopProg 64 :=
.seq loopBody78_159 loopBody78_163

def loopBody78_165 : HolLoopProg 64 :=
.mark loopBody78_164

def loopBody78_166 : HolLoopProg 64 :=
.seq loopBody78_165 loopBody78_131

def loopBody78_167 : HolLoopProg 64 :=
.mark loopBody78_166

def loopBody78_168 : HolLoopProg 64 :=
.seq loopBody78_167 loopBody78_95

def loopBody78_169 : HolLoopProg 64 :=
.mark loopBody78_168

def loopBody78_170 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.RegImm.imm 0#64) loopBody78_169 loopBody78_21 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody78_171 : HolLoopProg 64 :=
.mark loopBody78_170

def loopBody78_172 : HolLoopProg 64 :=
.seq loopBody78_171 loopBody78_21

def loopBody78_173 : HolLoopProg 64 :=
.mark loopBody78_172

def loopBody78_174 : HolLoopProg 64 :=
.seq loopBody78_67 loopBody78_173

def loopBody78_175 : HolLoopProg 64 :=
.mark loopBody78_174

def loopBody78_176 : HolLoopProg 64 :=
.seq loopBody78_153 loopBody78_175

def loopBody78_177 : HolLoopProg 64 :=
.mark loopBody78_176

def loopBody78_178 : HolLoopProg 64 :=
.seq loopBody78_151 loopBody78_177

def loopBody78_179 : HolLoopProg 64 :=
.mark loopBody78_178

def loopBody78_180 : HolLoopProg 64 :=
.seq loopBody78_57 loopBody78_179

def loopBody78_181 : HolLoopProg 64 :=
.mark loopBody78_180

def loopBody78_182 : HolLoopProg 64 :=
.seq loopBody78_149 loopBody78_181

def loopBody78_183 : HolLoopProg 64 :=
.mark loopBody78_182

def loopBody78_184 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 6)

def loopBody78_185 : HolLoopProg 64 :=
.mark loopBody78_184

def loopBody78_186 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 0#64)

def loopBody78_187 : HolLoopProg 64 :=
.mark loopBody78_186

def loopBody78_188 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.RegImm.reg 13) loopBody78_61 loopBody78_63 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody78_189 : HolLoopProg 64 :=
.mark loopBody78_188

def loopBody78_190 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 7) (Flapjack.HolLoopExp.var 6),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 8)
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 64#64, Flapjack.HolLoopExp.var 6])])

def loopBody78_191 : HolLoopProg 64 :=
.mark loopBody78_190

def loopBody78_192 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 11)

def loopBody78_193 : HolLoopProg 64 :=
.mark loopBody78_192

def loopBody78_194 : HolLoopProg 64 :=
.seq loopBody78_193 loopBody78_21

def loopBody78_195 : HolLoopProg 64 :=
.mark loopBody78_194

def loopBody78_196 : HolLoopProg 64 :=
.seq loopBody78_195 loopBody78_21

def loopBody78_197 : HolLoopProg 64 :=
.mark loopBody78_196

def loopBody78_198 : HolLoopProg 64 :=
.seq loopBody78_191 loopBody78_197

def loopBody78_199 : HolLoopProg 64 :=
.mark loopBody78_198

def loopBody78_200 : HolLoopProg 64 :=
.seq loopBody78_21 loopBody78_199

def loopBody78_201 : HolLoopProg 64 :=
.mark loopBody78_200

def loopBody78_202 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 8) (Flapjack.HolLoopExp.var 6),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 9)
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 64#64, Flapjack.HolLoopExp.var 6])])

def loopBody78_203 : HolLoopProg 64 :=
.mark loopBody78_202

def loopBody78_204 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 11)

def loopBody78_205 : HolLoopProg 64 :=
.mark loopBody78_204

def loopBody78_206 : HolLoopProg 64 :=
.seq loopBody78_205 loopBody78_21

def loopBody78_207 : HolLoopProg 64 :=
.mark loopBody78_206

def loopBody78_208 : HolLoopProg 64 :=
.seq loopBody78_207 loopBody78_21

def loopBody78_209 : HolLoopProg 64 :=
.mark loopBody78_208

def loopBody78_210 : HolLoopProg 64 :=
.seq loopBody78_203 loopBody78_209

def loopBody78_211 : HolLoopProg 64 :=
.mark loopBody78_210

def loopBody78_212 : HolLoopProg 64 :=
.seq loopBody78_21 loopBody78_211

def loopBody78_213 : HolLoopProg 64 :=
.mark loopBody78_212

def loopBody78_214 : HolLoopProg 64 :=
.seq loopBody78_201 loopBody78_213

def loopBody78_215 : HolLoopProg 64 :=
.mark loopBody78_214

def loopBody78_216 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 9) (Flapjack.HolLoopExp.var 6),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 10)
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 64#64, Flapjack.HolLoopExp.var 6])])

def loopBody78_217 : HolLoopProg 64 :=
.mark loopBody78_216

def loopBody78_218 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 11)

def loopBody78_219 : HolLoopProg 64 :=
.mark loopBody78_218

def loopBody78_220 : HolLoopProg 64 :=
.seq loopBody78_219 loopBody78_21

def loopBody78_221 : HolLoopProg 64 :=
.mark loopBody78_220

def loopBody78_222 : HolLoopProg 64 :=
.seq loopBody78_221 loopBody78_21

def loopBody78_223 : HolLoopProg 64 :=
.mark loopBody78_222

def loopBody78_224 : HolLoopProg 64 :=
.seq loopBody78_217 loopBody78_223

def loopBody78_225 : HolLoopProg 64 :=
.mark loopBody78_224

def loopBody78_226 : HolLoopProg 64 :=
.seq loopBody78_21 loopBody78_225

def loopBody78_227 : HolLoopProg 64 :=
.mark loopBody78_226

def loopBody78_228 : HolLoopProg 64 :=
.seq loopBody78_215 loopBody78_227

def loopBody78_229 : HolLoopProg 64 :=
.mark loopBody78_228

def loopBody78_230 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 10) (Flapjack.HolLoopExp.var 6))

def loopBody78_231 : HolLoopProg 64 :=
.mark loopBody78_230

def loopBody78_232 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 11)

def loopBody78_233 : HolLoopProg 64 :=
.mark loopBody78_232

def loopBody78_234 : HolLoopProg 64 :=
.seq loopBody78_233 loopBody78_21

def loopBody78_235 : HolLoopProg 64 :=
.mark loopBody78_234

def loopBody78_236 : HolLoopProg 64 :=
.seq loopBody78_235 loopBody78_21

def loopBody78_237 : HolLoopProg 64 :=
.mark loopBody78_236

def loopBody78_238 : HolLoopProg 64 :=
.seq loopBody78_231 loopBody78_237

def loopBody78_239 : HolLoopProg 64 :=
.mark loopBody78_238

def loopBody78_240 : HolLoopProg 64 :=
.seq loopBody78_21 loopBody78_239

def loopBody78_241 : HolLoopProg 64 :=
.mark loopBody78_240

def loopBody78_242 : HolLoopProg 64 :=
.seq loopBody78_229 loopBody78_241

def loopBody78_243 : HolLoopProg 64 :=
.mark loopBody78_242

def loopBody78_244 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.RegImm.imm 0#64) loopBody78_243 loopBody78_21 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody78_245 : HolLoopProg 64 :=
.mark loopBody78_244

def loopBody78_246 : HolLoopProg 64 :=
.seq loopBody78_245 loopBody78_21

def loopBody78_247 : HolLoopProg 64 :=
.mark loopBody78_246

def loopBody78_248 : HolLoopProg 64 :=
.seq loopBody78_67 loopBody78_247

def loopBody78_249 : HolLoopProg 64 :=
.mark loopBody78_248

def loopBody78_250 : HolLoopProg 64 :=
.seq loopBody78_189 loopBody78_249

def loopBody78_251 : HolLoopProg 64 :=
.mark loopBody78_250

def loopBody78_252 : HolLoopProg 64 :=
.seq loopBody78_187 loopBody78_251

def loopBody78_253 : HolLoopProg 64 :=
.mark loopBody78_252

def loopBody78_254 : HolLoopProg 64 :=
.seq loopBody78_185 loopBody78_253

def loopBody78_255 : HolLoopProg 64 :=
.mark loopBody78_254

def loopBody78_256 : HolLoopProg 64 :=
.seq loopBody78_183 loopBody78_255

def loopBody78_257 : HolLoopProg 64 :=
.mark loopBody78_256

def loopBody78_258 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 7)

def loopBody78_259 : HolLoopProg 64 :=
.mark loopBody78_258

def loopBody78_260 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 8)

def loopBody78_261 : HolLoopProg 64 :=
.mark loopBody78_260

def loopBody78_262 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 9)

def loopBody78_263 : HolLoopProg 64 :=
.mark loopBody78_262

def loopBody78_264 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 10)

def loopBody78_265 : HolLoopProg 64 :=
.mark loopBody78_264

def loopBody78_266 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [11, 12, 13, 14]

def loopBody78_267 : HolLoopProg 64 :=
.mark loopBody78_266

def loopBody78_268 : HolLoopProg 64 :=
.seq loopBody78_267 loopBody78_21

def loopBody78_269 : HolLoopProg 64 :=
.mark loopBody78_268

def loopBody78_270 : HolLoopProg 64 :=
.seq loopBody78_265 loopBody78_269

def loopBody78_271 : HolLoopProg 64 :=
.mark loopBody78_270

def loopBody78_272 : HolLoopProg 64 :=
.seq loopBody78_263 loopBody78_271

def loopBody78_273 : HolLoopProg 64 :=
.mark loopBody78_272

def loopBody78_274 : HolLoopProg 64 :=
.seq loopBody78_261 loopBody78_273

def loopBody78_275 : HolLoopProg 64 :=
.mark loopBody78_274

def loopBody78_276 : HolLoopProg 64 :=
.seq loopBody78_259 loopBody78_275

def loopBody78_277 : HolLoopProg 64 :=
.mark loopBody78_276

def loopBody78_278 : HolLoopProg 64 :=
.seq loopBody78_257 loopBody78_277

def loopBody78_279 : HolLoopProg 64 :=
.mark loopBody78_278

def loopBody78_280 : HolLoopProg 64 :=
.seq loopBody78_55 loopBody78_279

def loopBody78_281 : HolLoopProg 64 :=
.mark loopBody78_280

def loopBody78_282 : HolLoopProg 64 :=
.seq loopBody78_21 loopBody78_281

def loopBody78_283 : HolLoopProg 64 :=
.mark loopBody78_282

def loopBody78_284 : HolLoopProg 64 :=
.seq loopBody78_53 loopBody78_283

def loopBody78_285 : HolLoopProg 64 :=
.mark loopBody78_284

def loopBody78_286 : HolLoopProg 64 :=
.seq loopBody78_21 loopBody78_285

def loopBody78_287 : HolLoopProg 64 :=
.mark loopBody78_286

def loopBody78_288 : HolLoopProg 64 :=
.seq loopBody78_51 loopBody78_287

def loopBody78_289 : HolLoopProg 64 :=
.mark loopBody78_288

def loopBody78_290 : HolLoopProg 64 :=
.seq loopBody78_21 loopBody78_289

def loopBody78_291 : HolLoopProg 64 :=
.mark loopBody78_290

def loopBody78_292 : HolLoopProg 64 :=
.seq loopBody78_49 loopBody78_291

def loopBody78_293 : HolLoopProg 64 :=
.mark loopBody78_292

def loopBody78_294 : HolLoopProg 64 :=
.seq loopBody78_21 loopBody78_293

def loopBody78_295 : HolLoopProg 64 :=
.mark loopBody78_294

def loopBody78_296 : HolLoopProg 64 :=
.seq loopBody78_47 loopBody78_295

def loopBody78_297 : HolLoopProg 64 :=
.mark loopBody78_296

def loopBody78_298 : HolLoopProg 64 :=
.seq loopBody78_21 loopBody78_297

def loopBody78_299 : HolLoopProg 64 :=
.mark loopBody78_298

def loopBody78_300 : HolLoopProg 64 :=
.seq loopBody78_45 loopBody78_299

def loopBody78_301 : HolLoopProg 64 :=
.mark loopBody78_300

def loopBody78_302 : HolLoopProg 64 :=
.seq loopBody78_21 loopBody78_301

def loopBody78_303 : HolLoopProg 64 :=
.mark loopBody78_302

def loopBody78_304 : HolLoopProg 64 :=
.seq loopBody78_43 loopBody78_303

def loopBody78_305 : HolLoopProg 64 :=
.mark loopBody78_304

def output78 : Nat × List Nat × HolLoopProg 64 :=
  (142, [0, 1, 2, 3, 4], loopBody78_305)
end InitECandidate.Proofs.FrontendStages.Loop
