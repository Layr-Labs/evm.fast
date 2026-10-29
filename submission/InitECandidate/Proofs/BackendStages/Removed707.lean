import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc707
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody707_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody707_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody707_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody707_8 : StackLang.HolProg 64 :=
.seq RemovedBody707_6 RemovedBody707_7

def RemovedBody707_9 : StackLang.HolProg 64 :=
.seq RemovedBody707_5 RemovedBody707_8

def RemovedBody707_10 : StackLang.HolProg 64 :=
.seq RemovedBody707_4 RemovedBody707_9

def RemovedBody707_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) RemovedBody707_10 RemovedBody707_11

def RemovedBody707_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody707_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody707_18 : StackLang.HolProg 64 :=
.seq RemovedBody707_16 RemovedBody707_17

def RemovedBody707_19 : StackLang.HolProg 64 :=
.seq RemovedBody707_15 RemovedBody707_18

def RemovedBody707_20 : StackLang.HolProg 64 :=
.seq RemovedBody707_14 RemovedBody707_19

def RemovedBody707_21 : StackLang.HolProg 64 :=
.seq RemovedBody707_13 RemovedBody707_20

def RemovedBody707_22 : StackLang.HolProg 64 :=
.seq RemovedBody707_12 RemovedBody707_21

def RemovedBody707_23 : StackLang.HolProg 64 :=
.seq RemovedBody707_3 RemovedBody707_22

def RemovedBody707_24 : StackLang.HolProg 64 :=
.seq RemovedBody707_2 RemovedBody707_23

def RemovedBody707_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) RemovedBody707_24 RemovedBody707_25

def RemovedBody707_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody707_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody707_36 : StackLang.HolProg 64 :=
.seq RemovedBody707_34 RemovedBody707_35

def RemovedBody707_37 : StackLang.HolProg 64 :=
.seq RemovedBody707_33 RemovedBody707_36

def RemovedBody707_38 : StackLang.HolProg 64 :=
.seq RemovedBody707_32 RemovedBody707_37

def RemovedBody707_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_40 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) RemovedBody707_38 RemovedBody707_39

def RemovedBody707_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody707_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody707_46 : StackLang.HolProg 64 :=
.seq RemovedBody707_44 RemovedBody707_45

def RemovedBody707_47 : StackLang.HolProg 64 :=
.seq RemovedBody707_43 RemovedBody707_46

def RemovedBody707_48 : StackLang.HolProg 64 :=
.seq RemovedBody707_42 RemovedBody707_47

def RemovedBody707_49 : StackLang.HolProg 64 :=
.seq RemovedBody707_41 RemovedBody707_48

def RemovedBody707_50 : StackLang.HolProg 64 :=
.seq RemovedBody707_40 RemovedBody707_49

def RemovedBody707_51 : StackLang.HolProg 64 :=
.seq RemovedBody707_31 RemovedBody707_50

def RemovedBody707_52 : StackLang.HolProg 64 :=
.seq RemovedBody707_30 RemovedBody707_51

def RemovedBody707_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_54 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) RemovedBody707_52 RemovedBody707_53

def RemovedBody707_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody707_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody707_64 : StackLang.HolProg 64 :=
.seq RemovedBody707_62 RemovedBody707_63

def RemovedBody707_65 : StackLang.HolProg 64 :=
.seq RemovedBody707_61 RemovedBody707_64

def RemovedBody707_66 : StackLang.HolProg 64 :=
.seq RemovedBody707_60 RemovedBody707_65

def RemovedBody707_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_68 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) RemovedBody707_66 RemovedBody707_67

def RemovedBody707_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody707_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody707_74 : StackLang.HolProg 64 :=
.seq RemovedBody707_72 RemovedBody707_73

def RemovedBody707_75 : StackLang.HolProg 64 :=
.seq RemovedBody707_71 RemovedBody707_74

