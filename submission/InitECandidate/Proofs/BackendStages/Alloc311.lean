import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw311
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody311_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody311_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody311_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody311_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody311_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody311_5 : StackLang.HolProg 64 :=
.seq AllocBody311_3 AllocBody311_4

def AllocBody311_6 : StackLang.HolProg 64 :=
.seq AllocBody311_2 AllocBody311_5

def AllocBody311_7 : StackLang.HolProg 64 :=
.seq AllocBody311_1 AllocBody311_6

def AllocBody311_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody311_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 856#64)

def AllocBody311_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody311_11 : StackLang.HolProg 64 :=
.seq AllocBody311_9 AllocBody311_10

def AllocBody311_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody311_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody311_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody311_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 311 3

def AllocBody311_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody311_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody311_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody311_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody311_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody311_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody311_22 : StackLang.HolProg 64 :=
.seq AllocBody311_20 AllocBody311_21

def AllocBody311_23 : StackLang.HolProg 64 :=
.seq AllocBody311_19 AllocBody311_22

def AllocBody311_24 : StackLang.HolProg 64 :=
.seq AllocBody311_18 AllocBody311_23

def AllocBody311_25 : StackLang.HolProg 64 :=
.seq AllocBody311_17 AllocBody311_24

def AllocBody311_26 : StackLang.HolProg 64 :=
.seq AllocBody311_16 AllocBody311_25

def AllocBody311_27 : StackLang.HolProg 64 :=
.seq AllocBody311_15 AllocBody311_26

def AllocBody311_28 : StackLang.HolProg 64 :=
.seq AllocBody311_14 AllocBody311_27

def AllocBody311_29 : StackLang.HolProg 64 :=
.seq AllocBody311_13 AllocBody311_28

def AllocBody311_30 : StackLang.HolProg 64 :=
.seq AllocBody311_12 AllocBody311_29

def AllocBody311_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody311_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody311_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody311_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody311_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody311_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody311_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody311_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody311_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody311_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody311_41 : StackLang.HolProg 64 :=
.seq AllocBody311_39 AllocBody311_40

def AllocBody311_42 : StackLang.HolProg 64 :=
.seq AllocBody311_38 AllocBody311_41

def AllocBody311_43 : StackLang.HolProg 64 :=
.seq AllocBody311_37 AllocBody311_42

def AllocBody311_44 : StackLang.HolProg 64 :=
.seq AllocBody311_36 AllocBody311_43

def AllocBody311_45 : StackLang.HolProg 64 :=
.seq AllocBody311_35 AllocBody311_44

def AllocBody311_46 : StackLang.HolProg 64 :=
.seq AllocBody311_34 AllocBody311_45

def AllocBody311_47 : StackLang.HolProg 64 :=
.seq AllocBody311_33 AllocBody311_46

def AllocBody311_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody311_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody311_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody311_51 : StackLang.HolProg 64 :=
.seq AllocBody311_49 AllocBody311_50

def AllocBody311_52 : StackLang.HolProg 64 :=
.seq AllocBody311_48 AllocBody311_51

def AllocBody311_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody311_54 : StackLang.HolProg 64 :=
.seq AllocBody311_52 AllocBody311_53

def AllocBody311_55 : StackLang.HolProg 64 :=
.call (some (AllocBody311_47, 0, 311, 2)) (Sum.inl 69) (some (AllocBody311_54, 311, 3))

def AllocBody311_56 : StackLang.HolProg 64 :=
.seq AllocBody311_32 AllocBody311_55

def AllocBody311_57 : StackLang.HolProg 64 :=
.seq AllocBody311_31 AllocBody311_56

def AllocBody311_58 : StackLang.HolProg 64 :=
.seq AllocBody311_30 AllocBody311_57

def AllocBody311_59 : StackLang.HolProg 64 :=
.seq AllocBody311_11 AllocBody311_58

def AllocBody311_60 : StackLang.HolProg 64 :=
.seq AllocBody311_8 AllocBody311_59

def AllocBody311_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody311_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody311_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody311_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody311_65 : StackLang.HolProg 64 :=
.seq AllocBody311_63 AllocBody311_64

def AllocBody311_66 : StackLang.HolProg 64 :=
.seq AllocBody311_62 AllocBody311_65

def AllocBody311_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody311_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 857#64)

