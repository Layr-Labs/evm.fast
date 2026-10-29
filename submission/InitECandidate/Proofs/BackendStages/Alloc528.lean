import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw528
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody528_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody528_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody528_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody528_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody528_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody528_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1730#64)

def AllocBody528_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody528_7 : StackLang.HolProg 64 :=
.seq AllocBody528_5 AllocBody528_6

def AllocBody528_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody528_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody528_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody528_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 528 3

def AllocBody528_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody528_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody528_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody528_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody528_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody528_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody528_18 : StackLang.HolProg 64 :=
.seq AllocBody528_16 AllocBody528_17

def AllocBody528_19 : StackLang.HolProg 64 :=
.seq AllocBody528_15 AllocBody528_18

def AllocBody528_20 : StackLang.HolProg 64 :=
.seq AllocBody528_14 AllocBody528_19

def AllocBody528_21 : StackLang.HolProg 64 :=
.seq AllocBody528_13 AllocBody528_20

def AllocBody528_22 : StackLang.HolProg 64 :=
.seq AllocBody528_12 AllocBody528_21

def AllocBody528_23 : StackLang.HolProg 64 :=
.seq AllocBody528_11 AllocBody528_22

def AllocBody528_24 : StackLang.HolProg 64 :=
.seq AllocBody528_10 AllocBody528_23

def AllocBody528_25 : StackLang.HolProg 64 :=
.seq AllocBody528_9 AllocBody528_24

def AllocBody528_26 : StackLang.HolProg 64 :=
.seq AllocBody528_8 AllocBody528_25

def AllocBody528_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody528_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody528_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody528_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody528_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody528_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody528_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody528_34 : StackLang.HolProg 64 :=
.seq AllocBody528_32 AllocBody528_33

def AllocBody528_35 : StackLang.HolProg 64 :=
.seq AllocBody528_31 AllocBody528_34

def AllocBody528_36 : StackLang.HolProg 64 :=
.seq AllocBody528_30 AllocBody528_35

def AllocBody528_37 : StackLang.HolProg 64 :=
.seq AllocBody528_29 AllocBody528_36

def AllocBody528_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody528_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody528_40 : StackLang.HolProg 64 :=
.seq AllocBody528_38 AllocBody528_39

def AllocBody528_41 : StackLang.HolProg 64 :=
.call (some (AllocBody528_37, 0, 528, 2)) (Sum.inl 470) (some (AllocBody528_40, 528, 3))

def AllocBody528_42 : StackLang.HolProg 64 :=
.seq AllocBody528_28 AllocBody528_41

def AllocBody528_43 : StackLang.HolProg 64 :=
.seq AllocBody528_27 AllocBody528_42

def AllocBody528_44 : StackLang.HolProg 64 :=
.seq AllocBody528_26 AllocBody528_43

def AllocBody528_45 : StackLang.HolProg 64 :=
.seq AllocBody528_7 AllocBody528_44

def AllocBody528_46 : StackLang.HolProg 64 :=
.seq AllocBody528_4 AllocBody528_45

def AllocBody528_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody528_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody528_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody528_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody528_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody528_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 64#64))

def AllocBody528_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody528_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody528_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1731#64)

def AllocBody528_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody528_57 : StackLang.HolProg 64 :=
.seq AllocBody528_55 AllocBody528_56

def AllocBody528_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody528_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody528_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody528_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 528 5

def AllocBody528_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody528_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody528_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody528_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody528_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody528_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody528_68 : StackLang.HolProg 64 :=
.seq AllocBody528_66 AllocBody528_67

def AllocBody528_69 : StackLang.HolProg 64 :=
.seq AllocBody528_65 AllocBody528_68

def AllocBody528_70 : StackLang.HolProg 64 :=
.seq AllocBody528_64 AllocBody528_69

def AllocBody528_71 : StackLang.HolProg 64 :=
.seq AllocBody528_63 AllocBody528_70

