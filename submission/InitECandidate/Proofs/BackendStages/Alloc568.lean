import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw568
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody568_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody568_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody568_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody568_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody568_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody568_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1960#64)

def AllocBody568_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody568_7 : StackLang.HolProg 64 :=
.seq AllocBody568_5 AllocBody568_6

def AllocBody568_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody568_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody568_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody568_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 568 3

def AllocBody568_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody568_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody568_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody568_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody568_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody568_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody568_18 : StackLang.HolProg 64 :=
.seq AllocBody568_16 AllocBody568_17

def AllocBody568_19 : StackLang.HolProg 64 :=
.seq AllocBody568_15 AllocBody568_18

def AllocBody568_20 : StackLang.HolProg 64 :=
.seq AllocBody568_14 AllocBody568_19

def AllocBody568_21 : StackLang.HolProg 64 :=
.seq AllocBody568_13 AllocBody568_20

def AllocBody568_22 : StackLang.HolProg 64 :=
.seq AllocBody568_12 AllocBody568_21

def AllocBody568_23 : StackLang.HolProg 64 :=
.seq AllocBody568_11 AllocBody568_22

def AllocBody568_24 : StackLang.HolProg 64 :=
.seq AllocBody568_10 AllocBody568_23

def AllocBody568_25 : StackLang.HolProg 64 :=
.seq AllocBody568_9 AllocBody568_24

def AllocBody568_26 : StackLang.HolProg 64 :=
.seq AllocBody568_8 AllocBody568_25

def AllocBody568_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody568_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody568_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody568_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody568_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody568_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody568_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody568_34 : StackLang.HolProg 64 :=
.seq AllocBody568_32 AllocBody568_33

def AllocBody568_35 : StackLang.HolProg 64 :=
.seq AllocBody568_31 AllocBody568_34

def AllocBody568_36 : StackLang.HolProg 64 :=
.seq AllocBody568_30 AllocBody568_35

def AllocBody568_37 : StackLang.HolProg 64 :=
.seq AllocBody568_29 AllocBody568_36

def AllocBody568_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody568_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody568_40 : StackLang.HolProg 64 :=
.seq AllocBody568_38 AllocBody568_39

def AllocBody568_41 : StackLang.HolProg 64 :=
.call (some (AllocBody568_37, 0, 568, 2)) (Sum.inl 470) (some (AllocBody568_40, 568, 3))

def AllocBody568_42 : StackLang.HolProg 64 :=
.seq AllocBody568_28 AllocBody568_41

def AllocBody568_43 : StackLang.HolProg 64 :=
.seq AllocBody568_27 AllocBody568_42

def AllocBody568_44 : StackLang.HolProg 64 :=
.seq AllocBody568_26 AllocBody568_43

def AllocBody568_45 : StackLang.HolProg 64 :=
.seq AllocBody568_7 AllocBody568_44

def AllocBody568_46 : StackLang.HolProg 64 :=
.seq AllocBody568_4 AllocBody568_45

def AllocBody568_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody568_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody568_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody568_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody568_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody568_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 152#64))

def AllocBody568_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody568_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody568_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1961#64)

def AllocBody568_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody568_57 : StackLang.HolProg 64 :=
.seq AllocBody568_55 AllocBody568_56

def AllocBody568_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody568_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody568_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody568_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 568 5

def AllocBody568_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody568_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody568_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody568_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody568_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody568_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody568_68 : StackLang.HolProg 64 :=
.seq AllocBody568_66 AllocBody568_67

def AllocBody568_69 : StackLang.HolProg 64 :=
.seq AllocBody568_65 AllocBody568_68

def AllocBody568_70 : StackLang.HolProg 64 :=
.seq AllocBody568_64 AllocBody568_69

def AllocBody568_71 : StackLang.HolProg 64 :=
.seq AllocBody568_63 AllocBody568_70

