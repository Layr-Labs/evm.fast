import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function532
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody532_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody532_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody532_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1746#64)

def rawBody532_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody532_5 : StackLang.HolProg 64 :=
.seq rawBody532_3 rawBody532_4

def rawBody532_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody532_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody532_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody532_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 532 3

def rawBody532_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody532_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody532_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody532_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody532_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody532_16 : StackLang.HolProg 64 :=
.seq rawBody532_14 rawBody532_15

def rawBody532_17 : StackLang.HolProg 64 :=
.seq rawBody532_13 rawBody532_16

def rawBody532_18 : StackLang.HolProg 64 :=
.seq rawBody532_12 rawBody532_17

def rawBody532_19 : StackLang.HolProg 64 :=
.seq rawBody532_11 rawBody532_18

def rawBody532_20 : StackLang.HolProg 64 :=
.seq rawBody532_10 rawBody532_19

def rawBody532_21 : StackLang.HolProg 64 :=
.seq rawBody532_9 rawBody532_20

def rawBody532_22 : StackLang.HolProg 64 :=
.seq rawBody532_8 rawBody532_21

def rawBody532_23 : StackLang.HolProg 64 :=
.seq rawBody532_7 rawBody532_22

def rawBody532_24 : StackLang.HolProg 64 :=
.seq rawBody532_6 rawBody532_23

def rawBody532_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody532_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody532_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody532_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody532_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody532_32 : StackLang.HolProg 64 :=
.seq rawBody532_30 rawBody532_31

def rawBody532_33 : StackLang.HolProg 64 :=
.seq rawBody532_29 rawBody532_32

def rawBody532_34 : StackLang.HolProg 64 :=
.seq rawBody532_28 rawBody532_33

def rawBody532_35 : StackLang.HolProg 64 :=
.seq rawBody532_27 rawBody532_34

def rawBody532_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody532_38 : StackLang.HolProg 64 :=
.seq rawBody532_36 rawBody532_37

def rawBody532_39 : StackLang.HolProg 64 :=
.call (some (rawBody532_35, 0, 532, 2)) (Sum.inl 475) (some (rawBody532_38, 532, 3))

def rawBody532_40 : StackLang.HolProg 64 :=
.seq rawBody532_26 rawBody532_39

def rawBody532_41 : StackLang.HolProg 64 :=
.seq rawBody532_25 rawBody532_40

def rawBody532_42 : StackLang.HolProg 64 :=
.seq rawBody532_24 rawBody532_41

def rawBody532_43 : StackLang.HolProg 64 :=
.seq rawBody532_5 rawBody532_42

def rawBody532_44 : StackLang.HolProg 64 :=
.seq rawBody532_2 rawBody532_43

def rawBody532_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody532_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody532_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody532_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody532_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody532_50 : StackLang.HolProg 64 :=
.seq rawBody532_48 rawBody532_49

def rawBody532_51 : StackLang.HolProg 64 :=
.seq rawBody532_47 rawBody532_50

def rawBody532_52 : StackLang.HolProg 64 :=
.seq rawBody532_46 rawBody532_51

def rawBody532_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 0#64)

def rawBody532_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def rawBody532_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def rawBody532_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 32#64)

def rawBody532_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def rawBody532_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def rawBody532_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody532_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def rawBody532_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody532_62 : StackLang.HolProg 64 :=
.seq rawBody532_60 rawBody532_61

def rawBody532_63 : StackLang.HolProg 64 :=
.seq rawBody532_59 rawBody532_62

def rawBody532_64 : StackLang.HolProg 64 :=
.seq rawBody532_58 rawBody532_63

def rawBody532_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1747#64)

def rawBody532_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody532_68 : StackLang.HolProg 64 :=
.seq rawBody532_66 rawBody532_67

def rawBody532_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody532_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody532_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody532_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 532 5

def rawBody532_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody532_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody532_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody532_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody532_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody532_79 : StackLang.HolProg 64 :=
.seq rawBody532_77 rawBody532_78

def rawBody532_80 : StackLang.HolProg 64 :=
.seq rawBody532_76 rawBody532_79

def rawBody532_81 : StackLang.HolProg 64 :=
.seq rawBody532_75 rawBody532_80

def rawBody532_82 : StackLang.HolProg 64 :=
.seq rawBody532_74 rawBody532_81

def rawBody532_83 : StackLang.HolProg 64 :=
.seq rawBody532_73 rawBody532_82

