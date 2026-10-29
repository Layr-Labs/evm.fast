import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function453
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody453_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody453_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody453_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody453_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody453_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody453_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551400#64))

def rawBody453_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody453_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody453_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody453_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody453_10 : StackLang.HolProg 64 :=
.seq rawBody453_8 rawBody453_9

def rawBody453_11 : StackLang.HolProg 64 :=
.seq rawBody453_7 rawBody453_10

def rawBody453_12 : StackLang.HolProg 64 :=
.seq rawBody453_6 rawBody453_11

def rawBody453_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody453_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1376#64)

def rawBody453_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody453_16 : StackLang.HolProg 64 :=
.seq rawBody453_14 rawBody453_15

def rawBody453_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody453_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody453_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody453_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 453 3

def rawBody453_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody453_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody453_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody453_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody453_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody453_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody453_27 : StackLang.HolProg 64 :=
.seq rawBody453_25 rawBody453_26

def rawBody453_28 : StackLang.HolProg 64 :=
.seq rawBody453_24 rawBody453_27

def rawBody453_29 : StackLang.HolProg 64 :=
.seq rawBody453_23 rawBody453_28

def rawBody453_30 : StackLang.HolProg 64 :=
.seq rawBody453_22 rawBody453_29

def rawBody453_31 : StackLang.HolProg 64 :=
.seq rawBody453_21 rawBody453_30

def rawBody453_32 : StackLang.HolProg 64 :=
.seq rawBody453_20 rawBody453_31

def rawBody453_33 : StackLang.HolProg 64 :=
.seq rawBody453_19 rawBody453_32

def rawBody453_34 : StackLang.HolProg 64 :=
.seq rawBody453_18 rawBody453_33

def rawBody453_35 : StackLang.HolProg 64 :=
.seq rawBody453_17 rawBody453_34

def rawBody453_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody453_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody453_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody453_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody453_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody453_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody453_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody453_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody453_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody453_45 : StackLang.HolProg 64 :=
.seq rawBody453_43 rawBody453_44

def rawBody453_46 : StackLang.HolProg 64 :=
.seq rawBody453_42 rawBody453_45

def rawBody453_47 : StackLang.HolProg 64 :=
.seq rawBody453_41 rawBody453_46

def rawBody453_48 : StackLang.HolProg 64 :=
.seq rawBody453_40 rawBody453_47

def rawBody453_49 : StackLang.HolProg 64 :=
.seq rawBody453_39 rawBody453_48

def rawBody453_50 : StackLang.HolProg 64 :=
.seq rawBody453_38 rawBody453_49

def rawBody453_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody453_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody453_53 : StackLang.HolProg 64 :=
.seq rawBody453_51 rawBody453_52

def rawBody453_54 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody453_55 : StackLang.HolProg 64 :=
.seq rawBody453_53 rawBody453_54

def rawBody453_56 : StackLang.HolProg 64 :=
.call (some (rawBody453_50, 0, 453, 2)) (Sum.inl 186) (some (rawBody453_55, 453, 3))

def rawBody453_57 : StackLang.HolProg 64 :=
.seq rawBody453_37 rawBody453_56

def rawBody453_58 : StackLang.HolProg 64 :=
.seq rawBody453_36 rawBody453_57

def rawBody453_59 : StackLang.HolProg 64 :=
.seq rawBody453_35 rawBody453_58

def rawBody453_60 : StackLang.HolProg 64 :=
.seq rawBody453_16 rawBody453_59

def rawBody453_61 : StackLang.HolProg 64 :=
.seq rawBody453_13 rawBody453_60

def rawBody453_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody453_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody453_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody453_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody453_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody453_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody453_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody453_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody453_70 : StackLang.HolProg 64 :=
.seq rawBody453_68 rawBody453_69

def rawBody453_71 : StackLang.HolProg 64 :=
.seq rawBody453_67 rawBody453_70

