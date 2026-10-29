import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function158
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody158_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def rawBody158_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody158_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody158_3 : StackLang.HolProg 64 :=
.seq rawBody158_1 rawBody158_2

def rawBody158_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody158_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody158_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody158_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551544#64))

def rawBody158_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 200#64)

def rawBody158_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody158_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def rawBody158_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def rawBody158_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def rawBody158_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody158_15 : StackLang.HolProg 64 :=
.seq rawBody158_13 rawBody158_14

def rawBody158_16 : StackLang.HolProg 64 :=
.seq rawBody158_12 rawBody158_15

def rawBody158_17 : StackLang.HolProg 64 :=
.seq rawBody158_11 rawBody158_16

def rawBody158_18 : StackLang.HolProg 64 :=
.seq rawBody158_10 rawBody158_17

def rawBody158_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 141#64)

def rawBody158_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody158_22 : StackLang.HolProg 64 :=
.seq rawBody158_20 rawBody158_21

def rawBody158_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody158_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody158_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody158_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 158 3

def rawBody158_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody158_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody158_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody158_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody158_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody158_33 : StackLang.HolProg 64 :=
.seq rawBody158_31 rawBody158_32

def rawBody158_34 : StackLang.HolProg 64 :=
.seq rawBody158_30 rawBody158_33

def rawBody158_35 : StackLang.HolProg 64 :=
.seq rawBody158_29 rawBody158_34

def rawBody158_36 : StackLang.HolProg 64 :=
.seq rawBody158_28 rawBody158_35

def rawBody158_37 : StackLang.HolProg 64 :=
.seq rawBody158_27 rawBody158_36

def rawBody158_38 : StackLang.HolProg 64 :=
.seq rawBody158_26 rawBody158_37

def rawBody158_39 : StackLang.HolProg 64 :=
.seq rawBody158_25 rawBody158_38

def rawBody158_40 : StackLang.HolProg 64 :=
.seq rawBody158_24 rawBody158_39

def rawBody158_41 : StackLang.HolProg 64 :=
.seq rawBody158_23 rawBody158_40

def rawBody158_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody158_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody158_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody158_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody158_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody158_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody158_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody158_51 : StackLang.HolProg 64 :=
.seq rawBody158_49 rawBody158_50

def rawBody158_52 : StackLang.HolProg 64 :=
.seq rawBody158_48 rawBody158_51

def rawBody158_53 : StackLang.HolProg 64 :=
.seq rawBody158_47 rawBody158_52

def rawBody158_54 : StackLang.HolProg 64 :=
.seq rawBody158_46 rawBody158_53

def rawBody158_55 : StackLang.HolProg 64 :=
.seq rawBody158_45 rawBody158_54

def rawBody158_56 : StackLang.HolProg 64 :=
.seq rawBody158_44 rawBody158_55

def rawBody158_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody158_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody158_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody158_60 : StackLang.HolProg 64 :=
.seq rawBody158_58 rawBody158_59

def rawBody158_61 : StackLang.HolProg 64 :=
.seq rawBody158_57 rawBody158_60

def rawBody158_62 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody158_63 : StackLang.HolProg 64 :=
.seq rawBody158_61 rawBody158_62

def rawBody158_64 : StackLang.HolProg 64 :=
.call (some (rawBody158_56, 0, 158, 2)) (Sum.inl 78) (some (rawBody158_63, 158, 3))

def rawBody158_65 : StackLang.HolProg 64 :=
.seq rawBody158_43 rawBody158_64

def rawBody158_66 : StackLang.HolProg 64 :=
.seq rawBody158_42 rawBody158_65

def rawBody158_67 : StackLang.HolProg 64 :=
.seq rawBody158_41 rawBody158_66

def rawBody158_68 : StackLang.HolProg 64 :=
.seq rawBody158_22 rawBody158_67

def rawBody158_69 : StackLang.HolProg 64 :=
.seq rawBody158_19 rawBody158_68

def rawBody158_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody158_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def rawBody158_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody158_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def rawBody158_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody158_75 : StackLang.HolProg 64 :=
.seq rawBody158_73 rawBody158_74

def rawBody158_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 136#64)))

def rawBody158_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody158_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def rawBody158_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 3

def rawBody158_81 : StackLang.HolProg 64 :=
.seq rawBody158_79 rawBody158_80

def rawBody158_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody158_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def rawBody158_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody158_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody158_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody158_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody158_88 : StackLang.HolProg 64 :=
.seq rawBody158_86 rawBody158_87

