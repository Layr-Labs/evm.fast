import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function305
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody305_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody305_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody305_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody305_3 : StackLang.HolProg 64 :=
.seq rawBody305_1 rawBody305_2

def rawBody305_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody305_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody305_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def rawBody305_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551488#64))

def rawBody305_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def rawBody305_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody305_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def rawBody305_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody305_12 : StackLang.HolProg 64 :=
.seq rawBody305_10 rawBody305_11

def rawBody305_13 : StackLang.HolProg 64 :=
.seq rawBody305_9 rawBody305_12

def rawBody305_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 839#64)

def rawBody305_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody305_17 : StackLang.HolProg 64 :=
.seq rawBody305_15 rawBody305_16

def rawBody305_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody305_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody305_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody305_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 305 3

def rawBody305_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody305_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody305_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody305_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody305_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody305_28 : StackLang.HolProg 64 :=
.seq rawBody305_26 rawBody305_27

def rawBody305_29 : StackLang.HolProg 64 :=
.seq rawBody305_25 rawBody305_28

def rawBody305_30 : StackLang.HolProg 64 :=
.seq rawBody305_24 rawBody305_29

def rawBody305_31 : StackLang.HolProg 64 :=
.seq rawBody305_23 rawBody305_30

def rawBody305_32 : StackLang.HolProg 64 :=
.seq rawBody305_22 rawBody305_31

def rawBody305_33 : StackLang.HolProg 64 :=
.seq rawBody305_21 rawBody305_32

def rawBody305_34 : StackLang.HolProg 64 :=
.seq rawBody305_20 rawBody305_33

def rawBody305_35 : StackLang.HolProg 64 :=
.seq rawBody305_19 rawBody305_34

def rawBody305_36 : StackLang.HolProg 64 :=
.seq rawBody305_18 rawBody305_35

def rawBody305_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody305_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody305_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody305_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody305_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody305_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def rawBody305_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody305_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody305_47 : StackLang.HolProg 64 :=
.seq rawBody305_45 rawBody305_46

def rawBody305_48 : StackLang.HolProg 64 :=
.seq rawBody305_44 rawBody305_47

def rawBody305_49 : StackLang.HolProg 64 :=
.seq rawBody305_43 rawBody305_48

def rawBody305_50 : StackLang.HolProg 64 :=
.seq rawBody305_42 rawBody305_49

def rawBody305_51 : StackLang.HolProg 64 :=
.seq rawBody305_41 rawBody305_50

def rawBody305_52 : StackLang.HolProg 64 :=
.seq rawBody305_40 rawBody305_51

def rawBody305_53 : StackLang.HolProg 64 :=
.seq rawBody305_39 rawBody305_52

def rawBody305_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def rawBody305_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody305_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody305_57 : StackLang.HolProg 64 :=
.seq rawBody305_55 rawBody305_56

def rawBody305_58 : StackLang.HolProg 64 :=
.seq rawBody305_54 rawBody305_57

def rawBody305_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody305_60 : StackLang.HolProg 64 :=
.seq rawBody305_58 rawBody305_59

def rawBody305_61 : StackLang.HolProg 64 :=
.call (some (rawBody305_53, 0, 305, 2)) (Sum.inl 79) (some (rawBody305_60, 305, 3))

def rawBody305_62 : StackLang.HolProg 64 :=
.seq rawBody305_38 rawBody305_61

def rawBody305_63 : StackLang.HolProg 64 :=
.seq rawBody305_37 rawBody305_62

def rawBody305_64 : StackLang.HolProg 64 :=
.seq rawBody305_36 rawBody305_63

def rawBody305_65 : StackLang.HolProg 64 :=
.seq rawBody305_17 rawBody305_64

def rawBody305_66 : StackLang.HolProg 64 :=
.seq rawBody305_14 rawBody305_65

def rawBody305_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody305_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody305_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody305_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody305_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody305_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody305_75 : StackLang.HolProg 64 :=
.seq rawBody305_73 rawBody305_74

def rawBody305_76 : StackLang.HolProg 64 :=
.seq rawBody305_72 rawBody305_75

def rawBody305_77 : StackLang.HolProg 64 :=
.seq rawBody305_71 rawBody305_76

def rawBody305_78 : StackLang.HolProg 64 :=
.seq rawBody305_70 rawBody305_77

