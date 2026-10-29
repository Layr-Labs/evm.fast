import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function480
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody480_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def rawBody480_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def rawBody480_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody480_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 6

def rawBody480_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody480_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody480_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody480_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def rawBody480_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody480_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def rawBody480_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 8

def rawBody480_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def rawBody480_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def rawBody480_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 1

def rawBody480_14 : StackLang.HolProg 64 :=
.seq rawBody480_12 rawBody480_13

def rawBody480_15 : StackLang.HolProg 64 :=
.seq rawBody480_11 rawBody480_14

def rawBody480_16 : StackLang.HolProg 64 :=
.seq rawBody480_10 rawBody480_15

def rawBody480_17 : StackLang.HolProg 64 :=
.seq rawBody480_9 rawBody480_16

def rawBody480_18 : StackLang.HolProg 64 :=
.seq rawBody480_8 rawBody480_17

def rawBody480_19 : StackLang.HolProg 64 :=
.seq rawBody480_7 rawBody480_18

def rawBody480_20 : StackLang.HolProg 64 :=
.seq rawBody480_6 rawBody480_19

def rawBody480_21 : StackLang.HolProg 64 :=
.seq rawBody480_5 rawBody480_20

def rawBody480_22 : StackLang.HolProg 64 :=
.seq rawBody480_4 rawBody480_21

def rawBody480_23 : StackLang.HolProg 64 :=
.seq rawBody480_3 rawBody480_22

def rawBody480_24 : StackLang.HolProg 64 :=
.seq rawBody480_2 rawBody480_23

def rawBody480_25 : StackLang.HolProg 64 :=
.seq rawBody480_1 rawBody480_24

def rawBody480_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1504#64)

def rawBody480_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody480_29 : StackLang.HolProg 64 :=
.seq rawBody480_27 rawBody480_28

def rawBody480_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody480_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody480_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody480_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 3

def rawBody480_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody480_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody480_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody480_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody480_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody480_40 : StackLang.HolProg 64 :=
.seq rawBody480_38 rawBody480_39

def rawBody480_41 : StackLang.HolProg 64 :=
.seq rawBody480_37 rawBody480_40

def rawBody480_42 : StackLang.HolProg 64 :=
.seq rawBody480_36 rawBody480_41

def rawBody480_43 : StackLang.HolProg 64 :=
.seq rawBody480_35 rawBody480_42

def rawBody480_44 : StackLang.HolProg 64 :=
.seq rawBody480_34 rawBody480_43

def rawBody480_45 : StackLang.HolProg 64 :=
.seq rawBody480_33 rawBody480_44

def rawBody480_46 : StackLang.HolProg 64 :=
.seq rawBody480_32 rawBody480_45

def rawBody480_47 : StackLang.HolProg 64 :=
.seq rawBody480_31 rawBody480_46

def rawBody480_48 : StackLang.HolProg 64 :=
.seq rawBody480_30 rawBody480_47

def rawBody480_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody480_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody480_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody480_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody480_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody480_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 9

def rawBody480_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def rawBody480_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def rawBody480_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody480_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody480_61 : StackLang.HolProg 64 :=
.seq rawBody480_59 rawBody480_60

def rawBody480_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody480_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody480_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody480_65 : StackLang.HolProg 64 :=
.seq rawBody480_63 rawBody480_64

def rawBody480_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody480_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody480_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody480_69 : StackLang.HolProg 64 :=
.seq rawBody480_67 rawBody480_68

def rawBody480_70 : StackLang.HolProg 64 :=
.seq rawBody480_66 rawBody480_69

def rawBody480_71 : StackLang.HolProg 64 :=
.seq rawBody480_65 rawBody480_70

def rawBody480_72 : StackLang.HolProg 64 :=
.seq rawBody480_62 rawBody480_71

def rawBody480_73 : StackLang.HolProg 64 :=
.seq rawBody480_61 rawBody480_72

def rawBody480_74 : StackLang.HolProg 64 :=
.seq rawBody480_58 rawBody480_73

def rawBody480_75 : StackLang.HolProg 64 :=
.seq rawBody480_57 rawBody480_74

def rawBody480_76 : StackLang.HolProg 64 :=
.seq rawBody480_56 rawBody480_75

def rawBody480_77 : StackLang.HolProg 64 :=
.seq rawBody480_55 rawBody480_76

def rawBody480_78 : StackLang.HolProg 64 :=
.seq rawBody480_54 rawBody480_77

def rawBody480_79 : StackLang.HolProg 64 :=
.seq rawBody480_53 rawBody480_78

def rawBody480_80 : StackLang.HolProg 64 :=
.seq rawBody480_52 rawBody480_79

def rawBody480_81 : StackLang.HolProg 64 :=
.seq rawBody480_51 rawBody480_80

def rawBody480_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 9