def rawBody158_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody158_90 : StackLang.HolProg 64 :=
.seq rawBody158_88 rawBody158_89

def rawBody158_91 : StackLang.HolProg 64 :=
.seq rawBody158_85 rawBody158_90

def rawBody158_92 : StackLang.HolProg 64 :=
.seq rawBody158_84 rawBody158_91

def rawBody158_93 : StackLang.HolProg 64 :=
.seq rawBody158_83 rawBody158_92

def rawBody158_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 142#64)

def rawBody158_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody158_97 : StackLang.HolProg 64 :=
.seq rawBody158_95 rawBody158_96

def rawBody158_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody158_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody158_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody158_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 158 5

def rawBody158_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody158_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody158_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody158_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody158_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody158_108 : StackLang.HolProg 64 :=
.seq rawBody158_106 rawBody158_107

def rawBody158_109 : StackLang.HolProg 64 :=
.seq rawBody158_105 rawBody158_108

def rawBody158_110 : StackLang.HolProg 64 :=
.seq rawBody158_104 rawBody158_109

def rawBody158_111 : StackLang.HolProg 64 :=
.seq rawBody158_103 rawBody158_110

def rawBody158_112 : StackLang.HolProg 64 :=
.seq rawBody158_102 rawBody158_111

def rawBody158_113 : StackLang.HolProg 64 :=
.seq rawBody158_101 rawBody158_112

def rawBody158_114 : StackLang.HolProg 64 :=
.seq rawBody158_100 rawBody158_113

def rawBody158_115 : StackLang.HolProg 64 :=
.seq rawBody158_99 rawBody158_114

def rawBody158_116 : StackLang.HolProg 64 :=
.seq rawBody158_98 rawBody158_115

def rawBody158_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody158_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody158_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody158_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody158_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody158_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody158_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody158_126 : StackLang.HolProg 64 :=
.seq rawBody158_124 rawBody158_125

def rawBody158_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody158_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody158_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody158_130 : StackLang.HolProg 64 :=
.seq rawBody158_128 rawBody158_129

def rawBody158_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody158_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody158_133 : StackLang.HolProg 64 :=
.seq rawBody158_131 rawBody158_132

def rawBody158_134 : StackLang.HolProg 64 :=
.seq rawBody158_130 rawBody158_133

def rawBody158_135 : StackLang.HolProg 64 :=
.seq rawBody158_127 rawBody158_134

def rawBody158_136 : StackLang.HolProg 64 :=
.seq rawBody158_126 rawBody158_135

def rawBody158_137 : StackLang.HolProg 64 :=
.seq rawBody158_123 rawBody158_136

def rawBody158_138 : StackLang.HolProg 64 :=
.seq rawBody158_122 rawBody158_137

def rawBody158_139 : StackLang.HolProg 64 :=
.seq rawBody158_121 rawBody158_138

def rawBody158_140 : StackLang.HolProg 64 :=
.seq rawBody158_120 rawBody158_139

def rawBody158_141 : StackLang.HolProg 64 :=
.seq rawBody158_119 rawBody158_140

def rawBody158_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody158_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody158_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody158_145 : StackLang.HolProg 64 :=
.seq rawBody158_143 rawBody158_144

def rawBody158_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody158_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody158_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody158_149 : StackLang.HolProg 64 :=
.seq rawBody158_147 rawBody158_148

def rawBody158_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody158_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody158_152 : StackLang.HolProg 64 :=
.seq rawBody158_150 rawBody158_151

def rawBody158_153 : StackLang.HolProg 64 :=
.seq rawBody158_149 rawBody158_152

def rawBody158_154 : StackLang.HolProg 64 :=
.seq rawBody158_146 rawBody158_153

def rawBody158_155 : StackLang.HolProg 64 :=
.seq rawBody158_145 rawBody158_154

def rawBody158_156 : StackLang.HolProg 64 :=
.seq rawBody158_142 rawBody158_155

def rawBody158_157 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody158_158 : StackLang.HolProg 64 :=
.seq rawBody158_156 rawBody158_157

def rawBody158_159 : StackLang.HolProg 64 :=
.call (some (rawBody158_141, 0, 158, 4)) (Sum.inl 157) (some (rawBody158_158, 158, 5))

def rawBody158_160 : StackLang.HolProg 64 :=
.seq rawBody158_118 rawBody158_159

