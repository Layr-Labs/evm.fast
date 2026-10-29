import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw381
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody381_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody381_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody381_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody381_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody381_4 : StackLang.HolProg 64 :=
.seq AllocBody381_2 AllocBody381_3

def AllocBody381_5 : StackLang.HolProg 64 :=
.seq AllocBody381_1 AllocBody381_4

def AllocBody381_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody381_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1119#64)

def AllocBody381_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody381_9 : StackLang.HolProg 64 :=
.seq AllocBody381_7 AllocBody381_8

def AllocBody381_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody381_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody381_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody381_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 381 3

def AllocBody381_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody381_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody381_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody381_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody381_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody381_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody381_20 : StackLang.HolProg 64 :=
.seq AllocBody381_18 AllocBody381_19

def AllocBody381_21 : StackLang.HolProg 64 :=
.seq AllocBody381_17 AllocBody381_20

def AllocBody381_22 : StackLang.HolProg 64 :=
.seq AllocBody381_16 AllocBody381_21

def AllocBody381_23 : StackLang.HolProg 64 :=
.seq AllocBody381_15 AllocBody381_22

def AllocBody381_24 : StackLang.HolProg 64 :=
.seq AllocBody381_14 AllocBody381_23

def AllocBody381_25 : StackLang.HolProg 64 :=
.seq AllocBody381_13 AllocBody381_24

def AllocBody381_26 : StackLang.HolProg 64 :=
.seq AllocBody381_12 AllocBody381_25

def AllocBody381_27 : StackLang.HolProg 64 :=
.seq AllocBody381_11 AllocBody381_26

def AllocBody381_28 : StackLang.HolProg 64 :=
.seq AllocBody381_10 AllocBody381_27

def AllocBody381_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody381_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody381_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody381_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody381_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody381_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody381_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody381_36 : StackLang.HolProg 64 :=
.seq AllocBody381_34 AllocBody381_35

def AllocBody381_37 : StackLang.HolProg 64 :=
.seq AllocBody381_33 AllocBody381_36

def AllocBody381_38 : StackLang.HolProg 64 :=
.seq AllocBody381_32 AllocBody381_37

def AllocBody381_39 : StackLang.HolProg 64 :=
.seq AllocBody381_31 AllocBody381_38

def AllocBody381_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody381_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody381_42 : StackLang.HolProg 64 :=
.seq AllocBody381_40 AllocBody381_41

def AllocBody381_43 : StackLang.HolProg 64 :=
.call (some (AllocBody381_39, 0, 381, 2)) (Sum.inl 377) (some (AllocBody381_42, 381, 3))

def AllocBody381_44 : StackLang.HolProg 64 :=
.seq AllocBody381_30 AllocBody381_43

def AllocBody381_45 : StackLang.HolProg 64 :=
.seq AllocBody381_29 AllocBody381_44

def AllocBody381_46 : StackLang.HolProg 64 :=
.seq AllocBody381_28 AllocBody381_45

def AllocBody381_47 : StackLang.HolProg 64 :=
.seq AllocBody381_9 AllocBody381_46

def AllocBody381_48 : StackLang.HolProg 64 :=
.seq AllocBody381_6 AllocBody381_47

def AllocBody381_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody381_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody381_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody381_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1120#64)

def AllocBody381_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody381_54 : StackLang.HolProg 64 :=
.seq AllocBody381_52 AllocBody381_53

def AllocBody381_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody381_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody381_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody381_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 381 5

def AllocBody381_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody381_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody381_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody381_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody381_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody381_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody381_65 : StackLang.HolProg 64 :=
.seq AllocBody381_63 AllocBody381_64

def AllocBody381_66 : StackLang.HolProg 64 :=
.seq AllocBody381_62 AllocBody381_65

def AllocBody381_67 : StackLang.HolProg 64 :=
.seq AllocBody381_61 AllocBody381_66

def AllocBody381_68 : StackLang.HolProg 64 :=
.seq AllocBody381_60 AllocBody381_67

def AllocBody381_69 : StackLang.HolProg 64 :=
.seq AllocBody381_59 AllocBody381_68

def AllocBody381_70 : StackLang.HolProg 64 :=
.seq AllocBody381_58 AllocBody381_69

def AllocBody381_71 : StackLang.HolProg 64 :=
.seq AllocBody381_57 AllocBody381_70

def AllocBody381_72 : StackLang.HolProg 64 :=
.seq AllocBody381_56 AllocBody381_71

