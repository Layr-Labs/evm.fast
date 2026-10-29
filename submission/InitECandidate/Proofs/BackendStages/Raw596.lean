import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function596
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody596_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def rawBody596_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody596_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 3 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody596_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody596_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 3 3

def rawBody596_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 18446744073709551360#64))

def rawBody596_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody596_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def rawBody596_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody596_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody596_10 : StackLang.HolProg 64 :=
.seq rawBody596_8 rawBody596_9

def rawBody596_11 : StackLang.HolProg 64 :=
.seq rawBody596_7 rawBody596_10

def rawBody596_12 : StackLang.HolProg 64 :=
.seq rawBody596_6 rawBody596_11

def rawBody596_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody596_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2262#64)

def rawBody596_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody596_16 : StackLang.HolProg 64 :=
.seq rawBody596_14 rawBody596_15

def rawBody596_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody596_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody596_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody596_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 596 3

def rawBody596_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody596_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody596_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody596_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody596_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody596_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody596_27 : StackLang.HolProg 64 :=
.seq rawBody596_25 rawBody596_26

def rawBody596_28 : StackLang.HolProg 64 :=
.seq rawBody596_24 rawBody596_27

def rawBody596_29 : StackLang.HolProg 64 :=
.seq rawBody596_23 rawBody596_28

def rawBody596_30 : StackLang.HolProg 64 :=
.seq rawBody596_22 rawBody596_29

def rawBody596_31 : StackLang.HolProg 64 :=
.seq rawBody596_21 rawBody596_30

def rawBody596_32 : StackLang.HolProg 64 :=
.seq rawBody596_20 rawBody596_31

def rawBody596_33 : StackLang.HolProg 64 :=
.seq rawBody596_19 rawBody596_32

def rawBody596_34 : StackLang.HolProg 64 :=
.seq rawBody596_18 rawBody596_33

def rawBody596_35 : StackLang.HolProg 64 :=
.seq rawBody596_17 rawBody596_34

def rawBody596_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody596_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody596_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody596_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody596_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody596_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody596_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody596_43 : StackLang.HolProg 64 :=
.seq rawBody596_41 rawBody596_42

def rawBody596_44 : StackLang.HolProg 64 :=
.seq rawBody596_40 rawBody596_43

def rawBody596_45 : StackLang.HolProg 64 :=
.seq rawBody596_39 rawBody596_44

def rawBody596_46 : StackLang.HolProg 64 :=
.seq rawBody596_38 rawBody596_45

def rawBody596_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody596_48 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody596_49 : StackLang.HolProg 64 :=
.seq rawBody596_47 rawBody596_48

def rawBody596_50 : StackLang.HolProg 64 :=
.call (some (rawBody596_46, 0, 596, 2)) (Sum.inl 489) (some (rawBody596_49, 596, 3))

def rawBody596_51 : StackLang.HolProg 64 :=
.seq rawBody596_37 rawBody596_50

def rawBody596_52 : StackLang.HolProg 64 :=
.seq rawBody596_36 rawBody596_51

def rawBody596_53 : StackLang.HolProg 64 :=
.seq rawBody596_35 rawBody596_52

def rawBody596_54 : StackLang.HolProg 64 :=
.seq rawBody596_16 rawBody596_53

def rawBody596_55 : StackLang.HolProg 64 :=
.seq rawBody596_13 rawBody596_54

def rawBody596_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody596_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 104#64)

def rawBody596_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody596_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody596_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2263#64)

def rawBody596_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody596_62 : StackLang.HolProg 64 :=
.seq rawBody596_60 rawBody596_61

def rawBody596_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody596_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody596_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody596_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 596 5

def rawBody596_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody596_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody596_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody596_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody596_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody596_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody596_73 : StackLang.HolProg 64 :=
.seq rawBody596_71 rawBody596_72

def rawBody596_74 : StackLang.HolProg 64 :=
.seq rawBody596_70 rawBody596_73

