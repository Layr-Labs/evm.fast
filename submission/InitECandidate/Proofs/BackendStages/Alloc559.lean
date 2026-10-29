import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw559
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody559_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody559_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody559_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody559_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody559_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody559_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1908#64)

def AllocBody559_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody559_7 : StackLang.HolProg 64 :=
.seq AllocBody559_5 AllocBody559_6

def AllocBody559_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody559_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody559_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody559_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 559 3

def AllocBody559_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody559_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody559_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody559_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody559_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody559_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody559_18 : StackLang.HolProg 64 :=
.seq AllocBody559_16 AllocBody559_17

def AllocBody559_19 : StackLang.HolProg 64 :=
.seq AllocBody559_15 AllocBody559_18

def AllocBody559_20 : StackLang.HolProg 64 :=
.seq AllocBody559_14 AllocBody559_19

def AllocBody559_21 : StackLang.HolProg 64 :=
.seq AllocBody559_13 AllocBody559_20

def AllocBody559_22 : StackLang.HolProg 64 :=
.seq AllocBody559_12 AllocBody559_21

def AllocBody559_23 : StackLang.HolProg 64 :=
.seq AllocBody559_11 AllocBody559_22

def AllocBody559_24 : StackLang.HolProg 64 :=
.seq AllocBody559_10 AllocBody559_23

def AllocBody559_25 : StackLang.HolProg 64 :=
.seq AllocBody559_9 AllocBody559_24

def AllocBody559_26 : StackLang.HolProg 64 :=
.seq AllocBody559_8 AllocBody559_25

def AllocBody559_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody559_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody559_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody559_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody559_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody559_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody559_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody559_34 : StackLang.HolProg 64 :=
.seq AllocBody559_32 AllocBody559_33

def AllocBody559_35 : StackLang.HolProg 64 :=
.seq AllocBody559_31 AllocBody559_34

def AllocBody559_36 : StackLang.HolProg 64 :=
.seq AllocBody559_30 AllocBody559_35

def AllocBody559_37 : StackLang.HolProg 64 :=
.seq AllocBody559_29 AllocBody559_36

def AllocBody559_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody559_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody559_40 : StackLang.HolProg 64 :=
.seq AllocBody559_38 AllocBody559_39

def AllocBody559_41 : StackLang.HolProg 64 :=
.call (some (AllocBody559_37, 0, 559, 2)) (Sum.inl 470) (some (AllocBody559_40, 559, 3))

def AllocBody559_42 : StackLang.HolProg 64 :=
.seq AllocBody559_28 AllocBody559_41

def AllocBody559_43 : StackLang.HolProg 64 :=
.seq AllocBody559_27 AllocBody559_42

def AllocBody559_44 : StackLang.HolProg 64 :=
.seq AllocBody559_26 AllocBody559_43

def AllocBody559_45 : StackLang.HolProg 64 :=
.seq AllocBody559_7 AllocBody559_44

def AllocBody559_46 : StackLang.HolProg 64 :=
.seq AllocBody559_4 AllocBody559_45

def AllocBody559_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody559_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody559_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody559_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody559_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody559_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 112#64))

def AllocBody559_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 96#64))

def AllocBody559_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody559_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody559_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1909#64)

def AllocBody559_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody559_58 : StackLang.HolProg 64 :=
.seq AllocBody559_56 AllocBody559_57

def AllocBody559_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody559_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody559_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody559_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 559 5

def AllocBody559_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody559_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody559_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody559_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody559_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody559_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody559_69 : StackLang.HolProg 64 :=
.seq AllocBody559_67 AllocBody559_68

def AllocBody559_70 : StackLang.HolProg 64 :=
.seq AllocBody559_66 AllocBody559_69

def AllocBody559_71 : StackLang.HolProg 64 :=
.seq AllocBody559_65 AllocBody559_70

def AllocBody559_72 : StackLang.HolProg 64 :=
.seq AllocBody559_64 AllocBody559_71

