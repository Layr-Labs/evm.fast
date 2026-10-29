import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function831
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody831_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody831_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody831_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody831_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody831_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody831_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def rawBody831_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 96#64))

def rawBody831_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody831_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody831_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody831_12 : StackLang.HolProg 64 :=
.seq rawBody831_10 rawBody831_11

def rawBody831_13 : StackLang.HolProg 64 :=
.seq rawBody831_9 rawBody831_12

def rawBody831_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4124#64)

def rawBody831_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody831_17 : StackLang.HolProg 64 :=
.seq rawBody831_15 rawBody831_16

def rawBody831_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody831_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody831_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody831_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 831 3

def rawBody831_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody831_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody831_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody831_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody831_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody831_28 : StackLang.HolProg 64 :=
.seq rawBody831_26 rawBody831_27

def rawBody831_29 : StackLang.HolProg 64 :=
.seq rawBody831_25 rawBody831_28

def rawBody831_30 : StackLang.HolProg 64 :=
.seq rawBody831_24 rawBody831_29

def rawBody831_31 : StackLang.HolProg 64 :=
.seq rawBody831_23 rawBody831_30

def rawBody831_32 : StackLang.HolProg 64 :=
.seq rawBody831_22 rawBody831_31

def rawBody831_33 : StackLang.HolProg 64 :=
.seq rawBody831_21 rawBody831_32

def rawBody831_34 : StackLang.HolProg 64 :=
.seq rawBody831_20 rawBody831_33

def rawBody831_35 : StackLang.HolProg 64 :=
.seq rawBody831_19 rawBody831_34

def rawBody831_36 : StackLang.HolProg 64 :=
.seq rawBody831_18 rawBody831_35

def rawBody831_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody831_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody831_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody831_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody831_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody831_44 : StackLang.HolProg 64 :=
.seq rawBody831_42 rawBody831_43

def rawBody831_45 : StackLang.HolProg 64 :=
.seq rawBody831_41 rawBody831_44

def rawBody831_46 : StackLang.HolProg 64 :=
.seq rawBody831_40 rawBody831_45

def rawBody831_47 : StackLang.HolProg 64 :=
.seq rawBody831_39 rawBody831_46

def rawBody831_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_49 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody831_50 : StackLang.HolProg 64 :=
.seq rawBody831_48 rawBody831_49

def rawBody831_51 : StackLang.HolProg 64 :=
.call (some (rawBody831_47, 0, 831, 2)) (Sum.inl 465) (some (rawBody831_50, 831, 3))

def rawBody831_52 : StackLang.HolProg 64 :=
.seq rawBody831_38 rawBody831_51

def rawBody831_53 : StackLang.HolProg 64 :=
.seq rawBody831_37 rawBody831_52

def rawBody831_54 : StackLang.HolProg 64 :=
.seq rawBody831_36 rawBody831_53

def rawBody831_55 : StackLang.HolProg 64 :=
.seq rawBody831_17 rawBody831_54

def rawBody831_56 : StackLang.HolProg 64 :=
.seq rawBody831_14 rawBody831_55

def rawBody831_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody831_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 12#64)

def rawBody831_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody831_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 60#64)))

def rawBody831_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4125#64)

def rawBody831_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody831_68 : StackLang.HolProg 64 :=
.seq rawBody831_66 rawBody831_67

def rawBody831_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody831_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody831_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody831_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 831 5

def rawBody831_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody831_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody831_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody831_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody831_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody831_79 : StackLang.HolProg 64 :=
.seq rawBody831_77 rawBody831_78

def rawBody831_80 : StackLang.HolProg 64 :=
.seq rawBody831_76 rawBody831_79

def rawBody831_81 : StackLang.HolProg 64 :=
.seq rawBody831_75 rawBody831_80

def rawBody831_82 : StackLang.HolProg 64 :=
.seq rawBody831_74 rawBody831_81

def rawBody831_83 : StackLang.HolProg 64 :=
.seq rawBody831_73 rawBody831_82

def rawBody831_84 : StackLang.HolProg 64 :=
.seq rawBody831_72 rawBody831_83

def rawBody831_85 : StackLang.HolProg 64 :=
.seq rawBody831_71 rawBody831_84

def rawBody831_86 : StackLang.HolProg 64 :=
.seq rawBody831_70 rawBody831_85