def AllocBody381_73 : StackLang.HolProg 64 :=
.seq AllocBody381_55 AllocBody381_72

def AllocBody381_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody381_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody381_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody381_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody381_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody381_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody381_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody381_81 : StackLang.HolProg 64 :=
.seq AllocBody381_79 AllocBody381_80

def AllocBody381_82 : StackLang.HolProg 64 :=
.seq AllocBody381_78 AllocBody381_81

def AllocBody381_83 : StackLang.HolProg 64 :=
.seq AllocBody381_77 AllocBody381_82

def AllocBody381_84 : StackLang.HolProg 64 :=
.seq AllocBody381_76 AllocBody381_83

def AllocBody381_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody381_86 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody381_87 : StackLang.HolProg 64 :=
.seq AllocBody381_85 AllocBody381_86

def AllocBody381_88 : StackLang.HolProg 64 :=
.call (some (AllocBody381_84, 0, 381, 4)) (Sum.inl 69) (some (AllocBody381_87, 381, 5))

def AllocBody381_89 : StackLang.HolProg 64 :=
.seq AllocBody381_75 AllocBody381_88

def AllocBody381_90 : StackLang.HolProg 64 :=
.seq AllocBody381_74 AllocBody381_89

def AllocBody381_91 : StackLang.HolProg 64 :=
.seq AllocBody381_73 AllocBody381_90

def AllocBody381_92 : StackLang.HolProg 64 :=
.seq AllocBody381_54 AllocBody381_91

def AllocBody381_93 : StackLang.HolProg 64 :=
.seq AllocBody381_51 AllocBody381_92

def AllocBody381_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody381_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 72#64)

def AllocBody381_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody381_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody381_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1121#64)

def AllocBody381_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody381_100 : StackLang.HolProg 64 :=
.seq AllocBody381_98 AllocBody381_99

def AllocBody381_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody381_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody381_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody381_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 381 7

def AllocBody381_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody381_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody381_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody381_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody381_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody381_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody381_111 : StackLang.HolProg 64 :=
.seq AllocBody381_109 AllocBody381_110

def AllocBody381_112 : StackLang.HolProg 64 :=
.seq AllocBody381_108 AllocBody381_111

def AllocBody381_113 : StackLang.HolProg 64 :=
.seq AllocBody381_107 AllocBody381_112

def AllocBody381_114 : StackLang.HolProg 64 :=
.seq AllocBody381_106 AllocBody381_113

def AllocBody381_115 : StackLang.HolProg 64 :=
.seq AllocBody381_105 AllocBody381_114

def AllocBody381_116 : StackLang.HolProg 64 :=
.seq AllocBody381_104 AllocBody381_115

def AllocBody381_117 : StackLang.HolProg 64 :=
.seq AllocBody381_103 AllocBody381_116

def AllocBody381_118 : StackLang.HolProg 64 :=
.seq AllocBody381_102 AllocBody381_117

def AllocBody381_119 : StackLang.HolProg 64 :=
.seq AllocBody381_101 AllocBody381_118

def AllocBody381_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody381_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody381_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody381_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody381_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody381_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody381_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody381_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody381_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody381_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody381_130 : StackLang.HolProg 64 :=
.seq AllocBody381_128 AllocBody381_129

def AllocBody381_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody381_132 : StackLang.HolProg 64 :=
.seq AllocBody381_130 AllocBody381_131

def AllocBody381_133 : StackLang.HolProg 64 :=
.seq AllocBody381_127 AllocBody381_132

def AllocBody381_134 : StackLang.HolProg 64 :=
.seq AllocBody381_126 AllocBody381_133

def AllocBody381_135 : StackLang.HolProg 64 :=
.seq AllocBody381_125 AllocBody381_134

def AllocBody381_136 : StackLang.HolProg 64 :=
.seq AllocBody381_124 AllocBody381_135

def AllocBody381_137 : StackLang.HolProg 64 :=
.seq AllocBody381_123 AllocBody381_136

def AllocBody381_138 : StackLang.HolProg 64 :=
.seq AllocBody381_122 AllocBody381_137

def AllocBody381_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody381_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody381_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody381_142 : StackLang.HolProg 64 :=
.seq AllocBody381_140 AllocBody381_141

def AllocBody381_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody381_144 : StackLang.HolProg 64 :=
.seq AllocBody381_142 AllocBody381_143

def AllocBody381_145 : StackLang.HolProg 64 :=
.seq AllocBody381_139 AllocBody381_144

