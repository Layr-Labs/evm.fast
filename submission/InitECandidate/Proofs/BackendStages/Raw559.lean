import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function559
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody559_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody559_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody559_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def rawBody559_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody559_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody559_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1908#64)

def rawBody559_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody559_7 : StackLang.HolProg 64 :=
.seq rawBody559_5 rawBody559_6

def rawBody559_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody559_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody559_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody559_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 559 3

def rawBody559_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody559_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody559_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody559_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody559_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody559_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody559_18 : StackLang.HolProg 64 :=
.seq rawBody559_16 rawBody559_17

def rawBody559_19 : StackLang.HolProg 64 :=
.seq rawBody559_15 rawBody559_18

def rawBody559_20 : StackLang.HolProg 64 :=
.seq rawBody559_14 rawBody559_19

def rawBody559_21 : StackLang.HolProg 64 :=
.seq rawBody559_13 rawBody559_20

def rawBody559_22 : StackLang.HolProg 64 :=
.seq rawBody559_12 rawBody559_21

def rawBody559_23 : StackLang.HolProg 64 :=
.seq rawBody559_11 rawBody559_22

def rawBody559_24 : StackLang.HolProg 64 :=
.seq rawBody559_10 rawBody559_23

def rawBody559_25 : StackLang.HolProg 64 :=
.seq rawBody559_9 rawBody559_24

def rawBody559_26 : StackLang.HolProg 64 :=
.seq rawBody559_8 rawBody559_25

def rawBody559_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody559_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody559_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody559_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody559_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody559_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody559_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody559_34 : StackLang.HolProg 64 :=
.seq rawBody559_32 rawBody559_33

def rawBody559_35 : StackLang.HolProg 64 :=
.seq rawBody559_31 rawBody559_34

def rawBody559_36 : StackLang.HolProg 64 :=
.seq rawBody559_30 rawBody559_35

def rawBody559_37 : StackLang.HolProg 64 :=
.seq rawBody559_29 rawBody559_36

def rawBody559_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody559_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody559_40 : StackLang.HolProg 64 :=
.seq rawBody559_38 rawBody559_39

def rawBody559_41 : StackLang.HolProg 64 :=
.call (some (rawBody559_37, 0, 559, 2)) (Sum.inl 470) (some (rawBody559_40, 559, 3))

def rawBody559_42 : StackLang.HolProg 64 :=
.seq rawBody559_28 rawBody559_41

def rawBody559_43 : StackLang.HolProg 64 :=
.seq rawBody559_27 rawBody559_42

def rawBody559_44 : StackLang.HolProg 64 :=
.seq rawBody559_26 rawBody559_43

def rawBody559_45 : StackLang.HolProg 64 :=
.seq rawBody559_7 rawBody559_44

def rawBody559_46 : StackLang.HolProg 64 :=
.seq rawBody559_4 rawBody559_45

def rawBody559_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody559_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody559_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody559_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody559_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody559_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 112#64))

def rawBody559_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 96#64))

def rawBody559_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody559_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody559_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1909#64)

def rawBody559_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody559_58 : StackLang.HolProg 64 :=
.seq rawBody559_56 rawBody559_57

def rawBody559_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody559_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody559_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody559_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 559 5

def rawBody559_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody559_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody559_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody559_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody559_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody559_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody559_69 : StackLang.HolProg 64 :=
.seq rawBody559_67 rawBody559_68

def rawBody559_70 : StackLang.HolProg 64 :=
.seq rawBody559_66 rawBody559_69

def rawBody559_71 : StackLang.HolProg 64 :=
.seq rawBody559_65 rawBody559_70

def rawBody559_72 : StackLang.HolProg 64 :=
.seq rawBody559_64 rawBody559_71

def rawBody559_73 : StackLang.HolProg 64 :=
.seq rawBody559_63 rawBody559_72

def rawBody559_74 : StackLang.HolProg 64 :=
.seq rawBody559_62 rawBody559_73

def rawBody559_75 : StackLang.HolProg 64 :=
.seq rawBody559_61 rawBody559_74

def rawBody559_76 : StackLang.HolProg 64 :=
.seq rawBody559_60 rawBody559_75

def rawBody559_77 : StackLang.HolProg 64 :=
.seq rawBody559_59 rawBody559_76

def rawBody559_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody559_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody559_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody559_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody559_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody559_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody559_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody559_85 : StackLang.HolProg 64 :=
.seq rawBody559_83 rawBody559_84

def rawBody559_86 : StackLang.HolProg 64 :=
.seq rawBody559_82 rawBody559_85

def rawBody559_87 : StackLang.HolProg 64 :=
.seq rawBody559_81 rawBody559_86

def rawBody559_88 : StackLang.HolProg 64 :=
.seq rawBody559_80 rawBody559_87

def rawBody559_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody559_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody559_91 : StackLang.HolProg 64 :=
.seq rawBody559_89 rawBody559_90

def rawBody559_92 : StackLang.HolProg 64 :=
.call (some (rawBody559_88, 0, 559, 4)) (Sum.inl 477) (some (rawBody559_91, 559, 5))

def rawBody559_93 : StackLang.HolProg 64 :=
.seq rawBody559_79 rawBody559_92

def rawBody559_94 : StackLang.HolProg 64 :=
.seq rawBody559_78 rawBody559_93

def rawBody559_95 : StackLang.HolProg 64 :=
.seq rawBody559_77 rawBody559_94

def rawBody559_96 : StackLang.HolProg 64 :=
.seq rawBody559_58 rawBody559_95