def AllocBody311_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody311_70 : StackLang.HolProg 64 :=
.seq AllocBody311_68 AllocBody311_69

def AllocBody311_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody311_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody311_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody311_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 311 5

def AllocBody311_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody311_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody311_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody311_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody311_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody311_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody311_81 : StackLang.HolProg 64 :=
.seq AllocBody311_79 AllocBody311_80

def AllocBody311_82 : StackLang.HolProg 64 :=
.seq AllocBody311_78 AllocBody311_81

def AllocBody311_83 : StackLang.HolProg 64 :=
.seq AllocBody311_77 AllocBody311_82

def AllocBody311_84 : StackLang.HolProg 64 :=
.seq AllocBody311_76 AllocBody311_83

def AllocBody311_85 : StackLang.HolProg 64 :=
.seq AllocBody311_75 AllocBody311_84

def AllocBody311_86 : StackLang.HolProg 64 :=
.seq AllocBody311_74 AllocBody311_85

def AllocBody311_87 : StackLang.HolProg 64 :=
.seq AllocBody311_73 AllocBody311_86

def AllocBody311_88 : StackLang.HolProg 64 :=
.seq AllocBody311_72 AllocBody311_87

def AllocBody311_89 : StackLang.HolProg 64 :=
.seq AllocBody311_71 AllocBody311_88

def AllocBody311_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody311_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody311_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody311_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody311_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody311_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody311_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody311_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody311_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody311_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody311_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody311_101 : StackLang.HolProg 64 :=
.seq AllocBody311_99 AllocBody311_100

def AllocBody311_102 : StackLang.HolProg 64 :=
.seq AllocBody311_98 AllocBody311_101

def AllocBody311_103 : StackLang.HolProg 64 :=
.seq AllocBody311_97 AllocBody311_102

def AllocBody311_104 : StackLang.HolProg 64 :=
.seq AllocBody311_96 AllocBody311_103

def AllocBody311_105 : StackLang.HolProg 64 :=
.seq AllocBody311_95 AllocBody311_104

def AllocBody311_106 : StackLang.HolProg 64 :=
.seq AllocBody311_94 AllocBody311_105

def AllocBody311_107 : StackLang.HolProg 64 :=
.seq AllocBody311_93 AllocBody311_106

def AllocBody311_108 : StackLang.HolProg 64 :=
.seq AllocBody311_92 AllocBody311_107

def AllocBody311_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody311_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody311_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody311_112 : StackLang.HolProg 64 :=
.seq AllocBody311_110 AllocBody311_111

def AllocBody311_113 : StackLang.HolProg 64 :=
.seq AllocBody311_109 AllocBody311_112

def AllocBody311_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody311_115 : StackLang.HolProg 64 :=
.seq AllocBody311_113 AllocBody311_114

def AllocBody311_116 : StackLang.HolProg 64 :=
.call (some (AllocBody311_108, 0, 311, 4)) (Sum.inl 310) (some (AllocBody311_115, 311, 5))

def AllocBody311_117 : StackLang.HolProg 64 :=
.seq AllocBody311_91 AllocBody311_116

def AllocBody311_118 : StackLang.HolProg 64 :=
.seq AllocBody311_90 AllocBody311_117

def AllocBody311_119 : StackLang.HolProg 64 :=
.seq AllocBody311_89 AllocBody311_118

def AllocBody311_120 : StackLang.HolProg 64 :=
.seq AllocBody311_70 AllocBody311_119

def AllocBody311_121 : StackLang.HolProg 64 :=
.seq AllocBody311_67 AllocBody311_120

def AllocBody311_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody311_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody311_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody311_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody311_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody311_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 858#64)

def AllocBody311_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody311_129 : StackLang.HolProg 64 :=
.seq AllocBody311_127 AllocBody311_128

def AllocBody311_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody311_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody311_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody311_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 311 7

def AllocBody311_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody311_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody311_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody311_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody311_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody311_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody311_140 : StackLang.HolProg 64 :=
.seq AllocBody311_138 AllocBody311_139

def AllocBody311_141 : StackLang.HolProg 64 :=
.seq AllocBody311_137 AllocBody311_140

def AllocBody311_142 : StackLang.HolProg 64 :=
.seq AllocBody311_136 AllocBody311_141

