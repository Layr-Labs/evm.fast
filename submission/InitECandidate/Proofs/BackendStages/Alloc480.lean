import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw480
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody480_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def AllocBody480_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody480_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody480_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 6

def AllocBody480_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody480_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody480_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody480_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def AllocBody480_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody480_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody480_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 8

def AllocBody480_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def AllocBody480_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody480_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 1

def AllocBody480_14 : StackLang.HolProg 64 :=
.seq AllocBody480_12 AllocBody480_13

def AllocBody480_15 : StackLang.HolProg 64 :=
.seq AllocBody480_11 AllocBody480_14

def AllocBody480_16 : StackLang.HolProg 64 :=
.seq AllocBody480_10 AllocBody480_15

def AllocBody480_17 : StackLang.HolProg 64 :=
.seq AllocBody480_9 AllocBody480_16

def AllocBody480_18 : StackLang.HolProg 64 :=
.seq AllocBody480_8 AllocBody480_17

def AllocBody480_19 : StackLang.HolProg 64 :=
.seq AllocBody480_7 AllocBody480_18

def AllocBody480_20 : StackLang.HolProg 64 :=
.seq AllocBody480_6 AllocBody480_19

def AllocBody480_21 : StackLang.HolProg 64 :=
.seq AllocBody480_5 AllocBody480_20

def AllocBody480_22 : StackLang.HolProg 64 :=
.seq AllocBody480_4 AllocBody480_21

def AllocBody480_23 : StackLang.HolProg 64 :=
.seq AllocBody480_3 AllocBody480_22

def AllocBody480_24 : StackLang.HolProg 64 :=
.seq AllocBody480_2 AllocBody480_23

def AllocBody480_25 : StackLang.HolProg 64 :=
.seq AllocBody480_1 AllocBody480_24

def AllocBody480_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1504#64)

def AllocBody480_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody480_29 : StackLang.HolProg 64 :=
.seq AllocBody480_27 AllocBody480_28

def AllocBody480_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody480_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody480_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody480_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 3

def AllocBody480_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody480_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody480_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody480_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody480_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody480_40 : StackLang.HolProg 64 :=
.seq AllocBody480_38 AllocBody480_39

def AllocBody480_41 : StackLang.HolProg 64 :=
.seq AllocBody480_37 AllocBody480_40

def AllocBody480_42 : StackLang.HolProg 64 :=
.seq AllocBody480_36 AllocBody480_41

def AllocBody480_43 : StackLang.HolProg 64 :=
.seq AllocBody480_35 AllocBody480_42

def AllocBody480_44 : StackLang.HolProg 64 :=
.seq AllocBody480_34 AllocBody480_43

def AllocBody480_45 : StackLang.HolProg 64 :=
.seq AllocBody480_33 AllocBody480_44

def AllocBody480_46 : StackLang.HolProg 64 :=
.seq AllocBody480_32 AllocBody480_45

def AllocBody480_47 : StackLang.HolProg 64 :=
.seq AllocBody480_31 AllocBody480_46

def AllocBody480_48 : StackLang.HolProg 64 :=
.seq AllocBody480_30 AllocBody480_47

def AllocBody480_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody480_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody480_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody480_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody480_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody480_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 9

def AllocBody480_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody480_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def AllocBody480_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody480_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody480_61 : StackLang.HolProg 64 :=
.seq AllocBody480_59 AllocBody480_60

def AllocBody480_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody480_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody480_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody480_65 : StackLang.HolProg 64 :=
.seq AllocBody480_63 AllocBody480_64

def AllocBody480_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody480_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody480_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody480_69 : StackLang.HolProg 64 :=
.seq AllocBody480_67 AllocBody480_68

def AllocBody480_70 : StackLang.HolProg 64 :=
.seq AllocBody480_66 AllocBody480_69

def AllocBody480_71 : StackLang.HolProg 64 :=
.seq AllocBody480_65 AllocBody480_70

def AllocBody480_72 : StackLang.HolProg 64 :=
.seq AllocBody480_62 AllocBody480_71

def AllocBody480_73 : StackLang.HolProg 64 :=
.seq AllocBody480_61 AllocBody480_72

def AllocBody480_74 : StackLang.HolProg 64 :=
.seq AllocBody480_58 AllocBody480_73

def AllocBody480_75 : StackLang.HolProg 64 :=
.seq AllocBody480_57 AllocBody480_74

def AllocBody480_76 : StackLang.HolProg 64 :=
.seq AllocBody480_56 AllocBody480_75

def AllocBody480_77 : StackLang.HolProg 64 :=
.seq AllocBody480_55 AllocBody480_76

def AllocBody480_78 : StackLang.HolProg 64 :=
.seq AllocBody480_54 AllocBody480_77

def AllocBody480_79 : StackLang.HolProg 64 :=
.seq AllocBody480_53 AllocBody480_78

def AllocBody480_80 : StackLang.HolProg 64 :=
.seq AllocBody480_52 AllocBody480_79

def AllocBody480_81 : StackLang.HolProg 64 :=
.seq AllocBody480_51 AllocBody480_80

def AllocBody480_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 9