def rawBody480_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def rawBody480_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def rawBody480_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody480_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody480_87 : StackLang.HolProg 64 :=
.seq rawBody480_85 rawBody480_86

def rawBody480_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody480_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody480_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody480_91 : StackLang.HolProg 64 :=
.seq rawBody480_89 rawBody480_90

def rawBody480_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody480_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody480_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody480_95 : StackLang.HolProg 64 :=
.seq rawBody480_93 rawBody480_94

def rawBody480_96 : StackLang.HolProg 64 :=
.seq rawBody480_92 rawBody480_95

def rawBody480_97 : StackLang.HolProg 64 :=
.seq rawBody480_91 rawBody480_96

def rawBody480_98 : StackLang.HolProg 64 :=
.seq rawBody480_88 rawBody480_97

def rawBody480_99 : StackLang.HolProg 64 :=
.seq rawBody480_87 rawBody480_98

def rawBody480_100 : StackLang.HolProg 64 :=
.seq rawBody480_84 rawBody480_99

def rawBody480_101 : StackLang.HolProg 64 :=
.seq rawBody480_83 rawBody480_100

def rawBody480_102 : StackLang.HolProg 64 :=
.seq rawBody480_82 rawBody480_101

def rawBody480_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody480_104 : StackLang.HolProg 64 :=
.seq rawBody480_102 rawBody480_103

def rawBody480_105 : StackLang.HolProg 64 :=
.call (some (rawBody480_81, 0, 480, 2)) (Sum.inl 102) (some (rawBody480_104, 480, 3))

def rawBody480_106 : StackLang.HolProg 64 :=
.seq rawBody480_50 rawBody480_105

def rawBody480_107 : StackLang.HolProg 64 :=
.seq rawBody480_49 rawBody480_106

def rawBody480_108 : StackLang.HolProg 64 :=
.seq rawBody480_48 rawBody480_107

def rawBody480_109 : StackLang.HolProg 64 :=
.seq rawBody480_29 rawBody480_108

def rawBody480_110 : StackLang.HolProg 64 :=
.seq rawBody480_26 rawBody480_109

def rawBody480_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody480_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody480_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody480_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody480_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody480_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def rawBody480_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def rawBody480_120 : StackLang.HolProg 64 :=
.seq rawBody480_118 rawBody480_119

def rawBody480_121 : StackLang.HolProg 64 :=
.seq rawBody480_117 rawBody480_120

def rawBody480_122 : StackLang.HolProg 64 :=
.seq rawBody480_116 rawBody480_121

def rawBody480_123 : StackLang.HolProg 64 :=
.seq rawBody480_115 rawBody480_122

def rawBody480_124 : StackLang.HolProg 64 :=
.seq rawBody480_114 rawBody480_123

def rawBody480_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_126 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody480_124 rawBody480_125

def rawBody480_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody480_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody480_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody480_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody480_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 9

def rawBody480_132 : StackLang.HolProg 64 :=
.seq rawBody480_130 rawBody480_131

def rawBody480_133 : StackLang.HolProg 64 :=
.seq rawBody480_129 rawBody480_132

def rawBody480_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1505#64)

def rawBody480_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody480_137 : StackLang.HolProg 64 :=
.seq rawBody480_135 rawBody480_136

def rawBody480_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody480_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody480_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody480_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 5

def rawBody480_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody480_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody480_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody480_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody480_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody480_148 : StackLang.HolProg 64 :=
.seq rawBody480_146 rawBody480_147

def rawBody480_149 : StackLang.HolProg 64 :=
.seq rawBody480_145 rawBody480_148

def rawBody480_150 : StackLang.HolProg 64 :=
.seq rawBody480_144 rawBody480_149

def rawBody480_151 : StackLang.HolProg 64 :=
.seq rawBody480_143 rawBody480_150

def rawBody480_152 : StackLang.HolProg 64 :=
.seq rawBody480_142 rawBody480_151

def rawBody480_153 : StackLang.HolProg 64 :=
.seq rawBody480_141 rawBody480_152

def rawBody480_154 : StackLang.HolProg 64 :=
.seq rawBody480_140 rawBody480_153

def rawBody480_155 : StackLang.HolProg 64 :=
.seq rawBody480_139 rawBody480_154

def rawBody480_156 : StackLang.HolProg 64 :=
.seq rawBody480_138 rawBody480_155

def rawBody480_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody480_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody480_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody480_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody480_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody480_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def rawBody480_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def rawBody480_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody480_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody480_168 : StackLang.HolProg 64 :=
.seq rawBody480_166 rawBody480_167

def rawBody480_169 : StackLang.HolProg 64 :=
.seq rawBody480_165 rawBody480_168

def rawBody480_170 : StackLang.HolProg 64 :=
.seq rawBody480_164 rawBody480_169

def rawBody480_171 : StackLang.HolProg 64 :=
.seq rawBody480_163 rawBody480_170