def rawBody596_75 : StackLang.HolProg 64 :=
.seq rawBody596_69 rawBody596_74

def rawBody596_76 : StackLang.HolProg 64 :=
.seq rawBody596_68 rawBody596_75

def rawBody596_77 : StackLang.HolProg 64 :=
.seq rawBody596_67 rawBody596_76

def rawBody596_78 : StackLang.HolProg 64 :=
.seq rawBody596_66 rawBody596_77

def rawBody596_79 : StackLang.HolProg 64 :=
.seq rawBody596_65 rawBody596_78

def rawBody596_80 : StackLang.HolProg 64 :=
.seq rawBody596_64 rawBody596_79

def rawBody596_81 : StackLang.HolProg 64 :=
.seq rawBody596_63 rawBody596_80

def rawBody596_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody596_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody596_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody596_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody596_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody596_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody596_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody596_89 : StackLang.HolProg 64 :=
.seq rawBody596_87 rawBody596_88

def rawBody596_90 : StackLang.HolProg 64 :=
.seq rawBody596_86 rawBody596_89

def rawBody596_91 : StackLang.HolProg 64 :=
.seq rawBody596_85 rawBody596_90

def rawBody596_92 : StackLang.HolProg 64 :=
.seq rawBody596_84 rawBody596_91

def rawBody596_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody596_94 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody596_95 : StackLang.HolProg 64 :=
.seq rawBody596_93 rawBody596_94

def rawBody596_96 : StackLang.HolProg 64 :=
.call (some (rawBody596_92, 0, 596, 4)) (Sum.inl 74) (some (rawBody596_95, 596, 5))

def rawBody596_97 : StackLang.HolProg 64 :=
.seq rawBody596_83 rawBody596_96

def rawBody596_98 : StackLang.HolProg 64 :=
.seq rawBody596_82 rawBody596_97

def rawBody596_99 : StackLang.HolProg 64 :=
.seq rawBody596_81 rawBody596_98

def rawBody596_100 : StackLang.HolProg 64 :=
.seq rawBody596_62 rawBody596_99

def rawBody596_101 : StackLang.HolProg 64 :=
.seq rawBody596_59 rawBody596_100

def rawBody596_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody596_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody596_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 104#64)

def rawBody596_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def rawBody596_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody596_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2264#64)

def rawBody596_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody596_109 : StackLang.HolProg 64 :=
.seq rawBody596_107 rawBody596_108

def rawBody596_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody596_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody596_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody596_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 596 7

def rawBody596_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody596_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody596_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody596_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody596_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody596_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody596_120 : StackLang.HolProg 64 :=
.seq rawBody596_118 rawBody596_119

def rawBody596_121 : StackLang.HolProg 64 :=
.seq rawBody596_117 rawBody596_120

def rawBody596_122 : StackLang.HolProg 64 :=
.seq rawBody596_116 rawBody596_121

def rawBody596_123 : StackLang.HolProg 64 :=
.seq rawBody596_115 rawBody596_122

def rawBody596_124 : StackLang.HolProg 64 :=
.seq rawBody596_114 rawBody596_123

def rawBody596_125 : StackLang.HolProg 64 :=
.seq rawBody596_113 rawBody596_124

def rawBody596_126 : StackLang.HolProg 64 :=
.seq rawBody596_112 rawBody596_125

def rawBody596_127 : StackLang.HolProg 64 :=
.seq rawBody596_111 rawBody596_126

def rawBody596_128 : StackLang.HolProg 64 :=
.seq rawBody596_110 rawBody596_127

def rawBody596_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody596_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody596_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody596_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody596_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody596_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody596_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody596_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody596_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody596_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody596_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def rawBody596_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody596_141 : StackLang.HolProg 64 :=
.seq rawBody596_139 rawBody596_140

def rawBody596_142 : StackLang.HolProg 64 :=
.seq rawBody596_138 rawBody596_141

def rawBody596_143 : StackLang.HolProg 64 :=
.seq rawBody596_137 rawBody596_142

