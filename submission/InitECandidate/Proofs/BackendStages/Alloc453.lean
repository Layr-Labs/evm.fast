import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw453
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody453_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody453_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody453_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody453_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody453_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody453_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551400#64))

def AllocBody453_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody453_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody453_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody453_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody453_10 : StackLang.HolProg 64 :=
.seq AllocBody453_8 AllocBody453_9

def AllocBody453_11 : StackLang.HolProg 64 :=
.seq AllocBody453_7 AllocBody453_10

def AllocBody453_12 : StackLang.HolProg 64 :=
.seq AllocBody453_6 AllocBody453_11

def AllocBody453_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody453_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1376#64)

def AllocBody453_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody453_16 : StackLang.HolProg 64 :=
.seq AllocBody453_14 AllocBody453_15

def AllocBody453_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody453_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody453_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody453_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 453 3

def AllocBody453_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody453_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody453_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody453_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody453_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody453_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody453_27 : StackLang.HolProg 64 :=
.seq AllocBody453_25 AllocBody453_26

def AllocBody453_28 : StackLang.HolProg 64 :=
.seq AllocBody453_24 AllocBody453_27

def AllocBody453_29 : StackLang.HolProg 64 :=
.seq AllocBody453_23 AllocBody453_28

def AllocBody453_30 : StackLang.HolProg 64 :=
.seq AllocBody453_22 AllocBody453_29

def AllocBody453_31 : StackLang.HolProg 64 :=
.seq AllocBody453_21 AllocBody453_30

def AllocBody453_32 : StackLang.HolProg 64 :=
.seq AllocBody453_20 AllocBody453_31

def AllocBody453_33 : StackLang.HolProg 64 :=
.seq AllocBody453_19 AllocBody453_32

def AllocBody453_34 : StackLang.HolProg 64 :=
.seq AllocBody453_18 AllocBody453_33

def AllocBody453_35 : StackLang.HolProg 64 :=
.seq AllocBody453_17 AllocBody453_34

def AllocBody453_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody453_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody453_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody453_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody453_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody453_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody453_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody453_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody453_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody453_45 : StackLang.HolProg 64 :=
.seq AllocBody453_43 AllocBody453_44

def AllocBody453_46 : StackLang.HolProg 64 :=
.seq AllocBody453_42 AllocBody453_45

def AllocBody453_47 : StackLang.HolProg 64 :=
.seq AllocBody453_41 AllocBody453_46

def AllocBody453_48 : StackLang.HolProg 64 :=
.seq AllocBody453_40 AllocBody453_47

def AllocBody453_49 : StackLang.HolProg 64 :=
.seq AllocBody453_39 AllocBody453_48

def AllocBody453_50 : StackLang.HolProg 64 :=
.seq AllocBody453_38 AllocBody453_49

def AllocBody453_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody453_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody453_53 : StackLang.HolProg 64 :=
.seq AllocBody453_51 AllocBody453_52

def AllocBody453_54 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody453_55 : StackLang.HolProg 64 :=
.seq AllocBody453_53 AllocBody453_54

def AllocBody453_56 : StackLang.HolProg 64 :=
.call (some (AllocBody453_50, 0, 453, 2)) (Sum.inl 186) (some (AllocBody453_55, 453, 3))

def AllocBody453_57 : StackLang.HolProg 64 :=
.seq AllocBody453_37 AllocBody453_56

def AllocBody453_58 : StackLang.HolProg 64 :=
.seq AllocBody453_36 AllocBody453_57

def AllocBody453_59 : StackLang.HolProg 64 :=
.seq AllocBody453_35 AllocBody453_58

def AllocBody453_60 : StackLang.HolProg 64 :=
.seq AllocBody453_16 AllocBody453_59

def AllocBody453_61 : StackLang.HolProg 64 :=
.seq AllocBody453_13 AllocBody453_60

def AllocBody453_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody453_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody453_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody453_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody453_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody453_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody453_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody453_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody453_70 : StackLang.HolProg 64 :=
.seq AllocBody453_68 AllocBody453_69

def AllocBody453_71 : StackLang.HolProg 64 :=
.seq AllocBody453_67 AllocBody453_70