def rawBody305_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_80 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody305_78 rawBody305_79

def rawBody305_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody305_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody305_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody305_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def rawBody305_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody305_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def rawBody305_87 : StackLang.HolProg 64 :=
.seq rawBody305_85 rawBody305_86

def rawBody305_88 : StackLang.HolProg 64 :=
.seq rawBody305_84 rawBody305_87

def rawBody305_89 : StackLang.HolProg 64 :=
.seq rawBody305_83 rawBody305_88

def rawBody305_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 840#64)

def rawBody305_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody305_93 : StackLang.HolProg 64 :=
.seq rawBody305_91 rawBody305_92

def rawBody305_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody305_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody305_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody305_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 305 5

def rawBody305_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody305_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody305_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody305_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody305_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody305_104 : StackLang.HolProg 64 :=
.seq rawBody305_102 rawBody305_103

def rawBody305_105 : StackLang.HolProg 64 :=
.seq rawBody305_101 rawBody305_104

def rawBody305_106 : StackLang.HolProg 64 :=
.seq rawBody305_100 rawBody305_105

def rawBody305_107 : StackLang.HolProg 64 :=
.seq rawBody305_99 rawBody305_106

def rawBody305_108 : StackLang.HolProg 64 :=
.seq rawBody305_98 rawBody305_107

def rawBody305_109 : StackLang.HolProg 64 :=
.seq rawBody305_97 rawBody305_108

def rawBody305_110 : StackLang.HolProg 64 :=
.seq rawBody305_96 rawBody305_109

def rawBody305_111 : StackLang.HolProg 64 :=
.seq rawBody305_95 rawBody305_110

def rawBody305_112 : StackLang.HolProg 64 :=
.seq rawBody305_94 rawBody305_111

def rawBody305_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody305_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody305_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody305_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody305_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody305_120 : StackLang.HolProg 64 :=
.seq rawBody305_118 rawBody305_119

def rawBody305_121 : StackLang.HolProg 64 :=
.seq rawBody305_117 rawBody305_120

def rawBody305_122 : StackLang.HolProg 64 :=
.seq rawBody305_116 rawBody305_121

def rawBody305_123 : StackLang.HolProg 64 :=
.seq rawBody305_115 rawBody305_122

def rawBody305_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_125 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody305_126 : StackLang.HolProg 64 :=
.seq rawBody305_124 rawBody305_125

def rawBody305_127 : StackLang.HolProg 64 :=
.call (some (rawBody305_123, 0, 305, 4)) (Sum.inl 294) (some (rawBody305_126, 305, 5))

def rawBody305_128 : StackLang.HolProg 64 :=
.seq rawBody305_114 rawBody305_127

def rawBody305_129 : StackLang.HolProg 64 :=
.seq rawBody305_113 rawBody305_128

def rawBody305_130 : StackLang.HolProg 64 :=
.seq rawBody305_112 rawBody305_129

def rawBody305_131 : StackLang.HolProg 64 :=
.seq rawBody305_93 rawBody305_130

def rawBody305_132 : StackLang.HolProg 64 :=
.seq rawBody305_90 rawBody305_131

def rawBody305_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody305_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody305_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody305_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody305_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody305_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody305_140 : StackLang.HolProg 64 :=
.seq rawBody305_138 rawBody305_139

def rawBody305_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 841#64)

def rawBody305_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody305_144 : StackLang.HolProg 64 :=
.seq rawBody305_142 rawBody305_143

def rawBody305_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody305_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody305_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody305_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 305 7

def rawBody305_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody305_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody305_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody305_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody305_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody305_155 : StackLang.HolProg 64 :=
.seq rawBody305_153 rawBody305_154

def rawBody305_156 : StackLang.HolProg 64 :=
.seq rawBody305_152 rawBody305_155

def rawBody305_157 : StackLang.HolProg 64 :=
.seq rawBody305_151 rawBody305_156

def rawBody305_158 : StackLang.HolProg 64 :=
.seq rawBody305_150 rawBody305_157

def rawBody305_159 : StackLang.HolProg 64 :=
.seq rawBody305_149 rawBody305_158

def rawBody305_160 : StackLang.HolProg 64 :=
.seq rawBody305_148 rawBody305_159