def rawBody532_84 : StackLang.HolProg 64 :=
.seq rawBody532_72 rawBody532_83

def rawBody532_85 : StackLang.HolProg 64 :=
.seq rawBody532_71 rawBody532_84

def rawBody532_86 : StackLang.HolProg 64 :=
.seq rawBody532_70 rawBody532_85

def rawBody532_87 : StackLang.HolProg 64 :=
.seq rawBody532_69 rawBody532_86

def rawBody532_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody532_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody532_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody532_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody532_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody532_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody532_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody532_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody532_98 : StackLang.HolProg 64 :=
.seq rawBody532_96 rawBody532_97

def rawBody532_99 : StackLang.HolProg 64 :=
.seq rawBody532_95 rawBody532_98

def rawBody532_100 : StackLang.HolProg 64 :=
.seq rawBody532_94 rawBody532_99

def rawBody532_101 : StackLang.HolProg 64 :=
.seq rawBody532_93 rawBody532_100

def rawBody532_102 : StackLang.HolProg 64 :=
.seq rawBody532_92 rawBody532_101

def rawBody532_103 : StackLang.HolProg 64 :=
.seq rawBody532_91 rawBody532_102

def rawBody532_104 : StackLang.HolProg 64 :=
.seq rawBody532_90 rawBody532_103

def rawBody532_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody532_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody532_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody532_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody532_109 : StackLang.HolProg 64 :=
.seq rawBody532_107 rawBody532_108

def rawBody532_110 : StackLang.HolProg 64 :=
.seq rawBody532_106 rawBody532_109

def rawBody532_111 : StackLang.HolProg 64 :=
.seq rawBody532_105 rawBody532_110

def rawBody532_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody532_113 : StackLang.HolProg 64 :=
.seq rawBody532_111 rawBody532_112

def rawBody532_114 : StackLang.HolProg 64 :=
.call (some (rawBody532_104, 0, 532, 4)) (Sum.inl 483) (some (rawBody532_113, 532, 5))

def rawBody532_115 : StackLang.HolProg 64 :=
.seq rawBody532_89 rawBody532_114

def rawBody532_116 : StackLang.HolProg 64 :=
.seq rawBody532_88 rawBody532_115

def rawBody532_117 : StackLang.HolProg 64 :=
.seq rawBody532_87 rawBody532_116

def rawBody532_118 : StackLang.HolProg 64 :=
.seq rawBody532_68 rawBody532_117

def rawBody532_119 : StackLang.HolProg 64 :=
.seq rawBody532_65 rawBody532_118

def rawBody532_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody532_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody532_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1748#64)

def rawBody532_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody532_125 : StackLang.HolProg 64 :=
.seq rawBody532_123 rawBody532_124

def rawBody532_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody532_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody532_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody532_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 532 7

def rawBody532_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody532_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody532_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody532_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody532_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody532_136 : StackLang.HolProg 64 :=
.seq rawBody532_134 rawBody532_135

def rawBody532_137 : StackLang.HolProg 64 :=
.seq rawBody532_133 rawBody532_136

def rawBody532_138 : StackLang.HolProg 64 :=
.seq rawBody532_132 rawBody532_137

def rawBody532_139 : StackLang.HolProg 64 :=
.seq rawBody532_131 rawBody532_138

def rawBody532_140 : StackLang.HolProg 64 :=
.seq rawBody532_130 rawBody532_139

def rawBody532_141 : StackLang.HolProg 64 :=
.seq rawBody532_129 rawBody532_140

def rawBody532_142 : StackLang.HolProg 64 :=
.seq rawBody532_128 rawBody532_141

def rawBody532_143 : StackLang.HolProg 64 :=
.seq rawBody532_127 rawBody532_142

def rawBody532_144 : StackLang.HolProg 64 :=
.seq rawBody532_126 rawBody532_143

def rawBody532_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody532_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody532_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody532_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody532_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody532_152 : StackLang.HolProg 64 :=
.seq rawBody532_150 rawBody532_151

def rawBody532_153 : StackLang.HolProg 64 :=
.seq rawBody532_149 rawBody532_152

def rawBody532_154 : StackLang.HolProg 64 :=
.seq rawBody532_148 rawBody532_153

def rawBody532_155 : StackLang.HolProg 64 :=
.seq rawBody532_147 rawBody532_154

def rawBody532_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_157 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody532_158 : StackLang.HolProg 64 :=
.seq rawBody532_156 rawBody532_157

