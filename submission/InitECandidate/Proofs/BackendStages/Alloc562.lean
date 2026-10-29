import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw562
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody562_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody562_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody562_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody562_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody562_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody562_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1925#64)

def AllocBody562_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody562_7 : StackLang.HolProg 64 :=
.seq AllocBody562_5 AllocBody562_6

def AllocBody562_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody562_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody562_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody562_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 562 3

def AllocBody562_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody562_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody562_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody562_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody562_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody562_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody562_18 : StackLang.HolProg 64 :=
.seq AllocBody562_16 AllocBody562_17

def AllocBody562_19 : StackLang.HolProg 64 :=
.seq AllocBody562_15 AllocBody562_18

def AllocBody562_20 : StackLang.HolProg 64 :=
.seq AllocBody562_14 AllocBody562_19

def AllocBody562_21 : StackLang.HolProg 64 :=
.seq AllocBody562_13 AllocBody562_20

def AllocBody562_22 : StackLang.HolProg 64 :=
.seq AllocBody562_12 AllocBody562_21

def AllocBody562_23 : StackLang.HolProg 64 :=
.seq AllocBody562_11 AllocBody562_22

def AllocBody562_24 : StackLang.HolProg 64 :=
.seq AllocBody562_10 AllocBody562_23

def AllocBody562_25 : StackLang.HolProg 64 :=
.seq AllocBody562_9 AllocBody562_24

def AllocBody562_26 : StackLang.HolProg 64 :=
.seq AllocBody562_8 AllocBody562_25

def AllocBody562_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody562_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody562_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody562_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody562_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody562_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody562_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody562_34 : StackLang.HolProg 64 :=
.seq AllocBody562_32 AllocBody562_33

def AllocBody562_35 : StackLang.HolProg 64 :=
.seq AllocBody562_31 AllocBody562_34

def AllocBody562_36 : StackLang.HolProg 64 :=
.seq AllocBody562_30 AllocBody562_35

def AllocBody562_37 : StackLang.HolProg 64 :=
.seq AllocBody562_29 AllocBody562_36

def AllocBody562_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody562_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody562_40 : StackLang.HolProg 64 :=
.seq AllocBody562_38 AllocBody562_39

def AllocBody562_41 : StackLang.HolProg 64 :=
.call (some (AllocBody562_37, 0, 562, 2)) (Sum.inl 470) (some (AllocBody562_40, 562, 3))

def AllocBody562_42 : StackLang.HolProg 64 :=
.seq AllocBody562_28 AllocBody562_41

def AllocBody562_43 : StackLang.HolProg 64 :=
.seq AllocBody562_27 AllocBody562_42

def AllocBody562_44 : StackLang.HolProg 64 :=
.seq AllocBody562_26 AllocBody562_43

def AllocBody562_45 : StackLang.HolProg 64 :=
.seq AllocBody562_7 AllocBody562_44

def AllocBody562_46 : StackLang.HolProg 64 :=
.seq AllocBody562_4 AllocBody562_45

def AllocBody562_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody562_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody562_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody562_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody562_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody562_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 56#64))

def AllocBody562_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody562_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody562_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1926#64)

def AllocBody562_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody562_57 : StackLang.HolProg 64 :=
.seq AllocBody562_55 AllocBody562_56

def AllocBody562_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody562_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody562_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody562_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 562 5

def AllocBody562_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody562_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody562_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody562_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody562_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody562_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody562_68 : StackLang.HolProg 64 :=
.seq AllocBody562_66 AllocBody562_67

def AllocBody562_69 : StackLang.HolProg 64 :=
.seq AllocBody562_65 AllocBody562_68

def AllocBody562_70 : StackLang.HolProg 64 :=
.seq AllocBody562_64 AllocBody562_69

def AllocBody562_71 : StackLang.HolProg 64 :=
.seq AllocBody562_63 AllocBody562_70