def AllocBody568_72 : StackLang.HolProg 64 :=
.seq AllocBody568_62 AllocBody568_71

def AllocBody568_73 : StackLang.HolProg 64 :=
.seq AllocBody568_61 AllocBody568_72

def AllocBody568_74 : StackLang.HolProg 64 :=
.seq AllocBody568_60 AllocBody568_73

def AllocBody568_75 : StackLang.HolProg 64 :=
.seq AllocBody568_59 AllocBody568_74

def AllocBody568_76 : StackLang.HolProg 64 :=
.seq AllocBody568_58 AllocBody568_75

def AllocBody568_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody568_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody568_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody568_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody568_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody568_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody568_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody568_84 : StackLang.HolProg 64 :=
.seq AllocBody568_82 AllocBody568_83

def AllocBody568_85 : StackLang.HolProg 64 :=
.seq AllocBody568_81 AllocBody568_84

def AllocBody568_86 : StackLang.HolProg 64 :=
.seq AllocBody568_80 AllocBody568_85

def AllocBody568_87 : StackLang.HolProg 64 :=
.seq AllocBody568_79 AllocBody568_86

def AllocBody568_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody568_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody568_90 : StackLang.HolProg 64 :=
.seq AllocBody568_88 AllocBody568_89

def AllocBody568_91 : StackLang.HolProg 64 :=
.call (some (AllocBody568_87, 0, 568, 4)) (Sum.inl 477) (some (AllocBody568_90, 568, 5))

def AllocBody568_92 : StackLang.HolProg 64 :=
.seq AllocBody568_78 AllocBody568_91

def AllocBody568_93 : StackLang.HolProg 64 :=
.seq AllocBody568_77 AllocBody568_92

def AllocBody568_94 : StackLang.HolProg 64 :=
.seq AllocBody568_76 AllocBody568_93

def AllocBody568_95 : StackLang.HolProg 64 :=
.seq AllocBody568_57 AllocBody568_94

def AllocBody568_96 : StackLang.HolProg 64 :=
.seq AllocBody568_54 AllocBody568_95

def AllocBody568_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody568_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody568_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody568_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody568_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1962#64)

def AllocBody568_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody568_103 : StackLang.HolProg 64 :=
.seq AllocBody568_101 AllocBody568_102

def AllocBody568_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody568_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody568_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody568_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 568 7

def AllocBody568_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody568_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody568_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody568_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody568_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody568_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody568_114 : StackLang.HolProg 64 :=
.seq AllocBody568_112 AllocBody568_113

def AllocBody568_115 : StackLang.HolProg 64 :=
.seq AllocBody568_111 AllocBody568_114

def AllocBody568_116 : StackLang.HolProg 64 :=
.seq AllocBody568_110 AllocBody568_115

def AllocBody568_117 : StackLang.HolProg 64 :=
.seq AllocBody568_109 AllocBody568_116

def AllocBody568_118 : StackLang.HolProg 64 :=
.seq AllocBody568_108 AllocBody568_117

def AllocBody568_119 : StackLang.HolProg 64 :=
.seq AllocBody568_107 AllocBody568_118

def AllocBody568_120 : StackLang.HolProg 64 :=
.seq AllocBody568_106 AllocBody568_119

def AllocBody568_121 : StackLang.HolProg 64 :=
.seq AllocBody568_105 AllocBody568_120

def AllocBody568_122 : StackLang.HolProg 64 :=
.seq AllocBody568_104 AllocBody568_121

def AllocBody568_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody568_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody568_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody568_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody568_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody568_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody568_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody568_130 : StackLang.HolProg 64 :=
.seq AllocBody568_128 AllocBody568_129

def AllocBody568_131 : StackLang.HolProg 64 :=
.seq AllocBody568_127 AllocBody568_130

def AllocBody568_132 : StackLang.HolProg 64 :=
.seq AllocBody568_126 AllocBody568_131

