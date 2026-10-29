import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function707
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody707_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody707_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody707_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody707_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody707_8 : StackLang.HolProg 64 :=
.seq rawBody707_6 rawBody707_7

def rawBody707_9 : StackLang.HolProg 64 :=
.seq rawBody707_5 rawBody707_8

def rawBody707_10 : StackLang.HolProg 64 :=
.seq rawBody707_4 rawBody707_9

def rawBody707_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) rawBody707_10 rawBody707_11

def rawBody707_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody707_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody707_18 : StackLang.HolProg 64 :=
.seq rawBody707_16 rawBody707_17

def rawBody707_19 : StackLang.HolProg 64 :=
.seq rawBody707_15 rawBody707_18

def rawBody707_20 : StackLang.HolProg 64 :=
.seq rawBody707_14 rawBody707_19

def rawBody707_21 : StackLang.HolProg 64 :=
.seq rawBody707_13 rawBody707_20

def rawBody707_22 : StackLang.HolProg 64 :=
.seq rawBody707_12 rawBody707_21

def rawBody707_23 : StackLang.HolProg 64 :=
.seq rawBody707_3 rawBody707_22

def rawBody707_24 : StackLang.HolProg 64 :=
.seq rawBody707_2 rawBody707_23

def rawBody707_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) rawBody707_24 rawBody707_25

def rawBody707_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody707_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody707_36 : StackLang.HolProg 64 :=
.seq rawBody707_34 rawBody707_35

def rawBody707_37 : StackLang.HolProg 64 :=
.seq rawBody707_33 rawBody707_36

def rawBody707_38 : StackLang.HolProg 64 :=
.seq rawBody707_32 rawBody707_37

def rawBody707_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_40 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) rawBody707_38 rawBody707_39

def rawBody707_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody707_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody707_46 : StackLang.HolProg 64 :=
.seq rawBody707_44 rawBody707_45

def rawBody707_47 : StackLang.HolProg 64 :=
.seq rawBody707_43 rawBody707_46

def rawBody707_48 : StackLang.HolProg 64 :=
.seq rawBody707_42 rawBody707_47

def rawBody707_49 : StackLang.HolProg 64 :=
.seq rawBody707_41 rawBody707_48

def rawBody707_50 : StackLang.HolProg 64 :=
.seq rawBody707_40 rawBody707_49

def rawBody707_51 : StackLang.HolProg 64 :=
.seq rawBody707_31 rawBody707_50

def rawBody707_52 : StackLang.HolProg 64 :=
.seq rawBody707_30 rawBody707_51

def rawBody707_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_54 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) rawBody707_52 rawBody707_53

def rawBody707_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody707_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody707_64 : StackLang.HolProg 64 :=
.seq rawBody707_62 rawBody707_63

def rawBody707_65 : StackLang.HolProg 64 :=
.seq rawBody707_61 rawBody707_64

def rawBody707_66 : StackLang.HolProg 64 :=
.seq rawBody707_60 rawBody707_65

def rawBody707_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_68 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) rawBody707_66 rawBody707_67

def rawBody707_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody707_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody707_74 : StackLang.HolProg 64 :=
.seq rawBody707_72 rawBody707_73

def rawBody707_75 : StackLang.HolProg 64 :=
.seq rawBody707_71 rawBody707_74

def rawBody707_76 : StackLang.HolProg 64 :=
.seq rawBody707_70 rawBody707_75

def rawBody707_77 : StackLang.HolProg 64 :=
.seq rawBody707_69 rawBody707_76

def rawBody707_78 : StackLang.HolProg 64 :=
.seq rawBody707_68 rawBody707_77

def rawBody707_79 : StackLang.HolProg 64 :=
.seq rawBody707_59 rawBody707_78

def rawBody707_80 : StackLang.HolProg 64 :=
.seq rawBody707_58 rawBody707_79

def rawBody707_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) rawBody707_80 rawBody707_81

def rawBody707_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody707_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody707_92 : StackLang.HolProg 64 :=
.seq rawBody707_90 rawBody707_91

def rawBody707_93 : StackLang.HolProg 64 :=
.seq rawBody707_89 rawBody707_92

def rawBody707_94 : StackLang.HolProg 64 :=
.seq rawBody707_88 rawBody707_93

def rawBody707_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_96 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) rawBody707_94 rawBody707_95

def rawBody707_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody707_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody707_102 : StackLang.HolProg 64 :=
.seq rawBody707_100 rawBody707_101

def rawBody707_103 : StackLang.HolProg 64 :=
.seq rawBody707_99 rawBody707_102

def rawBody707_104 : StackLang.HolProg 64 :=
.seq rawBody707_98 rawBody707_103

def rawBody707_105 : StackLang.HolProg 64 :=
.seq rawBody707_97 rawBody707_104

def rawBody707_106 : StackLang.HolProg 64 :=
.seq rawBody707_96 rawBody707_105

def rawBody707_107 : StackLang.HolProg 64 :=
.seq rawBody707_87 rawBody707_106

def rawBody707_108 : StackLang.HolProg 64 :=
.seq rawBody707_86 rawBody707_107