def rawBody305_161 : StackLang.HolProg 64 :=
.seq rawBody305_147 rawBody305_160

def rawBody305_162 : StackLang.HolProg 64 :=
.seq rawBody305_146 rawBody305_161

def rawBody305_163 : StackLang.HolProg 64 :=
.seq rawBody305_145 rawBody305_162

def rawBody305_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody305_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody305_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody305_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody305_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody305_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody305_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody305_173 : StackLang.HolProg 64 :=
.seq rawBody305_171 rawBody305_172

def rawBody305_174 : StackLang.HolProg 64 :=
.seq rawBody305_170 rawBody305_173

def rawBody305_175 : StackLang.HolProg 64 :=
.seq rawBody305_169 rawBody305_174

def rawBody305_176 : StackLang.HolProg 64 :=
.seq rawBody305_168 rawBody305_175

def rawBody305_177 : StackLang.HolProg 64 :=
.seq rawBody305_167 rawBody305_176

def rawBody305_178 : StackLang.HolProg 64 :=
.seq rawBody305_166 rawBody305_177

def rawBody305_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody305_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody305_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody305_182 : StackLang.HolProg 64 :=
.seq rawBody305_180 rawBody305_181

def rawBody305_183 : StackLang.HolProg 64 :=
.seq rawBody305_179 rawBody305_182

def rawBody305_184 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody305_185 : StackLang.HolProg 64 :=
.seq rawBody305_183 rawBody305_184

def rawBody305_186 : StackLang.HolProg 64 :=
.call (some (rawBody305_178, 0, 305, 6)) (Sum.inl 286) (some (rawBody305_185, 305, 7))

def rawBody305_187 : StackLang.HolProg 64 :=
.seq rawBody305_165 rawBody305_186

def rawBody305_188 : StackLang.HolProg 64 :=
.seq rawBody305_164 rawBody305_187

def rawBody305_189 : StackLang.HolProg 64 :=
.seq rawBody305_163 rawBody305_188

def rawBody305_190 : StackLang.HolProg 64 :=
.seq rawBody305_144 rawBody305_189

def rawBody305_191 : StackLang.HolProg 64 :=
.seq rawBody305_141 rawBody305_190

def rawBody305_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody305_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_194 : StackLang.HolProg 64 :=
.seq rawBody305_192 rawBody305_193

def rawBody305_195 : StackLang.HolProg 64 :=
.seq rawBody305_191 rawBody305_194

def rawBody305_196 : StackLang.HolProg 64 :=
.seq rawBody305_140 rawBody305_195

def rawBody305_197 : StackLang.HolProg 64 :=
.seq rawBody305_137 rawBody305_196

def rawBody305_198 : StackLang.HolProg 64 :=
.seq rawBody305_136 rawBody305_197

def rawBody305_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody305_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody305_201 : StackLang.HolProg 64 :=
.seq rawBody305_199 rawBody305_200

def rawBody305_202 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody305_198 rawBody305_201

def rawBody305_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody305_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody305_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 842#64)

def rawBody305_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody305_208 : StackLang.HolProg 64 :=
.seq rawBody305_206 rawBody305_207

def rawBody305_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody305_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody305_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody305_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 305 9

def rawBody305_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody305_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody305_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody305_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody305_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody305_219 : StackLang.HolProg 64 :=
.seq rawBody305_217 rawBody305_218

def rawBody305_220 : StackLang.HolProg 64 :=
.seq rawBody305_216 rawBody305_219

def rawBody305_221 : StackLang.HolProg 64 :=
.seq rawBody305_215 rawBody305_220

def rawBody305_222 : StackLang.HolProg 64 :=
.seq rawBody305_214 rawBody305_221

def rawBody305_223 : StackLang.HolProg 64 :=
.seq rawBody305_213 rawBody305_222

def rawBody305_224 : StackLang.HolProg 64 :=
.seq rawBody305_212 rawBody305_223

def rawBody305_225 : StackLang.HolProg 64 :=
.seq rawBody305_211 rawBody305_224

def rawBody305_226 : StackLang.HolProg 64 :=
.seq rawBody305_210 rawBody305_225

def rawBody305_227 : StackLang.HolProg 64 :=
.seq rawBody305_209 rawBody305_226