def rawBody831_87 : StackLang.HolProg 64 :=
.seq rawBody831_69 rawBody831_86

def rawBody831_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody831_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody831_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody831_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody831_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_95 : StackLang.HolProg 64 :=
.seq rawBody831_93 rawBody831_94

def rawBody831_96 : StackLang.HolProg 64 :=
.seq rawBody831_92 rawBody831_95

def rawBody831_97 : StackLang.HolProg 64 :=
.seq rawBody831_91 rawBody831_96

def rawBody831_98 : StackLang.HolProg 64 :=
.seq rawBody831_90 rawBody831_97

def rawBody831_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_100 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody831_101 : StackLang.HolProg 64 :=
.seq rawBody831_99 rawBody831_100

def rawBody831_102 : StackLang.HolProg 64 :=
.call (some (rawBody831_98, 0, 831, 4)) (Sum.inl 470) (some (rawBody831_101, 831, 5))

def rawBody831_103 : StackLang.HolProg 64 :=
.seq rawBody831_89 rawBody831_102

def rawBody831_104 : StackLang.HolProg 64 :=
.seq rawBody831_88 rawBody831_103

def rawBody831_105 : StackLang.HolProg 64 :=
.seq rawBody831_87 rawBody831_104

def rawBody831_106 : StackLang.HolProg 64 :=
.seq rawBody831_68 rawBody831_105

def rawBody831_107 : StackLang.HolProg 64 :=
.seq rawBody831_65 rawBody831_106

def rawBody831_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody831_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def rawBody831_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4126#64)

def rawBody831_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody831_114 : StackLang.HolProg 64 :=
.seq rawBody831_112 rawBody831_113

def rawBody831_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody831_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody831_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody831_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 831 7

def rawBody831_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody831_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody831_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody831_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody831_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody831_125 : StackLang.HolProg 64 :=
.seq rawBody831_123 rawBody831_124

def rawBody831_126 : StackLang.HolProg 64 :=
.seq rawBody831_122 rawBody831_125

def rawBody831_127 : StackLang.HolProg 64 :=
.seq rawBody831_121 rawBody831_126

def rawBody831_128 : StackLang.HolProg 64 :=
.seq rawBody831_120 rawBody831_127

def rawBody831_129 : StackLang.HolProg 64 :=
.seq rawBody831_119 rawBody831_128

def rawBody831_130 : StackLang.HolProg 64 :=
.seq rawBody831_118 rawBody831_129

def rawBody831_131 : StackLang.HolProg 64 :=
.seq rawBody831_117 rawBody831_130

def rawBody831_132 : StackLang.HolProg 64 :=
.seq rawBody831_116 rawBody831_131

def rawBody831_133 : StackLang.HolProg 64 :=
.seq rawBody831_115 rawBody831_132

def rawBody831_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody831_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody831_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody831_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody831_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody831_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody831_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody831_143 : StackLang.HolProg 64 :=
.seq rawBody831_141 rawBody831_142

def rawBody831_144 : StackLang.HolProg 64 :=
.seq rawBody831_140 rawBody831_143

def rawBody831_145 : StackLang.HolProg 64 :=
.seq rawBody831_139 rawBody831_144

def rawBody831_146 : StackLang.HolProg 64 :=
.seq rawBody831_138 rawBody831_145

def rawBody831_147 : StackLang.HolProg 64 :=
.seq rawBody831_137 rawBody831_146

def rawBody831_148 : StackLang.HolProg 64 :=
.seq rawBody831_136 rawBody831_147

def rawBody831_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody831_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody831_151 : StackLang.HolProg 64 :=
.seq rawBody831_149 rawBody831_150

def rawBody831_152 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody831_153 : StackLang.HolProg 64 :=
.seq rawBody831_151 rawBody831_152

def rawBody831_154 : StackLang.HolProg 64 :=
.call (some (rawBody831_148, 0, 831, 6)) (Sum.inl 68) (some (rawBody831_153, 831, 7))

def rawBody831_155 : StackLang.HolProg 64 :=
.seq rawBody831_135 rawBody831_154

def rawBody831_156 : StackLang.HolProg 64 :=
.seq rawBody831_134 rawBody831_155

def rawBody831_157 : StackLang.HolProg 64 :=
.seq rawBody831_133 rawBody831_156

