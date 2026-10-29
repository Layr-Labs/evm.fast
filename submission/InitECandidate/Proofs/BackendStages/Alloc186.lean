import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw186
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody186_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody186_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody186_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody186_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody186_4 : StackLang.HolProg 64 :=
.seq AllocBody186_2 AllocBody186_3

def AllocBody186_5 : StackLang.HolProg 64 :=
.seq AllocBody186_1 AllocBody186_4

def AllocBody186_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody186_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 211#64)

def AllocBody186_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody186_9 : StackLang.HolProg 64 :=
.seq AllocBody186_7 AllocBody186_8

def AllocBody186_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody186_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody186_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody186_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 186 3

def AllocBody186_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody186_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody186_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody186_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody186_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody186_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody186_20 : StackLang.HolProg 64 :=
.seq AllocBody186_18 AllocBody186_19

def AllocBody186_21 : StackLang.HolProg 64 :=
.seq AllocBody186_17 AllocBody186_20

def AllocBody186_22 : StackLang.HolProg 64 :=
.seq AllocBody186_16 AllocBody186_21

def AllocBody186_23 : StackLang.HolProg 64 :=
.seq AllocBody186_15 AllocBody186_22

def AllocBody186_24 : StackLang.HolProg 64 :=
.seq AllocBody186_14 AllocBody186_23

def AllocBody186_25 : StackLang.HolProg 64 :=
.seq AllocBody186_13 AllocBody186_24

def AllocBody186_26 : StackLang.HolProg 64 :=
.seq AllocBody186_12 AllocBody186_25

def AllocBody186_27 : StackLang.HolProg 64 :=
.seq AllocBody186_11 AllocBody186_26

def AllocBody186_28 : StackLang.HolProg 64 :=
.seq AllocBody186_10 AllocBody186_27

def AllocBody186_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody186_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody186_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody186_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody186_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody186_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody186_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody186_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody186_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody186_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody186_39 : StackLang.HolProg 64 :=
.seq AllocBody186_37 AllocBody186_38

def AllocBody186_40 : StackLang.HolProg 64 :=
.seq AllocBody186_36 AllocBody186_39

def AllocBody186_41 : StackLang.HolProg 64 :=
.seq AllocBody186_35 AllocBody186_40

def AllocBody186_42 : StackLang.HolProg 64 :=
.seq AllocBody186_34 AllocBody186_41

def AllocBody186_43 : StackLang.HolProg 64 :=
.seq AllocBody186_33 AllocBody186_42

def AllocBody186_44 : StackLang.HolProg 64 :=
.seq AllocBody186_32 AllocBody186_43

def AllocBody186_45 : StackLang.HolProg 64 :=
.seq AllocBody186_31 AllocBody186_44

def AllocBody186_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody186_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody186_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody186_49 : StackLang.HolProg 64 :=
.seq AllocBody186_47 AllocBody186_48

def AllocBody186_50 : StackLang.HolProg 64 :=
.seq AllocBody186_46 AllocBody186_49

def AllocBody186_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody186_52 : StackLang.HolProg 64 :=
.seq AllocBody186_50 AllocBody186_51

def AllocBody186_53 : StackLang.HolProg 64 :=
.call (some (AllocBody186_45, 0, 186, 2)) (Sum.inl 185) (some (AllocBody186_52, 186, 3))

def AllocBody186_54 : StackLang.HolProg 64 :=
.seq AllocBody186_30 AllocBody186_53

def AllocBody186_55 : StackLang.HolProg 64 :=
.seq AllocBody186_29 AllocBody186_54

def AllocBody186_56 : StackLang.HolProg 64 :=
.seq AllocBody186_28 AllocBody186_55

def AllocBody186_57 : StackLang.HolProg 64 :=
.seq AllocBody186_9 AllocBody186_56

def AllocBody186_58 : StackLang.HolProg 64 :=
.seq AllocBody186_6 AllocBody186_57

def AllocBody186_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody186_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody186_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody186_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody186_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody186_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody186_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody186_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody186_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def AllocBody186_68 : StackLang.HolProg 64 :=
.seq AllocBody186_66 AllocBody186_67

def AllocBody186_69 : StackLang.HolProg 64 :=
.seq AllocBody186_65 AllocBody186_68

def AllocBody186_70 : StackLang.HolProg 64 :=
.seq AllocBody186_64 AllocBody186_69

def AllocBody186_71 : StackLang.HolProg 64 :=
.seq AllocBody186_63 AllocBody186_70

def AllocBody186_72 : StackLang.HolProg 64 :=
.seq AllocBody186_62 AllocBody186_71

def AllocBody186_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody186_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody186_72 AllocBody186_73