def AllocBody480_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody480_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def AllocBody480_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody480_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody480_87 : StackLang.HolProg 64 :=
.seq AllocBody480_85 AllocBody480_86

def AllocBody480_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody480_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody480_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody480_91 : StackLang.HolProg 64 :=
.seq AllocBody480_89 AllocBody480_90

def AllocBody480_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody480_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody480_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody480_95 : StackLang.HolProg 64 :=
.seq AllocBody480_93 AllocBody480_94

def AllocBody480_96 : StackLang.HolProg 64 :=
.seq AllocBody480_92 AllocBody480_95

def AllocBody480_97 : StackLang.HolProg 64 :=
.seq AllocBody480_91 AllocBody480_96

def AllocBody480_98 : StackLang.HolProg 64 :=
.seq AllocBody480_88 AllocBody480_97

def AllocBody480_99 : StackLang.HolProg 64 :=
.seq AllocBody480_87 AllocBody480_98

def AllocBody480_100 : StackLang.HolProg 64 :=
.seq AllocBody480_84 AllocBody480_99

def AllocBody480_101 : StackLang.HolProg 64 :=
.seq AllocBody480_83 AllocBody480_100

def AllocBody480_102 : StackLang.HolProg 64 :=
.seq AllocBody480_82 AllocBody480_101

def AllocBody480_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody480_104 : StackLang.HolProg 64 :=
.seq AllocBody480_102 AllocBody480_103

def AllocBody480_105 : StackLang.HolProg 64 :=
.call (some (AllocBody480_81, 0, 480, 2)) (Sum.inl 102) (some (AllocBody480_104, 480, 3))

def AllocBody480_106 : StackLang.HolProg 64 :=
.seq AllocBody480_50 AllocBody480_105

def AllocBody480_107 : StackLang.HolProg 64 :=
.seq AllocBody480_49 AllocBody480_106

def AllocBody480_108 : StackLang.HolProg 64 :=
.seq AllocBody480_48 AllocBody480_107

def AllocBody480_109 : StackLang.HolProg 64 :=
.seq AllocBody480_29 AllocBody480_108

def AllocBody480_110 : StackLang.HolProg 64 :=
.seq AllocBody480_26 AllocBody480_109

def AllocBody480_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody480_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody480_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody480_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody480_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody480_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody480_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def AllocBody480_120 : StackLang.HolProg 64 :=
.seq AllocBody480_118 AllocBody480_119

def AllocBody480_121 : StackLang.HolProg 64 :=
.seq AllocBody480_117 AllocBody480_120

def AllocBody480_122 : StackLang.HolProg 64 :=
.seq AllocBody480_116 AllocBody480_121

def AllocBody480_123 : StackLang.HolProg 64 :=
.seq AllocBody480_115 AllocBody480_122

def AllocBody480_124 : StackLang.HolProg 64 :=
.seq AllocBody480_114 AllocBody480_123

def AllocBody480_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_126 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody480_124 AllocBody480_125

def AllocBody480_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody480_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody480_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody480_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody480_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 9

def AllocBody480_132 : StackLang.HolProg 64 :=
.seq AllocBody480_130 AllocBody480_131

def AllocBody480_133 : StackLang.HolProg 64 :=
.seq AllocBody480_129 AllocBody480_132

def AllocBody480_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1505#64)

def AllocBody480_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody480_137 : StackLang.HolProg 64 :=
.seq AllocBody480_135 AllocBody480_136

def AllocBody480_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody480_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody480_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody480_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 5

def AllocBody480_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody480_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody480_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody480_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody480_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody480_148 : StackLang.HolProg 64 :=
.seq AllocBody480_146 AllocBody480_147

def AllocBody480_149 : StackLang.HolProg 64 :=
.seq AllocBody480_145 AllocBody480_148

def AllocBody480_150 : StackLang.HolProg 64 :=
.seq AllocBody480_144 AllocBody480_149

def AllocBody480_151 : StackLang.HolProg 64 :=
.seq AllocBody480_143 AllocBody480_150

def AllocBody480_152 : StackLang.HolProg 64 :=
.seq AllocBody480_142 AllocBody480_151

def AllocBody480_153 : StackLang.HolProg 64 :=
.seq AllocBody480_141 AllocBody480_152

def AllocBody480_154 : StackLang.HolProg 64 :=
.seq AllocBody480_140 AllocBody480_153

def AllocBody480_155 : StackLang.HolProg 64 :=
.seq AllocBody480_139 AllocBody480_154

def AllocBody480_156 : StackLang.HolProg 64 :=
.seq AllocBody480_138 AllocBody480_155

def AllocBody480_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody480_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody480_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody480_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody480_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody480_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def AllocBody480_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody480_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody480_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody480_168 : StackLang.HolProg 64 :=
.seq AllocBody480_166 AllocBody480_167

def AllocBody480_169 : StackLang.HolProg 64 :=
.seq AllocBody480_165 AllocBody480_168

def AllocBody480_170 : StackLang.HolProg 64 :=
.seq AllocBody480_164 AllocBody480_169

def AllocBody480_171 : StackLang.HolProg 64 :=
.seq AllocBody480_163 AllocBody480_170

