import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw707
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody707_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody707_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody707_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody707_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody707_8 : StackLang.HolProg 64 :=
.seq AllocBody707_6 AllocBody707_7

def AllocBody707_9 : StackLang.HolProg 64 :=
.seq AllocBody707_5 AllocBody707_8

def AllocBody707_10 : StackLang.HolProg 64 :=
.seq AllocBody707_4 AllocBody707_9

def AllocBody707_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) AllocBody707_10 AllocBody707_11

def AllocBody707_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody707_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody707_18 : StackLang.HolProg 64 :=
.seq AllocBody707_16 AllocBody707_17

def AllocBody707_19 : StackLang.HolProg 64 :=
.seq AllocBody707_15 AllocBody707_18

def AllocBody707_20 : StackLang.HolProg 64 :=
.seq AllocBody707_14 AllocBody707_19

def AllocBody707_21 : StackLang.HolProg 64 :=
.seq AllocBody707_13 AllocBody707_20

def AllocBody707_22 : StackLang.HolProg 64 :=
.seq AllocBody707_12 AllocBody707_21

def AllocBody707_23 : StackLang.HolProg 64 :=
.seq AllocBody707_3 AllocBody707_22

def AllocBody707_24 : StackLang.HolProg 64 :=
.seq AllocBody707_2 AllocBody707_23

def AllocBody707_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) AllocBody707_24 AllocBody707_25

def AllocBody707_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody707_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody707_36 : StackLang.HolProg 64 :=
.seq AllocBody707_34 AllocBody707_35

def AllocBody707_37 : StackLang.HolProg 64 :=
.seq AllocBody707_33 AllocBody707_36

def AllocBody707_38 : StackLang.HolProg 64 :=
.seq AllocBody707_32 AllocBody707_37

def AllocBody707_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_40 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) AllocBody707_38 AllocBody707_39

def AllocBody707_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody707_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody707_46 : StackLang.HolProg 64 :=
.seq AllocBody707_44 AllocBody707_45

def AllocBody707_47 : StackLang.HolProg 64 :=
.seq AllocBody707_43 AllocBody707_46

def AllocBody707_48 : StackLang.HolProg 64 :=
.seq AllocBody707_42 AllocBody707_47

def AllocBody707_49 : StackLang.HolProg 64 :=
.seq AllocBody707_41 AllocBody707_48

def AllocBody707_50 : StackLang.HolProg 64 :=
.seq AllocBody707_40 AllocBody707_49

def AllocBody707_51 : StackLang.HolProg 64 :=
.seq AllocBody707_31 AllocBody707_50

def AllocBody707_52 : StackLang.HolProg 64 :=
.seq AllocBody707_30 AllocBody707_51

def AllocBody707_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_54 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) AllocBody707_52 AllocBody707_53

def AllocBody707_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody707_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody707_64 : StackLang.HolProg 64 :=
.seq AllocBody707_62 AllocBody707_63

def AllocBody707_65 : StackLang.HolProg 64 :=
.seq AllocBody707_61 AllocBody707_64

def AllocBody707_66 : StackLang.HolProg 64 :=
.seq AllocBody707_60 AllocBody707_65

def AllocBody707_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_68 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) AllocBody707_66 AllocBody707_67

def AllocBody707_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody707_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody707_74 : StackLang.HolProg 64 :=
.seq AllocBody707_72 AllocBody707_73

def AllocBody707_75 : StackLang.HolProg 64 :=
.seq AllocBody707_71 AllocBody707_74

def AllocBody707_76 : StackLang.HolProg 64 :=
.seq AllocBody707_70 AllocBody707_75

def AllocBody707_77 : StackLang.HolProg 64 :=
.seq AllocBody707_69 AllocBody707_76

def AllocBody707_78 : StackLang.HolProg 64 :=
.seq AllocBody707_68 AllocBody707_77

def AllocBody707_79 : StackLang.HolProg 64 :=
.seq AllocBody707_59 AllocBody707_78

def AllocBody707_80 : StackLang.HolProg 64 :=
.seq AllocBody707_58 AllocBody707_79

def AllocBody707_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) AllocBody707_80 AllocBody707_81

def AllocBody707_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody707_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody707_92 : StackLang.HolProg 64 :=
.seq AllocBody707_90 AllocBody707_91

def AllocBody707_93 : StackLang.HolProg 64 :=
.seq AllocBody707_89 AllocBody707_92

def AllocBody707_94 : StackLang.HolProg 64 :=
.seq AllocBody707_88 AllocBody707_93

def AllocBody707_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_96 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) AllocBody707_94 AllocBody707_95

def AllocBody707_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody707_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody707_102 : StackLang.HolProg 64 :=
.seq AllocBody707_100 AllocBody707_101

def AllocBody707_103 : StackLang.HolProg 64 :=
.seq AllocBody707_99 AllocBody707_102

def AllocBody707_104 : StackLang.HolProg 64 :=
.seq AllocBody707_98 AllocBody707_103

def AllocBody707_105 : StackLang.HolProg 64 :=
.seq AllocBody707_97 AllocBody707_104

def AllocBody707_106 : StackLang.HolProg 64 :=
.seq AllocBody707_96 AllocBody707_105

def AllocBody707_107 : StackLang.HolProg 64 :=
.seq AllocBody707_87 AllocBody707_106

def AllocBody707_108 : StackLang.HolProg 64 :=
.seq AllocBody707_86 AllocBody707_107

