import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function160
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody160_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody160_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody160_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def rawBody160_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody160_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody160_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def rawBody160_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody160_7 : StackLang.HolProg 64 :=
.seq rawBody160_5 rawBody160_6

def rawBody160_8 : StackLang.HolProg 64 :=
.seq rawBody160_4 rawBody160_7

def rawBody160_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody160_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody160_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody160_12 : StackLang.HolProg 64 :=
.seq rawBody160_10 rawBody160_11

def rawBody160_13 : StackLang.HolProg 64 :=
.seq rawBody160_9 rawBody160_12

def rawBody160_14 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody160_8 rawBody160_13

def rawBody160_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody160_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody160_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody160_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody160_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody160_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody160_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody160_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody160_23 : StackLang.HolProg 64 :=
.seq rawBody160_21 rawBody160_22

def rawBody160_24 : StackLang.HolProg 64 :=
.seq rawBody160_20 rawBody160_23

def rawBody160_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody160_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody160_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody160_28 : StackLang.HolProg 64 :=
.seq rawBody160_26 rawBody160_27

def rawBody160_29 : StackLang.HolProg 64 :=
.seq rawBody160_25 rawBody160_28

def rawBody160_30 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) rawBody160_24 rawBody160_29

def rawBody160_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody160_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody160_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody160_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def rawBody160_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody160_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody160_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody160_38 : StackLang.HolProg 64 :=
.seq rawBody160_36 rawBody160_37

def rawBody160_39 : StackLang.HolProg 64 :=
.seq rawBody160_35 rawBody160_38

def rawBody160_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody160_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 147#64)

def rawBody160_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody160_43 : StackLang.HolProg 64 :=
.seq rawBody160_41 rawBody160_42

def rawBody160_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody160_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody160_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody160_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 160 3

def rawBody160_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody160_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody160_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody160_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody160_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody160_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody160_54 : StackLang.HolProg 64 :=
.seq rawBody160_52 rawBody160_53

def rawBody160_55 : StackLang.HolProg 64 :=
.seq rawBody160_51 rawBody160_54

def rawBody160_56 : StackLang.HolProg 64 :=
.seq rawBody160_50 rawBody160_55

def rawBody160_57 : StackLang.HolProg 64 :=
.seq rawBody160_49 rawBody160_56

def rawBody160_58 : StackLang.HolProg 64 :=
.seq rawBody160_48 rawBody160_57

def rawBody160_59 : StackLang.HolProg 64 :=
.seq rawBody160_47 rawBody160_58

def rawBody160_60 : StackLang.HolProg 64 :=
.seq rawBody160_46 rawBody160_59

def rawBody160_61 : StackLang.HolProg 64 :=
.seq rawBody160_45 rawBody160_60

def rawBody160_62 : StackLang.HolProg 64 :=
.seq rawBody160_44 rawBody160_61

def rawBody160_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody160_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody160_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody160_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody160_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody160_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody160_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody160_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody160_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody160_72 : StackLang.HolProg 64 :=
.seq rawBody160_70 rawBody160_71

def rawBody160_73 : StackLang.HolProg 64 :=
.seq rawBody160_69 rawBody160_72

def rawBody160_74 : StackLang.HolProg 64 :=
.seq rawBody160_68 rawBody160_73

def rawBody160_75 : StackLang.HolProg 64 :=
.seq rawBody160_67 rawBody160_74

def rawBody160_76 : StackLang.HolProg 64 :=
.seq rawBody160_66 rawBody160_75

def rawBody160_77 : StackLang.HolProg 64 :=
.seq rawBody160_65 rawBody160_76

def rawBody160_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody160_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody160_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody160_81 : StackLang.HolProg 64 :=
.seq rawBody160_79 rawBody160_80

def rawBody160_82 : StackLang.HolProg 64 :=
.seq rawBody160_78 rawBody160_81

def rawBody160_83 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody160_84 : StackLang.HolProg 64 :=
.seq rawBody160_82 rawBody160_83

def rawBody160_85 : StackLang.HolProg 64 :=
.call (some (rawBody160_77, 0, 160, 2)) (Sum.inl 159) (some (rawBody160_84, 160, 3))

def rawBody160_86 : StackLang.HolProg 64 :=
.seq rawBody160_64 rawBody160_85

def rawBody160_87 : StackLang.HolProg 64 :=
.seq rawBody160_63 rawBody160_86

def rawBody160_88 : StackLang.HolProg 64 :=
.seq rawBody160_62 rawBody160_87

def rawBody160_89 : StackLang.HolProg 64 :=
.seq rawBody160_43 rawBody160_88

def rawBody160_90 : StackLang.HolProg 64 :=
.seq rawBody160_40 rawBody160_89

def rawBody160_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody160_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody160_93 : StackLang.HolProg 64 :=
.seq rawBody160_91 rawBody160_92

def rawBody160_94 : StackLang.HolProg 64 :=
.seq rawBody160_90 rawBody160_93

def rawBody160_95 : StackLang.HolProg 64 :=
.seq rawBody160_39 rawBody160_94