def AllocBody453_72 : StackLang.HolProg 64 :=
.seq AllocBody453_66 AllocBody453_71

def AllocBody453_73 : StackLang.HolProg 64 :=
.seq AllocBody453_65 AllocBody453_72

def AllocBody453_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody453_75 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody453_73 AllocBody453_74

def AllocBody453_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody453_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody453_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody453_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody453_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody453_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody453_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody453_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody453_84 : StackLang.HolProg 64 :=
.seq AllocBody453_82 AllocBody453_83

def AllocBody453_85 : StackLang.HolProg 64 :=
.seq AllocBody453_81 AllocBody453_84

def AllocBody453_86 : StackLang.HolProg 64 :=
.seq AllocBody453_80 AllocBody453_85

def AllocBody453_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody453_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1377#64)

def AllocBody453_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody453_90 : StackLang.HolProg 64 :=
.seq AllocBody453_88 AllocBody453_89

def AllocBody453_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody453_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody453_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody453_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 453 5

def AllocBody453_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody453_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody453_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody453_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody453_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody453_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody453_101 : StackLang.HolProg 64 :=
.seq AllocBody453_99 AllocBody453_100

def AllocBody453_102 : StackLang.HolProg 64 :=
.seq AllocBody453_98 AllocBody453_101

def AllocBody453_103 : StackLang.HolProg 64 :=
.seq AllocBody453_97 AllocBody453_102

def AllocBody453_104 : StackLang.HolProg 64 :=
.seq AllocBody453_96 AllocBody453_103

def AllocBody453_105 : StackLang.HolProg 64 :=
.seq AllocBody453_95 AllocBody453_104

def AllocBody453_106 : StackLang.HolProg 64 :=
.seq AllocBody453_94 AllocBody453_105

def AllocBody453_107 : StackLang.HolProg 64 :=
.seq AllocBody453_93 AllocBody453_106

def AllocBody453_108 : StackLang.HolProg 64 :=
.seq AllocBody453_92 AllocBody453_107

def AllocBody453_109 : StackLang.HolProg 64 :=
.seq AllocBody453_91 AllocBody453_108

def AllocBody453_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody453_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody453_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody453_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody453_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody453_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody453_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody453_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody453_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody453_119 : StackLang.HolProg 64 :=
.seq AllocBody453_117 AllocBody453_118

def AllocBody453_120 : StackLang.HolProg 64 :=
.seq AllocBody453_116 AllocBody453_119

def AllocBody453_121 : StackLang.HolProg 64 :=
.seq AllocBody453_115 AllocBody453_120

def AllocBody453_122 : StackLang.HolProg 64 :=
.seq AllocBody453_114 AllocBody453_121

def AllocBody453_123 : StackLang.HolProg 64 :=
.seq AllocBody453_113 AllocBody453_122

def AllocBody453_124 : StackLang.HolProg 64 :=
.seq AllocBody453_112 AllocBody453_123

def AllocBody453_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody453_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody453_127 : StackLang.HolProg 64 :=
.seq AllocBody453_125 AllocBody453_126

def AllocBody453_128 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody453_129 : StackLang.HolProg 64 :=
.seq AllocBody453_127 AllocBody453_128

def AllocBody453_130 : StackLang.HolProg 64 :=
.call (some (AllocBody453_124, 0, 453, 4)) (Sum.inl 186) (some (AllocBody453_129, 453, 5))

def AllocBody453_131 : StackLang.HolProg 64 :=
.seq AllocBody453_111 AllocBody453_130

def AllocBody453_132 : StackLang.HolProg 64 :=
.seq AllocBody453_110 AllocBody453_131

def AllocBody453_133 : StackLang.HolProg 64 :=
.seq AllocBody453_109 AllocBody453_132

def AllocBody453_134 : StackLang.HolProg 64 :=
.seq AllocBody453_90 AllocBody453_133

def AllocBody453_135 : StackLang.HolProg 64 :=
.seq AllocBody453_87 AllocBody453_134