def AllocBody480_172 : StackLang.HolProg 64 :=
.seq AllocBody480_162 AllocBody480_171

def AllocBody480_173 : StackLang.HolProg 64 :=
.seq AllocBody480_161 AllocBody480_172

def AllocBody480_174 : StackLang.HolProg 64 :=
.seq AllocBody480_160 AllocBody480_173

def AllocBody480_175 : StackLang.HolProg 64 :=
.seq AllocBody480_159 AllocBody480_174

def AllocBody480_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def AllocBody480_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody480_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody480_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody480_180 : StackLang.HolProg 64 :=
.seq AllocBody480_178 AllocBody480_179

def AllocBody480_181 : StackLang.HolProg 64 :=
.seq AllocBody480_177 AllocBody480_180

def AllocBody480_182 : StackLang.HolProg 64 :=
.seq AllocBody480_176 AllocBody480_181

def AllocBody480_183 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody480_184 : StackLang.HolProg 64 :=
.seq AllocBody480_182 AllocBody480_183

def AllocBody480_185 : StackLang.HolProg 64 :=
.call (some (AllocBody480_175, 0, 480, 4)) (Sum.inl 462) (some (AllocBody480_184, 480, 5))

def AllocBody480_186 : StackLang.HolProg 64 :=
.seq AllocBody480_158 AllocBody480_185

def AllocBody480_187 : StackLang.HolProg 64 :=
.seq AllocBody480_157 AllocBody480_186

def AllocBody480_188 : StackLang.HolProg 64 :=
.seq AllocBody480_156 AllocBody480_187

def AllocBody480_189 : StackLang.HolProg 64 :=
.seq AllocBody480_137 AllocBody480_188

def AllocBody480_190 : StackLang.HolProg 64 :=
.seq AllocBody480_134 AllocBody480_189

def AllocBody480_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody480_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody480_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 8

def AllocBody480_194 : StackLang.HolProg 64 :=
.seq AllocBody480_192 AllocBody480_193

def AllocBody480_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1506#64)

def AllocBody480_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody480_198 : StackLang.HolProg 64 :=
.seq AllocBody480_196 AllocBody480_197

def AllocBody480_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody480_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody480_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody480_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 7

def AllocBody480_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody480_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody480_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody480_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody480_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody480_209 : StackLang.HolProg 64 :=
.seq AllocBody480_207 AllocBody480_208

def AllocBody480_210 : StackLang.HolProg 64 :=
.seq AllocBody480_206 AllocBody480_209

def AllocBody480_211 : StackLang.HolProg 64 :=
.seq AllocBody480_205 AllocBody480_210

def AllocBody480_212 : StackLang.HolProg 64 :=
.seq AllocBody480_204 AllocBody480_211

def AllocBody480_213 : StackLang.HolProg 64 :=
.seq AllocBody480_203 AllocBody480_212

def AllocBody480_214 : StackLang.HolProg 64 :=
.seq AllocBody480_202 AllocBody480_213

def AllocBody480_215 : StackLang.HolProg 64 :=
.seq AllocBody480_201 AllocBody480_214

def AllocBody480_216 : StackLang.HolProg 64 :=
.seq AllocBody480_200 AllocBody480_215

def AllocBody480_217 : StackLang.HolProg 64 :=
.seq AllocBody480_199 AllocBody480_216

def AllocBody480_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody480_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody480_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody480_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody480_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody480_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody480_226 : StackLang.HolProg 64 :=
.seq AllocBody480_224 AllocBody480_225

def AllocBody480_227 : StackLang.HolProg 64 :=
.seq AllocBody480_223 AllocBody480_226

def AllocBody480_228 : StackLang.HolProg 64 :=
.seq AllocBody480_222 AllocBody480_227

def AllocBody480_229 : StackLang.HolProg 64 :=
.seq AllocBody480_221 AllocBody480_228

def AllocBody480_230 : StackLang.HolProg 64 :=
.seq AllocBody480_220 AllocBody480_229

def AllocBody480_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody480_232 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody480_233 : StackLang.HolProg 64 :=
.seq AllocBody480_231 AllocBody480_232

def AllocBody480_234 : StackLang.HolProg 64 :=
.call (some (AllocBody480_230, 0, 480, 6)) (Sum.inl 462) (some (AllocBody480_233, 480, 7))

def AllocBody480_235 : StackLang.HolProg 64 :=
.seq AllocBody480_219 AllocBody480_234

def AllocBody480_236 : StackLang.HolProg 64 :=
.seq AllocBody480_218 AllocBody480_235

def AllocBody480_237 : StackLang.HolProg 64 :=
.seq AllocBody480_217 AllocBody480_236

def AllocBody480_238 : StackLang.HolProg 64 :=
.seq AllocBody480_198 AllocBody480_237

def AllocBody480_239 : StackLang.HolProg 64 :=
.seq AllocBody480_195 AllocBody480_238

def AllocBody480_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody480_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody480_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1507#64)

def AllocBody480_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody480_245 : StackLang.HolProg 64 :=
.seq AllocBody480_243 AllocBody480_244

def AllocBody480_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody480_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody480_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody480_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 9

