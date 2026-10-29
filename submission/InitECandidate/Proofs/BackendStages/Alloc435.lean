import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw435
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody435_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody435_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody435_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 24#64)

def AllocBody435_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody435_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody435_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody435_6 : StackLang.HolProg 64 :=
.seq AllocBody435_4 AllocBody435_5

def AllocBody435_7 : StackLang.HolProg 64 :=
.seq AllocBody435_3 AllocBody435_6

def AllocBody435_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody435_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1313#64)

def AllocBody435_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody435_11 : StackLang.HolProg 64 :=
.seq AllocBody435_9 AllocBody435_10

def AllocBody435_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody435_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody435_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody435_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 435 3

def AllocBody435_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody435_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody435_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody435_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody435_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody435_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody435_22 : StackLang.HolProg 64 :=
.seq AllocBody435_20 AllocBody435_21

def AllocBody435_23 : StackLang.HolProg 64 :=
.seq AllocBody435_19 AllocBody435_22

def AllocBody435_24 : StackLang.HolProg 64 :=
.seq AllocBody435_18 AllocBody435_23

def AllocBody435_25 : StackLang.HolProg 64 :=
.seq AllocBody435_17 AllocBody435_24

def AllocBody435_26 : StackLang.HolProg 64 :=
.seq AllocBody435_16 AllocBody435_25

def AllocBody435_27 : StackLang.HolProg 64 :=
.seq AllocBody435_15 AllocBody435_26

def AllocBody435_28 : StackLang.HolProg 64 :=
.seq AllocBody435_14 AllocBody435_27

def AllocBody435_29 : StackLang.HolProg 64 :=
.seq AllocBody435_13 AllocBody435_28

def AllocBody435_30 : StackLang.HolProg 64 :=
.seq AllocBody435_12 AllocBody435_29

def AllocBody435_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody435_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody435_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody435_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody435_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody435_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody435_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody435_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody435_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody435_40 : StackLang.HolProg 64 :=
.seq AllocBody435_38 AllocBody435_39

def AllocBody435_41 : StackLang.HolProg 64 :=
.seq AllocBody435_37 AllocBody435_40

def AllocBody435_42 : StackLang.HolProg 64 :=
.seq AllocBody435_36 AllocBody435_41

def AllocBody435_43 : StackLang.HolProg 64 :=
.seq AllocBody435_35 AllocBody435_42

def AllocBody435_44 : StackLang.HolProg 64 :=
.seq AllocBody435_34 AllocBody435_43

def AllocBody435_45 : StackLang.HolProg 64 :=
.seq AllocBody435_33 AllocBody435_44

def AllocBody435_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody435_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody435_48 : StackLang.HolProg 64 :=
.seq AllocBody435_46 AllocBody435_47

def AllocBody435_49 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody435_50 : StackLang.HolProg 64 :=
.seq AllocBody435_48 AllocBody435_49

def AllocBody435_51 : StackLang.HolProg 64 :=
.call (some (AllocBody435_45, 0, 435, 2)) (Sum.inl 68) (some (AllocBody435_50, 435, 3))

def AllocBody435_52 : StackLang.HolProg 64 :=
.seq AllocBody435_32 AllocBody435_51

def AllocBody435_53 : StackLang.HolProg 64 :=
.seq AllocBody435_31 AllocBody435_52

def AllocBody435_54 : StackLang.HolProg 64 :=
.seq AllocBody435_30 AllocBody435_53

def AllocBody435_55 : StackLang.HolProg 64 :=
.seq AllocBody435_11 AllocBody435_54

def AllocBody435_56 : StackLang.HolProg 64 :=
.seq AllocBody435_8 AllocBody435_55

def AllocBody435_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody435_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody435_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody435_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody435_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody435_62 : StackLang.HolProg 64 :=
.seq AllocBody435_60 AllocBody435_61

def AllocBody435_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody435_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1314#64)

def AllocBody435_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody435_66 : StackLang.HolProg 64 :=
.seq AllocBody435_64 AllocBody435_65

def AllocBody435_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody435_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody435_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody435_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 435 5

def AllocBody435_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody435_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody435_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody435_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody435_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody435_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody435_77 : StackLang.HolProg 64 :=
.seq AllocBody435_75 AllocBody435_76

def AllocBody435_78 : StackLang.HolProg 64 :=
.seq AllocBody435_74 AllocBody435_77

def AllocBody435_79 : StackLang.HolProg 64 :=
.seq AllocBody435_73 AllocBody435_78

def AllocBody435_80 : StackLang.HolProg 64 :=
.seq AllocBody435_72 AllocBody435_79

def AllocBody435_81 : StackLang.HolProg 64 :=
.seq AllocBody435_71 AllocBody435_80

def AllocBody435_82 : StackLang.HolProg 64 :=
.seq AllocBody435_70 AllocBody435_81

def AllocBody435_83 : StackLang.HolProg 64 :=
.seq AllocBody435_69 AllocBody435_82

def AllocBody435_84 : StackLang.HolProg 64 :=
.seq AllocBody435_68 AllocBody435_83

def AllocBody435_85 : StackLang.HolProg 64 :=
.seq AllocBody435_67 AllocBody435_84