def rawBody532_159 : StackLang.HolProg 64 :=
.call (some (rawBody532_155, 0, 532, 6)) (Sum.inl 462) (some (rawBody532_158, 532, 7))

def rawBody532_160 : StackLang.HolProg 64 :=
.seq rawBody532_146 rawBody532_159

def rawBody532_161 : StackLang.HolProg 64 :=
.seq rawBody532_145 rawBody532_160

def rawBody532_162 : StackLang.HolProg 64 :=
.seq rawBody532_144 rawBody532_161

def rawBody532_163 : StackLang.HolProg 64 :=
.seq rawBody532_125 rawBody532_162

def rawBody532_164 : StackLang.HolProg 64 :=
.seq rawBody532_122 rawBody532_163

def rawBody532_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody532_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody532_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody532_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody532_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody532_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody532_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody532_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def rawBody532_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1749#64)

def rawBody532_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody532_178 : StackLang.HolProg 64 :=
.seq rawBody532_176 rawBody532_177

def rawBody532_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody532_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody532_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody532_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 532 9

def rawBody532_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody532_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody532_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody532_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody532_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody532_189 : StackLang.HolProg 64 :=
.seq rawBody532_187 rawBody532_188

def rawBody532_190 : StackLang.HolProg 64 :=
.seq rawBody532_186 rawBody532_189

def rawBody532_191 : StackLang.HolProg 64 :=
.seq rawBody532_185 rawBody532_190

def rawBody532_192 : StackLang.HolProg 64 :=
.seq rawBody532_184 rawBody532_191

def rawBody532_193 : StackLang.HolProg 64 :=
.seq rawBody532_183 rawBody532_192

def rawBody532_194 : StackLang.HolProg 64 :=
.seq rawBody532_182 rawBody532_193

def rawBody532_195 : StackLang.HolProg 64 :=
.seq rawBody532_181 rawBody532_194

def rawBody532_196 : StackLang.HolProg 64 :=
.seq rawBody532_180 rawBody532_195

def rawBody532_197 : StackLang.HolProg 64 :=
.seq rawBody532_179 rawBody532_196

def rawBody532_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody532_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody532_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody532_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody532_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody532_205 : StackLang.HolProg 64 :=
.seq rawBody532_203 rawBody532_204

def rawBody532_206 : StackLang.HolProg 64 :=
.seq rawBody532_202 rawBody532_205

def rawBody532_207 : StackLang.HolProg 64 :=
.seq rawBody532_201 rawBody532_206

def rawBody532_208 : StackLang.HolProg 64 :=
.seq rawBody532_200 rawBody532_207

def rawBody532_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_210 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody532_211 : StackLang.HolProg 64 :=
.seq rawBody532_209 rawBody532_210

def rawBody532_212 : StackLang.HolProg 64 :=
.call (some (rawBody532_208, 0, 532, 8)) (Sum.inl 146) (some (rawBody532_211, 532, 9))

def rawBody532_213 : StackLang.HolProg 64 :=
.seq rawBody532_199 rawBody532_212

def rawBody532_214 : StackLang.HolProg 64 :=
.seq rawBody532_198 rawBody532_213

def rawBody532_215 : StackLang.HolProg 64 :=
.seq rawBody532_197 rawBody532_214

def rawBody532_216 : StackLang.HolProg 64 :=
.seq rawBody532_178 rawBody532_215

def rawBody532_217 : StackLang.HolProg 64 :=
.seq rawBody532_175 rawBody532_216

def rawBody532_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody532_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody532_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1750#64)

def rawBody532_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody532_223 : StackLang.HolProg 64 :=
.seq rawBody532_221 rawBody532_222

def rawBody532_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody532_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody532_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody532_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 532 11

def rawBody532_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody532_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody532_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody532_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody532_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody532_234 : StackLang.HolProg 64 :=
.seq rawBody532_232 rawBody532_233

def rawBody532_235 : StackLang.HolProg 64 :=
.seq rawBody532_231 rawBody532_234

def rawBody532_236 : StackLang.HolProg 64 :=
.seq rawBody532_230 rawBody532_235

def rawBody532_237 : StackLang.HolProg 64 :=
.seq rawBody532_229 rawBody532_236

def rawBody532_238 : StackLang.HolProg 64 :=
.seq rawBody532_228 rawBody532_237