def rawBody480_172 : StackLang.HolProg 64 :=
.seq rawBody480_162 rawBody480_171

def rawBody480_173 : StackLang.HolProg 64 :=
.seq rawBody480_161 rawBody480_172

def rawBody480_174 : StackLang.HolProg 64 :=
.seq rawBody480_160 rawBody480_173

def rawBody480_175 : StackLang.HolProg 64 :=
.seq rawBody480_159 rawBody480_174

def rawBody480_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def rawBody480_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def rawBody480_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody480_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody480_180 : StackLang.HolProg 64 :=
.seq rawBody480_178 rawBody480_179

def rawBody480_181 : StackLang.HolProg 64 :=
.seq rawBody480_177 rawBody480_180

def rawBody480_182 : StackLang.HolProg 64 :=
.seq rawBody480_176 rawBody480_181

def rawBody480_183 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody480_184 : StackLang.HolProg 64 :=
.seq rawBody480_182 rawBody480_183

def rawBody480_185 : StackLang.HolProg 64 :=
.call (some (rawBody480_175, 0, 480, 4)) (Sum.inl 462) (some (rawBody480_184, 480, 5))

def rawBody480_186 : StackLang.HolProg 64 :=
.seq rawBody480_158 rawBody480_185

def rawBody480_187 : StackLang.HolProg 64 :=
.seq rawBody480_157 rawBody480_186

def rawBody480_188 : StackLang.HolProg 64 :=
.seq rawBody480_156 rawBody480_187

def rawBody480_189 : StackLang.HolProg 64 :=
.seq rawBody480_137 rawBody480_188

def rawBody480_190 : StackLang.HolProg 64 :=
.seq rawBody480_134 rawBody480_189

def rawBody480_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody480_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody480_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 8

def rawBody480_194 : StackLang.HolProg 64 :=
.seq rawBody480_192 rawBody480_193

def rawBody480_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1506#64)

def rawBody480_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody480_198 : StackLang.HolProg 64 :=
.seq rawBody480_196 rawBody480_197

def rawBody480_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody480_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody480_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody480_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 7

def rawBody480_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody480_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody480_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody480_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody480_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody480_209 : StackLang.HolProg 64 :=
.seq rawBody480_207 rawBody480_208

def rawBody480_210 : StackLang.HolProg 64 :=
.seq rawBody480_206 rawBody480_209

def rawBody480_211 : StackLang.HolProg 64 :=
.seq rawBody480_205 rawBody480_210

def rawBody480_212 : StackLang.HolProg 64 :=
.seq rawBody480_204 rawBody480_211

def rawBody480_213 : StackLang.HolProg 64 :=
.seq rawBody480_203 rawBody480_212

def rawBody480_214 : StackLang.HolProg 64 :=
.seq rawBody480_202 rawBody480_213

def rawBody480_215 : StackLang.HolProg 64 :=
.seq rawBody480_201 rawBody480_214

def rawBody480_216 : StackLang.HolProg 64 :=
.seq rawBody480_200 rawBody480_215

def rawBody480_217 : StackLang.HolProg 64 :=
.seq rawBody480_199 rawBody480_216

def rawBody480_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody480_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody480_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody480_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody480_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody480_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody480_226 : StackLang.HolProg 64 :=
.seq rawBody480_224 rawBody480_225

def rawBody480_227 : StackLang.HolProg 64 :=
.seq rawBody480_223 rawBody480_226

def rawBody480_228 : StackLang.HolProg 64 :=
.seq rawBody480_222 rawBody480_227

def rawBody480_229 : StackLang.HolProg 64 :=
.seq rawBody480_221 rawBody480_228

def rawBody480_230 : StackLang.HolProg 64 :=
.seq rawBody480_220 rawBody480_229

def rawBody480_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody480_232 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody480_233 : StackLang.HolProg 64 :=
.seq rawBody480_231 rawBody480_232

def rawBody480_234 : StackLang.HolProg 64 :=
.call (some (rawBody480_230, 0, 480, 6)) (Sum.inl 462) (some (rawBody480_233, 480, 7))

def rawBody480_235 : StackLang.HolProg 64 :=
.seq rawBody480_219 rawBody480_234

def rawBody480_236 : StackLang.HolProg 64 :=
.seq rawBody480_218 rawBody480_235

def rawBody480_237 : StackLang.HolProg 64 :=
.seq rawBody480_217 rawBody480_236

def rawBody480_238 : StackLang.HolProg 64 :=
.seq rawBody480_198 rawBody480_237

def rawBody480_239 : StackLang.HolProg 64 :=
.seq rawBody480_195 rawBody480_238

def rawBody480_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody480_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody480_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1507#64)

def rawBody480_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody480_245 : StackLang.HolProg 64 :=
.seq rawBody480_243 rawBody480_244

def rawBody480_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody480_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody480_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody480_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 9

