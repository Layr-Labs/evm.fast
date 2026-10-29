import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw436
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody436_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody436_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody436_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 24#64)

def AllocBody436_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody436_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody436_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody436_6 : StackLang.HolProg 64 :=
.seq AllocBody436_4 AllocBody436_5

def AllocBody436_7 : StackLang.HolProg 64 :=
.seq AllocBody436_3 AllocBody436_6

def AllocBody436_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody436_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1315#64)

def AllocBody436_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody436_11 : StackLang.HolProg 64 :=
.seq AllocBody436_9 AllocBody436_10

def AllocBody436_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody436_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody436_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody436_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 436 3

def AllocBody436_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody436_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody436_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody436_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody436_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody436_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody436_22 : StackLang.HolProg 64 :=
.seq AllocBody436_20 AllocBody436_21

def AllocBody436_23 : StackLang.HolProg 64 :=
.seq AllocBody436_19 AllocBody436_22

def AllocBody436_24 : StackLang.HolProg 64 :=
.seq AllocBody436_18 AllocBody436_23

def AllocBody436_25 : StackLang.HolProg 64 :=
.seq AllocBody436_17 AllocBody436_24

def AllocBody436_26 : StackLang.HolProg 64 :=
.seq AllocBody436_16 AllocBody436_25

def AllocBody436_27 : StackLang.HolProg 64 :=
.seq AllocBody436_15 AllocBody436_26

def AllocBody436_28 : StackLang.HolProg 64 :=
.seq AllocBody436_14 AllocBody436_27

def AllocBody436_29 : StackLang.HolProg 64 :=
.seq AllocBody436_13 AllocBody436_28

def AllocBody436_30 : StackLang.HolProg 64 :=
.seq AllocBody436_12 AllocBody436_29

def AllocBody436_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody436_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody436_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody436_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody436_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody436_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody436_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody436_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody436_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody436_40 : StackLang.HolProg 64 :=
.seq AllocBody436_38 AllocBody436_39

def AllocBody436_41 : StackLang.HolProg 64 :=
.seq AllocBody436_37 AllocBody436_40

def AllocBody436_42 : StackLang.HolProg 64 :=
.seq AllocBody436_36 AllocBody436_41

def AllocBody436_43 : StackLang.HolProg 64 :=
.seq AllocBody436_35 AllocBody436_42

def AllocBody436_44 : StackLang.HolProg 64 :=
.seq AllocBody436_34 AllocBody436_43

def AllocBody436_45 : StackLang.HolProg 64 :=
.seq AllocBody436_33 AllocBody436_44

def AllocBody436_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody436_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody436_48 : StackLang.HolProg 64 :=
.seq AllocBody436_46 AllocBody436_47

def AllocBody436_49 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody436_50 : StackLang.HolProg 64 :=
.seq AllocBody436_48 AllocBody436_49

def AllocBody436_51 : StackLang.HolProg 64 :=
.call (some (AllocBody436_45, 0, 436, 2)) (Sum.inl 74) (some (AllocBody436_50, 436, 3))

def AllocBody436_52 : StackLang.HolProg 64 :=
.seq AllocBody436_32 AllocBody436_51

def AllocBody436_53 : StackLang.HolProg 64 :=
.seq AllocBody436_31 AllocBody436_52

def AllocBody436_54 : StackLang.HolProg 64 :=
.seq AllocBody436_30 AllocBody436_53

def AllocBody436_55 : StackLang.HolProg 64 :=
.seq AllocBody436_11 AllocBody436_54

def AllocBody436_56 : StackLang.HolProg 64 :=
.seq AllocBody436_8 AllocBody436_55

def AllocBody436_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody436_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody436_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody436_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody436_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody436_62 : StackLang.HolProg 64 :=
.seq AllocBody436_60 AllocBody436_61

def AllocBody436_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody436_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1316#64)

def AllocBody436_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody436_66 : StackLang.HolProg 64 :=
.seq AllocBody436_64 AllocBody436_65

def AllocBody436_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody436_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody436_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody436_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 436 5

def AllocBody436_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody436_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody436_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody436_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody436_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody436_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody436_77 : StackLang.HolProg 64 :=
.seq AllocBody436_75 AllocBody436_76

def AllocBody436_78 : StackLang.HolProg 64 :=
.seq AllocBody436_74 AllocBody436_77

def AllocBody436_79 : StackLang.HolProg 64 :=
.seq AllocBody436_73 AllocBody436_78

def AllocBody436_80 : StackLang.HolProg 64 :=
.seq AllocBody436_72 AllocBody436_79

def AllocBody436_81 : StackLang.HolProg 64 :=
.seq AllocBody436_71 AllocBody436_80

def AllocBody436_82 : StackLang.HolProg 64 :=
.seq AllocBody436_70 AllocBody436_81

def AllocBody436_83 : StackLang.HolProg 64 :=
.seq AllocBody436_69 AllocBody436_82

def AllocBody436_84 : StackLang.HolProg 64 :=
.seq AllocBody436_68 AllocBody436_83

def AllocBody436_85 : StackLang.HolProg 64 :=
.seq AllocBody436_67 AllocBody436_84