def rawBody559_97 : StackLang.HolProg 64 :=
.seq rawBody559_55 rawBody559_96

def rawBody559_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody559_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody559_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody559_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody559_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1910#64)

def rawBody559_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody559_104 : StackLang.HolProg 64 :=
.seq rawBody559_102 rawBody559_103

def rawBody559_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody559_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody559_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody559_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 559 7

def rawBody559_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody559_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody559_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody559_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody559_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody559_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody559_115 : StackLang.HolProg 64 :=
.seq rawBody559_113 rawBody559_114

def rawBody559_116 : StackLang.HolProg 64 :=
.seq rawBody559_112 rawBody559_115

def rawBody559_117 : StackLang.HolProg 64 :=
.seq rawBody559_111 rawBody559_116

def rawBody559_118 : StackLang.HolProg 64 :=
.seq rawBody559_110 rawBody559_117

def rawBody559_119 : StackLang.HolProg 64 :=
.seq rawBody559_109 rawBody559_118

def rawBody559_120 : StackLang.HolProg 64 :=
.seq rawBody559_108 rawBody559_119

def rawBody559_121 : StackLang.HolProg 64 :=
.seq rawBody559_107 rawBody559_120

def rawBody559_122 : StackLang.HolProg 64 :=
.seq rawBody559_106 rawBody559_121

def rawBody559_123 : StackLang.HolProg 64 :=
.seq rawBody559_105 rawBody559_122

def rawBody559_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody559_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody559_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody559_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody559_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody559_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody559_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody559_131 : StackLang.HolProg 64 :=
.seq rawBody559_129 rawBody559_130

def rawBody559_132 : StackLang.HolProg 64 :=
.seq rawBody559_128 rawBody559_131

def rawBody559_133 : StackLang.HolProg 64 :=
.seq rawBody559_127 rawBody559_132

def rawBody559_134 : StackLang.HolProg 64 :=
.seq rawBody559_126 rawBody559_133

def rawBody559_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody559_136 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody559_137 : StackLang.HolProg 64 :=
.seq rawBody559_135 rawBody559_136

def rawBody559_138 : StackLang.HolProg 64 :=
.call (some (rawBody559_134, 0, 559, 6)) (Sum.inl 490) (some (rawBody559_137, 559, 7))

def rawBody559_139 : StackLang.HolProg 64 :=
.seq rawBody559_125 rawBody559_138

def rawBody559_140 : StackLang.HolProg 64 :=
.seq rawBody559_124 rawBody559_139

def rawBody559_141 : StackLang.HolProg 64 :=
.seq rawBody559_123 rawBody559_140

def rawBody559_142 : StackLang.HolProg 64 :=
.seq rawBody559_104 rawBody559_141

def rawBody559_143 : StackLang.HolProg 64 :=
.seq rawBody559_101 rawBody559_142

def rawBody559_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody559_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody559_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody559_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody559_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody559_149 : StackLang.HolProg 64 :=
.seq rawBody559_147 rawBody559_148

def rawBody559_150 : StackLang.HolProg 64 :=
.seq rawBody559_146 rawBody559_149

def rawBody559_151 : StackLang.HolProg 64 :=
.seq rawBody559_145 rawBody559_150

def rawBody559_152 : StackLang.HolProg 64 :=
.seq rawBody559_144 rawBody559_151

def rawBody559_153 : StackLang.HolProg 64 :=
.seq rawBody559_143 rawBody559_152

def rawBody559_154 : StackLang.HolProg 64 :=
.seq rawBody559_100 rawBody559_153

def rawBody559_155 : StackLang.HolProg 64 :=
.seq rawBody559_99 rawBody559_154

def rawBody559_156 : StackLang.HolProg 64 :=
.seq rawBody559_98 rawBody559_155

def rawBody559_157 : StackLang.HolProg 64 :=
.seq rawBody559_97 rawBody559_156

def rawBody559_158 : StackLang.HolProg 64 :=
.seq rawBody559_54 rawBody559_157

def rawBody559_159 : StackLang.HolProg 64 :=
.seq rawBody559_53 rawBody559_158

def rawBody559_160 : StackLang.HolProg 64 :=
.seq rawBody559_52 rawBody559_159

def rawBody559_161 : StackLang.HolProg 64 :=
.seq rawBody559_51 rawBody559_160

def rawBody559_162 : StackLang.HolProg 64 :=
.seq rawBody559_50 rawBody559_161

def rawBody559_163 : StackLang.HolProg 64 :=
.seq rawBody559_49 rawBody559_162

def rawBody559_164 : StackLang.HolProg 64 :=
.seq rawBody559_48 rawBody559_163

def rawBody559_165 : StackLang.HolProg 64 :=
.seq rawBody559_47 rawBody559_164

def rawBody559_166 : StackLang.HolProg 64 :=
.seq rawBody559_46 rawBody559_165

def rawBody559_167 : StackLang.HolProg 64 :=
.seq rawBody559_3 rawBody559_166

def rawBody559_168 : StackLang.HolProg 64 :=
.seq rawBody559_2 rawBody559_167

def rawBody559_169 : StackLang.HolProg 64 :=
.seq rawBody559_1 rawBody559_168

def rawBody559_170 : StackLang.HolProg 64 :=
.seq rawBody559_0 rawBody559_169

def raw559 : StackLang.HolProg 64 := rawBody559_170
theorem raw559_eq : StackRawCall.compTop RawInfo.rawInfo (function559 (.list [])).1 = raw559 := by
  kernel_rfl
#print axioms raw559_eq
end InitECandidate.Proofs.BackendStages