def rawBody831_158 : StackLang.HolProg 64 :=
.seq rawBody831_114 rawBody831_157

def rawBody831_159 : StackLang.HolProg 64 :=
.seq rawBody831_111 rawBody831_158

def rawBody831_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody831_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def rawBody831_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody831_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4127#64)

def rawBody831_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody831_167 : StackLang.HolProg 64 :=
.seq rawBody831_165 rawBody831_166

def rawBody831_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody831_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody831_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody831_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 831 9

def rawBody831_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody831_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody831_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody831_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody831_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody831_178 : StackLang.HolProg 64 :=
.seq rawBody831_176 rawBody831_177

def rawBody831_179 : StackLang.HolProg 64 :=
.seq rawBody831_175 rawBody831_178

def rawBody831_180 : StackLang.HolProg 64 :=
.seq rawBody831_174 rawBody831_179

def rawBody831_181 : StackLang.HolProg 64 :=
.seq rawBody831_173 rawBody831_180

def rawBody831_182 : StackLang.HolProg 64 :=
.seq rawBody831_172 rawBody831_181

def rawBody831_183 : StackLang.HolProg 64 :=
.seq rawBody831_171 rawBody831_182

def rawBody831_184 : StackLang.HolProg 64 :=
.seq rawBody831_170 rawBody831_183

def rawBody831_185 : StackLang.HolProg 64 :=
.seq rawBody831_169 rawBody831_184

def rawBody831_186 : StackLang.HolProg 64 :=
.seq rawBody831_168 rawBody831_185

def rawBody831_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody831_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody831_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody831_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody831_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody831_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody831_195 : StackLang.HolProg 64 :=
.seq rawBody831_193 rawBody831_194

def rawBody831_196 : StackLang.HolProg 64 :=
.seq rawBody831_192 rawBody831_195

def rawBody831_197 : StackLang.HolProg 64 :=
.seq rawBody831_191 rawBody831_196

def rawBody831_198 : StackLang.HolProg 64 :=
.seq rawBody831_190 rawBody831_197

def rawBody831_199 : StackLang.HolProg 64 :=
.seq rawBody831_189 rawBody831_198

def rawBody831_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody831_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody831_202 : StackLang.HolProg 64 :=
.seq rawBody831_200 rawBody831_201

def rawBody831_203 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody831_204 : StackLang.HolProg 64 :=
.seq rawBody831_202 rawBody831_203

def rawBody831_205 : StackLang.HolProg 64 :=
.call (some (rawBody831_199, 0, 831, 8)) (Sum.inl 153) (some (rawBody831_204, 831, 9))

def rawBody831_206 : StackLang.HolProg 64 :=
.seq rawBody831_188 rawBody831_205

def rawBody831_207 : StackLang.HolProg 64 :=
.seq rawBody831_187 rawBody831_206

def rawBody831_208 : StackLang.HolProg 64 :=
.seq rawBody831_186 rawBody831_207

def rawBody831_209 : StackLang.HolProg 64 :=
.seq rawBody831_167 rawBody831_208

def rawBody831_210 : StackLang.HolProg 64 :=
.seq rawBody831_164 rawBody831_209

def rawBody831_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody831_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody831_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody831_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody831_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody831_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def rawBody831_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody831_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody831_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def rawBody831_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def rawBody831_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody831_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody831_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody831_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody831_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody831_229 : StackLang.HolProg 64 :=
.seq rawBody831_227 rawBody831_228

def rawBody831_230 : StackLang.HolProg 64 :=
.seq rawBody831_226 rawBody831_229

def rawBody831_231 : StackLang.HolProg 64 :=
.seq rawBody831_225 rawBody831_230

def rawBody831_232 : StackLang.HolProg 64 :=
.seq rawBody831_224 rawBody831_231

def rawBody831_233 : StackLang.HolProg 64 :=
.seq rawBody831_223 rawBody831_232

def rawBody831_234 : StackLang.HolProg 64 :=
.seq rawBody831_222 rawBody831_233

def rawBody831_235 : StackLang.HolProg 64 :=
.seq rawBody831_221 rawBody831_234

def rawBody831_236 : StackLang.HolProg 64 :=
.seq rawBody831_220 rawBody831_235

def rawBody831_237 : StackLang.HolProg 64 :=
.seq rawBody831_219 rawBody831_236