def rawBody532_239 : StackLang.HolProg 64 :=
.seq rawBody532_227 rawBody532_238

def rawBody532_240 : StackLang.HolProg 64 :=
.seq rawBody532_226 rawBody532_239

def rawBody532_241 : StackLang.HolProg 64 :=
.seq rawBody532_225 rawBody532_240

def rawBody532_242 : StackLang.HolProg 64 :=
.seq rawBody532_224 rawBody532_241

def rawBody532_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody532_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody532_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody532_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody532_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_250 : StackLang.HolProg 64 :=
.seq rawBody532_248 rawBody532_249

def rawBody532_251 : StackLang.HolProg 64 :=
.seq rawBody532_247 rawBody532_250

def rawBody532_252 : StackLang.HolProg 64 :=
.seq rawBody532_246 rawBody532_251

def rawBody532_253 : StackLang.HolProg 64 :=
.seq rawBody532_245 rawBody532_252

def rawBody532_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_255 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody532_256 : StackLang.HolProg 64 :=
.seq rawBody532_254 rawBody532_255

def rawBody532_257 : StackLang.HolProg 64 :=
.call (some (rawBody532_253, 0, 532, 10)) (Sum.inl 476) (some (rawBody532_256, 532, 11))

def rawBody532_258 : StackLang.HolProg 64 :=
.seq rawBody532_244 rawBody532_257

def rawBody532_259 : StackLang.HolProg 64 :=
.seq rawBody532_243 rawBody532_258

def rawBody532_260 : StackLang.HolProg 64 :=
.seq rawBody532_242 rawBody532_259

def rawBody532_261 : StackLang.HolProg 64 :=
.seq rawBody532_223 rawBody532_260

def rawBody532_262 : StackLang.HolProg 64 :=
.seq rawBody532_220 rawBody532_261

def rawBody532_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody532_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody532_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1751#64)

def rawBody532_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody532_269 : StackLang.HolProg 64 :=
.seq rawBody532_267 rawBody532_268

def rawBody532_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody532_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody532_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody532_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 532 13

def rawBody532_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody532_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody532_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody532_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody532_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody532_280 : StackLang.HolProg 64 :=
.seq rawBody532_278 rawBody532_279

def rawBody532_281 : StackLang.HolProg 64 :=
.seq rawBody532_277 rawBody532_280

def rawBody532_282 : StackLang.HolProg 64 :=
.seq rawBody532_276 rawBody532_281

def rawBody532_283 : StackLang.HolProg 64 :=
.seq rawBody532_275 rawBody532_282

def rawBody532_284 : StackLang.HolProg 64 :=
.seq rawBody532_274 rawBody532_283

def rawBody532_285 : StackLang.HolProg 64 :=
.seq rawBody532_273 rawBody532_284

def rawBody532_286 : StackLang.HolProg 64 :=
.seq rawBody532_272 rawBody532_285

def rawBody532_287 : StackLang.HolProg 64 :=
.seq rawBody532_271 rawBody532_286

def rawBody532_288 : StackLang.HolProg 64 :=
.seq rawBody532_270 rawBody532_287

def rawBody532_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody532_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody532_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody532_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody532_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody532_296 : StackLang.HolProg 64 :=
.seq rawBody532_294 rawBody532_295

def rawBody532_297 : StackLang.HolProg 64 :=
.seq rawBody532_293 rawBody532_296

def rawBody532_298 : StackLang.HolProg 64 :=
.seq rawBody532_292 rawBody532_297

def rawBody532_299 : StackLang.HolProg 64 :=
.seq rawBody532_291 rawBody532_298

def rawBody532_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody532_301 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody532_302 : StackLang.HolProg 64 :=
.seq rawBody532_300 rawBody532_301

def rawBody532_303 : StackLang.HolProg 64 :=
.call (some (rawBody532_299, 0, 532, 12)) (Sum.inl 490) (some (rawBody532_302, 532, 13))

def rawBody532_304 : StackLang.HolProg 64 :=
.seq rawBody532_290 rawBody532_303

def rawBody532_305 : StackLang.HolProg 64 :=
.seq rawBody532_289 rawBody532_304

def rawBody532_306 : StackLang.HolProg 64 :=
.seq rawBody532_288 rawBody532_305

def rawBody532_307 : StackLang.HolProg 64 :=
.seq rawBody532_269 rawBody532_306

def rawBody532_308 : StackLang.HolProg 64 :=
.seq rawBody532_266 rawBody532_307