def rawBody305_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody305_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody305_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody305_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody305_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody305_235 : StackLang.HolProg 64 :=
.seq rawBody305_233 rawBody305_234

def rawBody305_236 : StackLang.HolProg 64 :=
.seq rawBody305_232 rawBody305_235

def rawBody305_237 : StackLang.HolProg 64 :=
.seq rawBody305_231 rawBody305_236

def rawBody305_238 : StackLang.HolProg 64 :=
.seq rawBody305_230 rawBody305_237

def rawBody305_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_240 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody305_241 : StackLang.HolProg 64 :=
.seq rawBody305_239 rawBody305_240

def rawBody305_242 : StackLang.HolProg 64 :=
.call (some (rawBody305_238, 0, 305, 8)) (Sum.inl 304) (some (rawBody305_241, 305, 9))

def rawBody305_243 : StackLang.HolProg 64 :=
.seq rawBody305_229 rawBody305_242

def rawBody305_244 : StackLang.HolProg 64 :=
.seq rawBody305_228 rawBody305_243

def rawBody305_245 : StackLang.HolProg 64 :=
.seq rawBody305_227 rawBody305_244

def rawBody305_246 : StackLang.HolProg 64 :=
.seq rawBody305_208 rawBody305_245

def rawBody305_247 : StackLang.HolProg 64 :=
.seq rawBody305_205 rawBody305_246

def rawBody305_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody305_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def rawBody305_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody305_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def rawBody305_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def rawBody305_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 843#64)

def rawBody305_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody305_257 : StackLang.HolProg 64 :=
.seq rawBody305_255 rawBody305_256

def rawBody305_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody305_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody305_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody305_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 305 11

def rawBody305_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody305_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody305_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody305_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody305_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody305_268 : StackLang.HolProg 64 :=
.seq rawBody305_266 rawBody305_267

def rawBody305_269 : StackLang.HolProg 64 :=
.seq rawBody305_265 rawBody305_268

def rawBody305_270 : StackLang.HolProg 64 :=
.seq rawBody305_264 rawBody305_269

def rawBody305_271 : StackLang.HolProg 64 :=
.seq rawBody305_263 rawBody305_270

def rawBody305_272 : StackLang.HolProg 64 :=
.seq rawBody305_262 rawBody305_271

def rawBody305_273 : StackLang.HolProg 64 :=
.seq rawBody305_261 rawBody305_272

def rawBody305_274 : StackLang.HolProg 64 :=
.seq rawBody305_260 rawBody305_273

def rawBody305_275 : StackLang.HolProg 64 :=
.seq rawBody305_259 rawBody305_274

def rawBody305_276 : StackLang.HolProg 64 :=
.seq rawBody305_258 rawBody305_275

def rawBody305_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody305_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody305_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody305_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody305_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody305_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody305_285 : StackLang.HolProg 64 :=
.seq rawBody305_283 rawBody305_284

def rawBody305_286 : StackLang.HolProg 64 :=
.seq rawBody305_282 rawBody305_285

def rawBody305_287 : StackLang.HolProg 64 :=
.seq rawBody305_281 rawBody305_286

def rawBody305_288 : StackLang.HolProg 64 :=
.seq rawBody305_280 rawBody305_287

def rawBody305_289 : StackLang.HolProg 64 :=
.seq rawBody305_279 rawBody305_288

def rawBody305_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody305_291 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody305_292 : StackLang.HolProg 64 :=
.seq rawBody305_290 rawBody305_291

def rawBody305_293 : StackLang.HolProg 64 :=
.call (some (rawBody305_289, 0, 305, 10)) (Sum.inl 68) (some (rawBody305_292, 305, 11))

def rawBody305_294 : StackLang.HolProg 64 :=
.seq rawBody305_278 rawBody305_293

def rawBody305_295 : StackLang.HolProg 64 :=
.seq rawBody305_277 rawBody305_294

def rawBody305_296 : StackLang.HolProg 64 :=
.seq rawBody305_276 rawBody305_295

def rawBody305_297 : StackLang.HolProg 64 :=
.seq rawBody305_257 rawBody305_296

def rawBody305_298 : StackLang.HolProg 64 :=
.seq rawBody305_254 rawBody305_297

def rawBody305_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody305_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody305_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def rawBody305_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def rawBody305_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 844#64)