def AllocBody186_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody186_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody186_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody186_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody186_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody186_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def AllocBody186_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody186_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 32#64))

def AllocBody186_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody186_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody186_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody186_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody186_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody186_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody186_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 3

def AllocBody186_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody186_91 : StackLang.HolProg 64 :=
.seq AllocBody186_89 AllocBody186_90

def AllocBody186_92 : StackLang.HolProg 64 :=
.seq AllocBody186_88 AllocBody186_91

def AllocBody186_93 : StackLang.HolProg 64 :=
.seq AllocBody186_87 AllocBody186_92

def AllocBody186_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody186_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 212#64)

def AllocBody186_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody186_97 : StackLang.HolProg 64 :=
.seq AllocBody186_95 AllocBody186_96

def AllocBody186_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody186_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody186_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody186_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 186 5

def AllocBody186_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody186_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody186_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody186_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody186_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody186_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody186_108 : StackLang.HolProg 64 :=
.seq AllocBody186_106 AllocBody186_107

def AllocBody186_109 : StackLang.HolProg 64 :=
.seq AllocBody186_105 AllocBody186_108

def AllocBody186_110 : StackLang.HolProg 64 :=
.seq AllocBody186_104 AllocBody186_109

def AllocBody186_111 : StackLang.HolProg 64 :=
.seq AllocBody186_103 AllocBody186_110

def AllocBody186_112 : StackLang.HolProg 64 :=
.seq AllocBody186_102 AllocBody186_111

def AllocBody186_113 : StackLang.HolProg 64 :=
.seq AllocBody186_101 AllocBody186_112

def AllocBody186_114 : StackLang.HolProg 64 :=
.seq AllocBody186_100 AllocBody186_113

def AllocBody186_115 : StackLang.HolProg 64 :=
.seq AllocBody186_99 AllocBody186_114

def AllocBody186_116 : StackLang.HolProg 64 :=
.seq AllocBody186_98 AllocBody186_115

def AllocBody186_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody186_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody186_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody186_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody186_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody186_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody186_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody186_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody186_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody186_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody186_127 : StackLang.HolProg 64 :=
.seq AllocBody186_125 AllocBody186_126

def AllocBody186_128 : StackLang.HolProg 64 :=
.seq AllocBody186_124 AllocBody186_127

def AllocBody186_129 : StackLang.HolProg 64 :=
.seq AllocBody186_123 AllocBody186_128

def AllocBody186_130 : StackLang.HolProg 64 :=
.seq AllocBody186_122 AllocBody186_129

def AllocBody186_131 : StackLang.HolProg 64 :=
.seq AllocBody186_121 AllocBody186_130

def AllocBody186_132 : StackLang.HolProg 64 :=
.seq AllocBody186_120 AllocBody186_131

def AllocBody186_133 : StackLang.HolProg 64 :=
.seq AllocBody186_119 AllocBody186_132

def AllocBody186_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody186_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody186_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody186_137 : StackLang.HolProg 64 :=
.seq AllocBody186_135 AllocBody186_136

def AllocBody186_138 : StackLang.HolProg 64 :=
.seq AllocBody186_134 AllocBody186_137

def AllocBody186_139 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody186_140 : StackLang.HolProg 64 :=
.seq AllocBody186_138 AllocBody186_139

def AllocBody186_141 : StackLang.HolProg 64 :=
.call (some (AllocBody186_133, 0, 186, 4)) (Sum.inl 79) (some (AllocBody186_140, 186, 5))

def AllocBody186_142 : StackLang.HolProg 64 :=
.seq AllocBody186_118 AllocBody186_141

def AllocBody186_143 : StackLang.HolProg 64 :=
.seq AllocBody186_117 AllocBody186_142

def AllocBody186_144 : StackLang.HolProg 64 :=
.seq AllocBody186_116 AllocBody186_143

def AllocBody186_145 : StackLang.HolProg 64 :=
.seq AllocBody186_97 AllocBody186_144

def AllocBody186_146 : StackLang.HolProg 64 :=
.seq AllocBody186_94 AllocBody186_145

def AllocBody186_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody186_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody186_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody186_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody186_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody186_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody186_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody186_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody186_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody186_156 : StackLang.HolProg 64 :=
.seq AllocBody186_154 AllocBody186_155

def AllocBody186_157 : StackLang.HolProg 64 :=
.seq AllocBody186_153 AllocBody186_156

def AllocBody186_158 : StackLang.HolProg 64 :=
.seq AllocBody186_152 AllocBody186_157

def AllocBody186_159 : StackLang.HolProg 64 :=
.seq AllocBody186_151 AllocBody186_158

def AllocBody186_160 : StackLang.HolProg 64 :=
.seq AllocBody186_150 AllocBody186_159