def rawBody707_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_110 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) rawBody707_108 rawBody707_109

def rawBody707_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody707_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody707_120 : StackLang.HolProg 64 :=
.seq rawBody707_118 rawBody707_119

def rawBody707_121 : StackLang.HolProg 64 :=
.seq rawBody707_117 rawBody707_120

def rawBody707_122 : StackLang.HolProg 64 :=
.seq rawBody707_116 rawBody707_121

def rawBody707_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_124 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) rawBody707_122 rawBody707_123

def rawBody707_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody707_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody707_130 : StackLang.HolProg 64 :=
.seq rawBody707_128 rawBody707_129

def rawBody707_131 : StackLang.HolProg 64 :=
.seq rawBody707_127 rawBody707_130

def rawBody707_132 : StackLang.HolProg 64 :=
.seq rawBody707_126 rawBody707_131

def rawBody707_133 : StackLang.HolProg 64 :=
.seq rawBody707_125 rawBody707_132

def rawBody707_134 : StackLang.HolProg 64 :=
.seq rawBody707_124 rawBody707_133

def rawBody707_135 : StackLang.HolProg 64 :=
.seq rawBody707_115 rawBody707_134

def rawBody707_136 : StackLang.HolProg 64 :=
.seq rawBody707_114 rawBody707_135

def rawBody707_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) rawBody707_136 rawBody707_137

def rawBody707_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody707_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody707_146 : StackLang.HolProg 64 :=
.seq rawBody707_144 rawBody707_145

def rawBody707_147 : StackLang.HolProg 64 :=
.seq rawBody707_143 rawBody707_146

def rawBody707_148 : StackLang.HolProg 64 :=
.seq rawBody707_142 rawBody707_147

def rawBody707_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_150 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) rawBody707_148 rawBody707_149

def rawBody707_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody707_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody707_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody707_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody707_156 : StackLang.HolProg 64 :=
.seq rawBody707_154 rawBody707_155

def rawBody707_157 : StackLang.HolProg 64 :=
.seq rawBody707_153 rawBody707_156

def rawBody707_158 : StackLang.HolProg 64 :=
.seq rawBody707_152 rawBody707_157

def rawBody707_159 : StackLang.HolProg 64 :=
.seq rawBody707_151 rawBody707_158

def rawBody707_160 : StackLang.HolProg 64 :=
.seq rawBody707_150 rawBody707_159

def rawBody707_161 : StackLang.HolProg 64 :=
.seq rawBody707_141 rawBody707_160

def rawBody707_162 : StackLang.HolProg 64 :=
.seq rawBody707_140 rawBody707_161

def rawBody707_163 : StackLang.HolProg 64 :=
.seq rawBody707_139 rawBody707_162

def rawBody707_164 : StackLang.HolProg 64 :=
.seq rawBody707_138 rawBody707_163

def rawBody707_165 : StackLang.HolProg 64 :=
.seq rawBody707_113 rawBody707_164

def rawBody707_166 : StackLang.HolProg 64 :=
.seq rawBody707_112 rawBody707_165

def rawBody707_167 : StackLang.HolProg 64 :=
.seq rawBody707_111 rawBody707_166

def rawBody707_168 : StackLang.HolProg 64 :=
.seq rawBody707_110 rawBody707_167

def rawBody707_169 : StackLang.HolProg 64 :=
.seq rawBody707_85 rawBody707_168

def rawBody707_170 : StackLang.HolProg 64 :=
.seq rawBody707_84 rawBody707_169

def rawBody707_171 : StackLang.HolProg 64 :=
.seq rawBody707_83 rawBody707_170

def rawBody707_172 : StackLang.HolProg 64 :=
.seq rawBody707_82 rawBody707_171

def rawBody707_173 : StackLang.HolProg 64 :=
.seq rawBody707_57 rawBody707_172

def rawBody707_174 : StackLang.HolProg 64 :=
.seq rawBody707_56 rawBody707_173

def rawBody707_175 : StackLang.HolProg 64 :=
.seq rawBody707_55 rawBody707_174

def rawBody707_176 : StackLang.HolProg 64 :=
.seq rawBody707_54 rawBody707_175

def rawBody707_177 : StackLang.HolProg 64 :=
.seq rawBody707_29 rawBody707_176

def rawBody707_178 : StackLang.HolProg 64 :=
.seq rawBody707_28 rawBody707_177

def rawBody707_179 : StackLang.HolProg 64 :=
.seq rawBody707_27 rawBody707_178

def rawBody707_180 : StackLang.HolProg 64 :=
.seq rawBody707_26 rawBody707_179

def rawBody707_181 : StackLang.HolProg 64 :=
.seq rawBody707_1 rawBody707_180

def rawBody707_182 : StackLang.HolProg 64 :=
.seq rawBody707_0 rawBody707_181

def raw707 : StackLang.HolProg 64 := rawBody707_182
theorem raw707_eq : StackRawCall.compTop RawInfo.rawInfo (function707 (.list [])).1 = raw707 := by
  kernel_rfl
#print axioms raw707_eq
end InitECandidate.Proofs.BackendStages