def rawBody596_144 : StackLang.HolProg 64 :=
.seq rawBody596_136 rawBody596_143

def rawBody596_145 : StackLang.HolProg 64 :=
.seq rawBody596_135 rawBody596_144

def rawBody596_146 : StackLang.HolProg 64 :=
.seq rawBody596_134 rawBody596_145

def rawBody596_147 : StackLang.HolProg 64 :=
.seq rawBody596_133 rawBody596_146

def rawBody596_148 : StackLang.HolProg 64 :=
.seq rawBody596_132 rawBody596_147

def rawBody596_149 : StackLang.HolProg 64 :=
.seq rawBody596_131 rawBody596_148

def rawBody596_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody596_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody596_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody596_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody596_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def rawBody596_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody596_156 : StackLang.HolProg 64 :=
.seq rawBody596_154 rawBody596_155

def rawBody596_157 : StackLang.HolProg 64 :=
.seq rawBody596_153 rawBody596_156

def rawBody596_158 : StackLang.HolProg 64 :=
.seq rawBody596_152 rawBody596_157

def rawBody596_159 : StackLang.HolProg 64 :=
.seq rawBody596_151 rawBody596_158

def rawBody596_160 : StackLang.HolProg 64 :=
.seq rawBody596_150 rawBody596_159

def rawBody596_161 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody596_162 : StackLang.HolProg 64 :=
.seq rawBody596_160 rawBody596_161

def rawBody596_163 : StackLang.HolProg 64 :=
.call (some (rawBody596_149, 0, 596, 6)) (Sum.inl 78) (some (rawBody596_162, 596, 7))

def rawBody596_164 : StackLang.HolProg 64 :=
.seq rawBody596_130 rawBody596_163

def rawBody596_165 : StackLang.HolProg 64 :=
.seq rawBody596_129 rawBody596_164

def rawBody596_166 : StackLang.HolProg 64 :=
.seq rawBody596_128 rawBody596_165

def rawBody596_167 : StackLang.HolProg 64 :=
.seq rawBody596_109 rawBody596_166

def rawBody596_168 : StackLang.HolProg 64 :=
.seq rawBody596_106 rawBody596_167

def rawBody596_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody596_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody596_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody596_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody596_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody596_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody596_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody596_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody596_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551328#64))

def rawBody596_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody596_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def rawBody596_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody596_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody596_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody596_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody596_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody596_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def rawBody596_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody596_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody596_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody596_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551360#64)))

def rawBody596_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody596_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody596_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody596_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551328#64)))

def rawBody596_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody596_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody596_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody596_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody596_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def rawBody596_199 : StackLang.HolProg 64 :=
.seq rawBody596_197 rawBody596_198

def rawBody596_200 : StackLang.HolProg 64 :=
.seq rawBody596_196 rawBody596_199

def rawBody596_201 : StackLang.HolProg 64 :=
.seq rawBody596_195 rawBody596_200

def rawBody596_202 : StackLang.HolProg 64 :=
.seq rawBody596_194 rawBody596_201

def rawBody596_203 : StackLang.HolProg 64 :=
.seq rawBody596_193 rawBody596_202

def rawBody596_204 : StackLang.HolProg 64 :=
.seq rawBody596_192 rawBody596_203

def rawBody596_205 : StackLang.HolProg 64 :=
.seq rawBody596_191 rawBody596_204

def rawBody596_206 : StackLang.HolProg 64 :=
.seq rawBody596_190 rawBody596_205

def rawBody596_207 : StackLang.HolProg 64 :=
.seq rawBody596_189 rawBody596_206

def rawBody596_208 : StackLang.HolProg 64 :=
.seq rawBody596_188 rawBody596_207

def rawBody596_209 : StackLang.HolProg 64 :=
.seq rawBody596_187 rawBody596_208

def rawBody596_210 : StackLang.HolProg 64 :=
.seq rawBody596_186 rawBody596_209