def rawBody453_72 : StackLang.HolProg 64 :=
.seq rawBody453_66 rawBody453_71

def rawBody453_73 : StackLang.HolProg 64 :=
.seq rawBody453_65 rawBody453_72

def rawBody453_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody453_75 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody453_73 rawBody453_74

def rawBody453_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody453_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody453_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody453_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody453_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody453_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody453_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def rawBody453_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody453_84 : StackLang.HolProg 64 :=
.seq rawBody453_82 rawBody453_83

def rawBody453_85 : StackLang.HolProg 64 :=
.seq rawBody453_81 rawBody453_84

def rawBody453_86 : StackLang.HolProg 64 :=
.seq rawBody453_80 rawBody453_85

def rawBody453_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody453_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1377#64)

def rawBody453_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody453_90 : StackLang.HolProg 64 :=
.seq rawBody453_88 rawBody453_89

def rawBody453_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody453_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody453_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody453_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 453 5

def rawBody453_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody453_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody453_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody453_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody453_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody453_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody453_101 : StackLang.HolProg 64 :=
.seq rawBody453_99 rawBody453_100

def rawBody453_102 : StackLang.HolProg 64 :=
.seq rawBody453_98 rawBody453_101

def rawBody453_103 : StackLang.HolProg 64 :=
.seq rawBody453_97 rawBody453_102

def rawBody453_104 : StackLang.HolProg 64 :=
.seq rawBody453_96 rawBody453_103

def rawBody453_105 : StackLang.HolProg 64 :=
.seq rawBody453_95 rawBody453_104

def rawBody453_106 : StackLang.HolProg 64 :=
.seq rawBody453_94 rawBody453_105

def rawBody453_107 : StackLang.HolProg 64 :=
.seq rawBody453_93 rawBody453_106

def rawBody453_108 : StackLang.HolProg 64 :=
.seq rawBody453_92 rawBody453_107

def rawBody453_109 : StackLang.HolProg 64 :=
.seq rawBody453_91 rawBody453_108

def rawBody453_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody453_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody453_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody453_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody453_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody453_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody453_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody453_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody453_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody453_119 : StackLang.HolProg 64 :=
.seq rawBody453_117 rawBody453_118

def rawBody453_120 : StackLang.HolProg 64 :=
.seq rawBody453_116 rawBody453_119

def rawBody453_121 : StackLang.HolProg 64 :=
.seq rawBody453_115 rawBody453_120

def rawBody453_122 : StackLang.HolProg 64 :=
.seq rawBody453_114 rawBody453_121

def rawBody453_123 : StackLang.HolProg 64 :=
.seq rawBody453_113 rawBody453_122

def rawBody453_124 : StackLang.HolProg 64 :=
.seq rawBody453_112 rawBody453_123

def rawBody453_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody453_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody453_127 : StackLang.HolProg 64 :=
.seq rawBody453_125 rawBody453_126

def rawBody453_128 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody453_129 : StackLang.HolProg 64 :=
.seq rawBody453_127 rawBody453_128

def rawBody453_130 : StackLang.HolProg 64 :=
.call (some (rawBody453_124, 0, 453, 4)) (Sum.inl 186) (some (rawBody453_129, 453, 5))

def rawBody453_131 : StackLang.HolProg 64 :=
.seq rawBody453_111 rawBody453_130

def rawBody453_132 : StackLang.HolProg 64 :=
.seq rawBody453_110 rawBody453_131

def rawBody453_133 : StackLang.HolProg 64 :=
.seq rawBody453_109 rawBody453_132

def rawBody453_134 : StackLang.HolProg 64 :=
.seq rawBody453_90 rawBody453_133

def rawBody453_135 : StackLang.HolProg 64 :=
.seq rawBody453_87 rawBody453_134