def AllocBody559_73 : StackLang.HolProg 64 :=
.seq AllocBody559_63 AllocBody559_72

def AllocBody559_74 : StackLang.HolProg 64 :=
.seq AllocBody559_62 AllocBody559_73

def AllocBody559_75 : StackLang.HolProg 64 :=
.seq AllocBody559_61 AllocBody559_74

def AllocBody559_76 : StackLang.HolProg 64 :=
.seq AllocBody559_60 AllocBody559_75

def AllocBody559_77 : StackLang.HolProg 64 :=
.seq AllocBody559_59 AllocBody559_76

def AllocBody559_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody559_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody559_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody559_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody559_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody559_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody559_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody559_85 : StackLang.HolProg 64 :=
.seq AllocBody559_83 AllocBody559_84

def AllocBody559_86 : StackLang.HolProg 64 :=
.seq AllocBody559_82 AllocBody559_85

def AllocBody559_87 : StackLang.HolProg 64 :=
.seq AllocBody559_81 AllocBody559_86

def AllocBody559_88 : StackLang.HolProg 64 :=
.seq AllocBody559_80 AllocBody559_87

def AllocBody559_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody559_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody559_91 : StackLang.HolProg 64 :=
.seq AllocBody559_89 AllocBody559_90

def AllocBody559_92 : StackLang.HolProg 64 :=
.call (some (AllocBody559_88, 0, 559, 4)) (Sum.inl 477) (some (AllocBody559_91, 559, 5))

def AllocBody559_93 : StackLang.HolProg 64 :=
.seq AllocBody559_79 AllocBody559_92

def AllocBody559_94 : StackLang.HolProg 64 :=
.seq AllocBody559_78 AllocBody559_93

def AllocBody559_95 : StackLang.HolProg 64 :=
.seq AllocBody559_77 AllocBody559_94

def AllocBody559_96 : StackLang.HolProg 64 :=
.seq AllocBody559_58 AllocBody559_95

def AllocBody559_97 : StackLang.HolProg 64 :=
.seq AllocBody559_55 AllocBody559_96

def AllocBody559_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody559_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody559_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody559_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody559_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1910#64)

def AllocBody559_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody559_104 : StackLang.HolProg 64 :=
.seq AllocBody559_102 AllocBody559_103

def AllocBody559_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody559_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody559_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody559_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 559 7

def AllocBody559_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody559_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody559_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody559_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody559_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody559_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody559_115 : StackLang.HolProg 64 :=
.seq AllocBody559_113 AllocBody559_114

def AllocBody559_116 : StackLang.HolProg 64 :=
.seq AllocBody559_112 AllocBody559_115

def AllocBody559_117 : StackLang.HolProg 64 :=
.seq AllocBody559_111 AllocBody559_116

def AllocBody559_118 : StackLang.HolProg 64 :=
.seq AllocBody559_110 AllocBody559_117

def AllocBody559_119 : StackLang.HolProg 64 :=
.seq AllocBody559_109 AllocBody559_118

def AllocBody559_120 : StackLang.HolProg 64 :=
.seq AllocBody559_108 AllocBody559_119

def AllocBody559_121 : StackLang.HolProg 64 :=
.seq AllocBody559_107 AllocBody559_120

def AllocBody559_122 : StackLang.HolProg 64 :=
.seq AllocBody559_106 AllocBody559_121

def AllocBody559_123 : StackLang.HolProg 64 :=
.seq AllocBody559_105 AllocBody559_122

def AllocBody559_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody559_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody559_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody559_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody559_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody559_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody559_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody559_131 : StackLang.HolProg 64 :=
.seq AllocBody559_129 AllocBody559_130

def AllocBody559_132 : StackLang.HolProg 64 :=
.seq AllocBody559_128 AllocBody559_131

def AllocBody559_133 : StackLang.HolProg 64 :=
.seq AllocBody559_127 AllocBody559_132