def AllocBody480_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody480_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody480_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody480_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody480_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody480_256 : StackLang.HolProg 64 :=
.seq AllocBody480_254 AllocBody480_255

def AllocBody480_257 : StackLang.HolProg 64 :=
.seq AllocBody480_253 AllocBody480_256

def AllocBody480_258 : StackLang.HolProg 64 :=
.seq AllocBody480_252 AllocBody480_257

def AllocBody480_259 : StackLang.HolProg 64 :=
.seq AllocBody480_251 AllocBody480_258

def AllocBody480_260 : StackLang.HolProg 64 :=
.seq AllocBody480_250 AllocBody480_259

def AllocBody480_261 : StackLang.HolProg 64 :=
.seq AllocBody480_249 AllocBody480_260

def AllocBody480_262 : StackLang.HolProg 64 :=
.seq AllocBody480_248 AllocBody480_261

def AllocBody480_263 : StackLang.HolProg 64 :=
.seq AllocBody480_247 AllocBody480_262

def AllocBody480_264 : StackLang.HolProg 64 :=
.seq AllocBody480_246 AllocBody480_263

def AllocBody480_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody480_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody480_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody480_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody480_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody480_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 9

def AllocBody480_273 : StackLang.HolProg 64 :=
.seq AllocBody480_271 AllocBody480_272

def AllocBody480_274 : StackLang.HolProg 64 :=
.seq AllocBody480_270 AllocBody480_273

def AllocBody480_275 : StackLang.HolProg 64 :=
.seq AllocBody480_269 AllocBody480_274

def AllocBody480_276 : StackLang.HolProg 64 :=
.seq AllocBody480_268 AllocBody480_275

def AllocBody480_277 : StackLang.HolProg 64 :=
.seq AllocBody480_267 AllocBody480_276

def AllocBody480_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 9

def AllocBody480_279 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody480_280 : StackLang.HolProg 64 :=
.seq AllocBody480_278 AllocBody480_279

def AllocBody480_281 : StackLang.HolProg 64 :=
.call (some (AllocBody480_277, 0, 480, 8)) (Sum.inl 463) (some (AllocBody480_280, 480, 9))

def AllocBody480_282 : StackLang.HolProg 64 :=
.seq AllocBody480_266 AllocBody480_281

def AllocBody480_283 : StackLang.HolProg 64 :=
.seq AllocBody480_265 AllocBody480_282

def AllocBody480_284 : StackLang.HolProg 64 :=
.seq AllocBody480_264 AllocBody480_283

def AllocBody480_285 : StackLang.HolProg 64 :=
.seq AllocBody480_245 AllocBody480_284

def AllocBody480_286 : StackLang.HolProg 64 :=
.seq AllocBody480_242 AllocBody480_285

def AllocBody480_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody480_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def AllocBody480_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody480_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def AllocBody480_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody480_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody480_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody480_296 : StackLang.HolProg 64 :=
.seq AllocBody480_294 AllocBody480_295

def AllocBody480_297 : StackLang.HolProg 64 :=
.seq AllocBody480_293 AllocBody480_296

def AllocBody480_298 : StackLang.HolProg 64 :=
.seq AllocBody480_292 AllocBody480_297

def AllocBody480_299 : StackLang.HolProg 64 :=
.seq AllocBody480_291 AllocBody480_298

def AllocBody480_300 : StackLang.HolProg 64 :=
.seq AllocBody480_290 AllocBody480_299

def AllocBody480_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_302 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody480_300 AllocBody480_301

def AllocBody480_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody480_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody480_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody480_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody480_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody480_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody480_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def AllocBody480_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 9

def AllocBody480_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def AllocBody480_312 : StackLang.HolProg 64 :=
.seq AllocBody480_310 AllocBody480_311

def AllocBody480_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1508#64)

def AllocBody480_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody480_316 : StackLang.HolProg 64 :=
.seq AllocBody480_314 AllocBody480_315

def AllocBody480_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody480_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody480_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody480_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 11

def AllocBody480_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody480_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody480_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody480_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody480_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody480_327 : StackLang.HolProg 64 :=
.seq AllocBody480_325 AllocBody480_326

def AllocBody480_328 : StackLang.HolProg 64 :=
.seq AllocBody480_324 AllocBody480_327

def AllocBody480_329 : StackLang.HolProg 64 :=
.seq AllocBody480_323 AllocBody480_328

def AllocBody480_330 : StackLang.HolProg 64 :=
.seq AllocBody480_322 AllocBody480_329

def AllocBody480_331 : StackLang.HolProg 64 :=
.seq AllocBody480_321 AllocBody480_330

def AllocBody480_332 : StackLang.HolProg 64 :=
.seq AllocBody480_320 AllocBody480_331

def AllocBody480_333 : StackLang.HolProg 64 :=
.seq AllocBody480_319 AllocBody480_332

def AllocBody480_334 : StackLang.HolProg 64 :=
.seq AllocBody480_318 AllocBody480_333

def AllocBody480_335 : StackLang.HolProg 64 :=
.seq AllocBody480_317 AllocBody480_334