def rawBody158_161 : StackLang.HolProg 64 :=
.seq rawBody158_117 rawBody158_160

def rawBody158_162 : StackLang.HolProg 64 :=
.seq rawBody158_116 rawBody158_161

def rawBody158_163 : StackLang.HolProg 64 :=
.seq rawBody158_97 rawBody158_162

def rawBody158_164 : StackLang.HolProg 64 :=
.seq rawBody158_94 rawBody158_163

def rawBody158_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody158_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 136#64)))

def rawBody158_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody158_170 : StackLang.HolProg 64 :=
.seq rawBody158_168 rawBody158_169

def rawBody158_171 : StackLang.HolProg 64 :=
.seq rawBody158_167 rawBody158_170

def rawBody158_172 : StackLang.HolProg 64 :=
.seq rawBody158_166 rawBody158_171

def rawBody158_173 : StackLang.HolProg 64 :=
.seq rawBody158_165 rawBody158_172

def rawBody158_174 : StackLang.HolProg 64 :=
.seq rawBody158_164 rawBody158_173

def rawBody158_175 : StackLang.HolProg 64 :=
.seq rawBody158_93 rawBody158_174

def rawBody158_176 : StackLang.HolProg 64 :=
.seq rawBody158_82 rawBody158_175

def rawBody158_177 : StackLang.HolProg 64 :=
.seq rawBody158_81 rawBody158_176

def rawBody158_178 : StackLang.HolProg 64 :=
.seq rawBody158_78 rawBody158_177

def rawBody158_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody158_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody158_182 : StackLang.HolProg 64 :=
.seq rawBody158_180 rawBody158_181

def rawBody158_183 : StackLang.HolProg 64 :=
.seq rawBody158_179 rawBody158_182

def rawBody158_184 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody158_178 rawBody158_183

def rawBody158_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody158_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def rawBody158_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def rawBody158_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody158_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def rawBody158_190 : StackLang.HolProg 64 :=
.seq rawBody158_188 rawBody158_189

def rawBody158_191 : StackLang.HolProg 64 :=
.seq rawBody158_187 rawBody158_190

def rawBody158_192 : StackLang.HolProg 64 :=
.seq rawBody158_186 rawBody158_191

def rawBody158_193 : StackLang.HolProg 64 :=
.seq rawBody158_185 rawBody158_192

def rawBody158_194 : StackLang.HolProg 64 :=
.seq rawBody158_184 rawBody158_193

def rawBody158_195 : StackLang.HolProg 64 :=
.seq rawBody158_77 rawBody158_194

def rawBody158_196 : StackLang.HolProg 64 :=
.seq rawBody158_76 rawBody158_195

def rawBody158_197 : StackLang.HolProg 64 :=
.loop rawBody158_196

def rawBody158_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody158_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody158_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody158_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody158_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody158_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551536#64))

def rawBody158_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 136#64)

def rawBody158_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody158_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody158_208 : StackLang.HolProg 64 :=
.seq rawBody158_206 rawBody158_207

def rawBody158_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 143#64)

def rawBody158_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody158_212 : StackLang.HolProg 64 :=
.seq rawBody158_210 rawBody158_211

def rawBody158_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody158_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody158_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody158_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 158 7

def rawBody158_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody158_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody158_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody158_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody158_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody158_223 : StackLang.HolProg 64 :=
.seq rawBody158_221 rawBody158_222

def rawBody158_224 : StackLang.HolProg 64 :=
.seq rawBody158_220 rawBody158_223

def rawBody158_225 : StackLang.HolProg 64 :=
.seq rawBody158_219 rawBody158_224

def rawBody158_226 : StackLang.HolProg 64 :=
.seq rawBody158_218 rawBody158_225

def rawBody158_227 : StackLang.HolProg 64 :=
.seq rawBody158_217 rawBody158_226

def rawBody158_228 : StackLang.HolProg 64 :=
.seq rawBody158_216 rawBody158_227

def rawBody158_229 : StackLang.HolProg 64 :=
.seq rawBody158_215 rawBody158_228

def rawBody158_230 : StackLang.HolProg 64 :=
.seq rawBody158_214 rawBody158_229

def rawBody158_231 : StackLang.HolProg 64 :=
.seq rawBody158_213 rawBody158_230

def rawBody158_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody158_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody158_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody158_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody158_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody158_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody158_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody158_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody158_242 : StackLang.HolProg 64 :=
.seq rawBody158_240 rawBody158_241

