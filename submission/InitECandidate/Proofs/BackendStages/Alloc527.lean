import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw527
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody527_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody527_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody527_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody527_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody527_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody527_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1727#64)

def AllocBody527_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody527_7 : StackLang.HolProg 64 :=
.seq AllocBody527_5 AllocBody527_6

def AllocBody527_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody527_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody527_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody527_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 527 3

def AllocBody527_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody527_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody527_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody527_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody527_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody527_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody527_18 : StackLang.HolProg 64 :=
.seq AllocBody527_16 AllocBody527_17

def AllocBody527_19 : StackLang.HolProg 64 :=
.seq AllocBody527_15 AllocBody527_18

def AllocBody527_20 : StackLang.HolProg 64 :=
.seq AllocBody527_14 AllocBody527_19

def AllocBody527_21 : StackLang.HolProg 64 :=
.seq AllocBody527_13 AllocBody527_20

def AllocBody527_22 : StackLang.HolProg 64 :=
.seq AllocBody527_12 AllocBody527_21

def AllocBody527_23 : StackLang.HolProg 64 :=
.seq AllocBody527_11 AllocBody527_22

def AllocBody527_24 : StackLang.HolProg 64 :=
.seq AllocBody527_10 AllocBody527_23

def AllocBody527_25 : StackLang.HolProg 64 :=
.seq AllocBody527_9 AllocBody527_24

def AllocBody527_26 : StackLang.HolProg 64 :=
.seq AllocBody527_8 AllocBody527_25

def AllocBody527_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody527_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody527_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody527_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody527_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody527_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody527_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody527_34 : StackLang.HolProg 64 :=
.seq AllocBody527_32 AllocBody527_33

def AllocBody527_35 : StackLang.HolProg 64 :=
.seq AllocBody527_31 AllocBody527_34

def AllocBody527_36 : StackLang.HolProg 64 :=
.seq AllocBody527_30 AllocBody527_35

def AllocBody527_37 : StackLang.HolProg 64 :=
.seq AllocBody527_29 AllocBody527_36

def AllocBody527_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody527_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody527_40 : StackLang.HolProg 64 :=
.seq AllocBody527_38 AllocBody527_39

def AllocBody527_41 : StackLang.HolProg 64 :=
.call (some (AllocBody527_37, 0, 527, 2)) (Sum.inl 470) (some (AllocBody527_40, 527, 3))

def AllocBody527_42 : StackLang.HolProg 64 :=
.seq AllocBody527_28 AllocBody527_41

def AllocBody527_43 : StackLang.HolProg 64 :=
.seq AllocBody527_27 AllocBody527_42

def AllocBody527_44 : StackLang.HolProg 64 :=
.seq AllocBody527_26 AllocBody527_43

def AllocBody527_45 : StackLang.HolProg 64 :=
.seq AllocBody527_7 AllocBody527_44

def AllocBody527_46 : StackLang.HolProg 64 :=
.seq AllocBody527_4 AllocBody527_45

def AllocBody527_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody527_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody527_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody527_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody527_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody527_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody527_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody527_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody527_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1728#64)

def AllocBody527_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody527_57 : StackLang.HolProg 64 :=
.seq AllocBody527_55 AllocBody527_56

def AllocBody527_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody527_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody527_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody527_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 527 5

def AllocBody527_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody527_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody527_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody527_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody527_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody527_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody527_68 : StackLang.HolProg 64 :=
.seq AllocBody527_66 AllocBody527_67

def AllocBody527_69 : StackLang.HolProg 64 :=
.seq AllocBody527_65 AllocBody527_68

def AllocBody527_70 : StackLang.HolProg 64 :=
.seq AllocBody527_64 AllocBody527_69

def AllocBody527_71 : StackLang.HolProg 64 :=
.seq AllocBody527_63 AllocBody527_70

def AllocBody527_72 : StackLang.HolProg 64 :=
.seq AllocBody527_62 AllocBody527_71

def AllocBody527_73 : StackLang.HolProg 64 :=
.seq AllocBody527_61 AllocBody527_72

def AllocBody527_74 : StackLang.HolProg 64 :=
.seq AllocBody527_60 AllocBody527_73

def AllocBody527_75 : StackLang.HolProg 64 :=
.seq AllocBody527_59 AllocBody527_74

def AllocBody527_76 : StackLang.HolProg 64 :=
.seq AllocBody527_58 AllocBody527_75

def AllocBody527_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody527_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody527_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody527_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody527_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody527_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody527_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody527_84 : StackLang.HolProg 64 :=
.seq AllocBody527_82 AllocBody527_83

def AllocBody527_85 : StackLang.HolProg 64 :=
.seq AllocBody527_81 AllocBody527_84

def AllocBody527_86 : StackLang.HolProg 64 :=
.seq AllocBody527_80 AllocBody527_85

def AllocBody527_87 : StackLang.HolProg 64 :=
.seq AllocBody527_79 AllocBody527_86

def AllocBody527_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody527_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody527_90 : StackLang.HolProg 64 :=
.seq AllocBody527_88 AllocBody527_89

def AllocBody527_91 : StackLang.HolProg 64 :=
.call (some (AllocBody527_87, 0, 527, 4)) (Sum.inl 477) (some (AllocBody527_90, 527, 5))

def AllocBody527_92 : StackLang.HolProg 64 :=
.seq AllocBody527_78 AllocBody527_91

def AllocBody527_93 : StackLang.HolProg 64 :=
.seq AllocBody527_77 AllocBody527_92

def AllocBody527_94 : StackLang.HolProg 64 :=
.seq AllocBody527_76 AllocBody527_93

def AllocBody527_95 : StackLang.HolProg 64 :=
.seq AllocBody527_57 AllocBody527_94