def rawBody831_238 : StackLang.HolProg 64 :=
.seq rawBody831_218 rawBody831_237

def rawBody831_239 : StackLang.HolProg 64 :=
.seq rawBody831_217 rawBody831_238

def rawBody831_240 : StackLang.HolProg 64 :=
.seq rawBody831_216 rawBody831_239

def rawBody831_241 : StackLang.HolProg 64 :=
.seq rawBody831_215 rawBody831_240

def rawBody831_242 : StackLang.HolProg 64 :=
.seq rawBody831_214 rawBody831_241

def rawBody831_243 : StackLang.HolProg 64 :=
.seq rawBody831_213 rawBody831_242

def rawBody831_244 : StackLang.HolProg 64 :=
.seq rawBody831_212 rawBody831_243

def rawBody831_245 : StackLang.HolProg 64 :=
.seq rawBody831_211 rawBody831_244

def rawBody831_246 : StackLang.HolProg 64 :=
.seq rawBody831_210 rawBody831_245

def rawBody831_247 : StackLang.HolProg 64 :=
.seq rawBody831_163 rawBody831_246

def rawBody831_248 : StackLang.HolProg 64 :=
.seq rawBody831_162 rawBody831_247

def rawBody831_249 : StackLang.HolProg 64 :=
.seq rawBody831_161 rawBody831_248

def rawBody831_250 : StackLang.HolProg 64 :=
.seq rawBody831_160 rawBody831_249

def rawBody831_251 : StackLang.HolProg 64 :=
.seq rawBody831_159 rawBody831_250

def rawBody831_252 : StackLang.HolProg 64 :=
.seq rawBody831_110 rawBody831_251

def rawBody831_253 : StackLang.HolProg 64 :=
.seq rawBody831_109 rawBody831_252

def rawBody831_254 : StackLang.HolProg 64 :=
.seq rawBody831_108 rawBody831_253

def rawBody831_255 : StackLang.HolProg 64 :=
.seq rawBody831_107 rawBody831_254

def rawBody831_256 : StackLang.HolProg 64 :=
.seq rawBody831_64 rawBody831_255

def rawBody831_257 : StackLang.HolProg 64 :=
.seq rawBody831_63 rawBody831_256

def rawBody831_258 : StackLang.HolProg 64 :=
.seq rawBody831_62 rawBody831_257

def rawBody831_259 : StackLang.HolProg 64 :=
.seq rawBody831_61 rawBody831_258

def rawBody831_260 : StackLang.HolProg 64 :=
.seq rawBody831_60 rawBody831_259

def rawBody831_261 : StackLang.HolProg 64 :=
.seq rawBody831_59 rawBody831_260

def rawBody831_262 : StackLang.HolProg 64 :=
.seq rawBody831_58 rawBody831_261

def rawBody831_263 : StackLang.HolProg 64 :=
.seq rawBody831_57 rawBody831_262

def rawBody831_264 : StackLang.HolProg 64 :=
.seq rawBody831_56 rawBody831_263

def rawBody831_265 : StackLang.HolProg 64 :=
.seq rawBody831_13 rawBody831_264

def rawBody831_266 : StackLang.HolProg 64 :=
.seq rawBody831_8 rawBody831_265

def rawBody831_267 : StackLang.HolProg 64 :=
.seq rawBody831_7 rawBody831_266

def rawBody831_268 : StackLang.HolProg 64 :=
.seq rawBody831_6 rawBody831_267

def rawBody831_269 : StackLang.HolProg 64 :=
.seq rawBody831_5 rawBody831_268

def rawBody831_270 : StackLang.HolProg 64 :=
.seq rawBody831_4 rawBody831_269

def rawBody831_271 : StackLang.HolProg 64 :=
.seq rawBody831_3 rawBody831_270

def rawBody831_272 : StackLang.HolProg 64 :=
.seq rawBody831_2 rawBody831_271

def rawBody831_273 : StackLang.HolProg 64 :=
.seq rawBody831_1 rawBody831_272

def rawBody831_274 : StackLang.HolProg 64 :=
.seq rawBody831_0 rawBody831_273

def raw831 : StackLang.HolProg 64 := rawBody831_274
theorem raw831_eq : StackRawCall.compTop RawInfo.rawInfo (function831 (.list [])).1 = raw831 := by
  kernel_rfl
#print axioms raw831_eq
end InitECandidate.Proofs.BackendStages