def AllocBody480_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody480_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody480_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody480_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody480_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody480_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody480_344 : StackLang.HolProg 64 :=
.seq AllocBody480_342 AllocBody480_343

def AllocBody480_345 : StackLang.HolProg 64 :=
.seq AllocBody480_341 AllocBody480_344

def AllocBody480_346 : StackLang.HolProg 64 :=
.seq AllocBody480_340 AllocBody480_345

def AllocBody480_347 : StackLang.HolProg 64 :=
.seq AllocBody480_339 AllocBody480_346

def AllocBody480_348 : StackLang.HolProg 64 :=
.seq AllocBody480_338 AllocBody480_347

def AllocBody480_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody480_350 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody480_351 : StackLang.HolProg 64 :=
.seq AllocBody480_349 AllocBody480_350

def AllocBody480_352 : StackLang.HolProg 64 :=
.call (some (AllocBody480_348, 0, 480, 10)) (Sum.inl 464) (some (AllocBody480_351, 480, 11))

def AllocBody480_353 : StackLang.HolProg 64 :=
.seq AllocBody480_337 AllocBody480_352

def AllocBody480_354 : StackLang.HolProg 64 :=
.seq AllocBody480_336 AllocBody480_353

def AllocBody480_355 : StackLang.HolProg 64 :=
.seq AllocBody480_335 AllocBody480_354

def AllocBody480_356 : StackLang.HolProg 64 :=
.seq AllocBody480_316 AllocBody480_355

def AllocBody480_357 : StackLang.HolProg 64 :=
.seq AllocBody480_313 AllocBody480_356

def AllocBody480_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody480_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody480_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def AllocBody480_361 : StackLang.HolProg 64 :=
.seq AllocBody480_359 AllocBody480_360

def AllocBody480_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1509#64)

def AllocBody480_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody480_365 : StackLang.HolProg 64 :=
.seq AllocBody480_363 AllocBody480_364

def AllocBody480_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody480_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody480_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody480_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 13

def AllocBody480_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody480_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody480_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody480_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody480_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody480_376 : StackLang.HolProg 64 :=
.seq AllocBody480_374 AllocBody480_375

def AllocBody480_377 : StackLang.HolProg 64 :=
.seq AllocBody480_373 AllocBody480_376

def AllocBody480_378 : StackLang.HolProg 64 :=
.seq AllocBody480_372 AllocBody480_377

def AllocBody480_379 : StackLang.HolProg 64 :=
.seq AllocBody480_371 AllocBody480_378

def AllocBody480_380 : StackLang.HolProg 64 :=
.seq AllocBody480_370 AllocBody480_379

def AllocBody480_381 : StackLang.HolProg 64 :=
.seq AllocBody480_369 AllocBody480_380

def AllocBody480_382 : StackLang.HolProg 64 :=
.seq AllocBody480_368 AllocBody480_381

def AllocBody480_383 : StackLang.HolProg 64 :=
.seq AllocBody480_367 AllocBody480_382

def AllocBody480_384 : StackLang.HolProg 64 :=
.seq AllocBody480_366 AllocBody480_383

def AllocBody480_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody480_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody480_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody480_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody480_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody480_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 9

def AllocBody480_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 8

def AllocBody480_394 : StackLang.HolProg 64 :=
.seq AllocBody480_392 AllocBody480_393

def AllocBody480_395 : StackLang.HolProg 64 :=
.seq AllocBody480_391 AllocBody480_394

def AllocBody480_396 : StackLang.HolProg 64 :=
.seq AllocBody480_390 AllocBody480_395

def AllocBody480_397 : StackLang.HolProg 64 :=
.seq AllocBody480_389 AllocBody480_396

def AllocBody480_398 : StackLang.HolProg 64 :=
.seq AllocBody480_388 AllocBody480_397

def AllocBody480_399 : StackLang.HolProg 64 :=
.seq AllocBody480_387 AllocBody480_398

def AllocBody480_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 9

def AllocBody480_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 8

def AllocBody480_402 : StackLang.HolProg 64 :=
.seq AllocBody480_400 AllocBody480_401

def AllocBody480_403 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody480_404 : StackLang.HolProg 64 :=
.seq AllocBody480_402 AllocBody480_403

def AllocBody480_405 : StackLang.HolProg 64 :=
.call (some (AllocBody480_399, 0, 480, 12)) (Sum.inl 464) (some (AllocBody480_404, 480, 13))

def AllocBody480_406 : StackLang.HolProg 64 :=
.seq AllocBody480_386 AllocBody480_405

def AllocBody480_407 : StackLang.HolProg 64 :=
.seq AllocBody480_385 AllocBody480_406

def AllocBody480_408 : StackLang.HolProg 64 :=
.seq AllocBody480_384 AllocBody480_407

def AllocBody480_409 : StackLang.HolProg 64 :=
.seq AllocBody480_365 AllocBody480_408

def AllocBody480_410 : StackLang.HolProg 64 :=
.seq AllocBody480_362 AllocBody480_409

def AllocBody480_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody480_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody480_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody480_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody480_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody480_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody480_419 : StackLang.HolProg 64 :=
.seq AllocBody480_417 AllocBody480_418

def AllocBody480_420 : StackLang.HolProg 64 :=
.seq AllocBody480_416 AllocBody480_419

