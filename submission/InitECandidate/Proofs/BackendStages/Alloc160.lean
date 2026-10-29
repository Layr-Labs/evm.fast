import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw160
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody160_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody160_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody160_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def AllocBody160_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody160_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody160_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def AllocBody160_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody160_7 : StackLang.HolProg 64 :=
.seq AllocBody160_5 AllocBody160_6

def AllocBody160_8 : StackLang.HolProg 64 :=
.seq AllocBody160_4 AllocBody160_7

def AllocBody160_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody160_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody160_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody160_12 : StackLang.HolProg 64 :=
.seq AllocBody160_10 AllocBody160_11

def AllocBody160_13 : StackLang.HolProg 64 :=
.seq AllocBody160_9 AllocBody160_12

def AllocBody160_14 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody160_8 AllocBody160_13

def AllocBody160_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody160_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody160_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody160_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody160_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody160_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody160_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody160_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody160_23 : StackLang.HolProg 64 :=
.seq AllocBody160_21 AllocBody160_22

def AllocBody160_24 : StackLang.HolProg 64 :=
.seq AllocBody160_20 AllocBody160_23

def AllocBody160_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody160_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody160_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody160_28 : StackLang.HolProg 64 :=
.seq AllocBody160_26 AllocBody160_27

def AllocBody160_29 : StackLang.HolProg 64 :=
.seq AllocBody160_25 AllocBody160_28

def AllocBody160_30 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) AllocBody160_24 AllocBody160_29

def AllocBody160_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody160_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody160_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody160_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody160_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody160_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody160_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody160_38 : StackLang.HolProg 64 :=
.seq AllocBody160_36 AllocBody160_37

def AllocBody160_39 : StackLang.HolProg 64 :=
.seq AllocBody160_35 AllocBody160_38

def AllocBody160_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody160_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 147#64)

def AllocBody160_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody160_43 : StackLang.HolProg 64 :=
.seq AllocBody160_41 AllocBody160_42

def AllocBody160_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody160_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody160_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody160_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 160 3

def AllocBody160_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody160_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody160_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody160_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody160_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody160_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody160_54 : StackLang.HolProg 64 :=
.seq AllocBody160_52 AllocBody160_53

def AllocBody160_55 : StackLang.HolProg 64 :=
.seq AllocBody160_51 AllocBody160_54

def AllocBody160_56 : StackLang.HolProg 64 :=
.seq AllocBody160_50 AllocBody160_55

def AllocBody160_57 : StackLang.HolProg 64 :=
.seq AllocBody160_49 AllocBody160_56

def AllocBody160_58 : StackLang.HolProg 64 :=
.seq AllocBody160_48 AllocBody160_57

def AllocBody160_59 : StackLang.HolProg 64 :=
.seq AllocBody160_47 AllocBody160_58

def AllocBody160_60 : StackLang.HolProg 64 :=
.seq AllocBody160_46 AllocBody160_59

def AllocBody160_61 : StackLang.HolProg 64 :=
.seq AllocBody160_45 AllocBody160_60

def AllocBody160_62 : StackLang.HolProg 64 :=
.seq AllocBody160_44 AllocBody160_61

def AllocBody160_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody160_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody160_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody160_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody160_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody160_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody160_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody160_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody160_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody160_72 : StackLang.HolProg 64 :=
.seq AllocBody160_70 AllocBody160_71

def AllocBody160_73 : StackLang.HolProg 64 :=
.seq AllocBody160_69 AllocBody160_72

def AllocBody160_74 : StackLang.HolProg 64 :=
.seq AllocBody160_68 AllocBody160_73

def AllocBody160_75 : StackLang.HolProg 64 :=
.seq AllocBody160_67 AllocBody160_74

def AllocBody160_76 : StackLang.HolProg 64 :=
.seq AllocBody160_66 AllocBody160_75

def AllocBody160_77 : StackLang.HolProg 64 :=
.seq AllocBody160_65 AllocBody160_76

def AllocBody160_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody160_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody160_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody160_81 : StackLang.HolProg 64 :=
.seq AllocBody160_79 AllocBody160_80

def AllocBody160_82 : StackLang.HolProg 64 :=
.seq AllocBody160_78 AllocBody160_81

def AllocBody160_83 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody160_84 : StackLang.HolProg 64 :=
.seq AllocBody160_82 AllocBody160_83

def AllocBody160_85 : StackLang.HolProg 64 :=
.call (some (AllocBody160_77, 0, 160, 2)) (Sum.inl 159) (some (AllocBody160_84, 160, 3))

def AllocBody160_86 : StackLang.HolProg 64 :=
.seq AllocBody160_64 AllocBody160_85

def AllocBody160_87 : StackLang.HolProg 64 :=
.seq AllocBody160_63 AllocBody160_86

def AllocBody160_88 : StackLang.HolProg 64 :=
.seq AllocBody160_62 AllocBody160_87

def AllocBody160_89 : StackLang.HolProg 64 :=
.seq AllocBody160_43 AllocBody160_88

def AllocBody160_90 : StackLang.HolProg 64 :=
.seq AllocBody160_40 AllocBody160_89

def AllocBody160_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody160_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody160_93 : StackLang.HolProg 64 :=
.seq AllocBody160_91 AllocBody160_92

def AllocBody160_94 : StackLang.HolProg 64 :=
.seq AllocBody160_90 AllocBody160_93