def AllocBody562_72 : StackLang.HolProg 64 :=
.seq AllocBody562_62 AllocBody562_71

def AllocBody562_73 : StackLang.HolProg 64 :=
.seq AllocBody562_61 AllocBody562_72

def AllocBody562_74 : StackLang.HolProg 64 :=
.seq AllocBody562_60 AllocBody562_73

def AllocBody562_75 : StackLang.HolProg 64 :=
.seq AllocBody562_59 AllocBody562_74

def AllocBody562_76 : StackLang.HolProg 64 :=
.seq AllocBody562_58 AllocBody562_75

def AllocBody562_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody562_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody562_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody562_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody562_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody562_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody562_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody562_84 : StackLang.HolProg 64 :=
.seq AllocBody562_82 AllocBody562_83

def AllocBody562_85 : StackLang.HolProg 64 :=
.seq AllocBody562_81 AllocBody562_84

def AllocBody562_86 : StackLang.HolProg 64 :=
.seq AllocBody562_80 AllocBody562_85

def AllocBody562_87 : StackLang.HolProg 64 :=
.seq AllocBody562_79 AllocBody562_86

def AllocBody562_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody562_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody562_90 : StackLang.HolProg 64 :=
.seq AllocBody562_88 AllocBody562_89

def AllocBody562_91 : StackLang.HolProg 64 :=
.call (some (AllocBody562_87, 0, 562, 4)) (Sum.inl 477) (some (AllocBody562_90, 562, 5))

def AllocBody562_92 : StackLang.HolProg 64 :=
.seq AllocBody562_78 AllocBody562_91

def AllocBody562_93 : StackLang.HolProg 64 :=
.seq AllocBody562_77 AllocBody562_92

def AllocBody562_94 : StackLang.HolProg 64 :=
.seq AllocBody562_76 AllocBody562_93

def AllocBody562_95 : StackLang.HolProg 64 :=
.seq AllocBody562_57 AllocBody562_94

def AllocBody562_96 : StackLang.HolProg 64 :=
.seq AllocBody562_54 AllocBody562_95

def AllocBody562_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody562_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody562_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody562_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody562_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1927#64)

def AllocBody562_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody562_103 : StackLang.HolProg 64 :=
.seq AllocBody562_101 AllocBody562_102

def AllocBody562_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody562_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody562_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody562_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 562 7

def AllocBody562_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody562_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody562_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody562_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody562_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody562_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody562_114 : StackLang.HolProg 64 :=
.seq AllocBody562_112 AllocBody562_113

def AllocBody562_115 : StackLang.HolProg 64 :=
.seq AllocBody562_111 AllocBody562_114

def AllocBody562_116 : StackLang.HolProg 64 :=
.seq AllocBody562_110 AllocBody562_115

def AllocBody562_117 : StackLang.HolProg 64 :=
.seq AllocBody562_109 AllocBody562_116

def AllocBody562_118 : StackLang.HolProg 64 :=
.seq AllocBody562_108 AllocBody562_117

def AllocBody562_119 : StackLang.HolProg 64 :=
.seq AllocBody562_107 AllocBody562_118

def AllocBody562_120 : StackLang.HolProg 64 :=
.seq AllocBody562_106 AllocBody562_119

def AllocBody562_121 : StackLang.HolProg 64 :=
.seq AllocBody562_105 AllocBody562_120

def AllocBody562_122 : StackLang.HolProg 64 :=
.seq AllocBody562_104 AllocBody562_121

def AllocBody562_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody562_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody562_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody562_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody562_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody562_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody562_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody562_130 : StackLang.HolProg 64 :=
.seq AllocBody562_128 AllocBody562_129

def AllocBody562_131 : StackLang.HolProg 64 :=
.seq AllocBody562_127 AllocBody562_130

def AllocBody562_132 : StackLang.HolProg 64 :=
.seq AllocBody562_126 AllocBody562_131

