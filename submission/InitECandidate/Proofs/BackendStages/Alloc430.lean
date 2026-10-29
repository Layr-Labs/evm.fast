import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw430
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody430_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody430_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody430_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody430_3 : StackLang.HolProg 64 :=
.seq AllocBody430_1 AllocBody430_2

def AllocBody430_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody430_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1290#64)

def AllocBody430_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody430_7 : StackLang.HolProg 64 :=
.seq AllocBody430_5 AllocBody430_6

def AllocBody430_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody430_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody430_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody430_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 430 3

def AllocBody430_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody430_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody430_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody430_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody430_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody430_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody430_18 : StackLang.HolProg 64 :=
.seq AllocBody430_16 AllocBody430_17

def AllocBody430_19 : StackLang.HolProg 64 :=
.seq AllocBody430_15 AllocBody430_18

def AllocBody430_20 : StackLang.HolProg 64 :=
.seq AllocBody430_14 AllocBody430_19

def AllocBody430_21 : StackLang.HolProg 64 :=
.seq AllocBody430_13 AllocBody430_20

def AllocBody430_22 : StackLang.HolProg 64 :=
.seq AllocBody430_12 AllocBody430_21

def AllocBody430_23 : StackLang.HolProg 64 :=
.seq AllocBody430_11 AllocBody430_22

def AllocBody430_24 : StackLang.HolProg 64 :=
.seq AllocBody430_10 AllocBody430_23

def AllocBody430_25 : StackLang.HolProg 64 :=
.seq AllocBody430_9 AllocBody430_24

def AllocBody430_26 : StackLang.HolProg 64 :=
.seq AllocBody430_8 AllocBody430_25

def AllocBody430_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody430_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody430_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody430_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody430_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody430_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody430_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody430_34 : StackLang.HolProg 64 :=
.seq AllocBody430_32 AllocBody430_33

def AllocBody430_35 : StackLang.HolProg 64 :=
.seq AllocBody430_31 AllocBody430_34

def AllocBody430_36 : StackLang.HolProg 64 :=
.seq AllocBody430_30 AllocBody430_35

def AllocBody430_37 : StackLang.HolProg 64 :=
.seq AllocBody430_29 AllocBody430_36

def AllocBody430_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody430_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody430_40 : StackLang.HolProg 64 :=
.seq AllocBody430_38 AllocBody430_39

def AllocBody430_41 : StackLang.HolProg 64 :=
.call (some (AllocBody430_37, 0, 430, 2)) (Sum.inl 407) (some (AllocBody430_40, 430, 3))

def AllocBody430_42 : StackLang.HolProg 64 :=
.seq AllocBody430_28 AllocBody430_41

def AllocBody430_43 : StackLang.HolProg 64 :=
.seq AllocBody430_27 AllocBody430_42

def AllocBody430_44 : StackLang.HolProg 64 :=
.seq AllocBody430_26 AllocBody430_43

def AllocBody430_45 : StackLang.HolProg 64 :=
.seq AllocBody430_7 AllocBody430_44

def AllocBody430_46 : StackLang.HolProg 64 :=
.seq AllocBody430_4 AllocBody430_45

def AllocBody430_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody430_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody430_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody430_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1291#64)

def AllocBody430_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody430_52 : StackLang.HolProg 64 :=
.seq AllocBody430_50 AllocBody430_51

def AllocBody430_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody430_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody430_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody430_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 430 5

def AllocBody430_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody430_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody430_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody430_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody430_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody430_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody430_63 : StackLang.HolProg 64 :=
.seq AllocBody430_61 AllocBody430_62

def AllocBody430_64 : StackLang.HolProg 64 :=
.seq AllocBody430_60 AllocBody430_63

def AllocBody430_65 : StackLang.HolProg 64 :=
.seq AllocBody430_59 AllocBody430_64

def AllocBody430_66 : StackLang.HolProg 64 :=
.seq AllocBody430_58 AllocBody430_65

def AllocBody430_67 : StackLang.HolProg 64 :=
.seq AllocBody430_57 AllocBody430_66

def AllocBody430_68 : StackLang.HolProg 64 :=
.seq AllocBody430_56 AllocBody430_67

def AllocBody430_69 : StackLang.HolProg 64 :=
.seq AllocBody430_55 AllocBody430_68

def AllocBody430_70 : StackLang.HolProg 64 :=
.seq AllocBody430_54 AllocBody430_69

def AllocBody430_71 : StackLang.HolProg 64 :=
.seq AllocBody430_53 AllocBody430_70

def AllocBody430_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody430_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody430_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody430_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody430_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody430_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody430_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody430_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody430_80 : StackLang.HolProg 64 :=
.seq AllocBody430_78 AllocBody430_79

def AllocBody430_81 : StackLang.HolProg 64 :=
.seq AllocBody430_77 AllocBody430_80

def AllocBody430_82 : StackLang.HolProg 64 :=
.seq AllocBody430_76 AllocBody430_81

def AllocBody430_83 : StackLang.HolProg 64 :=
.seq AllocBody430_75 AllocBody430_82

def AllocBody430_84 : StackLang.HolProg 64 :=
.seq AllocBody430_74 AllocBody430_83

def AllocBody430_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody430_86 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody430_87 : StackLang.HolProg 64 :=
.seq AllocBody430_85 AllocBody430_86

def AllocBody430_88 : StackLang.HolProg 64 :=
.call (some (AllocBody430_84, 0, 430, 4)) (Sum.inl 395) (some (AllocBody430_87, 430, 5))

def AllocBody430_89 : StackLang.HolProg 64 :=
.seq AllocBody430_73 AllocBody430_88

def AllocBody430_90 : StackLang.HolProg 64 :=
.seq AllocBody430_72 AllocBody430_89