def RemovedBody707_76 : StackLang.HolProg 64 :=
.seq RemovedBody707_70 RemovedBody707_75

def RemovedBody707_77 : StackLang.HolProg 64 :=
.seq RemovedBody707_69 RemovedBody707_76

def RemovedBody707_78 : StackLang.HolProg 64 :=
.seq RemovedBody707_68 RemovedBody707_77

def RemovedBody707_79 : StackLang.HolProg 64 :=
.seq RemovedBody707_59 RemovedBody707_78

def RemovedBody707_80 : StackLang.HolProg 64 :=
.seq RemovedBody707_58 RemovedBody707_79

def RemovedBody707_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) RemovedBody707_80 RemovedBody707_81

def RemovedBody707_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody707_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody707_92 : StackLang.HolProg 64 :=
.seq RemovedBody707_90 RemovedBody707_91

def RemovedBody707_93 : StackLang.HolProg 64 :=
.seq RemovedBody707_89 RemovedBody707_92

def RemovedBody707_94 : StackLang.HolProg 64 :=
.seq RemovedBody707_88 RemovedBody707_93

def RemovedBody707_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_96 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) RemovedBody707_94 RemovedBody707_95

def RemovedBody707_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody707_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody707_102 : StackLang.HolProg 64 :=
.seq RemovedBody707_100 RemovedBody707_101

def RemovedBody707_103 : StackLang.HolProg 64 :=
.seq RemovedBody707_99 RemovedBody707_102

def RemovedBody707_104 : StackLang.HolProg 64 :=
.seq RemovedBody707_98 RemovedBody707_103

def RemovedBody707_105 : StackLang.HolProg 64 :=
.seq RemovedBody707_97 RemovedBody707_104

def RemovedBody707_106 : StackLang.HolProg 64 :=
.seq RemovedBody707_96 RemovedBody707_105

def RemovedBody707_107 : StackLang.HolProg 64 :=
.seq RemovedBody707_87 RemovedBody707_106

def RemovedBody707_108 : StackLang.HolProg 64 :=
.seq RemovedBody707_86 RemovedBody707_107

def RemovedBody707_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_110 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) RemovedBody707_108 RemovedBody707_109

def RemovedBody707_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody707_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody707_120 : StackLang.HolProg 64 :=
.seq RemovedBody707_118 RemovedBody707_119

def RemovedBody707_121 : StackLang.HolProg 64 :=
.seq RemovedBody707_117 RemovedBody707_120

def RemovedBody707_122 : StackLang.HolProg 64 :=
.seq RemovedBody707_116 RemovedBody707_121

def RemovedBody707_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_124 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) RemovedBody707_122 RemovedBody707_123

def RemovedBody707_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody707_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody707_130 : StackLang.HolProg 64 :=
.seq RemovedBody707_128 RemovedBody707_129

def RemovedBody707_131 : StackLang.HolProg 64 :=
.seq RemovedBody707_127 RemovedBody707_130

def RemovedBody707_132 : StackLang.HolProg 64 :=
.seq RemovedBody707_126 RemovedBody707_131

def RemovedBody707_133 : StackLang.HolProg 64 :=
.seq RemovedBody707_125 RemovedBody707_132

def RemovedBody707_134 : StackLang.HolProg 64 :=
.seq RemovedBody707_124 RemovedBody707_133

def RemovedBody707_135 : StackLang.HolProg 64 :=
.seq RemovedBody707_115 RemovedBody707_134

def RemovedBody707_136 : StackLang.HolProg 64 :=
.seq RemovedBody707_114 RemovedBody707_135

def RemovedBody707_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) RemovedBody707_136 RemovedBody707_137

def RemovedBody707_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody707_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody707_146 : StackLang.HolProg 64 :=
.seq RemovedBody707_144 RemovedBody707_145

def RemovedBody707_147 : StackLang.HolProg 64 :=
.seq RemovedBody707_143 RemovedBody707_146