def rawBody453_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody453_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody453_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody453_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody453_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody453_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody453_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody453_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody453_144 : StackLang.HolProg 64 :=
.seq rawBody453_142 rawBody453_143

def rawBody453_145 : StackLang.HolProg 64 :=
.seq rawBody453_141 rawBody453_144

def rawBody453_146 : StackLang.HolProg 64 :=
.seq rawBody453_140 rawBody453_145

def rawBody453_147 : StackLang.HolProg 64 :=
.seq rawBody453_139 rawBody453_146

def rawBody453_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody453_149 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody453_147 rawBody453_148

def rawBody453_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody453_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody453_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody453_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 40#64)

def rawBody453_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody453_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody453_156 : StackLang.HolProg 64 :=
.seq rawBody453_154 rawBody453_155

def rawBody453_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody453_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1378#64)

def rawBody453_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody453_160 : StackLang.HolProg 64 :=
.seq rawBody453_158 rawBody453_159

def rawBody453_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody453_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody453_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody453_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 453 7

def rawBody453_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody453_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody453_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody453_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody453_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody453_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody453_171 : StackLang.HolProg 64 :=
.seq rawBody453_169 rawBody453_170

def rawBody453_172 : StackLang.HolProg 64 :=
.seq rawBody453_168 rawBody453_171

def rawBody453_173 : StackLang.HolProg 64 :=
.seq rawBody453_167 rawBody453_172

def rawBody453_174 : StackLang.HolProg 64 :=
.seq rawBody453_166 rawBody453_173

def rawBody453_175 : StackLang.HolProg 64 :=
.seq rawBody453_165 rawBody453_174

def rawBody453_176 : StackLang.HolProg 64 :=
.seq rawBody453_164 rawBody453_175

def rawBody453_177 : StackLang.HolProg 64 :=
.seq rawBody453_163 rawBody453_176

def rawBody453_178 : StackLang.HolProg 64 :=
.seq rawBody453_162 rawBody453_177

def rawBody453_179 : StackLang.HolProg 64 :=
.seq rawBody453_161 rawBody453_178

def rawBody453_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody453_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody453_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody453_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody453_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody453_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody453_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody453_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody453_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody453_189 : StackLang.HolProg 64 :=
.seq rawBody453_187 rawBody453_188

def rawBody453_190 : StackLang.HolProg 64 :=
.seq rawBody453_186 rawBody453_189

def rawBody453_191 : StackLang.HolProg 64 :=
.seq rawBody453_185 rawBody453_190

def rawBody453_192 : StackLang.HolProg 64 :=
.seq rawBody453_184 rawBody453_191

def rawBody453_193 : StackLang.HolProg 64 :=
.seq rawBody453_183 rawBody453_192

def rawBody453_194 : StackLang.HolProg 64 :=
.seq rawBody453_182 rawBody453_193

def rawBody453_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody453_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody453_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody453_198 : StackLang.HolProg 64 :=
.seq rawBody453_196 rawBody453_197

def rawBody453_199 : StackLang.HolProg 64 :=
.seq rawBody453_195 rawBody453_198

def rawBody453_200 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody453_201 : StackLang.HolProg 64 :=
.seq rawBody453_199 rawBody453_200

def rawBody453_202 : StackLang.HolProg 64 :=
.call (some (rawBody453_194, 0, 453, 6)) (Sum.inl 451) (some (rawBody453_201, 453, 7))

def rawBody453_203 : StackLang.HolProg 64 :=
.seq rawBody453_181 rawBody453_202

def rawBody453_204 : StackLang.HolProg 64 :=
.seq rawBody453_180 rawBody453_203

def rawBody453_205 : StackLang.HolProg 64 :=
.seq rawBody453_179 rawBody453_204

def rawBody453_206 : StackLang.HolProg 64 :=
.seq rawBody453_160 rawBody453_205

def rawBody453_207 : StackLang.HolProg 64 :=
.seq rawBody453_157 rawBody453_206