def AllocBody381_146 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody381_147 : StackLang.HolProg 64 :=
.seq AllocBody381_145 AllocBody381_146

def AllocBody381_148 : StackLang.HolProg 64 :=
.call (some (AllocBody381_138, 0, 381, 6)) (Sum.inl 68) (some (AllocBody381_147, 381, 7))

def AllocBody381_149 : StackLang.HolProg 64 :=
.seq AllocBody381_121 AllocBody381_148

def AllocBody381_150 : StackLang.HolProg 64 :=
.seq AllocBody381_120 AllocBody381_149

def AllocBody381_151 : StackLang.HolProg 64 :=
.seq AllocBody381_119 AllocBody381_150

def AllocBody381_152 : StackLang.HolProg 64 :=
.seq AllocBody381_100 AllocBody381_151

def AllocBody381_153 : StackLang.HolProg 64 :=
.seq AllocBody381_97 AllocBody381_152

def AllocBody381_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody381_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody381_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def AllocBody381_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody381_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody381_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody381_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody381_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody381_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1122#64)

def AllocBody381_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody381_164 : StackLang.HolProg 64 :=
.seq AllocBody381_162 AllocBody381_163

def AllocBody381_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody381_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody381_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody381_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 381 9

def AllocBody381_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody381_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody381_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody381_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody381_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody381_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody381_175 : StackLang.HolProg 64 :=
.seq AllocBody381_173 AllocBody381_174

def AllocBody381_176 : StackLang.HolProg 64 :=
.seq AllocBody381_172 AllocBody381_175

def AllocBody381_177 : StackLang.HolProg 64 :=
.seq AllocBody381_171 AllocBody381_176

def AllocBody381_178 : StackLang.HolProg 64 :=
.seq AllocBody381_170 AllocBody381_177

def AllocBody381_179 : StackLang.HolProg 64 :=
.seq AllocBody381_169 AllocBody381_178

def AllocBody381_180 : StackLang.HolProg 64 :=
.seq AllocBody381_168 AllocBody381_179

def AllocBody381_181 : StackLang.HolProg 64 :=
.seq AllocBody381_167 AllocBody381_180

def AllocBody381_182 : StackLang.HolProg 64 :=
.seq AllocBody381_166 AllocBody381_181

def AllocBody381_183 : StackLang.HolProg 64 :=
.seq AllocBody381_165 AllocBody381_182

def AllocBody381_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody381_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody381_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody381_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody381_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody381_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody381_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody381_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody381_192 : StackLang.HolProg 64 :=
.seq AllocBody381_190 AllocBody381_191

def AllocBody381_193 : StackLang.HolProg 64 :=
.seq AllocBody381_189 AllocBody381_192

def AllocBody381_194 : StackLang.HolProg 64 :=
.seq AllocBody381_188 AllocBody381_193

def AllocBody381_195 : StackLang.HolProg 64 :=
.seq AllocBody381_187 AllocBody381_194

def AllocBody381_196 : StackLang.HolProg 64 :=
.seq AllocBody381_186 AllocBody381_195

def AllocBody381_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody381_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody381_199 : StackLang.HolProg 64 :=
.seq AllocBody381_197 AllocBody381_198

def AllocBody381_200 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody381_201 : StackLang.HolProg 64 :=
.seq AllocBody381_199 AllocBody381_200

def AllocBody381_202 : StackLang.HolProg 64 :=
.call (some (AllocBody381_196, 0, 381, 8)) (Sum.inl 379) (some (AllocBody381_201, 381, 9))

def AllocBody381_203 : StackLang.HolProg 64 :=
.seq AllocBody381_185 AllocBody381_202

def AllocBody381_204 : StackLang.HolProg 64 :=
.seq AllocBody381_184 AllocBody381_203

def AllocBody381_205 : StackLang.HolProg 64 :=
.seq AllocBody381_183 AllocBody381_204

def AllocBody381_206 : StackLang.HolProg 64 :=
.seq AllocBody381_164 AllocBody381_205

def AllocBody381_207 : StackLang.HolProg 64 :=
.seq AllocBody381_161 AllocBody381_206

def AllocBody381_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody381_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody381_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody381_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1123#64)

def AllocBody381_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody381_213 : StackLang.HolProg 64 :=
.seq AllocBody381_211 AllocBody381_212

def AllocBody381_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody381_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody381_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody381_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 381 11

def AllocBody381_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody381_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody381_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody381_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody381_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody381_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody381_224 : StackLang.HolProg 64 :=
.seq AllocBody381_222 AllocBody381_223