def RemovedBody707_148 : StackLang.HolProg 64 :=
.seq RemovedBody707_142 RemovedBody707_147

def RemovedBody707_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_150 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) RemovedBody707_148 RemovedBody707_149

def RemovedBody707_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody707_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody707_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody707_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody707_156 : StackLang.HolProg 64 :=
.seq RemovedBody707_154 RemovedBody707_155

def RemovedBody707_157 : StackLang.HolProg 64 :=
.seq RemovedBody707_153 RemovedBody707_156

def RemovedBody707_158 : StackLang.HolProg 64 :=
.seq RemovedBody707_152 RemovedBody707_157

def RemovedBody707_159 : StackLang.HolProg 64 :=
.seq RemovedBody707_151 RemovedBody707_158

def RemovedBody707_160 : StackLang.HolProg 64 :=
.seq RemovedBody707_150 RemovedBody707_159

def RemovedBody707_161 : StackLang.HolProg 64 :=
.seq RemovedBody707_141 RemovedBody707_160

def RemovedBody707_162 : StackLang.HolProg 64 :=
.seq RemovedBody707_140 RemovedBody707_161

def RemovedBody707_163 : StackLang.HolProg 64 :=
.seq RemovedBody707_139 RemovedBody707_162

def RemovedBody707_164 : StackLang.HolProg 64 :=
.seq RemovedBody707_138 RemovedBody707_163

def RemovedBody707_165 : StackLang.HolProg 64 :=
.seq RemovedBody707_113 RemovedBody707_164

def RemovedBody707_166 : StackLang.HolProg 64 :=
.seq RemovedBody707_112 RemovedBody707_165

def RemovedBody707_167 : StackLang.HolProg 64 :=
.seq RemovedBody707_111 RemovedBody707_166

def RemovedBody707_168 : StackLang.HolProg 64 :=
.seq RemovedBody707_110 RemovedBody707_167

def RemovedBody707_169 : StackLang.HolProg 64 :=
.seq RemovedBody707_85 RemovedBody707_168

def RemovedBody707_170 : StackLang.HolProg 64 :=
.seq RemovedBody707_84 RemovedBody707_169

def RemovedBody707_171 : StackLang.HolProg 64 :=
.seq RemovedBody707_83 RemovedBody707_170

def RemovedBody707_172 : StackLang.HolProg 64 :=
.seq RemovedBody707_82 RemovedBody707_171

def RemovedBody707_173 : StackLang.HolProg 64 :=
.seq RemovedBody707_57 RemovedBody707_172

def RemovedBody707_174 : StackLang.HolProg 64 :=
.seq RemovedBody707_56 RemovedBody707_173

def RemovedBody707_175 : StackLang.HolProg 64 :=
.seq RemovedBody707_55 RemovedBody707_174

def RemovedBody707_176 : StackLang.HolProg 64 :=
.seq RemovedBody707_54 RemovedBody707_175

def RemovedBody707_177 : StackLang.HolProg 64 :=
.seq RemovedBody707_29 RemovedBody707_176

def RemovedBody707_178 : StackLang.HolProg 64 :=
.seq RemovedBody707_28 RemovedBody707_177

def RemovedBody707_179 : StackLang.HolProg 64 :=
.seq RemovedBody707_27 RemovedBody707_178

def RemovedBody707_180 : StackLang.HolProg 64 :=
.seq RemovedBody707_26 RemovedBody707_179

def RemovedBody707_181 : StackLang.HolProg 64 :=
.seq RemovedBody707_1 RemovedBody707_180

def RemovedBody707_182 : StackLang.HolProg 64 :=
.seq RemovedBody707_0 RemovedBody707_181

def Removed707 : Nat × StackLang.HolProg 64 := (707, RemovedBody707_182)
theorem Removed707_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc707 = Removed707 := by
  kernel_rfl
#print axioms Removed707_eq
end InitECandidate.Proofs.BackendStages