def rawBody596_211 : StackLang.HolProg 64 :=
.seq rawBody596_185 rawBody596_210

def rawBody596_212 : StackLang.HolProg 64 :=
.seq rawBody596_184 rawBody596_211

def rawBody596_213 : StackLang.HolProg 64 :=
.seq rawBody596_183 rawBody596_212

def rawBody596_214 : StackLang.HolProg 64 :=
.seq rawBody596_182 rawBody596_213

def rawBody596_215 : StackLang.HolProg 64 :=
.seq rawBody596_181 rawBody596_214

def rawBody596_216 : StackLang.HolProg 64 :=
.seq rawBody596_180 rawBody596_215

def rawBody596_217 : StackLang.HolProg 64 :=
.seq rawBody596_179 rawBody596_216

def rawBody596_218 : StackLang.HolProg 64 :=
.seq rawBody596_178 rawBody596_217

def rawBody596_219 : StackLang.HolProg 64 :=
.seq rawBody596_177 rawBody596_218

def rawBody596_220 : StackLang.HolProg 64 :=
.seq rawBody596_176 rawBody596_219

def rawBody596_221 : StackLang.HolProg 64 :=
.seq rawBody596_175 rawBody596_220

def rawBody596_222 : StackLang.HolProg 64 :=
.seq rawBody596_174 rawBody596_221

def rawBody596_223 : StackLang.HolProg 64 :=
.seq rawBody596_173 rawBody596_222

def rawBody596_224 : StackLang.HolProg 64 :=
.seq rawBody596_172 rawBody596_223

def rawBody596_225 : StackLang.HolProg 64 :=
.seq rawBody596_171 rawBody596_224

def rawBody596_226 : StackLang.HolProg 64 :=
.seq rawBody596_170 rawBody596_225

def rawBody596_227 : StackLang.HolProg 64 :=
.seq rawBody596_169 rawBody596_226

def rawBody596_228 : StackLang.HolProg 64 :=
.seq rawBody596_168 rawBody596_227

def rawBody596_229 : StackLang.HolProg 64 :=
.seq rawBody596_105 rawBody596_228

def rawBody596_230 : StackLang.HolProg 64 :=
.seq rawBody596_104 rawBody596_229

def rawBody596_231 : StackLang.HolProg 64 :=
.seq rawBody596_103 rawBody596_230

def rawBody596_232 : StackLang.HolProg 64 :=
.seq rawBody596_102 rawBody596_231

def rawBody596_233 : StackLang.HolProg 64 :=
.seq rawBody596_101 rawBody596_232

def rawBody596_234 : StackLang.HolProg 64 :=
.seq rawBody596_58 rawBody596_233

def rawBody596_235 : StackLang.HolProg 64 :=
.seq rawBody596_57 rawBody596_234

def rawBody596_236 : StackLang.HolProg 64 :=
.seq rawBody596_56 rawBody596_235

def rawBody596_237 : StackLang.HolProg 64 :=
.seq rawBody596_55 rawBody596_236

def rawBody596_238 : StackLang.HolProg 64 :=
.seq rawBody596_12 rawBody596_237

def rawBody596_239 : StackLang.HolProg 64 :=
.seq rawBody596_5 rawBody596_238

def rawBody596_240 : StackLang.HolProg 64 :=
.seq rawBody596_4 rawBody596_239

def rawBody596_241 : StackLang.HolProg 64 :=
.seq rawBody596_3 rawBody596_240

def rawBody596_242 : StackLang.HolProg 64 :=
.seq rawBody596_2 rawBody596_241

def rawBody596_243 : StackLang.HolProg 64 :=
.seq rawBody596_1 rawBody596_242

def rawBody596_244 : StackLang.HolProg 64 :=
.seq rawBody596_0 rawBody596_243

def raw596 : StackLang.HolProg 64 := rawBody596_244
theorem raw596_eq : StackRawCall.compTop RawInfo.rawInfo (function596 (.list [])).1 = raw596 := by
  kernel_rfl
#print axioms raw596_eq
end InitECandidate.Proofs.BackendStages