def rawBody480_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody480_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody480_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody480_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody480_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody480_256 : StackLang.HolProg 64 :=
.seq rawBody480_254 rawBody480_255

def rawBody480_257 : StackLang.HolProg 64 :=
.seq rawBody480_253 rawBody480_256

def rawBody480_258 : StackLang.HolProg 64 :=
.seq rawBody480_252 rawBody480_257

def rawBody480_259 : StackLang.HolProg 64 :=
.seq rawBody480_251 rawBody480_258

def rawBody480_260 : StackLang.HolProg 64 :=
.seq rawBody480_250 rawBody480_259

def rawBody480_261 : StackLang.HolProg 64 :=
.seq rawBody480_249 rawBody480_260

def rawBody480_262 : StackLang.HolProg 64 :=
.seq rawBody480_248 rawBody480_261

def rawBody480_263 : StackLang.HolProg 64 :=
.seq rawBody480_247 rawBody480_262

def rawBody480_264 : StackLang.HolProg 64 :=
.seq rawBody480_246 rawBody480_263

def rawBody480_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody480_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody480_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody480_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody480_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody480_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 9

def rawBody480_273 : StackLang.HolProg 64 :=
.seq rawBody480_271 rawBody480_272

def rawBody480_274 : StackLang.HolProg 64 :=
.seq rawBody480_270 rawBody480_273

def rawBody480_275 : StackLang.HolProg 64 :=
.seq rawBody480_269 rawBody480_274

def rawBody480_276 : StackLang.HolProg 64 :=
.seq rawBody480_268 rawBody480_275

def rawBody480_277 : StackLang.HolProg 64 :=
.seq rawBody480_267 rawBody480_276

def rawBody480_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 9

def rawBody480_279 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody480_280 : StackLang.HolProg 64 :=
.seq rawBody480_278 rawBody480_279

def rawBody480_281 : StackLang.HolProg 64 :=
.call (some (rawBody480_277, 0, 480, 8)) (Sum.inl 463) (some (rawBody480_280, 480, 9))

def rawBody480_282 : StackLang.HolProg 64 :=
.seq rawBody480_266 rawBody480_281

def rawBody480_283 : StackLang.HolProg 64 :=
.seq rawBody480_265 rawBody480_282

def rawBody480_284 : StackLang.HolProg 64 :=
.seq rawBody480_264 rawBody480_283

def rawBody480_285 : StackLang.HolProg 64 :=
.seq rawBody480_245 rawBody480_284

def rawBody480_286 : StackLang.HolProg 64 :=
.seq rawBody480_242 rawBody480_285

def rawBody480_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody480_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def rawBody480_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody480_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def rawBody480_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody480_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def rawBody480_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody480_296 : StackLang.HolProg 64 :=
.seq rawBody480_294 rawBody480_295

def rawBody480_297 : StackLang.HolProg 64 :=
.seq rawBody480_293 rawBody480_296

def rawBody480_298 : StackLang.HolProg 64 :=
.seq rawBody480_292 rawBody480_297

def rawBody480_299 : StackLang.HolProg 64 :=
.seq rawBody480_291 rawBody480_298

def rawBody480_300 : StackLang.HolProg 64 :=
.seq rawBody480_290 rawBody480_299

def rawBody480_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_302 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody480_300 rawBody480_301

def rawBody480_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody480_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody480_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody480_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody480_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody480_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody480_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def rawBody480_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 9

def rawBody480_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def rawBody480_312 : StackLang.HolProg 64 :=
.seq rawBody480_310 rawBody480_311

def rawBody480_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1508#64)

def rawBody480_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody480_316 : StackLang.HolProg 64 :=
.seq rawBody480_314 rawBody480_315

def rawBody480_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody480_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody480_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody480_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 11

def rawBody480_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody480_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody480_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody480_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody480_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody480_327 : StackLang.HolProg 64 :=
.seq rawBody480_325 rawBody480_326

def rawBody480_328 : StackLang.HolProg 64 :=
.seq rawBody480_324 rawBody480_327

def rawBody480_329 : StackLang.HolProg 64 :=
.seq rawBody480_323 rawBody480_328

def rawBody480_330 : StackLang.HolProg 64 :=
.seq rawBody480_322 rawBody480_329

def rawBody480_331 : StackLang.HolProg 64 :=
.seq rawBody480_321 rawBody480_330

def rawBody480_332 : StackLang.HolProg 64 :=
.seq rawBody480_320 rawBody480_331

def rawBody480_333 : StackLang.HolProg 64 :=
.seq rawBody480_319 rawBody480_332

def rawBody480_334 : StackLang.HolProg 64 :=
.seq rawBody480_318 rawBody480_333

def rawBody480_335 : StackLang.HolProg 64 :=
.seq rawBody480_317 rawBody480_334

