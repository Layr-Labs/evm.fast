import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed707
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody707_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 30 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody707_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody707_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody707_8 : StackLang.HolProg 64 :=
.seq NamedBody707_6 NamedBody707_7

def NamedBody707_9 : StackLang.HolProg 64 :=
.seq NamedBody707_5 NamedBody707_8

def NamedBody707_10 : StackLang.HolProg 64 :=
.seq NamedBody707_4 NamedBody707_9

def NamedBody707_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 29) NamedBody707_10 NamedBody707_11

def NamedBody707_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody707_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody707_18 : StackLang.HolProg 64 :=
.seq NamedBody707_16 NamedBody707_17

def NamedBody707_19 : StackLang.HolProg 64 :=
.seq NamedBody707_15 NamedBody707_18

def NamedBody707_20 : StackLang.HolProg 64 :=
.seq NamedBody707_14 NamedBody707_19

def NamedBody707_21 : StackLang.HolProg 64 :=
.seq NamedBody707_13 NamedBody707_20

def NamedBody707_22 : StackLang.HolProg 64 :=
.seq NamedBody707_12 NamedBody707_21

def NamedBody707_23 : StackLang.HolProg 64 :=
.seq NamedBody707_3 NamedBody707_22

def NamedBody707_24 : StackLang.HolProg 64 :=
.seq NamedBody707_2 NamedBody707_23

def NamedBody707_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 29) NamedBody707_24 NamedBody707_25

def NamedBody707_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody707_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody707_36 : StackLang.HolProg 64 :=
.seq NamedBody707_34 NamedBody707_35

def NamedBody707_37 : StackLang.HolProg 64 :=
.seq NamedBody707_33 NamedBody707_36

def NamedBody707_38 : StackLang.HolProg 64 :=
.seq NamedBody707_32 NamedBody707_37

def NamedBody707_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_40 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 28) NamedBody707_38 NamedBody707_39

def NamedBody707_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody707_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody707_46 : StackLang.HolProg 64 :=
.seq NamedBody707_44 NamedBody707_45

def NamedBody707_47 : StackLang.HolProg 64 :=
.seq NamedBody707_43 NamedBody707_46

def NamedBody707_48 : StackLang.HolProg 64 :=
.seq NamedBody707_42 NamedBody707_47

def NamedBody707_49 : StackLang.HolProg 64 :=
.seq NamedBody707_41 NamedBody707_48

def NamedBody707_50 : StackLang.HolProg 64 :=
.seq NamedBody707_40 NamedBody707_49

def NamedBody707_51 : StackLang.HolProg 64 :=
.seq NamedBody707_31 NamedBody707_50

def NamedBody707_52 : StackLang.HolProg 64 :=
.seq NamedBody707_30 NamedBody707_51

def NamedBody707_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_54 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 28) NamedBody707_52 NamedBody707_53

def NamedBody707_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody707_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody707_64 : StackLang.HolProg 64 :=
.seq NamedBody707_62 NamedBody707_63

def NamedBody707_65 : StackLang.HolProg 64 :=
.seq NamedBody707_61 NamedBody707_64

def NamedBody707_66 : StackLang.HolProg 64 :=
.seq NamedBody707_60 NamedBody707_65

def NamedBody707_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_68 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 27) NamedBody707_66 NamedBody707_67

def NamedBody707_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody707_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody707_74 : StackLang.HolProg 64 :=
.seq NamedBody707_72 NamedBody707_73

def NamedBody707_75 : StackLang.HolProg 64 :=
.seq NamedBody707_71 NamedBody707_74

def NamedBody707_76 : StackLang.HolProg 64 :=
.seq NamedBody707_70 NamedBody707_75

def NamedBody707_77 : StackLang.HolProg 64 :=
.seq NamedBody707_69 NamedBody707_76

def NamedBody707_78 : StackLang.HolProg 64 :=
.seq NamedBody707_68 NamedBody707_77

def NamedBody707_79 : StackLang.HolProg 64 :=
.seq NamedBody707_59 NamedBody707_78

def NamedBody707_80 : StackLang.HolProg 64 :=
.seq NamedBody707_58 NamedBody707_79

def NamedBody707_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 27) NamedBody707_80 NamedBody707_81

def NamedBody707_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody707_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody707_92 : StackLang.HolProg 64 :=
.seq NamedBody707_90 NamedBody707_91

def NamedBody707_93 : StackLang.HolProg 64 :=
.seq NamedBody707_89 NamedBody707_92

def NamedBody707_94 : StackLang.HolProg 64 :=
.seq NamedBody707_88 NamedBody707_93

def NamedBody707_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_96 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) NamedBody707_94 NamedBody707_95

def NamedBody707_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody707_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody707_102 : StackLang.HolProg 64 :=
.seq NamedBody707_100 NamedBody707_101

def NamedBody707_103 : StackLang.HolProg 64 :=
.seq NamedBody707_99 NamedBody707_102

def NamedBody707_104 : StackLang.HolProg 64 :=
.seq NamedBody707_98 NamedBody707_103

def NamedBody707_105 : StackLang.HolProg 64 :=
.seq NamedBody707_97 NamedBody707_104

def NamedBody707_106 : StackLang.HolProg 64 :=
.seq NamedBody707_96 NamedBody707_105

def NamedBody707_107 : StackLang.HolProg 64 :=
.seq NamedBody707_87 NamedBody707_106