def AllocBody435_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody435_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody435_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody435_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody435_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody435_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody435_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody435_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody435_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody435_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody435_96 : StackLang.HolProg 64 :=
.seq AllocBody435_94 AllocBody435_95

def AllocBody435_97 : StackLang.HolProg 64 :=
.seq AllocBody435_93 AllocBody435_96

def AllocBody435_98 : StackLang.HolProg 64 :=
.seq AllocBody435_92 AllocBody435_97

def AllocBody435_99 : StackLang.HolProg 64 :=
.seq AllocBody435_91 AllocBody435_98

def AllocBody435_100 : StackLang.HolProg 64 :=
.seq AllocBody435_90 AllocBody435_99

def AllocBody435_101 : StackLang.HolProg 64 :=
.seq AllocBody435_89 AllocBody435_100

def AllocBody435_102 : StackLang.HolProg 64 :=
.seq AllocBody435_88 AllocBody435_101

def AllocBody435_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody435_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody435_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody435_106 : StackLang.HolProg 64 :=
.seq AllocBody435_104 AllocBody435_105

def AllocBody435_107 : StackLang.HolProg 64 :=
.seq AllocBody435_103 AllocBody435_106

def AllocBody435_108 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody435_109 : StackLang.HolProg 64 :=
.seq AllocBody435_107 AllocBody435_108

def AllocBody435_110 : StackLang.HolProg 64 :=
.call (some (AllocBody435_102, 0, 435, 4)) (Sum.inl 68) (some (AllocBody435_109, 435, 5))

def AllocBody435_111 : StackLang.HolProg 64 :=
.seq AllocBody435_87 AllocBody435_110

def AllocBody435_112 : StackLang.HolProg 64 :=
.seq AllocBody435_86 AllocBody435_111

def AllocBody435_113 : StackLang.HolProg 64 :=
.seq AllocBody435_85 AllocBody435_112

def AllocBody435_114 : StackLang.HolProg 64 :=
.seq AllocBody435_66 AllocBody435_113

def AllocBody435_115 : StackLang.HolProg 64 :=
.seq AllocBody435_63 AllocBody435_114

def AllocBody435_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody435_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody435_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody435_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody435_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody435_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody435_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody435_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody435_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody435_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody435_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody435_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody435_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody435_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody435_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody435_131 : StackLang.HolProg 64 :=
.seq AllocBody435_129 AllocBody435_130

def AllocBody435_132 : StackLang.HolProg 64 :=
.seq AllocBody435_128 AllocBody435_131

def AllocBody435_133 : StackLang.HolProg 64 :=
.seq AllocBody435_127 AllocBody435_132

def AllocBody435_134 : StackLang.HolProg 64 :=
.seq AllocBody435_126 AllocBody435_133

def AllocBody435_135 : StackLang.HolProg 64 :=
.seq AllocBody435_125 AllocBody435_134

def AllocBody435_136 : StackLang.HolProg 64 :=
.seq AllocBody435_124 AllocBody435_135

def AllocBody435_137 : StackLang.HolProg 64 :=
.seq AllocBody435_123 AllocBody435_136

def AllocBody435_138 : StackLang.HolProg 64 :=
.seq AllocBody435_122 AllocBody435_137

def AllocBody435_139 : StackLang.HolProg 64 :=
.seq AllocBody435_121 AllocBody435_138

def AllocBody435_140 : StackLang.HolProg 64 :=
.seq AllocBody435_120 AllocBody435_139

def AllocBody435_141 : StackLang.HolProg 64 :=
.seq AllocBody435_119 AllocBody435_140

def AllocBody435_142 : StackLang.HolProg 64 :=
.seq AllocBody435_118 AllocBody435_141

def AllocBody435_143 : StackLang.HolProg 64 :=
.seq AllocBody435_117 AllocBody435_142

def AllocBody435_144 : StackLang.HolProg 64 :=
.seq AllocBody435_116 AllocBody435_143

def AllocBody435_145 : StackLang.HolProg 64 :=
.seq AllocBody435_115 AllocBody435_144

def AllocBody435_146 : StackLang.HolProg 64 :=
.seq AllocBody435_62 AllocBody435_145

def AllocBody435_147 : StackLang.HolProg 64 :=
.seq AllocBody435_59 AllocBody435_146

def AllocBody435_148 : StackLang.HolProg 64 :=
.seq AllocBody435_58 AllocBody435_147

def AllocBody435_149 : StackLang.HolProg 64 :=
.seq AllocBody435_57 AllocBody435_148

def AllocBody435_150 : StackLang.HolProg 64 :=
.seq AllocBody435_56 AllocBody435_149

def AllocBody435_151 : StackLang.HolProg 64 :=
.seq AllocBody435_7 AllocBody435_150

def AllocBody435_152 : StackLang.HolProg 64 :=
.seq AllocBody435_2 AllocBody435_151

def AllocBody435_153 : StackLang.HolProg 64 :=
.seq AllocBody435_1 AllocBody435_152

def AllocBody435_154 : StackLang.HolProg 64 :=
.seq AllocBody435_0 AllocBody435_153

def Alloc435 : Nat × StackLang.HolProg 64 := (435, AllocBody435_154)
theorem Alloc435_eq : StackAlloc.progComp (435, raw435) = Alloc435 := by
  kernel_rfl
#print axioms Alloc435_eq
end InitECandidate.Proofs.BackendStages