def AllocBody381_225 : StackLang.HolProg 64 :=
.seq AllocBody381_221 AllocBody381_224

def AllocBody381_226 : StackLang.HolProg 64 :=
.seq AllocBody381_220 AllocBody381_225

def AllocBody381_227 : StackLang.HolProg 64 :=
.seq AllocBody381_219 AllocBody381_226

def AllocBody381_228 : StackLang.HolProg 64 :=
.seq AllocBody381_218 AllocBody381_227

def AllocBody381_229 : StackLang.HolProg 64 :=
.seq AllocBody381_217 AllocBody381_228

def AllocBody381_230 : StackLang.HolProg 64 :=
.seq AllocBody381_216 AllocBody381_229

def AllocBody381_231 : StackLang.HolProg 64 :=
.seq AllocBody381_215 AllocBody381_230

def AllocBody381_232 : StackLang.HolProg 64 :=
.seq AllocBody381_214 AllocBody381_231

def AllocBody381_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody381_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody381_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody381_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody381_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody381_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody381_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody381_240 : StackLang.HolProg 64 :=
.seq AllocBody381_238 AllocBody381_239

def AllocBody381_241 : StackLang.HolProg 64 :=
.seq AllocBody381_237 AllocBody381_240

def AllocBody381_242 : StackLang.HolProg 64 :=
.seq AllocBody381_236 AllocBody381_241

def AllocBody381_243 : StackLang.HolProg 64 :=
.seq AllocBody381_235 AllocBody381_242

def AllocBody381_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody381_245 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody381_246 : StackLang.HolProg 64 :=
.seq AllocBody381_244 AllocBody381_245

def AllocBody381_247 : StackLang.HolProg 64 :=
.call (some (AllocBody381_243, 0, 381, 10)) (Sum.inl 380) (some (AllocBody381_246, 381, 11))

def AllocBody381_248 : StackLang.HolProg 64 :=
.seq AllocBody381_234 AllocBody381_247

def AllocBody381_249 : StackLang.HolProg 64 :=
.seq AllocBody381_233 AllocBody381_248

def AllocBody381_250 : StackLang.HolProg 64 :=
.seq AllocBody381_232 AllocBody381_249

def AllocBody381_251 : StackLang.HolProg 64 :=
.seq AllocBody381_213 AllocBody381_250

def AllocBody381_252 : StackLang.HolProg 64 :=
.seq AllocBody381_210 AllocBody381_251

def AllocBody381_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody381_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody381_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody381_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1124#64)

def AllocBody381_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody381_258 : StackLang.HolProg 64 :=
.seq AllocBody381_256 AllocBody381_257

def AllocBody381_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody381_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody381_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody381_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 381 13

def AllocBody381_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody381_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody381_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody381_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody381_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody381_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody381_269 : StackLang.HolProg 64 :=
.seq AllocBody381_267 AllocBody381_268

def AllocBody381_270 : StackLang.HolProg 64 :=
.seq AllocBody381_266 AllocBody381_269

def AllocBody381_271 : StackLang.HolProg 64 :=
.seq AllocBody381_265 AllocBody381_270

def AllocBody381_272 : StackLang.HolProg 64 :=
.seq AllocBody381_264 AllocBody381_271

def AllocBody381_273 : StackLang.HolProg 64 :=
.seq AllocBody381_263 AllocBody381_272

def AllocBody381_274 : StackLang.HolProg 64 :=
.seq AllocBody381_262 AllocBody381_273

def AllocBody381_275 : StackLang.HolProg 64 :=
.seq AllocBody381_261 AllocBody381_274

def AllocBody381_276 : StackLang.HolProg 64 :=
.seq AllocBody381_260 AllocBody381_275

def AllocBody381_277 : StackLang.HolProg 64 :=
.seq AllocBody381_259 AllocBody381_276

def AllocBody381_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody381_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody381_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody381_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody381_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody381_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody381_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody381_285 : StackLang.HolProg 64 :=
.seq AllocBody381_283 AllocBody381_284

def AllocBody381_286 : StackLang.HolProg 64 :=
.seq AllocBody381_282 AllocBody381_285

def AllocBody381_287 : StackLang.HolProg 64 :=
.seq AllocBody381_281 AllocBody381_286

def AllocBody381_288 : StackLang.HolProg 64 :=
.seq AllocBody381_280 AllocBody381_287