def rawBody158_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody158_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody158_245 : StackLang.HolProg 64 :=
.seq rawBody158_243 rawBody158_244

def rawBody158_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody158_247 : StackLang.HolProg 64 :=
.seq rawBody158_245 rawBody158_246

def rawBody158_248 : StackLang.HolProg 64 :=
.seq rawBody158_242 rawBody158_247

def rawBody158_249 : StackLang.HolProg 64 :=
.seq rawBody158_239 rawBody158_248

def rawBody158_250 : StackLang.HolProg 64 :=
.seq rawBody158_238 rawBody158_249

def rawBody158_251 : StackLang.HolProg 64 :=
.seq rawBody158_237 rawBody158_250

def rawBody158_252 : StackLang.HolProg 64 :=
.seq rawBody158_236 rawBody158_251

def rawBody158_253 : StackLang.HolProg 64 :=
.seq rawBody158_235 rawBody158_252

def rawBody158_254 : StackLang.HolProg 64 :=
.seq rawBody158_234 rawBody158_253

def rawBody158_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody158_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody158_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody158_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody158_259 : StackLang.HolProg 64 :=
.seq rawBody158_257 rawBody158_258

def rawBody158_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody158_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody158_262 : StackLang.HolProg 64 :=
.seq rawBody158_260 rawBody158_261

def rawBody158_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody158_264 : StackLang.HolProg 64 :=
.seq rawBody158_262 rawBody158_263

def rawBody158_265 : StackLang.HolProg 64 :=
.seq rawBody158_259 rawBody158_264

def rawBody158_266 : StackLang.HolProg 64 :=
.seq rawBody158_256 rawBody158_265

def rawBody158_267 : StackLang.HolProg 64 :=
.seq rawBody158_255 rawBody158_266

def rawBody158_268 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody158_269 : StackLang.HolProg 64 :=
.seq rawBody158_267 rawBody158_268

def rawBody158_270 : StackLang.HolProg 64 :=
.call (some (rawBody158_254, 0, 158, 6)) (Sum.inl 78) (some (rawBody158_269, 158, 7))

def rawBody158_271 : StackLang.HolProg 64 :=
.seq rawBody158_233 rawBody158_270

def rawBody158_272 : StackLang.HolProg 64 :=
.seq rawBody158_232 rawBody158_271

def rawBody158_273 : StackLang.HolProg 64 :=
.seq rawBody158_231 rawBody158_272

def rawBody158_274 : StackLang.HolProg 64 :=
.seq rawBody158_212 rawBody158_273

def rawBody158_275 : StackLang.HolProg 64 :=
.seq rawBody158_209 rawBody158_274

def rawBody158_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody158_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody158_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody158_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody158_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551536#64))

def rawBody158_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody158_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def rawBody158_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 144#64)

def rawBody158_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody158_287 : StackLang.HolProg 64 :=
.seq rawBody158_285 rawBody158_286

def rawBody158_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody158_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody158_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody158_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 158 9

def rawBody158_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody158_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody158_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody158_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody158_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody158_298 : StackLang.HolProg 64 :=
.seq rawBody158_296 rawBody158_297

def rawBody158_299 : StackLang.HolProg 64 :=
.seq rawBody158_295 rawBody158_298

def rawBody158_300 : StackLang.HolProg 64 :=
.seq rawBody158_294 rawBody158_299

def rawBody158_301 : StackLang.HolProg 64 :=
.seq rawBody158_293 rawBody158_300

def rawBody158_302 : StackLang.HolProg 64 :=
.seq rawBody158_292 rawBody158_301

def rawBody158_303 : StackLang.HolProg 64 :=
.seq rawBody158_291 rawBody158_302

def rawBody158_304 : StackLang.HolProg 64 :=
.seq rawBody158_290 rawBody158_303

def rawBody158_305 : StackLang.HolProg 64 :=
.seq rawBody158_289 rawBody158_304

def rawBody158_306 : StackLang.HolProg 64 :=
.seq rawBody158_288 rawBody158_305

def rawBody158_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody158_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody158_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody158_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody158_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody158_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody158_315 : StackLang.HolProg 64 :=
.seq rawBody158_313 rawBody158_314

def rawBody158_316 : StackLang.HolProg 64 :=
.seq rawBody158_312 rawBody158_315

def rawBody158_317 : StackLang.HolProg 64 :=
.seq rawBody158_311 rawBody158_316

def rawBody158_318 : StackLang.HolProg 64 :=
.seq rawBody158_310 rawBody158_317