def AllocBody562_133 : StackLang.HolProg 64 :=
.seq AllocBody562_125 AllocBody562_132

def AllocBody562_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody562_135 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody562_136 : StackLang.HolProg 64 :=
.seq AllocBody562_134 AllocBody562_135

def AllocBody562_137 : StackLang.HolProg 64 :=
.call (some (AllocBody562_133, 0, 562, 6)) (Sum.inl 490) (some (AllocBody562_136, 562, 7))

def AllocBody562_138 : StackLang.HolProg 64 :=
.seq AllocBody562_124 AllocBody562_137

def AllocBody562_139 : StackLang.HolProg 64 :=
.seq AllocBody562_123 AllocBody562_138

def AllocBody562_140 : StackLang.HolProg 64 :=
.seq AllocBody562_122 AllocBody562_139

def AllocBody562_141 : StackLang.HolProg 64 :=
.seq AllocBody562_103 AllocBody562_140

def AllocBody562_142 : StackLang.HolProg 64 :=
.seq AllocBody562_100 AllocBody562_141

def AllocBody562_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody562_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody562_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody562_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody562_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody562_148 : StackLang.HolProg 64 :=
.seq AllocBody562_146 AllocBody562_147

def AllocBody562_149 : StackLang.HolProg 64 :=
.seq AllocBody562_145 AllocBody562_148

def AllocBody562_150 : StackLang.HolProg 64 :=
.seq AllocBody562_144 AllocBody562_149

def AllocBody562_151 : StackLang.HolProg 64 :=
.seq AllocBody562_143 AllocBody562_150

def AllocBody562_152 : StackLang.HolProg 64 :=
.seq AllocBody562_142 AllocBody562_151

def AllocBody562_153 : StackLang.HolProg 64 :=
.seq AllocBody562_99 AllocBody562_152

def AllocBody562_154 : StackLang.HolProg 64 :=
.seq AllocBody562_98 AllocBody562_153

def AllocBody562_155 : StackLang.HolProg 64 :=
.seq AllocBody562_97 AllocBody562_154

def AllocBody562_156 : StackLang.HolProg 64 :=
.seq AllocBody562_96 AllocBody562_155

def AllocBody562_157 : StackLang.HolProg 64 :=
.seq AllocBody562_53 AllocBody562_156

def AllocBody562_158 : StackLang.HolProg 64 :=
.seq AllocBody562_52 AllocBody562_157

def AllocBody562_159 : StackLang.HolProg 64 :=
.seq AllocBody562_51 AllocBody562_158

def AllocBody562_160 : StackLang.HolProg 64 :=
.seq AllocBody562_50 AllocBody562_159

def AllocBody562_161 : StackLang.HolProg 64 :=
.seq AllocBody562_49 AllocBody562_160

def AllocBody562_162 : StackLang.HolProg 64 :=
.seq AllocBody562_48 AllocBody562_161

def AllocBody562_163 : StackLang.HolProg 64 :=
.seq AllocBody562_47 AllocBody562_162

def AllocBody562_164 : StackLang.HolProg 64 :=
.seq AllocBody562_46 AllocBody562_163

def AllocBody562_165 : StackLang.HolProg 64 :=
.seq AllocBody562_3 AllocBody562_164

def AllocBody562_166 : StackLang.HolProg 64 :=
.seq AllocBody562_2 AllocBody562_165

def AllocBody562_167 : StackLang.HolProg 64 :=
.seq AllocBody562_1 AllocBody562_166

def AllocBody562_168 : StackLang.HolProg 64 :=
.seq AllocBody562_0 AllocBody562_167

def Alloc562 : Nat × StackLang.HolProg 64 := (562, AllocBody562_168)
theorem Alloc562_eq : StackAlloc.progComp (562, raw562) = Alloc562 := by
  kernel_rfl
#print axioms Alloc562_eq
end InitECandidate.Proofs.BackendStages