def rawBody532_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody532_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody532_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody532_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody532_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody532_314 : StackLang.HolProg 64 :=
.seq rawBody532_312 rawBody532_313

def rawBody532_315 : StackLang.HolProg 64 :=
.seq rawBody532_311 rawBody532_314

def rawBody532_316 : StackLang.HolProg 64 :=
.seq rawBody532_310 rawBody532_315

def rawBody532_317 : StackLang.HolProg 64 :=
.seq rawBody532_309 rawBody532_316

def rawBody532_318 : StackLang.HolProg 64 :=
.seq rawBody532_308 rawBody532_317

def rawBody532_319 : StackLang.HolProg 64 :=
.seq rawBody532_265 rawBody532_318

def rawBody532_320 : StackLang.HolProg 64 :=
.seq rawBody532_264 rawBody532_319

def rawBody532_321 : StackLang.HolProg 64 :=
.seq rawBody532_263 rawBody532_320

def rawBody532_322 : StackLang.HolProg 64 :=
.seq rawBody532_262 rawBody532_321

def rawBody532_323 : StackLang.HolProg 64 :=
.seq rawBody532_219 rawBody532_322

def rawBody532_324 : StackLang.HolProg 64 :=
.seq rawBody532_218 rawBody532_323

def rawBody532_325 : StackLang.HolProg 64 :=
.seq rawBody532_217 rawBody532_324

def rawBody532_326 : StackLang.HolProg 64 :=
.seq rawBody532_174 rawBody532_325

def rawBody532_327 : StackLang.HolProg 64 :=
.seq rawBody532_173 rawBody532_326

def rawBody532_328 : StackLang.HolProg 64 :=
.seq rawBody532_172 rawBody532_327

def rawBody532_329 : StackLang.HolProg 64 :=
.seq rawBody532_171 rawBody532_328

def rawBody532_330 : StackLang.HolProg 64 :=
.seq rawBody532_170 rawBody532_329

def rawBody532_331 : StackLang.HolProg 64 :=
.seq rawBody532_169 rawBody532_330

def rawBody532_332 : StackLang.HolProg 64 :=
.seq rawBody532_168 rawBody532_331

def rawBody532_333 : StackLang.HolProg 64 :=
.seq rawBody532_167 rawBody532_332

def rawBody532_334 : StackLang.HolProg 64 :=
.seq rawBody532_166 rawBody532_333

def rawBody532_335 : StackLang.HolProg 64 :=
.seq rawBody532_165 rawBody532_334

def rawBody532_336 : StackLang.HolProg 64 :=
.seq rawBody532_164 rawBody532_335

def rawBody532_337 : StackLang.HolProg 64 :=
.seq rawBody532_121 rawBody532_336

def rawBody532_338 : StackLang.HolProg 64 :=
.seq rawBody532_120 rawBody532_337

def rawBody532_339 : StackLang.HolProg 64 :=
.seq rawBody532_119 rawBody532_338

def rawBody532_340 : StackLang.HolProg 64 :=
.seq rawBody532_64 rawBody532_339

def rawBody532_341 : StackLang.HolProg 64 :=
.seq rawBody532_57 rawBody532_340

def rawBody532_342 : StackLang.HolProg 64 :=
.seq rawBody532_56 rawBody532_341

def rawBody532_343 : StackLang.HolProg 64 :=
.seq rawBody532_55 rawBody532_342

def rawBody532_344 : StackLang.HolProg 64 :=
.seq rawBody532_54 rawBody532_343

def rawBody532_345 : StackLang.HolProg 64 :=
.seq rawBody532_53 rawBody532_344

def rawBody532_346 : StackLang.HolProg 64 :=
.seq rawBody532_52 rawBody532_345

def rawBody532_347 : StackLang.HolProg 64 :=
.seq rawBody532_45 rawBody532_346

def rawBody532_348 : StackLang.HolProg 64 :=
.seq rawBody532_44 rawBody532_347

def rawBody532_349 : StackLang.HolProg 64 :=
.seq rawBody532_1 rawBody532_348

def rawBody532_350 : StackLang.HolProg 64 :=
.seq rawBody532_0 rawBody532_349

def raw532 : StackLang.HolProg 64 := rawBody532_350
theorem raw532_eq : StackRawCall.compTop RawInfo.rawInfo (function532 (.list [])).1 = raw532 := by
  kernel_rfl
#print axioms raw532_eq
end InitECandidate.Proofs.BackendStages