def rawBody158_319 : StackLang.HolProg 64 :=
.seq rawBody158_309 rawBody158_318

def rawBody158_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody158_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody158_322 : StackLang.HolProg 64 :=
.seq rawBody158_320 rawBody158_321

def rawBody158_323 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody158_324 : StackLang.HolProg 64 :=
.seq rawBody158_322 rawBody158_323

def rawBody158_325 : StackLang.HolProg 64 :=
.call (some (rawBody158_319, 0, 158, 8)) (Sum.inl 77) (some (rawBody158_324, 158, 9))

def rawBody158_326 : StackLang.HolProg 64 :=
.seq rawBody158_308 rawBody158_325

def rawBody158_327 : StackLang.HolProg 64 :=
.seq rawBody158_307 rawBody158_326

def rawBody158_328 : StackLang.HolProg 64 :=
.seq rawBody158_306 rawBody158_327

def rawBody158_329 : StackLang.HolProg 64 :=
.seq rawBody158_287 rawBody158_328

def rawBody158_330 : StackLang.HolProg 64 :=
.seq rawBody158_284 rawBody158_329

def rawBody158_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody158_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody158_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody158_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody158_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551536#64))

def rawBody158_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody158_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def rawBody158_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody158_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551536#64))

def rawBody158_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 135#64)))

def rawBody158_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody158_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def rawBody158_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody158_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551536#64))

def rawBody158_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody158_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody158_351 : StackLang.HolProg 64 :=
.seq rawBody158_349 rawBody158_350

def rawBody158_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 145#64)

def rawBody158_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody158_355 : StackLang.HolProg 64 :=
.seq rawBody158_353 rawBody158_354

def rawBody158_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody158_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody158_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody158_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 158 11

def rawBody158_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody158_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody158_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody158_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody158_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody158_366 : StackLang.HolProg 64 :=
.seq rawBody158_364 rawBody158_365

def rawBody158_367 : StackLang.HolProg 64 :=
.seq rawBody158_363 rawBody158_366

def rawBody158_368 : StackLang.HolProg 64 :=
.seq rawBody158_362 rawBody158_367

def rawBody158_369 : StackLang.HolProg 64 :=
.seq rawBody158_361 rawBody158_368

def rawBody158_370 : StackLang.HolProg 64 :=
.seq rawBody158_360 rawBody158_369

def rawBody158_371 : StackLang.HolProg 64 :=
.seq rawBody158_359 rawBody158_370

def rawBody158_372 : StackLang.HolProg 64 :=
.seq rawBody158_358 rawBody158_371

def rawBody158_373 : StackLang.HolProg 64 :=
.seq rawBody158_357 rawBody158_372

def rawBody158_374 : StackLang.HolProg 64 :=
.seq rawBody158_356 rawBody158_373

def rawBody158_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody158_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody158_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody158_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody158_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody158_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody158_383 : StackLang.HolProg 64 :=
.seq rawBody158_381 rawBody158_382

def rawBody158_384 : StackLang.HolProg 64 :=
.seq rawBody158_380 rawBody158_383

def rawBody158_385 : StackLang.HolProg 64 :=
.seq rawBody158_379 rawBody158_384

def rawBody158_386 : StackLang.HolProg 64 :=
.seq rawBody158_378 rawBody158_385

def rawBody158_387 : StackLang.HolProg 64 :=
.seq rawBody158_377 rawBody158_386

def rawBody158_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody158_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody158_390 : StackLang.HolProg 64 :=
.seq rawBody158_388 rawBody158_389

def rawBody158_391 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody158_392 : StackLang.HolProg 64 :=
.seq rawBody158_390 rawBody158_391

def rawBody158_393 : StackLang.HolProg 64 :=
.call (some (rawBody158_387, 0, 158, 10)) (Sum.inl 157) (some (rawBody158_392, 158, 11))

def rawBody158_394 : StackLang.HolProg 64 :=
.seq rawBody158_376 rawBody158_393

def rawBody158_395 : StackLang.HolProg 64 :=
.seq rawBody158_375 rawBody158_394

def rawBody158_396 : StackLang.HolProg 64 :=
.seq rawBody158_374 rawBody158_395

def rawBody158_397 : StackLang.HolProg 64 :=
.seq rawBody158_355 rawBody158_396

def rawBody158_398 : StackLang.HolProg 64 :=
.seq rawBody158_352 rawBody158_397