def rawBody480_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody480_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody480_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody480_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody480_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody480_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody480_344 : StackLang.HolProg 64 :=
.seq rawBody480_342 rawBody480_343

def rawBody480_345 : StackLang.HolProg 64 :=
.seq rawBody480_341 rawBody480_344

def rawBody480_346 : StackLang.HolProg 64 :=
.seq rawBody480_340 rawBody480_345

def rawBody480_347 : StackLang.HolProg 64 :=
.seq rawBody480_339 rawBody480_346

def rawBody480_348 : StackLang.HolProg 64 :=
.seq rawBody480_338 rawBody480_347

def rawBody480_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody480_350 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody480_351 : StackLang.HolProg 64 :=
.seq rawBody480_349 rawBody480_350

def rawBody480_352 : StackLang.HolProg 64 :=
.call (some (rawBody480_348, 0, 480, 10)) (Sum.inl 464) (some (rawBody480_351, 480, 11))

def rawBody480_353 : StackLang.HolProg 64 :=
.seq rawBody480_337 rawBody480_352

def rawBody480_354 : StackLang.HolProg 64 :=
.seq rawBody480_336 rawBody480_353

def rawBody480_355 : StackLang.HolProg 64 :=
.seq rawBody480_335 rawBody480_354

def rawBody480_356 : StackLang.HolProg 64 :=
.seq rawBody480_316 rawBody480_355

def rawBody480_357 : StackLang.HolProg 64 :=
.seq rawBody480_313 rawBody480_356

def rawBody480_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody480_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody480_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def rawBody480_361 : StackLang.HolProg 64 :=
.seq rawBody480_359 rawBody480_360

def rawBody480_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1509#64)

def rawBody480_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody480_365 : StackLang.HolProg 64 :=
.seq rawBody480_363 rawBody480_364

def rawBody480_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody480_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody480_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody480_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 13

def rawBody480_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody480_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody480_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody480_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody480_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody480_376 : StackLang.HolProg 64 :=
.seq rawBody480_374 rawBody480_375

def rawBody480_377 : StackLang.HolProg 64 :=
.seq rawBody480_373 rawBody480_376

def rawBody480_378 : StackLang.HolProg 64 :=
.seq rawBody480_372 rawBody480_377

def rawBody480_379 : StackLang.HolProg 64 :=
.seq rawBody480_371 rawBody480_378

def rawBody480_380 : StackLang.HolProg 64 :=
.seq rawBody480_370 rawBody480_379

def rawBody480_381 : StackLang.HolProg 64 :=
.seq rawBody480_369 rawBody480_380

def rawBody480_382 : StackLang.HolProg 64 :=
.seq rawBody480_368 rawBody480_381

def rawBody480_383 : StackLang.HolProg 64 :=
.seq rawBody480_367 rawBody480_382

def rawBody480_384 : StackLang.HolProg 64 :=
.seq rawBody480_366 rawBody480_383

def rawBody480_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody480_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody480_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody480_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody480_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody480_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 9

def rawBody480_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 8

def rawBody480_394 : StackLang.HolProg 64 :=
.seq rawBody480_392 rawBody480_393

def rawBody480_395 : StackLang.HolProg 64 :=
.seq rawBody480_391 rawBody480_394

def rawBody480_396 : StackLang.HolProg 64 :=
.seq rawBody480_390 rawBody480_395

def rawBody480_397 : StackLang.HolProg 64 :=
.seq rawBody480_389 rawBody480_396

def rawBody480_398 : StackLang.HolProg 64 :=
.seq rawBody480_388 rawBody480_397

def rawBody480_399 : StackLang.HolProg 64 :=
.seq rawBody480_387 rawBody480_398

def rawBody480_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 9

def rawBody480_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 8

def rawBody480_402 : StackLang.HolProg 64 :=
.seq rawBody480_400 rawBody480_401

def rawBody480_403 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody480_404 : StackLang.HolProg 64 :=
.seq rawBody480_402 rawBody480_403

def rawBody480_405 : StackLang.HolProg 64 :=
.call (some (rawBody480_399, 0, 480, 12)) (Sum.inl 464) (some (rawBody480_404, 480, 13))

def rawBody480_406 : StackLang.HolProg 64 :=
.seq rawBody480_386 rawBody480_405

def rawBody480_407 : StackLang.HolProg 64 :=
.seq rawBody480_385 rawBody480_406

def rawBody480_408 : StackLang.HolProg 64 :=
.seq rawBody480_384 rawBody480_407

def rawBody480_409 : StackLang.HolProg 64 :=
.seq rawBody480_365 rawBody480_408

def rawBody480_410 : StackLang.HolProg 64 :=
.seq rawBody480_362 rawBody480_409

def rawBody480_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody480_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody480_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody480_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody480_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def rawBody480_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody480_419 : StackLang.HolProg 64 :=
.seq rawBody480_417 rawBody480_418

def rawBody480_420 : StackLang.HolProg 64 :=
.seq rawBody480_416 rawBody480_419

