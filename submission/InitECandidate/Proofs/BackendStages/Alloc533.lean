import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw533
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody533_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody533_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody533_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody533_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody533_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody533_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1752#64)

def AllocBody533_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody533_7 : StackLang.HolProg 64 :=
.seq AllocBody533_5 AllocBody533_6

def AllocBody533_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody533_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody533_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody533_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 533 3

def AllocBody533_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody533_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody533_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody533_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody533_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody533_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody533_18 : StackLang.HolProg 64 :=
.seq AllocBody533_16 AllocBody533_17

def AllocBody533_19 : StackLang.HolProg 64 :=
.seq AllocBody533_15 AllocBody533_18

def AllocBody533_20 : StackLang.HolProg 64 :=
.seq AllocBody533_14 AllocBody533_19

def AllocBody533_21 : StackLang.HolProg 64 :=
.seq AllocBody533_13 AllocBody533_20

def AllocBody533_22 : StackLang.HolProg 64 :=
.seq AllocBody533_12 AllocBody533_21

def AllocBody533_23 : StackLang.HolProg 64 :=
.seq AllocBody533_11 AllocBody533_22

def AllocBody533_24 : StackLang.HolProg 64 :=
.seq AllocBody533_10 AllocBody533_23

def AllocBody533_25 : StackLang.HolProg 64 :=
.seq AllocBody533_9 AllocBody533_24

def AllocBody533_26 : StackLang.HolProg 64 :=
.seq AllocBody533_8 AllocBody533_25

def AllocBody533_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody533_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody533_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody533_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody533_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody533_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody533_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody533_34 : StackLang.HolProg 64 :=
.seq AllocBody533_32 AllocBody533_33

def AllocBody533_35 : StackLang.HolProg 64 :=
.seq AllocBody533_31 AllocBody533_34

def AllocBody533_36 : StackLang.HolProg 64 :=
.seq AllocBody533_30 AllocBody533_35

def AllocBody533_37 : StackLang.HolProg 64 :=
.seq AllocBody533_29 AllocBody533_36

def AllocBody533_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody533_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody533_40 : StackLang.HolProg 64 :=
.seq AllocBody533_38 AllocBody533_39

def AllocBody533_41 : StackLang.HolProg 64 :=
.call (some (AllocBody533_37, 0, 533, 2)) (Sum.inl 470) (some (AllocBody533_40, 533, 3))

def AllocBody533_42 : StackLang.HolProg 64 :=
.seq AllocBody533_28 AllocBody533_41

def AllocBody533_43 : StackLang.HolProg 64 :=
.seq AllocBody533_27 AllocBody533_42

def AllocBody533_44 : StackLang.HolProg 64 :=
.seq AllocBody533_26 AllocBody533_43

def AllocBody533_45 : StackLang.HolProg 64 :=
.seq AllocBody533_7 AllocBody533_44

def AllocBody533_46 : StackLang.HolProg 64 :=
.seq AllocBody533_4 AllocBody533_45

def AllocBody533_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody533_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody533_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody533_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody533_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody533_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def AllocBody533_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody533_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody533_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1753#64)

def AllocBody533_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody533_57 : StackLang.HolProg 64 :=
.seq AllocBody533_55 AllocBody533_56

def AllocBody533_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody533_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody533_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody533_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 533 5

def AllocBody533_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody533_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody533_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody533_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody533_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody533_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody533_68 : StackLang.HolProg 64 :=
.seq AllocBody533_66 AllocBody533_67

def AllocBody533_69 : StackLang.HolProg 64 :=
.seq AllocBody533_65 AllocBody533_68

def AllocBody533_70 : StackLang.HolProg 64 :=
.seq AllocBody533_64 AllocBody533_69

def AllocBody533_71 : StackLang.HolProg 64 :=
.seq AllocBody533_63 AllocBody533_70

def AllocBody533_72 : StackLang.HolProg 64 :=
.seq AllocBody533_62 AllocBody533_71

def AllocBody533_73 : StackLang.HolProg 64 :=
.seq AllocBody533_61 AllocBody533_72

def AllocBody533_74 : StackLang.HolProg 64 :=
.seq AllocBody533_60 AllocBody533_73

def AllocBody533_75 : StackLang.HolProg 64 :=
.seq AllocBody533_59 AllocBody533_74

def AllocBody533_76 : StackLang.HolProg 64 :=
.seq AllocBody533_58 AllocBody533_75

def AllocBody533_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody533_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody533_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody533_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody533_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody533_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody533_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody533_84 : StackLang.HolProg 64 :=
.seq AllocBody533_82 AllocBody533_83

def AllocBody533_85 : StackLang.HolProg 64 :=
.seq AllocBody533_81 AllocBody533_84

def AllocBody533_86 : StackLang.HolProg 64 :=
.seq AllocBody533_80 AllocBody533_85

def AllocBody533_87 : StackLang.HolProg 64 :=
.seq AllocBody533_79 AllocBody533_86

def AllocBody533_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody533_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody533_90 : StackLang.HolProg 64 :=
.seq AllocBody533_88 AllocBody533_89

def AllocBody533_91 : StackLang.HolProg 64 :=
.call (some (AllocBody533_87, 0, 533, 4)) (Sum.inl 477) (some (AllocBody533_90, 533, 5))

def AllocBody533_92 : StackLang.HolProg 64 :=
.seq AllocBody533_78 AllocBody533_91

def AllocBody533_93 : StackLang.HolProg 64 :=
.seq AllocBody533_77 AllocBody533_92

def AllocBody533_94 : StackLang.HolProg 64 :=
.seq AllocBody533_76 AllocBody533_93

def AllocBody533_95 : StackLang.HolProg 64 :=
.seq AllocBody533_57 AllocBody533_94