def rawBody158_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody158_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody158_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def rawBody158_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody158_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody158_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody158_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody158_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody158_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def rawBody158_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody158_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody158_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def rawBody158_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody158_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def rawBody158_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def rawBody158_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody158_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody158_427 : StackLang.HolProg 64 :=
.seq rawBody158_425 rawBody158_426

def rawBody158_428 : StackLang.HolProg 64 :=
.seq rawBody158_424 rawBody158_427

def rawBody158_429 : StackLang.HolProg 64 :=
.seq rawBody158_423 rawBody158_428

def rawBody158_430 : StackLang.HolProg 64 :=
.seq rawBody158_422 rawBody158_429

def rawBody158_431 : StackLang.HolProg 64 :=
.seq rawBody158_421 rawBody158_430

def rawBody158_432 : StackLang.HolProg 64 :=
.seq rawBody158_420 rawBody158_431

def rawBody158_433 : StackLang.HolProg 64 :=
.seq rawBody158_419 rawBody158_432

def rawBody158_434 : StackLang.HolProg 64 :=
.seq rawBody158_418 rawBody158_433

def rawBody158_435 : StackLang.HolProg 64 :=
.seq rawBody158_417 rawBody158_434

def rawBody158_436 : StackLang.HolProg 64 :=
.seq rawBody158_416 rawBody158_435

def rawBody158_437 : StackLang.HolProg 64 :=
.seq rawBody158_415 rawBody158_436

def rawBody158_438 : StackLang.HolProg 64 :=
.seq rawBody158_414 rawBody158_437

def rawBody158_439 : StackLang.HolProg 64 :=
.seq rawBody158_413 rawBody158_438

def rawBody158_440 : StackLang.HolProg 64 :=
.seq rawBody158_412 rawBody158_439

def rawBody158_441 : StackLang.HolProg 64 :=
.seq rawBody158_411 rawBody158_440

def rawBody158_442 : StackLang.HolProg 64 :=
.seq rawBody158_410 rawBody158_441

def rawBody158_443 : StackLang.HolProg 64 :=
.seq rawBody158_409 rawBody158_442

def rawBody158_444 : StackLang.HolProg 64 :=
.seq rawBody158_408 rawBody158_443

def rawBody158_445 : StackLang.HolProg 64 :=
.seq rawBody158_407 rawBody158_444

def rawBody158_446 : StackLang.HolProg 64 :=
.seq rawBody158_406 rawBody158_445

def rawBody158_447 : StackLang.HolProg 64 :=
.seq rawBody158_405 rawBody158_446

def rawBody158_448 : StackLang.HolProg 64 :=
.seq rawBody158_404 rawBody158_447

def rawBody158_449 : StackLang.HolProg 64 :=
.seq rawBody158_403 rawBody158_448

def rawBody158_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody158_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def rawBody158_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 146#64)

def rawBody158_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody158_457 : StackLang.HolProg 64 :=
.seq rawBody158_455 rawBody158_456

def rawBody158_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody158_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody158_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody158_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 158 13

def rawBody158_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody158_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody158_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody158_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody158_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody158_468 : StackLang.HolProg 64 :=
.seq rawBody158_466 rawBody158_467

def rawBody158_469 : StackLang.HolProg 64 :=
.seq rawBody158_465 rawBody158_468

def rawBody158_470 : StackLang.HolProg 64 :=
.seq rawBody158_464 rawBody158_469

def rawBody158_471 : StackLang.HolProg 64 :=
.seq rawBody158_463 rawBody158_470

def rawBody158_472 : StackLang.HolProg 64 :=
.seq rawBody158_462 rawBody158_471

def rawBody158_473 : StackLang.HolProg 64 :=
.seq rawBody158_461 rawBody158_472

def rawBody158_474 : StackLang.HolProg 64 :=
.seq rawBody158_460 rawBody158_473

def rawBody158_475 : StackLang.HolProg 64 :=
.seq rawBody158_459 rawBody158_474

def rawBody158_476 : StackLang.HolProg 64 :=
.seq rawBody158_458 rawBody158_475

def rawBody158_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody158_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody158_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody158_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody158_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody158_484 : StackLang.HolProg 64 :=
.seq rawBody158_482 rawBody158_483

def rawBody158_485 : StackLang.HolProg 64 :=
.seq rawBody158_481 rawBody158_484

def rawBody158_486 : StackLang.HolProg 64 :=
.seq rawBody158_480 rawBody158_485