def rawBody305_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody305_306 : StackLang.HolProg 64 :=
.seq rawBody305_304 rawBody305_305

def rawBody305_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody305_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody305_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody305_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 305 13

def rawBody305_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody305_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody305_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody305_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody305_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody305_317 : StackLang.HolProg 64 :=
.seq rawBody305_315 rawBody305_316

def rawBody305_318 : StackLang.HolProg 64 :=
.seq rawBody305_314 rawBody305_317

def rawBody305_319 : StackLang.HolProg 64 :=
.seq rawBody305_313 rawBody305_318

def rawBody305_320 : StackLang.HolProg 64 :=
.seq rawBody305_312 rawBody305_319

def rawBody305_321 : StackLang.HolProg 64 :=
.seq rawBody305_311 rawBody305_320

def rawBody305_322 : StackLang.HolProg 64 :=
.seq rawBody305_310 rawBody305_321

def rawBody305_323 : StackLang.HolProg 64 :=
.seq rawBody305_309 rawBody305_322

def rawBody305_324 : StackLang.HolProg 64 :=
.seq rawBody305_308 rawBody305_323

def rawBody305_325 : StackLang.HolProg 64 :=
.seq rawBody305_307 rawBody305_324

def rawBody305_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody305_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody305_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody305_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody305_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody305_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody305_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody305_335 : StackLang.HolProg 64 :=
.seq rawBody305_333 rawBody305_334

def rawBody305_336 : StackLang.HolProg 64 :=
.seq rawBody305_332 rawBody305_335

def rawBody305_337 : StackLang.HolProg 64 :=
.seq rawBody305_331 rawBody305_336

def rawBody305_338 : StackLang.HolProg 64 :=
.seq rawBody305_330 rawBody305_337

def rawBody305_339 : StackLang.HolProg 64 :=
.seq rawBody305_329 rawBody305_338

def rawBody305_340 : StackLang.HolProg 64 :=
.seq rawBody305_328 rawBody305_339

def rawBody305_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody305_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody305_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody305_344 : StackLang.HolProg 64 :=
.seq rawBody305_342 rawBody305_343

def rawBody305_345 : StackLang.HolProg 64 :=
.seq rawBody305_341 rawBody305_344

def rawBody305_346 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody305_347 : StackLang.HolProg 64 :=
.seq rawBody305_345 rawBody305_346

def rawBody305_348 : StackLang.HolProg 64 :=
.call (some (rawBody305_340, 0, 305, 12)) (Sum.inl 77) (some (rawBody305_347, 305, 13))

def rawBody305_349 : StackLang.HolProg 64 :=
.seq rawBody305_327 rawBody305_348

def rawBody305_350 : StackLang.HolProg 64 :=
.seq rawBody305_326 rawBody305_349

def rawBody305_351 : StackLang.HolProg 64 :=
.seq rawBody305_325 rawBody305_350

def rawBody305_352 : StackLang.HolProg 64 :=
.seq rawBody305_306 rawBody305_351

def rawBody305_353 : StackLang.HolProg 64 :=
.seq rawBody305_303 rawBody305_352

def rawBody305_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody305_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def rawBody305_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody305_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody305_360 : StackLang.HolProg 64 :=
.seq rawBody305_358 rawBody305_359

def rawBody305_361 : StackLang.HolProg 64 :=
.seq rawBody305_357 rawBody305_360

def rawBody305_362 : StackLang.HolProg 64 :=
.seq rawBody305_356 rawBody305_361

def rawBody305_363 : StackLang.HolProg 64 :=
.seq rawBody305_355 rawBody305_362

def rawBody305_364 : StackLang.HolProg 64 :=
.seq rawBody305_354 rawBody305_363

def rawBody305_365 : StackLang.HolProg 64 :=
.seq rawBody305_353 rawBody305_364

def rawBody305_366 : StackLang.HolProg 64 :=
.seq rawBody305_302 rawBody305_365

def rawBody305_367 : StackLang.HolProg 64 :=
.seq rawBody305_301 rawBody305_366

def rawBody305_368 : StackLang.HolProg 64 :=
.seq rawBody305_300 rawBody305_367

def rawBody305_369 : StackLang.HolProg 64 :=
.seq rawBody305_299 rawBody305_368

def rawBody305_370 : StackLang.HolProg 64 :=
.seq rawBody305_298 rawBody305_369