def AllocBody533_96 : StackLang.HolProg 64 :=
.seq AllocBody533_54 AllocBody533_95

def AllocBody533_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody533_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody533_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody533_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody533_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1754#64)

def AllocBody533_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody533_103 : StackLang.HolProg 64 :=
.seq AllocBody533_101 AllocBody533_102

def AllocBody533_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody533_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody533_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody533_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 533 7

def AllocBody533_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody533_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody533_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody533_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody533_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody533_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody533_114 : StackLang.HolProg 64 :=
.seq AllocBody533_112 AllocBody533_113

def AllocBody533_115 : StackLang.HolProg 64 :=
.seq AllocBody533_111 AllocBody533_114

def AllocBody533_116 : StackLang.HolProg 64 :=
.seq AllocBody533_110 AllocBody533_115

def AllocBody533_117 : StackLang.HolProg 64 :=
.seq AllocBody533_109 AllocBody533_116

def AllocBody533_118 : StackLang.HolProg 64 :=
.seq AllocBody533_108 AllocBody533_117

def AllocBody533_119 : StackLang.HolProg 64 :=
.seq AllocBody533_107 AllocBody533_118

def AllocBody533_120 : StackLang.HolProg 64 :=
.seq AllocBody533_106 AllocBody533_119

def AllocBody533_121 : StackLang.HolProg 64 :=
.seq AllocBody533_105 AllocBody533_120

def AllocBody533_122 : StackLang.HolProg 64 :=
.seq AllocBody533_104 AllocBody533_121

def AllocBody533_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody533_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody533_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody533_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody533_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody533_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody533_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody533_130 : StackLang.HolProg 64 :=
.seq AllocBody533_128 AllocBody533_129

def AllocBody533_131 : StackLang.HolProg 64 :=
.seq AllocBody533_127 AllocBody533_130

def AllocBody533_132 : StackLang.HolProg 64 :=
.seq AllocBody533_126 AllocBody533_131

def AllocBody533_133 : StackLang.HolProg 64 :=
.seq AllocBody533_125 AllocBody533_132

def AllocBody533_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody533_135 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody533_136 : StackLang.HolProg 64 :=
.seq AllocBody533_134 AllocBody533_135

def AllocBody533_137 : StackLang.HolProg 64 :=
.call (some (AllocBody533_133, 0, 533, 6)) (Sum.inl 490) (some (AllocBody533_136, 533, 7))

def AllocBody533_138 : StackLang.HolProg 64 :=
.seq AllocBody533_124 AllocBody533_137

def AllocBody533_139 : StackLang.HolProg 64 :=
.seq AllocBody533_123 AllocBody533_138

def AllocBody533_140 : StackLang.HolProg 64 :=
.seq AllocBody533_122 AllocBody533_139

def AllocBody533_141 : StackLang.HolProg 64 :=
.seq AllocBody533_103 AllocBody533_140

def AllocBody533_142 : StackLang.HolProg 64 :=
.seq AllocBody533_100 AllocBody533_141

def AllocBody533_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody533_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody533_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody533_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody533_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody533_148 : StackLang.HolProg 64 :=
.seq AllocBody533_146 AllocBody533_147

def AllocBody533_149 : StackLang.HolProg 64 :=
.seq AllocBody533_145 AllocBody533_148

def AllocBody533_150 : StackLang.HolProg 64 :=
.seq AllocBody533_144 AllocBody533_149

def AllocBody533_151 : StackLang.HolProg 64 :=
.seq AllocBody533_143 AllocBody533_150

def AllocBody533_152 : StackLang.HolProg 64 :=
.seq AllocBody533_142 AllocBody533_151

def AllocBody533_153 : StackLang.HolProg 64 :=
.seq AllocBody533_99 AllocBody533_152

def AllocBody533_154 : StackLang.HolProg 64 :=
.seq AllocBody533_98 AllocBody533_153

def AllocBody533_155 : StackLang.HolProg 64 :=
.seq AllocBody533_97 AllocBody533_154

def AllocBody533_156 : StackLang.HolProg 64 :=
.seq AllocBody533_96 AllocBody533_155

def AllocBody533_157 : StackLang.HolProg 64 :=
.seq AllocBody533_53 AllocBody533_156

def AllocBody533_158 : StackLang.HolProg 64 :=
.seq AllocBody533_52 AllocBody533_157

def AllocBody533_159 : StackLang.HolProg 64 :=
.seq AllocBody533_51 AllocBody533_158

def AllocBody533_160 : StackLang.HolProg 64 :=
.seq AllocBody533_50 AllocBody533_159

def AllocBody533_161 : StackLang.HolProg 64 :=
.seq AllocBody533_49 AllocBody533_160

def AllocBody533_162 : StackLang.HolProg 64 :=
.seq AllocBody533_48 AllocBody533_161

def AllocBody533_163 : StackLang.HolProg 64 :=
.seq AllocBody533_47 AllocBody533_162

def AllocBody533_164 : StackLang.HolProg 64 :=
.seq AllocBody533_46 AllocBody533_163

def AllocBody533_165 : StackLang.HolProg 64 :=
.seq AllocBody533_3 AllocBody533_164

def AllocBody533_166 : StackLang.HolProg 64 :=
.seq AllocBody533_2 AllocBody533_165

def AllocBody533_167 : StackLang.HolProg 64 :=
.seq AllocBody533_1 AllocBody533_166

def AllocBody533_168 : StackLang.HolProg 64 :=
.seq AllocBody533_0 AllocBody533_167

def Alloc533 : Nat × StackLang.HolProg 64 := (533, AllocBody533_168)
theorem Alloc533_eq : StackAlloc.progComp (533, raw533) = Alloc533 := by
  kernel_rfl
#print axioms Alloc533_eq
end InitECandidate.Proofs.BackendStages