def AllocBody528_72 : StackLang.HolProg 64 :=
.seq AllocBody528_62 AllocBody528_71

def AllocBody528_73 : StackLang.HolProg 64 :=
.seq AllocBody528_61 AllocBody528_72

def AllocBody528_74 : StackLang.HolProg 64 :=
.seq AllocBody528_60 AllocBody528_73

def AllocBody528_75 : StackLang.HolProg 64 :=
.seq AllocBody528_59 AllocBody528_74

def AllocBody528_76 : StackLang.HolProg 64 :=
.seq AllocBody528_58 AllocBody528_75

def AllocBody528_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody528_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody528_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody528_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody528_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody528_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody528_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody528_84 : StackLang.HolProg 64 :=
.seq AllocBody528_82 AllocBody528_83

def AllocBody528_85 : StackLang.HolProg 64 :=
.seq AllocBody528_81 AllocBody528_84

def AllocBody528_86 : StackLang.HolProg 64 :=
.seq AllocBody528_80 AllocBody528_85

def AllocBody528_87 : StackLang.HolProg 64 :=
.seq AllocBody528_79 AllocBody528_86

def AllocBody528_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody528_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody528_90 : StackLang.HolProg 64 :=
.seq AllocBody528_88 AllocBody528_89

def AllocBody528_91 : StackLang.HolProg 64 :=
.call (some (AllocBody528_87, 0, 528, 4)) (Sum.inl 477) (some (AllocBody528_90, 528, 5))

def AllocBody528_92 : StackLang.HolProg 64 :=
.seq AllocBody528_78 AllocBody528_91

def AllocBody528_93 : StackLang.HolProg 64 :=
.seq AllocBody528_77 AllocBody528_92

def AllocBody528_94 : StackLang.HolProg 64 :=
.seq AllocBody528_76 AllocBody528_93

def AllocBody528_95 : StackLang.HolProg 64 :=
.seq AllocBody528_57 AllocBody528_94

def AllocBody528_96 : StackLang.HolProg 64 :=
.seq AllocBody528_54 AllocBody528_95

def AllocBody528_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody528_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody528_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody528_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody528_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1732#64)

def AllocBody528_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody528_103 : StackLang.HolProg 64 :=
.seq AllocBody528_101 AllocBody528_102

def AllocBody528_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody528_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody528_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody528_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 528 7

def AllocBody528_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody528_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody528_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody528_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody528_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody528_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody528_114 : StackLang.HolProg 64 :=
.seq AllocBody528_112 AllocBody528_113

def AllocBody528_115 : StackLang.HolProg 64 :=
.seq AllocBody528_111 AllocBody528_114

def AllocBody528_116 : StackLang.HolProg 64 :=
.seq AllocBody528_110 AllocBody528_115

def AllocBody528_117 : StackLang.HolProg 64 :=
.seq AllocBody528_109 AllocBody528_116

def AllocBody528_118 : StackLang.HolProg 64 :=
.seq AllocBody528_108 AllocBody528_117

def AllocBody528_119 : StackLang.HolProg 64 :=
.seq AllocBody528_107 AllocBody528_118

def AllocBody528_120 : StackLang.HolProg 64 :=
.seq AllocBody528_106 AllocBody528_119

def AllocBody528_121 : StackLang.HolProg 64 :=
.seq AllocBody528_105 AllocBody528_120

def AllocBody528_122 : StackLang.HolProg 64 :=
.seq AllocBody528_104 AllocBody528_121

def AllocBody528_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody528_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody528_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody528_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody528_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody528_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody528_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody528_130 : StackLang.HolProg 64 :=
.seq AllocBody528_128 AllocBody528_129

def AllocBody528_131 : StackLang.HolProg 64 :=
.seq AllocBody528_127 AllocBody528_130

def AllocBody528_132 : StackLang.HolProg 64 :=
.seq AllocBody528_126 AllocBody528_131