def rawBody480_421 : StackLang.HolProg 64 :=
.seq rawBody480_415 rawBody480_420

def rawBody480_422 : StackLang.HolProg 64 :=
.seq rawBody480_414 rawBody480_421

def rawBody480_423 : StackLang.HolProg 64 :=
.seq rawBody480_413 rawBody480_422

def rawBody480_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_425 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody480_423 rawBody480_424

def rawBody480_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody480_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody480_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody480_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 9

def rawBody480_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 8

def rawBody480_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody480_432 : StackLang.HolProg 64 :=
.seq rawBody480_430 rawBody480_431

def rawBody480_433 : StackLang.HolProg 64 :=
.seq rawBody480_429 rawBody480_432

def rawBody480_434 : StackLang.HolProg 64 :=
.seq rawBody480_428 rawBody480_433

def rawBody480_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1510#64)

def rawBody480_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody480_438 : StackLang.HolProg 64 :=
.seq rawBody480_436 rawBody480_437

def rawBody480_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody480_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody480_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody480_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 15

def rawBody480_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody480_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody480_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody480_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody480_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody480_449 : StackLang.HolProg 64 :=
.seq rawBody480_447 rawBody480_448

def rawBody480_450 : StackLang.HolProg 64 :=
.seq rawBody480_446 rawBody480_449

def rawBody480_451 : StackLang.HolProg 64 :=
.seq rawBody480_445 rawBody480_450

def rawBody480_452 : StackLang.HolProg 64 :=
.seq rawBody480_444 rawBody480_451

def rawBody480_453 : StackLang.HolProg 64 :=
.seq rawBody480_443 rawBody480_452

def rawBody480_454 : StackLang.HolProg 64 :=
.seq rawBody480_442 rawBody480_453

def rawBody480_455 : StackLang.HolProg 64 :=
.seq rawBody480_441 rawBody480_454

def rawBody480_456 : StackLang.HolProg 64 :=
.seq rawBody480_440 rawBody480_455

def rawBody480_457 : StackLang.HolProg 64 :=
.seq rawBody480_439 rawBody480_456

def rawBody480_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody480_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody480_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody480_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody480_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody480_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody480_466 : StackLang.HolProg 64 :=
.seq rawBody480_464 rawBody480_465

def rawBody480_467 : StackLang.HolProg 64 :=
.seq rawBody480_463 rawBody480_466

def rawBody480_468 : StackLang.HolProg 64 :=
.seq rawBody480_462 rawBody480_467

def rawBody480_469 : StackLang.HolProg 64 :=
.seq rawBody480_461 rawBody480_468

def rawBody480_470 : StackLang.HolProg 64 :=
.seq rawBody480_460 rawBody480_469

def rawBody480_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody480_472 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody480_473 : StackLang.HolProg 64 :=
.seq rawBody480_471 rawBody480_472

def rawBody480_474 : StackLang.HolProg 64 :=
.call (some (rawBody480_470, 0, 480, 14)) (Sum.inl 479) (some (rawBody480_473, 480, 15))

def rawBody480_475 : StackLang.HolProg 64 :=
.seq rawBody480_459 rawBody480_474

def rawBody480_476 : StackLang.HolProg 64 :=
.seq rawBody480_458 rawBody480_475

def rawBody480_477 : StackLang.HolProg 64 :=
.seq rawBody480_457 rawBody480_476

def rawBody480_478 : StackLang.HolProg 64 :=
.seq rawBody480_438 rawBody480_477

def rawBody480_479 : StackLang.HolProg 64 :=
.seq rawBody480_435 rawBody480_478

def rawBody480_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody480_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody480_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def rawBody480_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def rawBody480_484 : StackLang.HolProg 64 :=
.seq rawBody480_482 rawBody480_483

def rawBody480_485 : StackLang.HolProg 64 :=
.seq rawBody480_481 rawBody480_484

def rawBody480_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1511#64)

def rawBody480_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody480_489 : StackLang.HolProg 64 :=
.seq rawBody480_487 rawBody480_488

def rawBody480_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody480_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody480_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody480_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 17

def rawBody480_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody480_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody480_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody480_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody480_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody480_500 : StackLang.HolProg 64 :=
.seq rawBody480_498 rawBody480_499

def rawBody480_501 : StackLang.HolProg 64 :=
.seq rawBody480_497 rawBody480_500

def rawBody480_502 : StackLang.HolProg 64 :=
.seq rawBody480_496 rawBody480_501

def rawBody480_503 : StackLang.HolProg 64 :=
.seq rawBody480_495 rawBody480_502

def rawBody480_504 : StackLang.HolProg 64 :=
.seq rawBody480_494 rawBody480_503

def rawBody480_505 : StackLang.HolProg 64 :=
.seq rawBody480_493 rawBody480_504