def rawBody160_96 : StackLang.HolProg 64 :=
.seq rawBody160_34 rawBody160_95

def rawBody160_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody160_98 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) rawBody160_96 rawBody160_97

def rawBody160_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody160_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody160_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody160_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody160_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody160_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody160_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody160_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody160_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody160_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def rawBody160_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody160_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody160_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody160_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody160_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody160_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody160_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody160_116 : StackLang.HolProg 64 :=
.seq rawBody160_114 rawBody160_115

def rawBody160_117 : StackLang.HolProg 64 :=
.seq rawBody160_113 rawBody160_116

def rawBody160_118 : StackLang.HolProg 64 :=
.seq rawBody160_112 rawBody160_117

def rawBody160_119 : StackLang.HolProg 64 :=
.seq rawBody160_111 rawBody160_118

def rawBody160_120 : StackLang.HolProg 64 :=
.seq rawBody160_110 rawBody160_119

def rawBody160_121 : StackLang.HolProg 64 :=
.seq rawBody160_109 rawBody160_120

def rawBody160_122 : StackLang.HolProg 64 :=
.seq rawBody160_108 rawBody160_121

def rawBody160_123 : StackLang.HolProg 64 :=
.seq rawBody160_107 rawBody160_122

def rawBody160_124 : StackLang.HolProg 64 :=
.seq rawBody160_106 rawBody160_123

def rawBody160_125 : StackLang.HolProg 64 :=
.seq rawBody160_105 rawBody160_124

def rawBody160_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody160_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody160_128 : StackLang.HolProg 64 :=
.seq rawBody160_126 rawBody160_127

def rawBody160_129 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody160_125 rawBody160_128

def rawBody160_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody160_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody160_132 : StackLang.HolProg 64 :=
.seq rawBody160_130 rawBody160_131

def rawBody160_133 : StackLang.HolProg 64 :=
.seq rawBody160_129 rawBody160_132

def rawBody160_134 : StackLang.HolProg 64 :=
.seq rawBody160_104 rawBody160_133

def rawBody160_135 : StackLang.HolProg 64 :=
.loop rawBody160_134

def rawBody160_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody160_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody160_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody160_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody160_140 : StackLang.HolProg 64 :=
.seq rawBody160_138 rawBody160_139

def rawBody160_141 : StackLang.HolProg 64 :=
.seq rawBody160_137 rawBody160_140

def rawBody160_142 : StackLang.HolProg 64 :=
.seq rawBody160_136 rawBody160_141

def rawBody160_143 : StackLang.HolProg 64 :=
.seq rawBody160_135 rawBody160_142

def rawBody160_144 : StackLang.HolProg 64 :=
.seq rawBody160_103 rawBody160_143

def rawBody160_145 : StackLang.HolProg 64 :=
.seq rawBody160_102 rawBody160_144

def rawBody160_146 : StackLang.HolProg 64 :=
.seq rawBody160_101 rawBody160_145

def rawBody160_147 : StackLang.HolProg 64 :=
.seq rawBody160_100 rawBody160_146

def rawBody160_148 : StackLang.HolProg 64 :=
.seq rawBody160_99 rawBody160_147

def rawBody160_149 : StackLang.HolProg 64 :=
.seq rawBody160_98 rawBody160_148

def rawBody160_150 : StackLang.HolProg 64 :=
.seq rawBody160_33 rawBody160_149

def rawBody160_151 : StackLang.HolProg 64 :=
.seq rawBody160_32 rawBody160_150

def rawBody160_152 : StackLang.HolProg 64 :=
.seq rawBody160_31 rawBody160_151

def rawBody160_153 : StackLang.HolProg 64 :=
.seq rawBody160_30 rawBody160_152

def rawBody160_154 : StackLang.HolProg 64 :=
.seq rawBody160_19 rawBody160_153

def rawBody160_155 : StackLang.HolProg 64 :=
.seq rawBody160_18 rawBody160_154

def rawBody160_156 : StackLang.HolProg 64 :=
.seq rawBody160_17 rawBody160_155

def rawBody160_157 : StackLang.HolProg 64 :=
.seq rawBody160_16 rawBody160_156

def rawBody160_158 : StackLang.HolProg 64 :=
.seq rawBody160_15 rawBody160_157

def rawBody160_159 : StackLang.HolProg 64 :=
.seq rawBody160_14 rawBody160_158

def rawBody160_160 : StackLang.HolProg 64 :=
.seq rawBody160_3 rawBody160_159

def rawBody160_161 : StackLang.HolProg 64 :=
.seq rawBody160_2 rawBody160_160

def rawBody160_162 : StackLang.HolProg 64 :=
.seq rawBody160_1 rawBody160_161

def rawBody160_163 : StackLang.HolProg 64 :=
.seq rawBody160_0 rawBody160_162

def raw160 : StackLang.HolProg 64 := rawBody160_163
theorem raw160_eq : StackRawCall.compTop RawInfo.rawInfo (function160 (.list [])).1 = raw160 := by
  kernel_rfl
#print axioms raw160_eq
end InitECandidate.Proofs.BackendStages