def AllocBody480_421 : StackLang.HolProg 64 :=
.seq AllocBody480_415 AllocBody480_420

def AllocBody480_422 : StackLang.HolProg 64 :=
.seq AllocBody480_414 AllocBody480_421

def AllocBody480_423 : StackLang.HolProg 64 :=
.seq AllocBody480_413 AllocBody480_422

def AllocBody480_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_425 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody480_423 AllocBody480_424

def AllocBody480_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody480_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody480_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody480_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 9

def AllocBody480_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 8

def AllocBody480_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody480_432 : StackLang.HolProg 64 :=
.seq AllocBody480_430 AllocBody480_431

def AllocBody480_433 : StackLang.HolProg 64 :=
.seq AllocBody480_429 AllocBody480_432

def AllocBody480_434 : StackLang.HolProg 64 :=
.seq AllocBody480_428 AllocBody480_433

def AllocBody480_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1510#64)

def AllocBody480_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody480_438 : StackLang.HolProg 64 :=
.seq AllocBody480_436 AllocBody480_437

def AllocBody480_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody480_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody480_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody480_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 15

def AllocBody480_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody480_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody480_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody480_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody480_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody480_449 : StackLang.HolProg 64 :=
.seq AllocBody480_447 AllocBody480_448

def AllocBody480_450 : StackLang.HolProg 64 :=
.seq AllocBody480_446 AllocBody480_449

def AllocBody480_451 : StackLang.HolProg 64 :=
.seq AllocBody480_445 AllocBody480_450

def AllocBody480_452 : StackLang.HolProg 64 :=
.seq AllocBody480_444 AllocBody480_451

def AllocBody480_453 : StackLang.HolProg 64 :=
.seq AllocBody480_443 AllocBody480_452

def AllocBody480_454 : StackLang.HolProg 64 :=
.seq AllocBody480_442 AllocBody480_453

def AllocBody480_455 : StackLang.HolProg 64 :=
.seq AllocBody480_441 AllocBody480_454

def AllocBody480_456 : StackLang.HolProg 64 :=
.seq AllocBody480_440 AllocBody480_455

def AllocBody480_457 : StackLang.HolProg 64 :=
.seq AllocBody480_439 AllocBody480_456

def AllocBody480_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody480_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody480_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody480_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody480_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody480_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody480_466 : StackLang.HolProg 64 :=
.seq AllocBody480_464 AllocBody480_465

def AllocBody480_467 : StackLang.HolProg 64 :=
.seq AllocBody480_463 AllocBody480_466

def AllocBody480_468 : StackLang.HolProg 64 :=
.seq AllocBody480_462 AllocBody480_467

def AllocBody480_469 : StackLang.HolProg 64 :=
.seq AllocBody480_461 AllocBody480_468

def AllocBody480_470 : StackLang.HolProg 64 :=
.seq AllocBody480_460 AllocBody480_469

def AllocBody480_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody480_472 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody480_473 : StackLang.HolProg 64 :=
.seq AllocBody480_471 AllocBody480_472

def AllocBody480_474 : StackLang.HolProg 64 :=
.call (some (AllocBody480_470, 0, 480, 14)) (Sum.inl 479) (some (AllocBody480_473, 480, 15))

def AllocBody480_475 : StackLang.HolProg 64 :=
.seq AllocBody480_459 AllocBody480_474

def AllocBody480_476 : StackLang.HolProg 64 :=
.seq AllocBody480_458 AllocBody480_475

def AllocBody480_477 : StackLang.HolProg 64 :=
.seq AllocBody480_457 AllocBody480_476

def AllocBody480_478 : StackLang.HolProg 64 :=
.seq AllocBody480_438 AllocBody480_477

def AllocBody480_479 : StackLang.HolProg 64 :=
.seq AllocBody480_435 AllocBody480_478

def AllocBody480_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody480_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody480_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def AllocBody480_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def AllocBody480_484 : StackLang.HolProg 64 :=
.seq AllocBody480_482 AllocBody480_483

def AllocBody480_485 : StackLang.HolProg 64 :=
.seq AllocBody480_481 AllocBody480_484

def AllocBody480_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1511#64)

def AllocBody480_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody480_489 : StackLang.HolProg 64 :=
.seq AllocBody480_487 AllocBody480_488

def AllocBody480_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody480_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody480_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody480_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 17

def AllocBody480_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody480_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody480_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody480_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody480_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody480_500 : StackLang.HolProg 64 :=
.seq AllocBody480_498 AllocBody480_499

def AllocBody480_501 : StackLang.HolProg 64 :=
.seq AllocBody480_497 AllocBody480_500

def AllocBody480_502 : StackLang.HolProg 64 :=
.seq AllocBody480_496 AllocBody480_501

def AllocBody480_503 : StackLang.HolProg 64 :=
.seq AllocBody480_495 AllocBody480_502

def AllocBody480_504 : StackLang.HolProg 64 :=
.seq AllocBody480_494 AllocBody480_503

def AllocBody480_505 : StackLang.HolProg 64 :=
.seq AllocBody480_493 AllocBody480_504