def rawBody480_506 : StackLang.HolProg 64 :=
.seq rawBody480_492 rawBody480_505

def rawBody480_507 : StackLang.HolProg 64 :=
.seq rawBody480_491 rawBody480_506

def rawBody480_508 : StackLang.HolProg 64 :=
.seq rawBody480_490 rawBody480_507

def rawBody480_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody480_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody480_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody480_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody480_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody480_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 9

def rawBody480_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 8

def rawBody480_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def rawBody480_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody480_520 : StackLang.HolProg 64 :=
.seq rawBody480_518 rawBody480_519

def rawBody480_521 : StackLang.HolProg 64 :=
.seq rawBody480_517 rawBody480_520

def rawBody480_522 : StackLang.HolProg 64 :=
.seq rawBody480_516 rawBody480_521

def rawBody480_523 : StackLang.HolProg 64 :=
.seq rawBody480_515 rawBody480_522

def rawBody480_524 : StackLang.HolProg 64 :=
.seq rawBody480_514 rawBody480_523

def rawBody480_525 : StackLang.HolProg 64 :=
.seq rawBody480_513 rawBody480_524

def rawBody480_526 : StackLang.HolProg 64 :=
.seq rawBody480_512 rawBody480_525

def rawBody480_527 : StackLang.HolProg 64 :=
.seq rawBody480_511 rawBody480_526

def rawBody480_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 9

def rawBody480_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 8

def rawBody480_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def rawBody480_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody480_532 : StackLang.HolProg 64 :=
.seq rawBody480_530 rawBody480_531

def rawBody480_533 : StackLang.HolProg 64 :=
.seq rawBody480_529 rawBody480_532

def rawBody480_534 : StackLang.HolProg 64 :=
.seq rawBody480_528 rawBody480_533

def rawBody480_535 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody480_536 : StackLang.HolProg 64 :=
.seq rawBody480_534 rawBody480_535

def rawBody480_537 : StackLang.HolProg 64 :=
.call (some (rawBody480_527, 0, 480, 16)) (Sum.inl 479) (some (rawBody480_536, 480, 17))

def rawBody480_538 : StackLang.HolProg 64 :=
.seq rawBody480_510 rawBody480_537

def rawBody480_539 : StackLang.HolProg 64 :=
.seq rawBody480_509 rawBody480_538

def rawBody480_540 : StackLang.HolProg 64 :=
.seq rawBody480_508 rawBody480_539

def rawBody480_541 : StackLang.HolProg 64 :=
.seq rawBody480_489 rawBody480_540

def rawBody480_542 : StackLang.HolProg 64 :=
.seq rawBody480_486 rawBody480_541

def rawBody480_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody480_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def rawBody480_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody480_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def rawBody480_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody480_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def rawBody480_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def rawBody480_552 : StackLang.HolProg 64 :=
.seq rawBody480_550 rawBody480_551

def rawBody480_553 : StackLang.HolProg 64 :=
.seq rawBody480_549 rawBody480_552

def rawBody480_554 : StackLang.HolProg 64 :=
.seq rawBody480_548 rawBody480_553

def rawBody480_555 : StackLang.HolProg 64 :=
.seq rawBody480_547 rawBody480_554

def rawBody480_556 : StackLang.HolProg 64 :=
.seq rawBody480_546 rawBody480_555

def rawBody480_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_558 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody480_556 rawBody480_557

def rawBody480_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody480_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody480_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody480_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody480_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody480_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def rawBody480_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def rawBody480_568 : StackLang.HolProg 64 :=
.seq rawBody480_566 rawBody480_567

def rawBody480_569 : StackLang.HolProg 64 :=
.seq rawBody480_565 rawBody480_568

def rawBody480_570 : StackLang.HolProg 64 :=
.seq rawBody480_564 rawBody480_569

def rawBody480_571 : StackLang.HolProg 64 :=
.seq rawBody480_563 rawBody480_570

def rawBody480_572 : StackLang.HolProg 64 :=
.seq rawBody480_562 rawBody480_571

def rawBody480_573 : StackLang.HolProg 64 :=
.seq rawBody480_561 rawBody480_572

def rawBody480_574 : StackLang.HolProg 64 :=
.seq rawBody480_560 rawBody480_573

def rawBody480_575 : StackLang.HolProg 64 :=
.seq rawBody480_559 rawBody480_574

def rawBody480_576 : StackLang.HolProg 64 :=
.seq rawBody480_558 rawBody480_575

def rawBody480_577 : StackLang.HolProg 64 :=
.seq rawBody480_545 rawBody480_576

def rawBody480_578 : StackLang.HolProg 64 :=
.seq rawBody480_544 rawBody480_577

def rawBody480_579 : StackLang.HolProg 64 :=
.seq rawBody480_543 rawBody480_578

def rawBody480_580 : StackLang.HolProg 64 :=
.seq rawBody480_542 rawBody480_579