def AllocBody559_134 : StackLang.HolProg 64 :=
.seq AllocBody559_126 AllocBody559_133

def AllocBody559_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody559_136 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody559_137 : StackLang.HolProg 64 :=
.seq AllocBody559_135 AllocBody559_136

def AllocBody559_138 : StackLang.HolProg 64 :=
.call (some (AllocBody559_134, 0, 559, 6)) (Sum.inl 490) (some (AllocBody559_137, 559, 7))

def AllocBody559_139 : StackLang.HolProg 64 :=
.seq AllocBody559_125 AllocBody559_138

def AllocBody559_140 : StackLang.HolProg 64 :=
.seq AllocBody559_124 AllocBody559_139

def AllocBody559_141 : StackLang.HolProg 64 :=
.seq AllocBody559_123 AllocBody559_140

def AllocBody559_142 : StackLang.HolProg 64 :=
.seq AllocBody559_104 AllocBody559_141

def AllocBody559_143 : StackLang.HolProg 64 :=
.seq AllocBody559_101 AllocBody559_142

def AllocBody559_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody559_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody559_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody559_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody559_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody559_149 : StackLang.HolProg 64 :=
.seq AllocBody559_147 AllocBody559_148

def AllocBody559_150 : StackLang.HolProg 64 :=
.seq AllocBody559_146 AllocBody559_149

def AllocBody559_151 : StackLang.HolProg 64 :=
.seq AllocBody559_145 AllocBody559_150

def AllocBody559_152 : StackLang.HolProg 64 :=
.seq AllocBody559_144 AllocBody559_151

def AllocBody559_153 : StackLang.HolProg 64 :=
.seq AllocBody559_143 AllocBody559_152

def AllocBody559_154 : StackLang.HolProg 64 :=
.seq AllocBody559_100 AllocBody559_153

def AllocBody559_155 : StackLang.HolProg 64 :=
.seq AllocBody559_99 AllocBody559_154

def AllocBody559_156 : StackLang.HolProg 64 :=
.seq AllocBody559_98 AllocBody559_155

def AllocBody559_157 : StackLang.HolProg 64 :=
.seq AllocBody559_97 AllocBody559_156

def AllocBody559_158 : StackLang.HolProg 64 :=
.seq AllocBody559_54 AllocBody559_157

def AllocBody559_159 : StackLang.HolProg 64 :=
.seq AllocBody559_53 AllocBody559_158

def AllocBody559_160 : StackLang.HolProg 64 :=
.seq AllocBody559_52 AllocBody559_159

def AllocBody559_161 : StackLang.HolProg 64 :=
.seq AllocBody559_51 AllocBody559_160

def AllocBody559_162 : StackLang.HolProg 64 :=
.seq AllocBody559_50 AllocBody559_161

def AllocBody559_163 : StackLang.HolProg 64 :=
.seq AllocBody559_49 AllocBody559_162

def AllocBody559_164 : StackLang.HolProg 64 :=
.seq AllocBody559_48 AllocBody559_163

def AllocBody559_165 : StackLang.HolProg 64 :=
.seq AllocBody559_47 AllocBody559_164

def AllocBody559_166 : StackLang.HolProg 64 :=
.seq AllocBody559_46 AllocBody559_165

def AllocBody559_167 : StackLang.HolProg 64 :=
.seq AllocBody559_3 AllocBody559_166

def AllocBody559_168 : StackLang.HolProg 64 :=
.seq AllocBody559_2 AllocBody559_167

def AllocBody559_169 : StackLang.HolProg 64 :=
.seq AllocBody559_1 AllocBody559_168

def AllocBody559_170 : StackLang.HolProg 64 :=
.seq AllocBody559_0 AllocBody559_169

def Alloc559 : Nat × StackLang.HolProg 64 := (559, AllocBody559_170)
theorem Alloc559_eq : StackAlloc.progComp (559, raw559) = Alloc559 := by
  kernel_rfl
#print axioms Alloc559_eq
end InitECandidate.Proofs.BackendStages