def AllocBody480_506 : StackLang.HolProg 64 :=
.seq AllocBody480_492 AllocBody480_505

def AllocBody480_507 : StackLang.HolProg 64 :=
.seq AllocBody480_491 AllocBody480_506

def AllocBody480_508 : StackLang.HolProg 64 :=
.seq AllocBody480_490 AllocBody480_507

def AllocBody480_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody480_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody480_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody480_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody480_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody480_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 9

def AllocBody480_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 8

def AllocBody480_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody480_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody480_520 : StackLang.HolProg 64 :=
.seq AllocBody480_518 AllocBody480_519

def AllocBody480_521 : StackLang.HolProg 64 :=
.seq AllocBody480_517 AllocBody480_520

def AllocBody480_522 : StackLang.HolProg 64 :=
.seq AllocBody480_516 AllocBody480_521

def AllocBody480_523 : StackLang.HolProg 64 :=
.seq AllocBody480_515 AllocBody480_522

def AllocBody480_524 : StackLang.HolProg 64 :=
.seq AllocBody480_514 AllocBody480_523

def AllocBody480_525 : StackLang.HolProg 64 :=
.seq AllocBody480_513 AllocBody480_524

def AllocBody480_526 : StackLang.HolProg 64 :=
.seq AllocBody480_512 AllocBody480_525

def AllocBody480_527 : StackLang.HolProg 64 :=
.seq AllocBody480_511 AllocBody480_526

def AllocBody480_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 9

def AllocBody480_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 8

def AllocBody480_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody480_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody480_532 : StackLang.HolProg 64 :=
.seq AllocBody480_530 AllocBody480_531

def AllocBody480_533 : StackLang.HolProg 64 :=
.seq AllocBody480_529 AllocBody480_532

def AllocBody480_534 : StackLang.HolProg 64 :=
.seq AllocBody480_528 AllocBody480_533

def AllocBody480_535 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody480_536 : StackLang.HolProg 64 :=
.seq AllocBody480_534 AllocBody480_535

def AllocBody480_537 : StackLang.HolProg 64 :=
.call (some (AllocBody480_527, 0, 480, 16)) (Sum.inl 479) (some (AllocBody480_536, 480, 17))

def AllocBody480_538 : StackLang.HolProg 64 :=
.seq AllocBody480_510 AllocBody480_537

def AllocBody480_539 : StackLang.HolProg 64 :=
.seq AllocBody480_509 AllocBody480_538

def AllocBody480_540 : StackLang.HolProg 64 :=
.seq AllocBody480_508 AllocBody480_539

def AllocBody480_541 : StackLang.HolProg 64 :=
.seq AllocBody480_489 AllocBody480_540

def AllocBody480_542 : StackLang.HolProg 64 :=
.seq AllocBody480_486 AllocBody480_541

def AllocBody480_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody480_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def AllocBody480_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody480_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def AllocBody480_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody480_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody480_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def AllocBody480_552 : StackLang.HolProg 64 :=
.seq AllocBody480_550 AllocBody480_551

def AllocBody480_553 : StackLang.HolProg 64 :=
.seq AllocBody480_549 AllocBody480_552

def AllocBody480_554 : StackLang.HolProg 64 :=
.seq AllocBody480_548 AllocBody480_553

def AllocBody480_555 : StackLang.HolProg 64 :=
.seq AllocBody480_547 AllocBody480_554

def AllocBody480_556 : StackLang.HolProg 64 :=
.seq AllocBody480_546 AllocBody480_555

def AllocBody480_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_558 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody480_556 AllocBody480_557

def AllocBody480_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody480_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody480_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody480_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody480_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody480_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody480_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def AllocBody480_568 : StackLang.HolProg 64 :=
.seq AllocBody480_566 AllocBody480_567

def AllocBody480_569 : StackLang.HolProg 64 :=
.seq AllocBody480_565 AllocBody480_568

def AllocBody480_570 : StackLang.HolProg 64 :=
.seq AllocBody480_564 AllocBody480_569

def AllocBody480_571 : StackLang.HolProg 64 :=
.seq AllocBody480_563 AllocBody480_570

def AllocBody480_572 : StackLang.HolProg 64 :=
.seq AllocBody480_562 AllocBody480_571

def AllocBody480_573 : StackLang.HolProg 64 :=
.seq AllocBody480_561 AllocBody480_572

def AllocBody480_574 : StackLang.HolProg 64 :=
.seq AllocBody480_560 AllocBody480_573

def AllocBody480_575 : StackLang.HolProg 64 :=
.seq AllocBody480_559 AllocBody480_574

def AllocBody480_576 : StackLang.HolProg 64 :=
.seq AllocBody480_558 AllocBody480_575

def AllocBody480_577 : StackLang.HolProg 64 :=
.seq AllocBody480_545 AllocBody480_576

def AllocBody480_578 : StackLang.HolProg 64 :=
.seq AllocBody480_544 AllocBody480_577

def AllocBody480_579 : StackLang.HolProg 64 :=
.seq AllocBody480_543 AllocBody480_578

def AllocBody480_580 : StackLang.HolProg 64 :=
.seq AllocBody480_542 AllocBody480_579