def rawBody158_487 : StackLang.HolProg 64 :=
.seq rawBody158_479 rawBody158_486

def rawBody158_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody158_489 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody158_490 : StackLang.HolProg 64 :=
.seq rawBody158_488 rawBody158_489

def rawBody158_491 : StackLang.HolProg 64 :=
.call (some (rawBody158_487, 0, 158, 12)) (Sum.inl 77) (some (rawBody158_490, 158, 13))

def rawBody158_492 : StackLang.HolProg 64 :=
.seq rawBody158_478 rawBody158_491

def rawBody158_493 : StackLang.HolProg 64 :=
.seq rawBody158_477 rawBody158_492

def rawBody158_494 : StackLang.HolProg 64 :=
.seq rawBody158_476 rawBody158_493

def rawBody158_495 : StackLang.HolProg 64 :=
.seq rawBody158_457 rawBody158_494

def rawBody158_496 : StackLang.HolProg 64 :=
.seq rawBody158_454 rawBody158_495

def rawBody158_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody158_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_499 : StackLang.HolProg 64 :=
.seq rawBody158_497 rawBody158_498

def rawBody158_500 : StackLang.HolProg 64 :=
.seq rawBody158_496 rawBody158_499

def rawBody158_501 : StackLang.HolProg 64 :=
.seq rawBody158_453 rawBody158_500

def rawBody158_502 : StackLang.HolProg 64 :=
.seq rawBody158_452 rawBody158_501

def rawBody158_503 : StackLang.HolProg 64 :=
.seq rawBody158_451 rawBody158_502

def rawBody158_504 : StackLang.HolProg 64 :=
.seq rawBody158_450 rawBody158_503

def rawBody158_505 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody158_449 rawBody158_504

def rawBody158_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody158_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody158_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody158_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody158_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody158_511 : StackLang.HolProg 64 :=
.seq rawBody158_509 rawBody158_510

def rawBody158_512 : StackLang.HolProg 64 :=
.seq rawBody158_508 rawBody158_511

def rawBody158_513 : StackLang.HolProg 64 :=
.seq rawBody158_507 rawBody158_512

def rawBody158_514 : StackLang.HolProg 64 :=
.seq rawBody158_506 rawBody158_513

def rawBody158_515 : StackLang.HolProg 64 :=
.seq rawBody158_505 rawBody158_514

def rawBody158_516 : StackLang.HolProg 64 :=
.seq rawBody158_402 rawBody158_515

def rawBody158_517 : StackLang.HolProg 64 :=
.seq rawBody158_401 rawBody158_516

def rawBody158_518 : StackLang.HolProg 64 :=
.seq rawBody158_400 rawBody158_517

def rawBody158_519 : StackLang.HolProg 64 :=
.seq rawBody158_399 rawBody158_518

def rawBody158_520 : StackLang.HolProg 64 :=
.seq rawBody158_398 rawBody158_519

def rawBody158_521 : StackLang.HolProg 64 :=
.seq rawBody158_351 rawBody158_520

def rawBody158_522 : StackLang.HolProg 64 :=
.seq rawBody158_348 rawBody158_521

def rawBody158_523 : StackLang.HolProg 64 :=
.seq rawBody158_347 rawBody158_522

def rawBody158_524 : StackLang.HolProg 64 :=
.seq rawBody158_346 rawBody158_523

def rawBody158_525 : StackLang.HolProg 64 :=
.seq rawBody158_345 rawBody158_524

def rawBody158_526 : StackLang.HolProg 64 :=
.seq rawBody158_344 rawBody158_525

def rawBody158_527 : StackLang.HolProg 64 :=
.seq rawBody158_343 rawBody158_526

def rawBody158_528 : StackLang.HolProg 64 :=
.seq rawBody158_342 rawBody158_527

def rawBody158_529 : StackLang.HolProg 64 :=
.seq rawBody158_341 rawBody158_528

def rawBody158_530 : StackLang.HolProg 64 :=
.seq rawBody158_340 rawBody158_529

def rawBody158_531 : StackLang.HolProg 64 :=
.seq rawBody158_339 rawBody158_530

def rawBody158_532 : StackLang.HolProg 64 :=
.seq rawBody158_338 rawBody158_531

def rawBody158_533 : StackLang.HolProg 64 :=
.seq rawBody158_337 rawBody158_532

def rawBody158_534 : StackLang.HolProg 64 :=
.seq rawBody158_336 rawBody158_533

def rawBody158_535 : StackLang.HolProg 64 :=
.seq rawBody158_335 rawBody158_534