def AllocBody528_133 : StackLang.HolProg 64 :=
.seq AllocBody528_125 AllocBody528_132

def AllocBody528_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody528_135 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody528_136 : StackLang.HolProg 64 :=
.seq AllocBody528_134 AllocBody528_135

def AllocBody528_137 : StackLang.HolProg 64 :=
.call (some (AllocBody528_133, 0, 528, 6)) (Sum.inl 490) (some (AllocBody528_136, 528, 7))

def AllocBody528_138 : StackLang.HolProg 64 :=
.seq AllocBody528_124 AllocBody528_137

def AllocBody528_139 : StackLang.HolProg 64 :=
.seq AllocBody528_123 AllocBody528_138

def AllocBody528_140 : StackLang.HolProg 64 :=
.seq AllocBody528_122 AllocBody528_139

def AllocBody528_141 : StackLang.HolProg 64 :=
.seq AllocBody528_103 AllocBody528_140

def AllocBody528_142 : StackLang.HolProg 64 :=
.seq AllocBody528_100 AllocBody528_141

def AllocBody528_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody528_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody528_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody528_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody528_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody528_148 : StackLang.HolProg 64 :=
.seq AllocBody528_146 AllocBody528_147

def AllocBody528_149 : StackLang.HolProg 64 :=
.seq AllocBody528_145 AllocBody528_148

def AllocBody528_150 : StackLang.HolProg 64 :=
.seq AllocBody528_144 AllocBody528_149

def AllocBody528_151 : StackLang.HolProg 64 :=
.seq AllocBody528_143 AllocBody528_150

def AllocBody528_152 : StackLang.HolProg 64 :=
.seq AllocBody528_142 AllocBody528_151

def AllocBody528_153 : StackLang.HolProg 64 :=
.seq AllocBody528_99 AllocBody528_152

def AllocBody528_154 : StackLang.HolProg 64 :=
.seq AllocBody528_98 AllocBody528_153

def AllocBody528_155 : StackLang.HolProg 64 :=
.seq AllocBody528_97 AllocBody528_154

def AllocBody528_156 : StackLang.HolProg 64 :=
.seq AllocBody528_96 AllocBody528_155

def AllocBody528_157 : StackLang.HolProg 64 :=
.seq AllocBody528_53 AllocBody528_156

def AllocBody528_158 : StackLang.HolProg 64 :=
.seq AllocBody528_52 AllocBody528_157

def AllocBody528_159 : StackLang.HolProg 64 :=
.seq AllocBody528_51 AllocBody528_158

def AllocBody528_160 : StackLang.HolProg 64 :=
.seq AllocBody528_50 AllocBody528_159

def AllocBody528_161 : StackLang.HolProg 64 :=
.seq AllocBody528_49 AllocBody528_160

def AllocBody528_162 : StackLang.HolProg 64 :=
.seq AllocBody528_48 AllocBody528_161

def AllocBody528_163 : StackLang.HolProg 64 :=
.seq AllocBody528_47 AllocBody528_162

def AllocBody528_164 : StackLang.HolProg 64 :=
.seq AllocBody528_46 AllocBody528_163

def AllocBody528_165 : StackLang.HolProg 64 :=
.seq AllocBody528_3 AllocBody528_164

def AllocBody528_166 : StackLang.HolProg 64 :=
.seq AllocBody528_2 AllocBody528_165

def AllocBody528_167 : StackLang.HolProg 64 :=
.seq AllocBody528_1 AllocBody528_166

def AllocBody528_168 : StackLang.HolProg 64 :=
.seq AllocBody528_0 AllocBody528_167

def Alloc528 : Nat × StackLang.HolProg 64 := (528, AllocBody528_168)
theorem Alloc528_eq : StackAlloc.progComp (528, raw528) = Alloc528 := by
  kernel_rfl
#print axioms Alloc528_eq
end InitECandidate.Proofs.BackendStages