def AllocBody381_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody381_290 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody381_291 : StackLang.HolProg 64 :=
.seq AllocBody381_289 AllocBody381_290

def AllocBody381_292 : StackLang.HolProg 64 :=
.call (some (AllocBody381_288, 0, 381, 12)) (Sum.inl 70) (some (AllocBody381_291, 381, 13))

def AllocBody381_293 : StackLang.HolProg 64 :=
.seq AllocBody381_279 AllocBody381_292

def AllocBody381_294 : StackLang.HolProg 64 :=
.seq AllocBody381_278 AllocBody381_293

def AllocBody381_295 : StackLang.HolProg 64 :=
.seq AllocBody381_277 AllocBody381_294

def AllocBody381_296 : StackLang.HolProg 64 :=
.seq AllocBody381_258 AllocBody381_295

def AllocBody381_297 : StackLang.HolProg 64 :=
.seq AllocBody381_255 AllocBody381_296

def AllocBody381_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody381_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody381_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody381_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody381_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody381_303 : StackLang.HolProg 64 :=
.seq AllocBody381_301 AllocBody381_302

def AllocBody381_304 : StackLang.HolProg 64 :=
.seq AllocBody381_300 AllocBody381_303

def AllocBody381_305 : StackLang.HolProg 64 :=
.seq AllocBody381_299 AllocBody381_304

def AllocBody381_306 : StackLang.HolProg 64 :=
.seq AllocBody381_298 AllocBody381_305

def AllocBody381_307 : StackLang.HolProg 64 :=
.seq AllocBody381_297 AllocBody381_306

def AllocBody381_308 : StackLang.HolProg 64 :=
.seq AllocBody381_254 AllocBody381_307

def AllocBody381_309 : StackLang.HolProg 64 :=
.seq AllocBody381_253 AllocBody381_308

def AllocBody381_310 : StackLang.HolProg 64 :=
.seq AllocBody381_252 AllocBody381_309

def AllocBody381_311 : StackLang.HolProg 64 :=
.seq AllocBody381_209 AllocBody381_310

def AllocBody381_312 : StackLang.HolProg 64 :=
.seq AllocBody381_208 AllocBody381_311

def AllocBody381_313 : StackLang.HolProg 64 :=
.seq AllocBody381_207 AllocBody381_312

def AllocBody381_314 : StackLang.HolProg 64 :=
.seq AllocBody381_160 AllocBody381_313

def AllocBody381_315 : StackLang.HolProg 64 :=
.seq AllocBody381_159 AllocBody381_314

def AllocBody381_316 : StackLang.HolProg 64 :=
.seq AllocBody381_158 AllocBody381_315

def AllocBody381_317 : StackLang.HolProg 64 :=
.seq AllocBody381_157 AllocBody381_316

def AllocBody381_318 : StackLang.HolProg 64 :=
.seq AllocBody381_156 AllocBody381_317

def AllocBody381_319 : StackLang.HolProg 64 :=
.seq AllocBody381_155 AllocBody381_318

def AllocBody381_320 : StackLang.HolProg 64 :=
.seq AllocBody381_154 AllocBody381_319

def AllocBody381_321 : StackLang.HolProg 64 :=
.seq AllocBody381_153 AllocBody381_320

def AllocBody381_322 : StackLang.HolProg 64 :=
.seq AllocBody381_96 AllocBody381_321

def AllocBody381_323 : StackLang.HolProg 64 :=
.seq AllocBody381_95 AllocBody381_322

def AllocBody381_324 : StackLang.HolProg 64 :=
.seq AllocBody381_94 AllocBody381_323

def AllocBody381_325 : StackLang.HolProg 64 :=
.seq AllocBody381_93 AllocBody381_324

def AllocBody381_326 : StackLang.HolProg 64 :=
.seq AllocBody381_50 AllocBody381_325

def AllocBody381_327 : StackLang.HolProg 64 :=
.seq AllocBody381_49 AllocBody381_326

def AllocBody381_328 : StackLang.HolProg 64 :=
.seq AllocBody381_48 AllocBody381_327

def AllocBody381_329 : StackLang.HolProg 64 :=
.seq AllocBody381_5 AllocBody381_328

def AllocBody381_330 : StackLang.HolProg 64 :=
.seq AllocBody381_0 AllocBody381_329

def Alloc381 : Nat × StackLang.HolProg 64 := (381, AllocBody381_330)
theorem Alloc381_eq : StackAlloc.progComp (381, raw381) = Alloc381 := by
  kernel_rfl
#print axioms Alloc381_eq
end InitECandidate.Proofs.BackendStages