def rawBody453_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody453_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody453_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody453_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody453_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody453_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody453_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody453_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1379#64)

def rawBody453_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody453_217 : StackLang.HolProg 64 :=
.seq rawBody453_215 rawBody453_216

def rawBody453_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody453_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody453_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody453_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 453 9

def rawBody453_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody453_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody453_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody453_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody453_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody453_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody453_228 : StackLang.HolProg 64 :=
.seq rawBody453_226 rawBody453_227

def rawBody453_229 : StackLang.HolProg 64 :=
.seq rawBody453_225 rawBody453_228

def rawBody453_230 : StackLang.HolProg 64 :=
.seq rawBody453_224 rawBody453_229

def rawBody453_231 : StackLang.HolProg 64 :=
.seq rawBody453_223 rawBody453_230

def rawBody453_232 : StackLang.HolProg 64 :=
.seq rawBody453_222 rawBody453_231

def rawBody453_233 : StackLang.HolProg 64 :=
.seq rawBody453_221 rawBody453_232

def rawBody453_234 : StackLang.HolProg 64 :=
.seq rawBody453_220 rawBody453_233

def rawBody453_235 : StackLang.HolProg 64 :=
.seq rawBody453_219 rawBody453_234

def rawBody453_236 : StackLang.HolProg 64 :=
.seq rawBody453_218 rawBody453_235

def rawBody453_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody453_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody453_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody453_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody453_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody453_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody453_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody453_244 : StackLang.HolProg 64 :=
.seq rawBody453_242 rawBody453_243

def rawBody453_245 : StackLang.HolProg 64 :=
.seq rawBody453_241 rawBody453_244

def rawBody453_246 : StackLang.HolProg 64 :=
.seq rawBody453_240 rawBody453_245

def rawBody453_247 : StackLang.HolProg 64 :=
.seq rawBody453_239 rawBody453_246

def rawBody453_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody453_249 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody453_250 : StackLang.HolProg 64 :=
.seq rawBody453_248 rawBody453_249

def rawBody453_251 : StackLang.HolProg 64 :=
.call (some (rawBody453_247, 0, 453, 8)) (Sum.inl 193) (some (rawBody453_250, 453, 9))

def rawBody453_252 : StackLang.HolProg 64 :=
.seq rawBody453_238 rawBody453_251

def rawBody453_253 : StackLang.HolProg 64 :=
.seq rawBody453_237 rawBody453_252

def rawBody453_254 : StackLang.HolProg 64 :=
.seq rawBody453_236 rawBody453_253

def rawBody453_255 : StackLang.HolProg 64 :=
.seq rawBody453_217 rawBody453_254

def rawBody453_256 : StackLang.HolProg 64 :=
.seq rawBody453_214 rawBody453_255

def rawBody453_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody453_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody453_259 : StackLang.HolProg 64 :=
.seq rawBody453_257 rawBody453_258

def rawBody453_260 : StackLang.HolProg 64 :=
.seq rawBody453_256 rawBody453_259

def rawBody453_261 : StackLang.HolProg 64 :=
.seq rawBody453_213 rawBody453_260

def rawBody453_262 : StackLang.HolProg 64 :=
.seq rawBody453_212 rawBody453_261

def rawBody453_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody453_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody453_265 : StackLang.HolProg 64 :=
.seq rawBody453_263 rawBody453_264

def rawBody453_266 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody453_262 rawBody453_265

def rawBody453_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody453_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody453_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody453_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody453_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody453_272 : StackLang.HolProg 64 :=
.seq rawBody453_270 rawBody453_271

def rawBody453_273 : StackLang.HolProg 64 :=
.seq rawBody453_269 rawBody453_272

def rawBody453_274 : StackLang.HolProg 64 :=
.seq rawBody453_268 rawBody453_273

def rawBody453_275 : StackLang.HolProg 64 :=
.seq rawBody453_267 rawBody453_274