def AllocBody311_143 : StackLang.HolProg 64 :=
.seq AllocBody311_135 AllocBody311_142

def AllocBody311_144 : StackLang.HolProg 64 :=
.seq AllocBody311_134 AllocBody311_143

def AllocBody311_145 : StackLang.HolProg 64 :=
.seq AllocBody311_133 AllocBody311_144

def AllocBody311_146 : StackLang.HolProg 64 :=
.seq AllocBody311_132 AllocBody311_145

def AllocBody311_147 : StackLang.HolProg 64 :=
.seq AllocBody311_131 AllocBody311_146

def AllocBody311_148 : StackLang.HolProg 64 :=
.seq AllocBody311_130 AllocBody311_147

def AllocBody311_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody311_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody311_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody311_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody311_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody311_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody311_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody311_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody311_157 : StackLang.HolProg 64 :=
.seq AllocBody311_155 AllocBody311_156

def AllocBody311_158 : StackLang.HolProg 64 :=
.seq AllocBody311_154 AllocBody311_157

def AllocBody311_159 : StackLang.HolProg 64 :=
.seq AllocBody311_153 AllocBody311_158

def AllocBody311_160 : StackLang.HolProg 64 :=
.seq AllocBody311_152 AllocBody311_159

def AllocBody311_161 : StackLang.HolProg 64 :=
.seq AllocBody311_151 AllocBody311_160

def AllocBody311_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody311_163 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody311_164 : StackLang.HolProg 64 :=
.seq AllocBody311_162 AllocBody311_163

def AllocBody311_165 : StackLang.HolProg 64 :=
.call (some (AllocBody311_161, 0, 311, 6)) (Sum.inl 306) (some (AllocBody311_164, 311, 7))

def AllocBody311_166 : StackLang.HolProg 64 :=
.seq AllocBody311_150 AllocBody311_165

def AllocBody311_167 : StackLang.HolProg 64 :=
.seq AllocBody311_149 AllocBody311_166

def AllocBody311_168 : StackLang.HolProg 64 :=
.seq AllocBody311_148 AllocBody311_167

def AllocBody311_169 : StackLang.HolProg 64 :=
.seq AllocBody311_129 AllocBody311_168

def AllocBody311_170 : StackLang.HolProg 64 :=
.seq AllocBody311_126 AllocBody311_169

def AllocBody311_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody311_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody311_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody311_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody311_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody311_176 : StackLang.HolProg 64 :=
.seq AllocBody311_174 AllocBody311_175

def AllocBody311_177 : StackLang.HolProg 64 :=
.seq AllocBody311_173 AllocBody311_176

def AllocBody311_178 : StackLang.HolProg 64 :=
.seq AllocBody311_172 AllocBody311_177

def AllocBody311_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody311_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 859#64)

def AllocBody311_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody311_182 : StackLang.HolProg 64 :=
.seq AllocBody311_180 AllocBody311_181

def AllocBody311_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody311_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody311_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody311_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 311 9

def AllocBody311_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody311_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody311_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody311_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody311_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody311_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody311_193 : StackLang.HolProg 64 :=
.seq AllocBody311_191 AllocBody311_192

def AllocBody311_194 : StackLang.HolProg 64 :=
.seq AllocBody311_190 AllocBody311_193

def AllocBody311_195 : StackLang.HolProg 64 :=
.seq AllocBody311_189 AllocBody311_194

def AllocBody311_196 : StackLang.HolProg 64 :=
.seq AllocBody311_188 AllocBody311_195

def AllocBody311_197 : StackLang.HolProg 64 :=
.seq AllocBody311_187 AllocBody311_196

def AllocBody311_198 : StackLang.HolProg 64 :=
.seq AllocBody311_186 AllocBody311_197

def AllocBody311_199 : StackLang.HolProg 64 :=
.seq AllocBody311_185 AllocBody311_198

def AllocBody311_200 : StackLang.HolProg 64 :=
.seq AllocBody311_184 AllocBody311_199

def AllocBody311_201 : StackLang.HolProg 64 :=
.seq AllocBody311_183 AllocBody311_200

def AllocBody311_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody311_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody311_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody311_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody311_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody311_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody311_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody311_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody311_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody311_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody311_212 : StackLang.HolProg 64 :=
.seq AllocBody311_210 AllocBody311_211