def AllocBody527_96 : StackLang.HolProg 64 :=
.seq AllocBody527_54 AllocBody527_95

def AllocBody527_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody527_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody527_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody527_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody527_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1729#64)

def AllocBody527_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody527_103 : StackLang.HolProg 64 :=
.seq AllocBody527_101 AllocBody527_102

def AllocBody527_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody527_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody527_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody527_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 527 7

def AllocBody527_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody527_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody527_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody527_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody527_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody527_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody527_114 : StackLang.HolProg 64 :=
.seq AllocBody527_112 AllocBody527_113

def AllocBody527_115 : StackLang.HolProg 64 :=
.seq AllocBody527_111 AllocBody527_114

def AllocBody527_116 : StackLang.HolProg 64 :=
.seq AllocBody527_110 AllocBody527_115

def AllocBody527_117 : StackLang.HolProg 64 :=
.seq AllocBody527_109 AllocBody527_116

def AllocBody527_118 : StackLang.HolProg 64 :=
.seq AllocBody527_108 AllocBody527_117

def AllocBody527_119 : StackLang.HolProg 64 :=
.seq AllocBody527_107 AllocBody527_118

def AllocBody527_120 : StackLang.HolProg 64 :=
.seq AllocBody527_106 AllocBody527_119

def AllocBody527_121 : StackLang.HolProg 64 :=
.seq AllocBody527_105 AllocBody527_120

def AllocBody527_122 : StackLang.HolProg 64 :=
.seq AllocBody527_104 AllocBody527_121

def AllocBody527_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody527_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody527_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody527_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody527_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody527_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody527_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody527_130 : StackLang.HolProg 64 :=
.seq AllocBody527_128 AllocBody527_129

def AllocBody527_131 : StackLang.HolProg 64 :=
.seq AllocBody527_127 AllocBody527_130

def AllocBody527_132 : StackLang.HolProg 64 :=
.seq AllocBody527_126 AllocBody527_131

def AllocBody527_133 : StackLang.HolProg 64 :=
.seq AllocBody527_125 AllocBody527_132

def AllocBody527_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody527_135 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody527_136 : StackLang.HolProg 64 :=
.seq AllocBody527_134 AllocBody527_135

def AllocBody527_137 : StackLang.HolProg 64 :=
.call (some (AllocBody527_133, 0, 527, 6)) (Sum.inl 490) (some (AllocBody527_136, 527, 7))

def AllocBody527_138 : StackLang.HolProg 64 :=
.seq AllocBody527_124 AllocBody527_137

def AllocBody527_139 : StackLang.HolProg 64 :=
.seq AllocBody527_123 AllocBody527_138

def AllocBody527_140 : StackLang.HolProg 64 :=
.seq AllocBody527_122 AllocBody527_139

def AllocBody527_141 : StackLang.HolProg 64 :=
.seq AllocBody527_103 AllocBody527_140

def AllocBody527_142 : StackLang.HolProg 64 :=
.seq AllocBody527_100 AllocBody527_141

def AllocBody527_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody527_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody527_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody527_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody527_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody527_148 : StackLang.HolProg 64 :=
.seq AllocBody527_146 AllocBody527_147

def AllocBody527_149 : StackLang.HolProg 64 :=
.seq AllocBody527_145 AllocBody527_148

def AllocBody527_150 : StackLang.HolProg 64 :=
.seq AllocBody527_144 AllocBody527_149

def AllocBody527_151 : StackLang.HolProg 64 :=
.seq AllocBody527_143 AllocBody527_150

def AllocBody527_152 : StackLang.HolProg 64 :=
.seq AllocBody527_142 AllocBody527_151

def AllocBody527_153 : StackLang.HolProg 64 :=
.seq AllocBody527_99 AllocBody527_152

def AllocBody527_154 : StackLang.HolProg 64 :=
.seq AllocBody527_98 AllocBody527_153

def AllocBody527_155 : StackLang.HolProg 64 :=
.seq AllocBody527_97 AllocBody527_154

def AllocBody527_156 : StackLang.HolProg 64 :=
.seq AllocBody527_96 AllocBody527_155

def AllocBody527_157 : StackLang.HolProg 64 :=
.seq AllocBody527_53 AllocBody527_156

def AllocBody527_158 : StackLang.HolProg 64 :=
.seq AllocBody527_52 AllocBody527_157

def AllocBody527_159 : StackLang.HolProg 64 :=
.seq AllocBody527_51 AllocBody527_158

def AllocBody527_160 : StackLang.HolProg 64 :=
.seq AllocBody527_50 AllocBody527_159

def AllocBody527_161 : StackLang.HolProg 64 :=
.seq AllocBody527_49 AllocBody527_160

def AllocBody527_162 : StackLang.HolProg 64 :=
.seq AllocBody527_48 AllocBody527_161

def AllocBody527_163 : StackLang.HolProg 64 :=
.seq AllocBody527_47 AllocBody527_162

def AllocBody527_164 : StackLang.HolProg 64 :=
.seq AllocBody527_46 AllocBody527_163

def AllocBody527_165 : StackLang.HolProg 64 :=
.seq AllocBody527_3 AllocBody527_164

def AllocBody527_166 : StackLang.HolProg 64 :=
.seq AllocBody527_2 AllocBody527_165

def AllocBody527_167 : StackLang.HolProg 64 :=
.seq AllocBody527_1 AllocBody527_166

def AllocBody527_168 : StackLang.HolProg 64 :=
.seq AllocBody527_0 AllocBody527_167

def Alloc527 : Nat × StackLang.HolProg 64 := (527, AllocBody527_168)
theorem Alloc527_eq : StackAlloc.progComp (527, raw527) = Alloc527 := by
  kernel_rfl
#print axioms Alloc527_eq
end InitECandidate.Proofs.BackendStages