def AllocBody453_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody453_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody453_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody453_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody453_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody453_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody453_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody453_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody453_144 : StackLang.HolProg 64 :=
.seq AllocBody453_142 AllocBody453_143

def AllocBody453_145 : StackLang.HolProg 64 :=
.seq AllocBody453_141 AllocBody453_144

def AllocBody453_146 : StackLang.HolProg 64 :=
.seq AllocBody453_140 AllocBody453_145

def AllocBody453_147 : StackLang.HolProg 64 :=
.seq AllocBody453_139 AllocBody453_146

def AllocBody453_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody453_149 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody453_147 AllocBody453_148

def AllocBody453_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody453_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody453_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody453_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 40#64)

def AllocBody453_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody453_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody453_156 : StackLang.HolProg 64 :=
.seq AllocBody453_154 AllocBody453_155

def AllocBody453_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody453_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1378#64)

def AllocBody453_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody453_160 : StackLang.HolProg 64 :=
.seq AllocBody453_158 AllocBody453_159

def AllocBody453_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody453_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody453_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody453_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 453 7

def AllocBody453_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody453_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody453_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody453_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody453_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody453_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody453_171 : StackLang.HolProg 64 :=
.seq AllocBody453_169 AllocBody453_170

def AllocBody453_172 : StackLang.HolProg 64 :=
.seq AllocBody453_168 AllocBody453_171

def AllocBody453_173 : StackLang.HolProg 64 :=
.seq AllocBody453_167 AllocBody453_172

def AllocBody453_174 : StackLang.HolProg 64 :=
.seq AllocBody453_166 AllocBody453_173

def AllocBody453_175 : StackLang.HolProg 64 :=
.seq AllocBody453_165 AllocBody453_174

def AllocBody453_176 : StackLang.HolProg 64 :=
.seq AllocBody453_164 AllocBody453_175

def AllocBody453_177 : StackLang.HolProg 64 :=
.seq AllocBody453_163 AllocBody453_176

def AllocBody453_178 : StackLang.HolProg 64 :=
.seq AllocBody453_162 AllocBody453_177

def AllocBody453_179 : StackLang.HolProg 64 :=
.seq AllocBody453_161 AllocBody453_178

def AllocBody453_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody453_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody453_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody453_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody453_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody453_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody453_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody453_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody453_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody453_189 : StackLang.HolProg 64 :=
.seq AllocBody453_187 AllocBody453_188

def AllocBody453_190 : StackLang.HolProg 64 :=
.seq AllocBody453_186 AllocBody453_189

def AllocBody453_191 : StackLang.HolProg 64 :=
.seq AllocBody453_185 AllocBody453_190

def AllocBody453_192 : StackLang.HolProg 64 :=
.seq AllocBody453_184 AllocBody453_191

def AllocBody453_193 : StackLang.HolProg 64 :=
.seq AllocBody453_183 AllocBody453_192

def AllocBody453_194 : StackLang.HolProg 64 :=
.seq AllocBody453_182 AllocBody453_193

def AllocBody453_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody453_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody453_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody453_198 : StackLang.HolProg 64 :=
.seq AllocBody453_196 AllocBody453_197

def AllocBody453_199 : StackLang.HolProg 64 :=
.seq AllocBody453_195 AllocBody453_198

def AllocBody453_200 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody453_201 : StackLang.HolProg 64 :=
.seq AllocBody453_199 AllocBody453_200

def AllocBody453_202 : StackLang.HolProg 64 :=
.call (some (AllocBody453_194, 0, 453, 6)) (Sum.inl 451) (some (AllocBody453_201, 453, 7))

def AllocBody453_203 : StackLang.HolProg 64 :=
.seq AllocBody453_181 AllocBody453_202

def AllocBody453_204 : StackLang.HolProg 64 :=
.seq AllocBody453_180 AllocBody453_203

def AllocBody453_205 : StackLang.HolProg 64 :=
.seq AllocBody453_179 AllocBody453_204

def AllocBody453_206 : StackLang.HolProg 64 :=
.seq AllocBody453_160 AllocBody453_205

def AllocBody453_207 : StackLang.HolProg 64 :=
.seq AllocBody453_157 AllocBody453_206