def rawBody305_371 : StackLang.HolProg 64 :=
.seq rawBody305_253 rawBody305_370

def rawBody305_372 : StackLang.HolProg 64 :=
.seq rawBody305_252 rawBody305_371

def rawBody305_373 : StackLang.HolProg 64 :=
.seq rawBody305_251 rawBody305_372

def rawBody305_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody305_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody305_376 : StackLang.HolProg 64 :=
.seq rawBody305_374 rawBody305_375

def rawBody305_377 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody305_373 rawBody305_376

def rawBody305_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody305_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody305_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody305_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody305_382 : StackLang.HolProg 64 :=
.seq rawBody305_380 rawBody305_381

def rawBody305_383 : StackLang.HolProg 64 :=
.seq rawBody305_379 rawBody305_382

def rawBody305_384 : StackLang.HolProg 64 :=
.seq rawBody305_378 rawBody305_383

def rawBody305_385 : StackLang.HolProg 64 :=
.seq rawBody305_377 rawBody305_384

def rawBody305_386 : StackLang.HolProg 64 :=
.seq rawBody305_250 rawBody305_385

def rawBody305_387 : StackLang.HolProg 64 :=
.seq rawBody305_249 rawBody305_386

def rawBody305_388 : StackLang.HolProg 64 :=
.seq rawBody305_248 rawBody305_387

def rawBody305_389 : StackLang.HolProg 64 :=
.seq rawBody305_247 rawBody305_388

def rawBody305_390 : StackLang.HolProg 64 :=
.seq rawBody305_204 rawBody305_389

def rawBody305_391 : StackLang.HolProg 64 :=
.seq rawBody305_203 rawBody305_390

def rawBody305_392 : StackLang.HolProg 64 :=
.seq rawBody305_202 rawBody305_391

def rawBody305_393 : StackLang.HolProg 64 :=
.seq rawBody305_135 rawBody305_392

def rawBody305_394 : StackLang.HolProg 64 :=
.seq rawBody305_134 rawBody305_393

def rawBody305_395 : StackLang.HolProg 64 :=
.seq rawBody305_133 rawBody305_394

def rawBody305_396 : StackLang.HolProg 64 :=
.seq rawBody305_132 rawBody305_395

def rawBody305_397 : StackLang.HolProg 64 :=
.seq rawBody305_89 rawBody305_396

def rawBody305_398 : StackLang.HolProg 64 :=
.seq rawBody305_82 rawBody305_397

def rawBody305_399 : StackLang.HolProg 64 :=
.seq rawBody305_81 rawBody305_398

def rawBody305_400 : StackLang.HolProg 64 :=
.seq rawBody305_80 rawBody305_399

def rawBody305_401 : StackLang.HolProg 64 :=
.seq rawBody305_69 rawBody305_400

def rawBody305_402 : StackLang.HolProg 64 :=
.seq rawBody305_68 rawBody305_401

def rawBody305_403 : StackLang.HolProg 64 :=
.seq rawBody305_67 rawBody305_402

def rawBody305_404 : StackLang.HolProg 64 :=
.seq rawBody305_66 rawBody305_403

def rawBody305_405 : StackLang.HolProg 64 :=
.seq rawBody305_13 rawBody305_404

def rawBody305_406 : StackLang.HolProg 64 :=
.seq rawBody305_8 rawBody305_405

def rawBody305_407 : StackLang.HolProg 64 :=
.seq rawBody305_7 rawBody305_406

def rawBody305_408 : StackLang.HolProg 64 :=
.seq rawBody305_6 rawBody305_407

def rawBody305_409 : StackLang.HolProg 64 :=
.seq rawBody305_5 rawBody305_408

def rawBody305_410 : StackLang.HolProg 64 :=
.seq rawBody305_4 rawBody305_409

def rawBody305_411 : StackLang.HolProg 64 :=
.seq rawBody305_3 rawBody305_410

def rawBody305_412 : StackLang.HolProg 64 :=
.seq rawBody305_0 rawBody305_411

def raw305 : StackLang.HolProg 64 := rawBody305_412
theorem raw305_eq : StackRawCall.compTop RawInfo.rawInfo (function305 (.list [])).1 = raw305 := by
  kernel_rfl
#print axioms raw305_eq
end InitECandidate.Proofs.BackendStages