def rawBody480_581 : StackLang.HolProg 64 :=
.seq rawBody480_485 rawBody480_580

def rawBody480_582 : StackLang.HolProg 64 :=
.seq rawBody480_480 rawBody480_581

def rawBody480_583 : StackLang.HolProg 64 :=
.seq rawBody480_479 rawBody480_582

def rawBody480_584 : StackLang.HolProg 64 :=
.seq rawBody480_434 rawBody480_583

def rawBody480_585 : StackLang.HolProg 64 :=
.seq rawBody480_427 rawBody480_584

def rawBody480_586 : StackLang.HolProg 64 :=
.seq rawBody480_426 rawBody480_585

def rawBody480_587 : StackLang.HolProg 64 :=
.seq rawBody480_425 rawBody480_586

def rawBody480_588 : StackLang.HolProg 64 :=
.seq rawBody480_412 rawBody480_587

def rawBody480_589 : StackLang.HolProg 64 :=
.seq rawBody480_411 rawBody480_588

def rawBody480_590 : StackLang.HolProg 64 :=
.seq rawBody480_410 rawBody480_589

def rawBody480_591 : StackLang.HolProg 64 :=
.seq rawBody480_361 rawBody480_590

def rawBody480_592 : StackLang.HolProg 64 :=
.seq rawBody480_358 rawBody480_591

def rawBody480_593 : StackLang.HolProg 64 :=
.seq rawBody480_357 rawBody480_592

def rawBody480_594 : StackLang.HolProg 64 :=
.seq rawBody480_312 rawBody480_593

def rawBody480_595 : StackLang.HolProg 64 :=
.seq rawBody480_309 rawBody480_594

def rawBody480_596 : StackLang.HolProg 64 :=
.seq rawBody480_308 rawBody480_595

def rawBody480_597 : StackLang.HolProg 64 :=
.seq rawBody480_307 rawBody480_596

def rawBody480_598 : StackLang.HolProg 64 :=
.seq rawBody480_306 rawBody480_597

def rawBody480_599 : StackLang.HolProg 64 :=
.seq rawBody480_305 rawBody480_598

def rawBody480_600 : StackLang.HolProg 64 :=
.seq rawBody480_304 rawBody480_599

def rawBody480_601 : StackLang.HolProg 64 :=
.seq rawBody480_303 rawBody480_600

def rawBody480_602 : StackLang.HolProg 64 :=
.seq rawBody480_302 rawBody480_601

def rawBody480_603 : StackLang.HolProg 64 :=
.seq rawBody480_289 rawBody480_602

def rawBody480_604 : StackLang.HolProg 64 :=
.seq rawBody480_288 rawBody480_603

def rawBody480_605 : StackLang.HolProg 64 :=
.seq rawBody480_287 rawBody480_604

def rawBody480_606 : StackLang.HolProg 64 :=
.seq rawBody480_286 rawBody480_605

def rawBody480_607 : StackLang.HolProg 64 :=
.seq rawBody480_241 rawBody480_606

def rawBody480_608 : StackLang.HolProg 64 :=
.seq rawBody480_240 rawBody480_607

def rawBody480_609 : StackLang.HolProg 64 :=
.seq rawBody480_239 rawBody480_608

def rawBody480_610 : StackLang.HolProg 64 :=
.seq rawBody480_194 rawBody480_609

def rawBody480_611 : StackLang.HolProg 64 :=
.seq rawBody480_191 rawBody480_610

def rawBody480_612 : StackLang.HolProg 64 :=
.seq rawBody480_190 rawBody480_611

def rawBody480_613 : StackLang.HolProg 64 :=
.seq rawBody480_133 rawBody480_612

def rawBody480_614 : StackLang.HolProg 64 :=
.seq rawBody480_128 rawBody480_613

def rawBody480_615 : StackLang.HolProg 64 :=
.seq rawBody480_127 rawBody480_614

def rawBody480_616 : StackLang.HolProg 64 :=
.seq rawBody480_126 rawBody480_615

def rawBody480_617 : StackLang.HolProg 64 :=
.seq rawBody480_113 rawBody480_616

def rawBody480_618 : StackLang.HolProg 64 :=
.seq rawBody480_112 rawBody480_617

def rawBody480_619 : StackLang.HolProg 64 :=
.seq rawBody480_111 rawBody480_618

def rawBody480_620 : StackLang.HolProg 64 :=
.seq rawBody480_110 rawBody480_619

def rawBody480_621 : StackLang.HolProg 64 :=
.seq rawBody480_25 rawBody480_620

def rawBody480_622 : StackLang.HolProg 64 :=
.seq rawBody480_0 rawBody480_621

def raw480 : StackLang.HolProg 64 := rawBody480_622
theorem raw480_eq : StackRawCall.compTop RawInfo.rawInfo (function480 (.list [])).1 = raw480 := by
  kernel_rfl
#print axioms raw480_eq
end InitECandidate.Proofs.BackendStages