def AllocBody568_133 : StackLang.HolProg 64 :=
.seq AllocBody568_125 AllocBody568_132

def AllocBody568_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody568_135 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody568_136 : StackLang.HolProg 64 :=
.seq AllocBody568_134 AllocBody568_135

def AllocBody568_137 : StackLang.HolProg 64 :=
.call (some (AllocBody568_133, 0, 568, 6)) (Sum.inl 490) (some (AllocBody568_136, 568, 7))

def AllocBody568_138 : StackLang.HolProg 64 :=
.seq AllocBody568_124 AllocBody568_137

def AllocBody568_139 : StackLang.HolProg 64 :=
.seq AllocBody568_123 AllocBody568_138

def AllocBody568_140 : StackLang.HolProg 64 :=
.seq AllocBody568_122 AllocBody568_139

def AllocBody568_141 : StackLang.HolProg 64 :=
.seq AllocBody568_103 AllocBody568_140

def AllocBody568_142 : StackLang.HolProg 64 :=
.seq AllocBody568_100 AllocBody568_141

def AllocBody568_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody568_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody568_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody568_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody568_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody568_148 : StackLang.HolProg 64 :=
.seq AllocBody568_146 AllocBody568_147

def AllocBody568_149 : StackLang.HolProg 64 :=
.seq AllocBody568_145 AllocBody568_148

def AllocBody568_150 : StackLang.HolProg 64 :=
.seq AllocBody568_144 AllocBody568_149

def AllocBody568_151 : StackLang.HolProg 64 :=
.seq AllocBody568_143 AllocBody568_150

def AllocBody568_152 : StackLang.HolProg 64 :=
.seq AllocBody568_142 AllocBody568_151

def AllocBody568_153 : StackLang.HolProg 64 :=
.seq AllocBody568_99 AllocBody568_152

def AllocBody568_154 : StackLang.HolProg 64 :=
.seq AllocBody568_98 AllocBody568_153

def AllocBody568_155 : StackLang.HolProg 64 :=
.seq AllocBody568_97 AllocBody568_154

def AllocBody568_156 : StackLang.HolProg 64 :=
.seq AllocBody568_96 AllocBody568_155

def AllocBody568_157 : StackLang.HolProg 64 :=
.seq AllocBody568_53 AllocBody568_156

def AllocBody568_158 : StackLang.HolProg 64 :=
.seq AllocBody568_52 AllocBody568_157

def AllocBody568_159 : StackLang.HolProg 64 :=
.seq AllocBody568_51 AllocBody568_158

def AllocBody568_160 : StackLang.HolProg 64 :=
.seq AllocBody568_50 AllocBody568_159

def AllocBody568_161 : StackLang.HolProg 64 :=
.seq AllocBody568_49 AllocBody568_160

def AllocBody568_162 : StackLang.HolProg 64 :=
.seq AllocBody568_48 AllocBody568_161

def AllocBody568_163 : StackLang.HolProg 64 :=
.seq AllocBody568_47 AllocBody568_162

def AllocBody568_164 : StackLang.HolProg 64 :=
.seq AllocBody568_46 AllocBody568_163

def AllocBody568_165 : StackLang.HolProg 64 :=
.seq AllocBody568_3 AllocBody568_164

def AllocBody568_166 : StackLang.HolProg 64 :=
.seq AllocBody568_2 AllocBody568_165

def AllocBody568_167 : StackLang.HolProg 64 :=
.seq AllocBody568_1 AllocBody568_166

def AllocBody568_168 : StackLang.HolProg 64 :=
.seq AllocBody568_0 AllocBody568_167

def Alloc568 : Nat × StackLang.HolProg 64 := (568, AllocBody568_168)
theorem Alloc568_eq : StackAlloc.progComp (568, raw568) = Alloc568 := by
  kernel_rfl
#print axioms Alloc568_eq
end InitECandidate.Proofs.BackendStages