def NamedBody707_108 : StackLang.HolProg 64 :=
.seq NamedBody707_86 NamedBody707_107

def NamedBody707_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_110 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) NamedBody707_108 NamedBody707_109

def NamedBody707_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody707_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody707_120 : StackLang.HolProg 64 :=
.seq NamedBody707_118 NamedBody707_119

def NamedBody707_121 : StackLang.HolProg 64 :=
.seq NamedBody707_117 NamedBody707_120

def NamedBody707_122 : StackLang.HolProg 64 :=
.seq NamedBody707_116 NamedBody707_121

def NamedBody707_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_124 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) NamedBody707_122 NamedBody707_123

def NamedBody707_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody707_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody707_130 : StackLang.HolProg 64 :=
.seq NamedBody707_128 NamedBody707_129

def NamedBody707_131 : StackLang.HolProg 64 :=
.seq NamedBody707_127 NamedBody707_130

def NamedBody707_132 : StackLang.HolProg 64 :=
.seq NamedBody707_126 NamedBody707_131

def NamedBody707_133 : StackLang.HolProg 64 :=
.seq NamedBody707_125 NamedBody707_132

def NamedBody707_134 : StackLang.HolProg 64 :=
.seq NamedBody707_124 NamedBody707_133

def NamedBody707_135 : StackLang.HolProg 64 :=
.seq NamedBody707_115 NamedBody707_134

def NamedBody707_136 : StackLang.HolProg 64 :=
.seq NamedBody707_114 NamedBody707_135

def NamedBody707_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) NamedBody707_136 NamedBody707_137

def NamedBody707_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody707_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody707_146 : StackLang.HolProg 64 :=
.seq NamedBody707_144 NamedBody707_145

def NamedBody707_147 : StackLang.HolProg 64 :=
.seq NamedBody707_143 NamedBody707_146

def NamedBody707_148 : StackLang.HolProg 64 :=
.seq NamedBody707_142 NamedBody707_147

def NamedBody707_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_150 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 30 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) NamedBody707_148 NamedBody707_149

def NamedBody707_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody707_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody707_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody707_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody707_156 : StackLang.HolProg 64 :=
.seq NamedBody707_154 NamedBody707_155

def NamedBody707_157 : StackLang.HolProg 64 :=
.seq NamedBody707_153 NamedBody707_156

def NamedBody707_158 : StackLang.HolProg 64 :=
.seq NamedBody707_152 NamedBody707_157

def NamedBody707_159 : StackLang.HolProg 64 :=
.seq NamedBody707_151 NamedBody707_158

def NamedBody707_160 : StackLang.HolProg 64 :=
.seq NamedBody707_150 NamedBody707_159

def NamedBody707_161 : StackLang.HolProg 64 :=
.seq NamedBody707_141 NamedBody707_160

def NamedBody707_162 : StackLang.HolProg 64 :=
.seq NamedBody707_140 NamedBody707_161

def NamedBody707_163 : StackLang.HolProg 64 :=
.seq NamedBody707_139 NamedBody707_162

def NamedBody707_164 : StackLang.HolProg 64 :=
.seq NamedBody707_138 NamedBody707_163

def NamedBody707_165 : StackLang.HolProg 64 :=
.seq NamedBody707_113 NamedBody707_164

def NamedBody707_166 : StackLang.HolProg 64 :=
.seq NamedBody707_112 NamedBody707_165

def NamedBody707_167 : StackLang.HolProg 64 :=
.seq NamedBody707_111 NamedBody707_166

def NamedBody707_168 : StackLang.HolProg 64 :=
.seq NamedBody707_110 NamedBody707_167

def NamedBody707_169 : StackLang.HolProg 64 :=
.seq NamedBody707_85 NamedBody707_168

def NamedBody707_170 : StackLang.HolProg 64 :=
.seq NamedBody707_84 NamedBody707_169

def NamedBody707_171 : StackLang.HolProg 64 :=
.seq NamedBody707_83 NamedBody707_170

def NamedBody707_172 : StackLang.HolProg 64 :=
.seq NamedBody707_82 NamedBody707_171

def NamedBody707_173 : StackLang.HolProg 64 :=
.seq NamedBody707_57 NamedBody707_172

def NamedBody707_174 : StackLang.HolProg 64 :=
.seq NamedBody707_56 NamedBody707_173

def NamedBody707_175 : StackLang.HolProg 64 :=
.seq NamedBody707_55 NamedBody707_174

def NamedBody707_176 : StackLang.HolProg 64 :=
.seq NamedBody707_54 NamedBody707_175

def NamedBody707_177 : StackLang.HolProg 64 :=
.seq NamedBody707_29 NamedBody707_176

def NamedBody707_178 : StackLang.HolProg 64 :=
.seq NamedBody707_28 NamedBody707_177

def NamedBody707_179 : StackLang.HolProg 64 :=
.seq NamedBody707_27 NamedBody707_178

def NamedBody707_180 : StackLang.HolProg 64 :=
.seq NamedBody707_26 NamedBody707_179

def NamedBody707_181 : StackLang.HolProg 64 :=
.seq NamedBody707_1 NamedBody707_180

def NamedBody707_182 : StackLang.HolProg 64 :=
.seq NamedBody707_0 NamedBody707_181

def Named707 : Nat × StackLang.HolProg 64 := (707, NamedBody707_182)
theorem Named707_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed707 = Named707 := by
  kernel_rfl
#print axioms Named707_eq
end InitECandidate.Proofs.BackendStages