def AllocBody186_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody186_162 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody186_160 AllocBody186_161

def AllocBody186_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody186_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody186_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody186_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody186_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody186_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody186_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 40#64))

def AllocBody186_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody186_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody186_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody186_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody186_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody186_175 : StackLang.HolProg 64 :=
.seq AllocBody186_173 AllocBody186_174

def AllocBody186_176 : StackLang.HolProg 64 :=
.seq AllocBody186_172 AllocBody186_175

def AllocBody186_177 : StackLang.HolProg 64 :=
.seq AllocBody186_171 AllocBody186_176

def AllocBody186_178 : StackLang.HolProg 64 :=
.seq AllocBody186_170 AllocBody186_177

def AllocBody186_179 : StackLang.HolProg 64 :=
.seq AllocBody186_169 AllocBody186_178

def AllocBody186_180 : StackLang.HolProg 64 :=
.seq AllocBody186_168 AllocBody186_179

def AllocBody186_181 : StackLang.HolProg 64 :=
.seq AllocBody186_167 AllocBody186_180

def AllocBody186_182 : StackLang.HolProg 64 :=
.seq AllocBody186_166 AllocBody186_181

def AllocBody186_183 : StackLang.HolProg 64 :=
.seq AllocBody186_165 AllocBody186_182

def AllocBody186_184 : StackLang.HolProg 64 :=
.seq AllocBody186_164 AllocBody186_183

def AllocBody186_185 : StackLang.HolProg 64 :=
.seq AllocBody186_163 AllocBody186_184

def AllocBody186_186 : StackLang.HolProg 64 :=
.seq AllocBody186_162 AllocBody186_185

def AllocBody186_187 : StackLang.HolProg 64 :=
.seq AllocBody186_149 AllocBody186_186

def AllocBody186_188 : StackLang.HolProg 64 :=
.seq AllocBody186_148 AllocBody186_187

def AllocBody186_189 : StackLang.HolProg 64 :=
.seq AllocBody186_147 AllocBody186_188

def AllocBody186_190 : StackLang.HolProg 64 :=
.seq AllocBody186_146 AllocBody186_189

def AllocBody186_191 : StackLang.HolProg 64 :=
.seq AllocBody186_93 AllocBody186_190

def AllocBody186_192 : StackLang.HolProg 64 :=
.seq AllocBody186_86 AllocBody186_191

def AllocBody186_193 : StackLang.HolProg 64 :=
.seq AllocBody186_85 AllocBody186_192

def AllocBody186_194 : StackLang.HolProg 64 :=
.seq AllocBody186_84 AllocBody186_193

def AllocBody186_195 : StackLang.HolProg 64 :=
.seq AllocBody186_83 AllocBody186_194

def AllocBody186_196 : StackLang.HolProg 64 :=
.seq AllocBody186_82 AllocBody186_195

def AllocBody186_197 : StackLang.HolProg 64 :=
.seq AllocBody186_81 AllocBody186_196

def AllocBody186_198 : StackLang.HolProg 64 :=
.seq AllocBody186_80 AllocBody186_197

def AllocBody186_199 : StackLang.HolProg 64 :=
.seq AllocBody186_79 AllocBody186_198

def AllocBody186_200 : StackLang.HolProg 64 :=
.seq AllocBody186_78 AllocBody186_199

def AllocBody186_201 : StackLang.HolProg 64 :=
.seq AllocBody186_77 AllocBody186_200

def AllocBody186_202 : StackLang.HolProg 64 :=
.seq AllocBody186_76 AllocBody186_201

def AllocBody186_203 : StackLang.HolProg 64 :=
.seq AllocBody186_75 AllocBody186_202

def AllocBody186_204 : StackLang.HolProg 64 :=
.seq AllocBody186_74 AllocBody186_203

def AllocBody186_205 : StackLang.HolProg 64 :=
.seq AllocBody186_61 AllocBody186_204

def AllocBody186_206 : StackLang.HolProg 64 :=
.seq AllocBody186_60 AllocBody186_205

def AllocBody186_207 : StackLang.HolProg 64 :=
.seq AllocBody186_59 AllocBody186_206

def AllocBody186_208 : StackLang.HolProg 64 :=
.seq AllocBody186_58 AllocBody186_207

def AllocBody186_209 : StackLang.HolProg 64 :=
.seq AllocBody186_5 AllocBody186_208

def AllocBody186_210 : StackLang.HolProg 64 :=
.seq AllocBody186_0 AllocBody186_209

def Alloc186 : Nat × StackLang.HolProg 64 := (186, AllocBody186_210)
theorem Alloc186_eq : StackAlloc.progComp (186, raw186) = Alloc186 := by
  kernel_rfl
#print axioms Alloc186_eq
end InitECandidate.Proofs.BackendStages