def AllocBody453_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody453_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody453_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody453_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody453_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody453_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody453_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody453_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1379#64)

def AllocBody453_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody453_217 : StackLang.HolProg 64 :=
.seq AllocBody453_215 AllocBody453_216

def AllocBody453_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody453_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody453_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody453_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 453 9

def AllocBody453_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody453_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody453_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody453_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody453_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody453_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody453_228 : StackLang.HolProg 64 :=
.seq AllocBody453_226 AllocBody453_227

def AllocBody453_229 : StackLang.HolProg 64 :=
.seq AllocBody453_225 AllocBody453_228

def AllocBody453_230 : StackLang.HolProg 64 :=
.seq AllocBody453_224 AllocBody453_229

def AllocBody453_231 : StackLang.HolProg 64 :=
.seq AllocBody453_223 AllocBody453_230

def AllocBody453_232 : StackLang.HolProg 64 :=
.seq AllocBody453_222 AllocBody453_231

def AllocBody453_233 : StackLang.HolProg 64 :=
.seq AllocBody453_221 AllocBody453_232

def AllocBody453_234 : StackLang.HolProg 64 :=
.seq AllocBody453_220 AllocBody453_233

def AllocBody453_235 : StackLang.HolProg 64 :=
.seq AllocBody453_219 AllocBody453_234

def AllocBody453_236 : StackLang.HolProg 64 :=
.seq AllocBody453_218 AllocBody453_235

def AllocBody453_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody453_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody453_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody453_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody453_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody453_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody453_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody453_244 : StackLang.HolProg 64 :=
.seq AllocBody453_242 AllocBody453_243

def AllocBody453_245 : StackLang.HolProg 64 :=
.seq AllocBody453_241 AllocBody453_244

def AllocBody453_246 : StackLang.HolProg 64 :=
.seq AllocBody453_240 AllocBody453_245

def AllocBody453_247 : StackLang.HolProg 64 :=
.seq AllocBody453_239 AllocBody453_246

def AllocBody453_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody453_249 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody453_250 : StackLang.HolProg 64 :=
.seq AllocBody453_248 AllocBody453_249

def AllocBody453_251 : StackLang.HolProg 64 :=
.call (some (AllocBody453_247, 0, 453, 8)) (Sum.inl 193) (some (AllocBody453_250, 453, 9))

def AllocBody453_252 : StackLang.HolProg 64 :=
.seq AllocBody453_238 AllocBody453_251

def AllocBody453_253 : StackLang.HolProg 64 :=
.seq AllocBody453_237 AllocBody453_252

def AllocBody453_254 : StackLang.HolProg 64 :=
.seq AllocBody453_236 AllocBody453_253

def AllocBody453_255 : StackLang.HolProg 64 :=
.seq AllocBody453_217 AllocBody453_254

def AllocBody453_256 : StackLang.HolProg 64 :=
.seq AllocBody453_214 AllocBody453_255

def AllocBody453_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody453_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody453_259 : StackLang.HolProg 64 :=
.seq AllocBody453_257 AllocBody453_258

def AllocBody453_260 : StackLang.HolProg 64 :=
.seq AllocBody453_256 AllocBody453_259

def AllocBody453_261 : StackLang.HolProg 64 :=
.seq AllocBody453_213 AllocBody453_260

def AllocBody453_262 : StackLang.HolProg 64 :=
.seq AllocBody453_212 AllocBody453_261

def AllocBody453_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody453_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody453_265 : StackLang.HolProg 64 :=
.seq AllocBody453_263 AllocBody453_264

def AllocBody453_266 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody453_262 AllocBody453_265

def AllocBody453_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody453_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody453_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody453_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody453_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody453_272 : StackLang.HolProg 64 :=
.seq AllocBody453_270 AllocBody453_271

def AllocBody453_273 : StackLang.HolProg 64 :=
.seq AllocBody453_269 AllocBody453_272

def AllocBody453_274 : StackLang.HolProg 64 :=
.seq AllocBody453_268 AllocBody453_273

def AllocBody453_275 : StackLang.HolProg 64 :=
.seq AllocBody453_267 AllocBody453_274