def AllocBody430_91 : StackLang.HolProg 64 :=
.seq AllocBody430_71 AllocBody430_90

def AllocBody430_92 : StackLang.HolProg 64 :=
.seq AllocBody430_52 AllocBody430_91

def AllocBody430_93 : StackLang.HolProg 64 :=
.seq AllocBody430_49 AllocBody430_92

def AllocBody430_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody430_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody430_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody430_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody430_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody430_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody430_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody430_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody430_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1292#64)

def AllocBody430_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody430_104 : StackLang.HolProg 64 :=
.seq AllocBody430_102 AllocBody430_103

def AllocBody430_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody430_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody430_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody430_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 430 7

def AllocBody430_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody430_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody430_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody430_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody430_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody430_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody430_115 : StackLang.HolProg 64 :=
.seq AllocBody430_113 AllocBody430_114

def AllocBody430_116 : StackLang.HolProg 64 :=
.seq AllocBody430_112 AllocBody430_115

def AllocBody430_117 : StackLang.HolProg 64 :=
.seq AllocBody430_111 AllocBody430_116

def AllocBody430_118 : StackLang.HolProg 64 :=
.seq AllocBody430_110 AllocBody430_117

def AllocBody430_119 : StackLang.HolProg 64 :=
.seq AllocBody430_109 AllocBody430_118

def AllocBody430_120 : StackLang.HolProg 64 :=
.seq AllocBody430_108 AllocBody430_119

def AllocBody430_121 : StackLang.HolProg 64 :=
.seq AllocBody430_107 AllocBody430_120

def AllocBody430_122 : StackLang.HolProg 64 :=
.seq AllocBody430_106 AllocBody430_121

def AllocBody430_123 : StackLang.HolProg 64 :=
.seq AllocBody430_105 AllocBody430_122

def AllocBody430_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody430_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody430_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody430_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody430_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody430_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody430_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody430_131 : StackLang.HolProg 64 :=
.seq AllocBody430_129 AllocBody430_130

def AllocBody430_132 : StackLang.HolProg 64 :=
.seq AllocBody430_128 AllocBody430_131

def AllocBody430_133 : StackLang.HolProg 64 :=
.seq AllocBody430_127 AllocBody430_132

def AllocBody430_134 : StackLang.HolProg 64 :=
.seq AllocBody430_126 AllocBody430_133

def AllocBody430_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody430_136 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody430_137 : StackLang.HolProg 64 :=
.seq AllocBody430_135 AllocBody430_136

def AllocBody430_138 : StackLang.HolProg 64 :=
.call (some (AllocBody430_134, 0, 430, 6)) (Sum.inl 423) (some (AllocBody430_137, 430, 7))

def AllocBody430_139 : StackLang.HolProg 64 :=
.seq AllocBody430_125 AllocBody430_138

def AllocBody430_140 : StackLang.HolProg 64 :=
.seq AllocBody430_124 AllocBody430_139

def AllocBody430_141 : StackLang.HolProg 64 :=
.seq AllocBody430_123 AllocBody430_140

def AllocBody430_142 : StackLang.HolProg 64 :=
.seq AllocBody430_104 AllocBody430_141

def AllocBody430_143 : StackLang.HolProg 64 :=
.seq AllocBody430_101 AllocBody430_142

def AllocBody430_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody430_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody430_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody430_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody430_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody430_149 : StackLang.HolProg 64 :=
.seq AllocBody430_147 AllocBody430_148

def AllocBody430_150 : StackLang.HolProg 64 :=
.seq AllocBody430_146 AllocBody430_149

def AllocBody430_151 : StackLang.HolProg 64 :=
.seq AllocBody430_145 AllocBody430_150

def AllocBody430_152 : StackLang.HolProg 64 :=
.seq AllocBody430_144 AllocBody430_151

def AllocBody430_153 : StackLang.HolProg 64 :=
.seq AllocBody430_143 AllocBody430_152

def AllocBody430_154 : StackLang.HolProg 64 :=
.seq AllocBody430_100 AllocBody430_153

def AllocBody430_155 : StackLang.HolProg 64 :=
.seq AllocBody430_99 AllocBody430_154

def AllocBody430_156 : StackLang.HolProg 64 :=
.seq AllocBody430_98 AllocBody430_155

def AllocBody430_157 : StackLang.HolProg 64 :=
.seq AllocBody430_97 AllocBody430_156

def AllocBody430_158 : StackLang.HolProg 64 :=
.seq AllocBody430_96 AllocBody430_157

def AllocBody430_159 : StackLang.HolProg 64 :=
.seq AllocBody430_95 AllocBody430_158

def AllocBody430_160 : StackLang.HolProg 64 :=
.seq AllocBody430_94 AllocBody430_159

def AllocBody430_161 : StackLang.HolProg 64 :=
.seq AllocBody430_93 AllocBody430_160

def AllocBody430_162 : StackLang.HolProg 64 :=
.seq AllocBody430_48 AllocBody430_161

def AllocBody430_163 : StackLang.HolProg 64 :=
.seq AllocBody430_47 AllocBody430_162

def AllocBody430_164 : StackLang.HolProg 64 :=
.seq AllocBody430_46 AllocBody430_163

def AllocBody430_165 : StackLang.HolProg 64 :=
.seq AllocBody430_3 AllocBody430_164

def AllocBody430_166 : StackLang.HolProg 64 :=
.seq AllocBody430_0 AllocBody430_165

def Alloc430 : Nat × StackLang.HolProg 64 := (430, AllocBody430_166)
theorem Alloc430_eq : StackAlloc.progComp (430, raw430) = Alloc430 := by
  kernel_rfl
#print axioms Alloc430_eq
end InitECandidate.Proofs.BackendStages