def AllocBody160_95 : StackLang.HolProg 64 :=
.seq AllocBody160_39 AllocBody160_94

def AllocBody160_96 : StackLang.HolProg 64 :=
.seq AllocBody160_34 AllocBody160_95

def AllocBody160_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody160_98 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) AllocBody160_96 AllocBody160_97

def AllocBody160_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody160_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody160_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody160_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody160_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody160_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody160_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody160_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody160_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody160_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody160_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody160_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody160_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody160_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody160_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody160_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody160_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody160_116 : StackLang.HolProg 64 :=
.seq AllocBody160_114 AllocBody160_115

def AllocBody160_117 : StackLang.HolProg 64 :=
.seq AllocBody160_113 AllocBody160_116

def AllocBody160_118 : StackLang.HolProg 64 :=
.seq AllocBody160_112 AllocBody160_117

def AllocBody160_119 : StackLang.HolProg 64 :=
.seq AllocBody160_111 AllocBody160_118

def AllocBody160_120 : StackLang.HolProg 64 :=
.seq AllocBody160_110 AllocBody160_119

def AllocBody160_121 : StackLang.HolProg 64 :=
.seq AllocBody160_109 AllocBody160_120

def AllocBody160_122 : StackLang.HolProg 64 :=
.seq AllocBody160_108 AllocBody160_121

def AllocBody160_123 : StackLang.HolProg 64 :=
.seq AllocBody160_107 AllocBody160_122

def AllocBody160_124 : StackLang.HolProg 64 :=
.seq AllocBody160_106 AllocBody160_123

def AllocBody160_125 : StackLang.HolProg 64 :=
.seq AllocBody160_105 AllocBody160_124

def AllocBody160_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody160_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody160_128 : StackLang.HolProg 64 :=
.seq AllocBody160_126 AllocBody160_127

def AllocBody160_129 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody160_125 AllocBody160_128

def AllocBody160_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody160_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody160_132 : StackLang.HolProg 64 :=
.seq AllocBody160_130 AllocBody160_131

def AllocBody160_133 : StackLang.HolProg 64 :=
.seq AllocBody160_129 AllocBody160_132

def AllocBody160_134 : StackLang.HolProg 64 :=
.seq AllocBody160_104 AllocBody160_133

def AllocBody160_135 : StackLang.HolProg 64 :=
.loop AllocBody160_134

def AllocBody160_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody160_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody160_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody160_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody160_140 : StackLang.HolProg 64 :=
.seq AllocBody160_138 AllocBody160_139

def AllocBody160_141 : StackLang.HolProg 64 :=
.seq AllocBody160_137 AllocBody160_140

def AllocBody160_142 : StackLang.HolProg 64 :=
.seq AllocBody160_136 AllocBody160_141

def AllocBody160_143 : StackLang.HolProg 64 :=
.seq AllocBody160_135 AllocBody160_142

def AllocBody160_144 : StackLang.HolProg 64 :=
.seq AllocBody160_103 AllocBody160_143

def AllocBody160_145 : StackLang.HolProg 64 :=
.seq AllocBody160_102 AllocBody160_144

def AllocBody160_146 : StackLang.HolProg 64 :=
.seq AllocBody160_101 AllocBody160_145

def AllocBody160_147 : StackLang.HolProg 64 :=
.seq AllocBody160_100 AllocBody160_146

def AllocBody160_148 : StackLang.HolProg 64 :=
.seq AllocBody160_99 AllocBody160_147

def AllocBody160_149 : StackLang.HolProg 64 :=
.seq AllocBody160_98 AllocBody160_148

def AllocBody160_150 : StackLang.HolProg 64 :=
.seq AllocBody160_33 AllocBody160_149

def AllocBody160_151 : StackLang.HolProg 64 :=
.seq AllocBody160_32 AllocBody160_150

def AllocBody160_152 : StackLang.HolProg 64 :=
.seq AllocBody160_31 AllocBody160_151

def AllocBody160_153 : StackLang.HolProg 64 :=
.seq AllocBody160_30 AllocBody160_152

def AllocBody160_154 : StackLang.HolProg 64 :=
.seq AllocBody160_19 AllocBody160_153

def AllocBody160_155 : StackLang.HolProg 64 :=
.seq AllocBody160_18 AllocBody160_154

def AllocBody160_156 : StackLang.HolProg 64 :=
.seq AllocBody160_17 AllocBody160_155

def AllocBody160_157 : StackLang.HolProg 64 :=
.seq AllocBody160_16 AllocBody160_156

def AllocBody160_158 : StackLang.HolProg 64 :=
.seq AllocBody160_15 AllocBody160_157

def AllocBody160_159 : StackLang.HolProg 64 :=
.seq AllocBody160_14 AllocBody160_158

def AllocBody160_160 : StackLang.HolProg 64 :=
.seq AllocBody160_3 AllocBody160_159

def AllocBody160_161 : StackLang.HolProg 64 :=
.seq AllocBody160_2 AllocBody160_160

def AllocBody160_162 : StackLang.HolProg 64 :=
.seq AllocBody160_1 AllocBody160_161

def AllocBody160_163 : StackLang.HolProg 64 :=
.seq AllocBody160_0 AllocBody160_162

def Alloc160 : Nat × StackLang.HolProg 64 := (160, AllocBody160_163)
theorem Alloc160_eq : StackAlloc.progComp (160, raw160) = Alloc160 := by
  kernel_rfl
#print axioms Alloc160_eq
end InitECandidate.Proofs.BackendStages