def AllocBody453_276 : StackLang.HolProg 64 :=
.seq AllocBody453_266 AllocBody453_275

def AllocBody453_277 : StackLang.HolProg 64 :=
.seq AllocBody453_211 AllocBody453_276

def AllocBody453_278 : StackLang.HolProg 64 :=
.seq AllocBody453_210 AllocBody453_277

def AllocBody453_279 : StackLang.HolProg 64 :=
.seq AllocBody453_209 AllocBody453_278

def AllocBody453_280 : StackLang.HolProg 64 :=
.seq AllocBody453_208 AllocBody453_279

def AllocBody453_281 : StackLang.HolProg 64 :=
.seq AllocBody453_207 AllocBody453_280

def AllocBody453_282 : StackLang.HolProg 64 :=
.seq AllocBody453_156 AllocBody453_281

def AllocBody453_283 : StackLang.HolProg 64 :=
.seq AllocBody453_153 AllocBody453_282

def AllocBody453_284 : StackLang.HolProg 64 :=
.seq AllocBody453_152 AllocBody453_283

def AllocBody453_285 : StackLang.HolProg 64 :=
.seq AllocBody453_151 AllocBody453_284

def AllocBody453_286 : StackLang.HolProg 64 :=
.seq AllocBody453_150 AllocBody453_285

def AllocBody453_287 : StackLang.HolProg 64 :=
.seq AllocBody453_149 AllocBody453_286

def AllocBody453_288 : StackLang.HolProg 64 :=
.seq AllocBody453_138 AllocBody453_287

def AllocBody453_289 : StackLang.HolProg 64 :=
.seq AllocBody453_137 AllocBody453_288

def AllocBody453_290 : StackLang.HolProg 64 :=
.seq AllocBody453_136 AllocBody453_289

def AllocBody453_291 : StackLang.HolProg 64 :=
.seq AllocBody453_135 AllocBody453_290

def AllocBody453_292 : StackLang.HolProg 64 :=
.seq AllocBody453_86 AllocBody453_291

def AllocBody453_293 : StackLang.HolProg 64 :=
.seq AllocBody453_79 AllocBody453_292

def AllocBody453_294 : StackLang.HolProg 64 :=
.seq AllocBody453_78 AllocBody453_293

def AllocBody453_295 : StackLang.HolProg 64 :=
.seq AllocBody453_77 AllocBody453_294

def AllocBody453_296 : StackLang.HolProg 64 :=
.seq AllocBody453_76 AllocBody453_295

def AllocBody453_297 : StackLang.HolProg 64 :=
.seq AllocBody453_75 AllocBody453_296

def AllocBody453_298 : StackLang.HolProg 64 :=
.seq AllocBody453_64 AllocBody453_297

def AllocBody453_299 : StackLang.HolProg 64 :=
.seq AllocBody453_63 AllocBody453_298

def AllocBody453_300 : StackLang.HolProg 64 :=
.seq AllocBody453_62 AllocBody453_299

def AllocBody453_301 : StackLang.HolProg 64 :=
.seq AllocBody453_61 AllocBody453_300

def AllocBody453_302 : StackLang.HolProg 64 :=
.seq AllocBody453_12 AllocBody453_301

def AllocBody453_303 : StackLang.HolProg 64 :=
.seq AllocBody453_5 AllocBody453_302

def AllocBody453_304 : StackLang.HolProg 64 :=
.seq AllocBody453_4 AllocBody453_303

def AllocBody453_305 : StackLang.HolProg 64 :=
.seq AllocBody453_3 AllocBody453_304

def AllocBody453_306 : StackLang.HolProg 64 :=
.seq AllocBody453_2 AllocBody453_305

def AllocBody453_307 : StackLang.HolProg 64 :=
.seq AllocBody453_1 AllocBody453_306

def AllocBody453_308 : StackLang.HolProg 64 :=
.seq AllocBody453_0 AllocBody453_307

def Alloc453 : Nat × StackLang.HolProg 64 := (453, AllocBody453_308)
theorem Alloc453_eq : StackAlloc.progComp (453, raw453) = Alloc453 := by
  kernel_rfl
#print axioms Alloc453_eq
end InitECandidate.Proofs.BackendStages