def AllocBody436_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody436_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody436_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody436_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody436_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody436_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody436_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody436_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody436_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody436_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody436_96 : StackLang.HolProg 64 :=
.seq AllocBody436_94 AllocBody436_95

def AllocBody436_97 : StackLang.HolProg 64 :=
.seq AllocBody436_93 AllocBody436_96

def AllocBody436_98 : StackLang.HolProg 64 :=
.seq AllocBody436_92 AllocBody436_97

def AllocBody436_99 : StackLang.HolProg 64 :=
.seq AllocBody436_91 AllocBody436_98

def AllocBody436_100 : StackLang.HolProg 64 :=
.seq AllocBody436_90 AllocBody436_99

def AllocBody436_101 : StackLang.HolProg 64 :=
.seq AllocBody436_89 AllocBody436_100

def AllocBody436_102 : StackLang.HolProg 64 :=
.seq AllocBody436_88 AllocBody436_101

def AllocBody436_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody436_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody436_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody436_106 : StackLang.HolProg 64 :=
.seq AllocBody436_104 AllocBody436_105

def AllocBody436_107 : StackLang.HolProg 64 :=
.seq AllocBody436_103 AllocBody436_106

def AllocBody436_108 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody436_109 : StackLang.HolProg 64 :=
.seq AllocBody436_107 AllocBody436_108

def AllocBody436_110 : StackLang.HolProg 64 :=
.call (some (AllocBody436_102, 0, 436, 4)) (Sum.inl 74) (some (AllocBody436_109, 436, 5))

def AllocBody436_111 : StackLang.HolProg 64 :=
.seq AllocBody436_87 AllocBody436_110

def AllocBody436_112 : StackLang.HolProg 64 :=
.seq AllocBody436_86 AllocBody436_111

def AllocBody436_113 : StackLang.HolProg 64 :=
.seq AllocBody436_85 AllocBody436_112

def AllocBody436_114 : StackLang.HolProg 64 :=
.seq AllocBody436_66 AllocBody436_113

def AllocBody436_115 : StackLang.HolProg 64 :=
.seq AllocBody436_63 AllocBody436_114

def AllocBody436_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody436_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody436_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody436_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody436_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody436_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody436_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody436_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody436_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody436_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody436_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody436_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody436_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody436_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody436_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody436_131 : StackLang.HolProg 64 :=
.seq AllocBody436_129 AllocBody436_130

def AllocBody436_132 : StackLang.HolProg 64 :=
.seq AllocBody436_128 AllocBody436_131

def AllocBody436_133 : StackLang.HolProg 64 :=
.seq AllocBody436_127 AllocBody436_132

def AllocBody436_134 : StackLang.HolProg 64 :=
.seq AllocBody436_126 AllocBody436_133

def AllocBody436_135 : StackLang.HolProg 64 :=
.seq AllocBody436_125 AllocBody436_134

def AllocBody436_136 : StackLang.HolProg 64 :=
.seq AllocBody436_124 AllocBody436_135

def AllocBody436_137 : StackLang.HolProg 64 :=
.seq AllocBody436_123 AllocBody436_136

def AllocBody436_138 : StackLang.HolProg 64 :=
.seq AllocBody436_122 AllocBody436_137

def AllocBody436_139 : StackLang.HolProg 64 :=
.seq AllocBody436_121 AllocBody436_138

def AllocBody436_140 : StackLang.HolProg 64 :=
.seq AllocBody436_120 AllocBody436_139

def AllocBody436_141 : StackLang.HolProg 64 :=
.seq AllocBody436_119 AllocBody436_140

def AllocBody436_142 : StackLang.HolProg 64 :=
.seq AllocBody436_118 AllocBody436_141

def AllocBody436_143 : StackLang.HolProg 64 :=
.seq AllocBody436_117 AllocBody436_142

def AllocBody436_144 : StackLang.HolProg 64 :=
.seq AllocBody436_116 AllocBody436_143

def AllocBody436_145 : StackLang.HolProg 64 :=
.seq AllocBody436_115 AllocBody436_144

def AllocBody436_146 : StackLang.HolProg 64 :=
.seq AllocBody436_62 AllocBody436_145

def AllocBody436_147 : StackLang.HolProg 64 :=
.seq AllocBody436_59 AllocBody436_146

def AllocBody436_148 : StackLang.HolProg 64 :=
.seq AllocBody436_58 AllocBody436_147

def AllocBody436_149 : StackLang.HolProg 64 :=
.seq AllocBody436_57 AllocBody436_148

def AllocBody436_150 : StackLang.HolProg 64 :=
.seq AllocBody436_56 AllocBody436_149

def AllocBody436_151 : StackLang.HolProg 64 :=
.seq AllocBody436_7 AllocBody436_150

def AllocBody436_152 : StackLang.HolProg 64 :=
.seq AllocBody436_2 AllocBody436_151

def AllocBody436_153 : StackLang.HolProg 64 :=
.seq AllocBody436_1 AllocBody436_152

def AllocBody436_154 : StackLang.HolProg 64 :=
.seq AllocBody436_0 AllocBody436_153

def Alloc436 : Nat × StackLang.HolProg 64 := (436, AllocBody436_154)
theorem Alloc436_eq : StackAlloc.progComp (436, raw436) = Alloc436 := by
  kernel_rfl
#print axioms Alloc436_eq
end InitECandidate.Proofs.BackendStages