def rawBody158_536 : StackLang.HolProg 64 :=
.seq rawBody158_334 rawBody158_535

def rawBody158_537 : StackLang.HolProg 64 :=
.seq rawBody158_333 rawBody158_536

def rawBody158_538 : StackLang.HolProg 64 :=
.seq rawBody158_332 rawBody158_537

def rawBody158_539 : StackLang.HolProg 64 :=
.seq rawBody158_331 rawBody158_538

def rawBody158_540 : StackLang.HolProg 64 :=
.seq rawBody158_330 rawBody158_539

def rawBody158_541 : StackLang.HolProg 64 :=
.seq rawBody158_283 rawBody158_540

def rawBody158_542 : StackLang.HolProg 64 :=
.seq rawBody158_282 rawBody158_541

def rawBody158_543 : StackLang.HolProg 64 :=
.seq rawBody158_281 rawBody158_542

def rawBody158_544 : StackLang.HolProg 64 :=
.seq rawBody158_280 rawBody158_543

def rawBody158_545 : StackLang.HolProg 64 :=
.seq rawBody158_279 rawBody158_544

def rawBody158_546 : StackLang.HolProg 64 :=
.seq rawBody158_278 rawBody158_545

def rawBody158_547 : StackLang.HolProg 64 :=
.seq rawBody158_277 rawBody158_546

def rawBody158_548 : StackLang.HolProg 64 :=
.seq rawBody158_276 rawBody158_547

def rawBody158_549 : StackLang.HolProg 64 :=
.seq rawBody158_275 rawBody158_548

def rawBody158_550 : StackLang.HolProg 64 :=
.seq rawBody158_208 rawBody158_549

def rawBody158_551 : StackLang.HolProg 64 :=
.seq rawBody158_205 rawBody158_550

def rawBody158_552 : StackLang.HolProg 64 :=
.seq rawBody158_204 rawBody158_551

def rawBody158_553 : StackLang.HolProg 64 :=
.seq rawBody158_203 rawBody158_552

def rawBody158_554 : StackLang.HolProg 64 :=
.seq rawBody158_202 rawBody158_553

def rawBody158_555 : StackLang.HolProg 64 :=
.seq rawBody158_201 rawBody158_554

def rawBody158_556 : StackLang.HolProg 64 :=
.seq rawBody158_200 rawBody158_555

def rawBody158_557 : StackLang.HolProg 64 :=
.seq rawBody158_199 rawBody158_556

def rawBody158_558 : StackLang.HolProg 64 :=
.seq rawBody158_198 rawBody158_557

def rawBody158_559 : StackLang.HolProg 64 :=
.seq rawBody158_197 rawBody158_558

def rawBody158_560 : StackLang.HolProg 64 :=
.seq rawBody158_75 rawBody158_559

def rawBody158_561 : StackLang.HolProg 64 :=
.seq rawBody158_72 rawBody158_560

def rawBody158_562 : StackLang.HolProg 64 :=
.seq rawBody158_71 rawBody158_561

def rawBody158_563 : StackLang.HolProg 64 :=
.seq rawBody158_70 rawBody158_562

def rawBody158_564 : StackLang.HolProg 64 :=
.seq rawBody158_69 rawBody158_563

def rawBody158_565 : StackLang.HolProg 64 :=
.seq rawBody158_18 rawBody158_564

def rawBody158_566 : StackLang.HolProg 64 :=
.seq rawBody158_9 rawBody158_565

def rawBody158_567 : StackLang.HolProg 64 :=
.seq rawBody158_8 rawBody158_566

def rawBody158_568 : StackLang.HolProg 64 :=
.seq rawBody158_7 rawBody158_567

def rawBody158_569 : StackLang.HolProg 64 :=
.seq rawBody158_6 rawBody158_568

def rawBody158_570 : StackLang.HolProg 64 :=
.seq rawBody158_5 rawBody158_569

def rawBody158_571 : StackLang.HolProg 64 :=
.seq rawBody158_4 rawBody158_570

def rawBody158_572 : StackLang.HolProg 64 :=
.seq rawBody158_3 rawBody158_571

def rawBody158_573 : StackLang.HolProg 64 :=
.seq rawBody158_0 rawBody158_572

def raw158 : StackLang.HolProg 64 := rawBody158_573
theorem raw158_eq : StackRawCall.compTop RawInfo.rawInfo (function158 (.list [])).1 = raw158 := by
  kernel_rfl
#print axioms raw158_eq
end InitECandidate.Proofs.BackendStages