def AllocBody707_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_110 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) AllocBody707_108 AllocBody707_109

def AllocBody707_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody707_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody707_120 : StackLang.HolProg 64 :=
.seq AllocBody707_118 AllocBody707_119

def AllocBody707_121 : StackLang.HolProg 64 :=
.seq AllocBody707_117 AllocBody707_120

def AllocBody707_122 : StackLang.HolProg 64 :=
.seq AllocBody707_116 AllocBody707_121

def AllocBody707_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_124 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) AllocBody707_122 AllocBody707_123

def AllocBody707_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody707_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody707_130 : StackLang.HolProg 64 :=
.seq AllocBody707_128 AllocBody707_129

def AllocBody707_131 : StackLang.HolProg 64 :=
.seq AllocBody707_127 AllocBody707_130

def AllocBody707_132 : StackLang.HolProg 64 :=
.seq AllocBody707_126 AllocBody707_131

def AllocBody707_133 : StackLang.HolProg 64 :=
.seq AllocBody707_125 AllocBody707_132

def AllocBody707_134 : StackLang.HolProg 64 :=
.seq AllocBody707_124 AllocBody707_133

def AllocBody707_135 : StackLang.HolProg 64 :=
.seq AllocBody707_115 AllocBody707_134

def AllocBody707_136 : StackLang.HolProg 64 :=
.seq AllocBody707_114 AllocBody707_135

def AllocBody707_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) AllocBody707_136 AllocBody707_137

def AllocBody707_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody707_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody707_146 : StackLang.HolProg 64 :=
.seq AllocBody707_144 AllocBody707_145

def AllocBody707_147 : StackLang.HolProg 64 :=
.seq AllocBody707_143 AllocBody707_146

def AllocBody707_148 : StackLang.HolProg 64 :=
.seq AllocBody707_142 AllocBody707_147

def AllocBody707_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_150 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) AllocBody707_148 AllocBody707_149

def AllocBody707_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody707_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody707_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody707_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody707_156 : StackLang.HolProg 64 :=
.seq AllocBody707_154 AllocBody707_155

def AllocBody707_157 : StackLang.HolProg 64 :=
.seq AllocBody707_153 AllocBody707_156

def AllocBody707_158 : StackLang.HolProg 64 :=
.seq AllocBody707_152 AllocBody707_157

def AllocBody707_159 : StackLang.HolProg 64 :=
.seq AllocBody707_151 AllocBody707_158

def AllocBody707_160 : StackLang.HolProg 64 :=
.seq AllocBody707_150 AllocBody707_159

def AllocBody707_161 : StackLang.HolProg 64 :=
.seq AllocBody707_141 AllocBody707_160

def AllocBody707_162 : StackLang.HolProg 64 :=
.seq AllocBody707_140 AllocBody707_161

def AllocBody707_163 : StackLang.HolProg 64 :=
.seq AllocBody707_139 AllocBody707_162

def AllocBody707_164 : StackLang.HolProg 64 :=
.seq AllocBody707_138 AllocBody707_163

def AllocBody707_165 : StackLang.HolProg 64 :=
.seq AllocBody707_113 AllocBody707_164

def AllocBody707_166 : StackLang.HolProg 64 :=
.seq AllocBody707_112 AllocBody707_165

def AllocBody707_167 : StackLang.HolProg 64 :=
.seq AllocBody707_111 AllocBody707_166

def AllocBody707_168 : StackLang.HolProg 64 :=
.seq AllocBody707_110 AllocBody707_167

def AllocBody707_169 : StackLang.HolProg 64 :=
.seq AllocBody707_85 AllocBody707_168

def AllocBody707_170 : StackLang.HolProg 64 :=
.seq AllocBody707_84 AllocBody707_169

def AllocBody707_171 : StackLang.HolProg 64 :=
.seq AllocBody707_83 AllocBody707_170

def AllocBody707_172 : StackLang.HolProg 64 :=
.seq AllocBody707_82 AllocBody707_171

def AllocBody707_173 : StackLang.HolProg 64 :=
.seq AllocBody707_57 AllocBody707_172

def AllocBody707_174 : StackLang.HolProg 64 :=
.seq AllocBody707_56 AllocBody707_173

def AllocBody707_175 : StackLang.HolProg 64 :=
.seq AllocBody707_55 AllocBody707_174

def AllocBody707_176 : StackLang.HolProg 64 :=
.seq AllocBody707_54 AllocBody707_175

def AllocBody707_177 : StackLang.HolProg 64 :=
.seq AllocBody707_29 AllocBody707_176

def AllocBody707_178 : StackLang.HolProg 64 :=
.seq AllocBody707_28 AllocBody707_177

def AllocBody707_179 : StackLang.HolProg 64 :=
.seq AllocBody707_27 AllocBody707_178

def AllocBody707_180 : StackLang.HolProg 64 :=
.seq AllocBody707_26 AllocBody707_179

def AllocBody707_181 : StackLang.HolProg 64 :=
.seq AllocBody707_1 AllocBody707_180

def AllocBody707_182 : StackLang.HolProg 64 :=
.seq AllocBody707_0 AllocBody707_181

def Alloc707 : Nat × StackLang.HolProg 64 := (707, AllocBody707_182)
theorem Alloc707_eq : StackAlloc.progComp (707, raw707) = Alloc707 := by
  kernel_rfl
#print axioms Alloc707_eq
end InitECandidate.Proofs.BackendStages