def rawBody453_276 : StackLang.HolProg 64 :=
.seq rawBody453_266 rawBody453_275

def rawBody453_277 : StackLang.HolProg 64 :=
.seq rawBody453_211 rawBody453_276

def rawBody453_278 : StackLang.HolProg 64 :=
.seq rawBody453_210 rawBody453_277

def rawBody453_279 : StackLang.HolProg 64 :=
.seq rawBody453_209 rawBody453_278

def rawBody453_280 : StackLang.HolProg 64 :=
.seq rawBody453_208 rawBody453_279

def rawBody453_281 : StackLang.HolProg 64 :=
.seq rawBody453_207 rawBody453_280

def rawBody453_282 : StackLang.HolProg 64 :=
.seq rawBody453_156 rawBody453_281

def rawBody453_283 : StackLang.HolProg 64 :=
.seq rawBody453_153 rawBody453_282

def rawBody453_284 : StackLang.HolProg 64 :=
.seq rawBody453_152 rawBody453_283

def rawBody453_285 : StackLang.HolProg 64 :=
.seq rawBody453_151 rawBody453_284

def rawBody453_286 : StackLang.HolProg 64 :=
.seq rawBody453_150 rawBody453_285

def rawBody453_287 : StackLang.HolProg 64 :=
.seq rawBody453_149 rawBody453_286

def rawBody453_288 : StackLang.HolProg 64 :=
.seq rawBody453_138 rawBody453_287

def rawBody453_289 : StackLang.HolProg 64 :=
.seq rawBody453_137 rawBody453_288

def rawBody453_290 : StackLang.HolProg 64 :=
.seq rawBody453_136 rawBody453_289

def rawBody453_291 : StackLang.HolProg 64 :=
.seq rawBody453_135 rawBody453_290

def rawBody453_292 : StackLang.HolProg 64 :=
.seq rawBody453_86 rawBody453_291

def rawBody453_293 : StackLang.HolProg 64 :=
.seq rawBody453_79 rawBody453_292

def rawBody453_294 : StackLang.HolProg 64 :=
.seq rawBody453_78 rawBody453_293

def rawBody453_295 : StackLang.HolProg 64 :=
.seq rawBody453_77 rawBody453_294

def rawBody453_296 : StackLang.HolProg 64 :=
.seq rawBody453_76 rawBody453_295

def rawBody453_297 : StackLang.HolProg 64 :=
.seq rawBody453_75 rawBody453_296

def rawBody453_298 : StackLang.HolProg 64 :=
.seq rawBody453_64 rawBody453_297

def rawBody453_299 : StackLang.HolProg 64 :=
.seq rawBody453_63 rawBody453_298

def rawBody453_300 : StackLang.HolProg 64 :=
.seq rawBody453_62 rawBody453_299

def rawBody453_301 : StackLang.HolProg 64 :=
.seq rawBody453_61 rawBody453_300

def rawBody453_302 : StackLang.HolProg 64 :=
.seq rawBody453_12 rawBody453_301

def rawBody453_303 : StackLang.HolProg 64 :=
.seq rawBody453_5 rawBody453_302

def rawBody453_304 : StackLang.HolProg 64 :=
.seq rawBody453_4 rawBody453_303

def rawBody453_305 : StackLang.HolProg 64 :=
.seq rawBody453_3 rawBody453_304

def rawBody453_306 : StackLang.HolProg 64 :=
.seq rawBody453_2 rawBody453_305

def rawBody453_307 : StackLang.HolProg 64 :=
.seq rawBody453_1 rawBody453_306

def rawBody453_308 : StackLang.HolProg 64 :=
.seq rawBody453_0 rawBody453_307

def raw453 : StackLang.HolProg 64 := rawBody453_308
theorem raw453_eq : StackRawCall.compTop RawInfo.rawInfo (function453 (.list [])).1 = raw453 := by
  kernel_rfl
#print axioms raw453_eq
end InitECandidate.Proofs.BackendStages