def AllocBody480_581 : StackLang.HolProg 64 :=
.seq AllocBody480_485 AllocBody480_580

def AllocBody480_582 : StackLang.HolProg 64 :=
.seq AllocBody480_480 AllocBody480_581

def AllocBody480_583 : StackLang.HolProg 64 :=
.seq AllocBody480_479 AllocBody480_582

def AllocBody480_584 : StackLang.HolProg 64 :=
.seq AllocBody480_434 AllocBody480_583

def AllocBody480_585 : StackLang.HolProg 64 :=
.seq AllocBody480_427 AllocBody480_584

def AllocBody480_586 : StackLang.HolProg 64 :=
.seq AllocBody480_426 AllocBody480_585

def AllocBody480_587 : StackLang.HolProg 64 :=
.seq AllocBody480_425 AllocBody480_586

def AllocBody480_588 : StackLang.HolProg 64 :=
.seq AllocBody480_412 AllocBody480_587

def AllocBody480_589 : StackLang.HolProg 64 :=
.seq AllocBody480_411 AllocBody480_588

def AllocBody480_590 : StackLang.HolProg 64 :=
.seq AllocBody480_410 AllocBody480_589

def AllocBody480_591 : StackLang.HolProg 64 :=
.seq AllocBody480_361 AllocBody480_590

def AllocBody480_592 : StackLang.HolProg 64 :=
.seq AllocBody480_358 AllocBody480_591

def AllocBody480_593 : StackLang.HolProg 64 :=
.seq AllocBody480_357 AllocBody480_592

def AllocBody480_594 : StackLang.HolProg 64 :=
.seq AllocBody480_312 AllocBody480_593

def AllocBody480_595 : StackLang.HolProg 64 :=
.seq AllocBody480_309 AllocBody480_594

def AllocBody480_596 : StackLang.HolProg 64 :=
.seq AllocBody480_308 AllocBody480_595

def AllocBody480_597 : StackLang.HolProg 64 :=
.seq AllocBody480_307 AllocBody480_596

def AllocBody480_598 : StackLang.HolProg 64 :=
.seq AllocBody480_306 AllocBody480_597

def AllocBody480_599 : StackLang.HolProg 64 :=
.seq AllocBody480_305 AllocBody480_598

def AllocBody480_600 : StackLang.HolProg 64 :=
.seq AllocBody480_304 AllocBody480_599

def AllocBody480_601 : StackLang.HolProg 64 :=
.seq AllocBody480_303 AllocBody480_600

def AllocBody480_602 : StackLang.HolProg 64 :=
.seq AllocBody480_302 AllocBody480_601

def AllocBody480_603 : StackLang.HolProg 64 :=
.seq AllocBody480_289 AllocBody480_602

def AllocBody480_604 : StackLang.HolProg 64 :=
.seq AllocBody480_288 AllocBody480_603

def AllocBody480_605 : StackLang.HolProg 64 :=
.seq AllocBody480_287 AllocBody480_604

def AllocBody480_606 : StackLang.HolProg 64 :=
.seq AllocBody480_286 AllocBody480_605

def AllocBody480_607 : StackLang.HolProg 64 :=
.seq AllocBody480_241 AllocBody480_606

def AllocBody480_608 : StackLang.HolProg 64 :=
.seq AllocBody480_240 AllocBody480_607

def AllocBody480_609 : StackLang.HolProg 64 :=
.seq AllocBody480_239 AllocBody480_608

def AllocBody480_610 : StackLang.HolProg 64 :=
.seq AllocBody480_194 AllocBody480_609

def AllocBody480_611 : StackLang.HolProg 64 :=
.seq AllocBody480_191 AllocBody480_610

def AllocBody480_612 : StackLang.HolProg 64 :=
.seq AllocBody480_190 AllocBody480_611

def AllocBody480_613 : StackLang.HolProg 64 :=
.seq AllocBody480_133 AllocBody480_612

def AllocBody480_614 : StackLang.HolProg 64 :=
.seq AllocBody480_128 AllocBody480_613

def AllocBody480_615 : StackLang.HolProg 64 :=
.seq AllocBody480_127 AllocBody480_614

def AllocBody480_616 : StackLang.HolProg 64 :=
.seq AllocBody480_126 AllocBody480_615

def AllocBody480_617 : StackLang.HolProg 64 :=
.seq AllocBody480_113 AllocBody480_616

def AllocBody480_618 : StackLang.HolProg 64 :=
.seq AllocBody480_112 AllocBody480_617

def AllocBody480_619 : StackLang.HolProg 64 :=
.seq AllocBody480_111 AllocBody480_618

def AllocBody480_620 : StackLang.HolProg 64 :=
.seq AllocBody480_110 AllocBody480_619

def AllocBody480_621 : StackLang.HolProg 64 :=
.seq AllocBody480_25 AllocBody480_620

def AllocBody480_622 : StackLang.HolProg 64 :=
.seq AllocBody480_0 AllocBody480_621

def Alloc480 : Nat × StackLang.HolProg 64 := (480, AllocBody480_622)
theorem Alloc480_eq : StackAlloc.progComp (480, raw480) = Alloc480 := by
  kernel_rfl
#print axioms Alloc480_eq
end InitECandidate.Proofs.BackendStages