def AllocBody311_213 : StackLang.HolProg 64 :=
.seq AllocBody311_209 AllocBody311_212

def AllocBody311_214 : StackLang.HolProg 64 :=
.seq AllocBody311_208 AllocBody311_213

def AllocBody311_215 : StackLang.HolProg 64 :=
.seq AllocBody311_207 AllocBody311_214

def AllocBody311_216 : StackLang.HolProg 64 :=
.seq AllocBody311_206 AllocBody311_215

def AllocBody311_217 : StackLang.HolProg 64 :=
.seq AllocBody311_205 AllocBody311_216

def AllocBody311_218 : StackLang.HolProg 64 :=
.seq AllocBody311_204 AllocBody311_217

def AllocBody311_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody311_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody311_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody311_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody311_223 : StackLang.HolProg 64 :=
.seq AllocBody311_221 AllocBody311_222

def AllocBody311_224 : StackLang.HolProg 64 :=
.seq AllocBody311_220 AllocBody311_223

def AllocBody311_225 : StackLang.HolProg 64 :=
.seq AllocBody311_219 AllocBody311_224

def AllocBody311_226 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody311_227 : StackLang.HolProg 64 :=
.seq AllocBody311_225 AllocBody311_226

def AllocBody311_228 : StackLang.HolProg 64 :=
.call (some (AllocBody311_218, 0, 311, 8)) (Sum.inl 70) (some (AllocBody311_227, 311, 9))

def AllocBody311_229 : StackLang.HolProg 64 :=
.seq AllocBody311_203 AllocBody311_228

def AllocBody311_230 : StackLang.HolProg 64 :=
.seq AllocBody311_202 AllocBody311_229

def AllocBody311_231 : StackLang.HolProg 64 :=
.seq AllocBody311_201 AllocBody311_230

def AllocBody311_232 : StackLang.HolProg 64 :=
.seq AllocBody311_182 AllocBody311_231

def AllocBody311_233 : StackLang.HolProg 64 :=
.seq AllocBody311_179 AllocBody311_232

def AllocBody311_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody311_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody311_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody311_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody311_238 : StackLang.HolProg 64 :=
.seq AllocBody311_236 AllocBody311_237

def AllocBody311_239 : StackLang.HolProg 64 :=
.seq AllocBody311_235 AllocBody311_238

def AllocBody311_240 : StackLang.HolProg 64 :=
.seq AllocBody311_234 AllocBody311_239

def AllocBody311_241 : StackLang.HolProg 64 :=
.seq AllocBody311_233 AllocBody311_240

def AllocBody311_242 : StackLang.HolProg 64 :=
.seq AllocBody311_178 AllocBody311_241

def AllocBody311_243 : StackLang.HolProg 64 :=
.seq AllocBody311_171 AllocBody311_242

def AllocBody311_244 : StackLang.HolProg 64 :=
.seq AllocBody311_170 AllocBody311_243

def AllocBody311_245 : StackLang.HolProg 64 :=
.seq AllocBody311_125 AllocBody311_244

def AllocBody311_246 : StackLang.HolProg 64 :=
.seq AllocBody311_124 AllocBody311_245

def AllocBody311_247 : StackLang.HolProg 64 :=
.seq AllocBody311_123 AllocBody311_246

def AllocBody311_248 : StackLang.HolProg 64 :=
.seq AllocBody311_122 AllocBody311_247

def AllocBody311_249 : StackLang.HolProg 64 :=
.seq AllocBody311_121 AllocBody311_248

def AllocBody311_250 : StackLang.HolProg 64 :=
.seq AllocBody311_66 AllocBody311_249

def AllocBody311_251 : StackLang.HolProg 64 :=
.seq AllocBody311_61 AllocBody311_250

def AllocBody311_252 : StackLang.HolProg 64 :=
.seq AllocBody311_60 AllocBody311_251

def AllocBody311_253 : StackLang.HolProg 64 :=
.seq AllocBody311_7 AllocBody311_252

def AllocBody311_254 : StackLang.HolProg 64 :=
.seq AllocBody311_0 AllocBody311_253

def Alloc311 : Nat × StackLang.HolProg 64 := (311, AllocBody311_254)
theorem Alloc311_eq : StackAlloc.progComp (311, raw311) = Alloc311 := by
  kernel_rfl
#print axioms Alloc311_eq
end InitECandidate.Proofs.BackendStages
