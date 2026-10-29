import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw831
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody831_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody831_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody831_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody831_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody831_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody831_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def AllocBody831_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 96#64))

def AllocBody831_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody831_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody831_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody831_12 : StackLang.HolProg 64 :=
.seq AllocBody831_10 AllocBody831_11

def AllocBody831_13 : StackLang.HolProg 64 :=
.seq AllocBody831_9 AllocBody831_12

def AllocBody831_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4124#64)

def AllocBody831_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody831_17 : StackLang.HolProg 64 :=
.seq AllocBody831_15 AllocBody831_16

def AllocBody831_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody831_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody831_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody831_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 831 3

def AllocBody831_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody831_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody831_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody831_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody831_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody831_28 : StackLang.HolProg 64 :=
.seq AllocBody831_26 AllocBody831_27

def AllocBody831_29 : StackLang.HolProg 64 :=
.seq AllocBody831_25 AllocBody831_28

def AllocBody831_30 : StackLang.HolProg 64 :=
.seq AllocBody831_24 AllocBody831_29

def AllocBody831_31 : StackLang.HolProg 64 :=
.seq AllocBody831_23 AllocBody831_30

def AllocBody831_32 : StackLang.HolProg 64 :=
.seq AllocBody831_22 AllocBody831_31

def AllocBody831_33 : StackLang.HolProg 64 :=
.seq AllocBody831_21 AllocBody831_32

def AllocBody831_34 : StackLang.HolProg 64 :=
.seq AllocBody831_20 AllocBody831_33

def AllocBody831_35 : StackLang.HolProg 64 :=
.seq AllocBody831_19 AllocBody831_34

def AllocBody831_36 : StackLang.HolProg 64 :=
.seq AllocBody831_18 AllocBody831_35

def AllocBody831_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody831_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody831_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody831_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody831_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody831_44 : StackLang.HolProg 64 :=
.seq AllocBody831_42 AllocBody831_43

def AllocBody831_45 : StackLang.HolProg 64 :=
.seq AllocBody831_41 AllocBody831_44

def AllocBody831_46 : StackLang.HolProg 64 :=
.seq AllocBody831_40 AllocBody831_45

def AllocBody831_47 : StackLang.HolProg 64 :=
.seq AllocBody831_39 AllocBody831_46

def AllocBody831_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_49 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody831_50 : StackLang.HolProg 64 :=
.seq AllocBody831_48 AllocBody831_49

def AllocBody831_51 : StackLang.HolProg 64 :=
.call (some (AllocBody831_47, 0, 831, 2)) (Sum.inl 465) (some (AllocBody831_50, 831, 3))

def AllocBody831_52 : StackLang.HolProg 64 :=
.seq AllocBody831_38 AllocBody831_51

def AllocBody831_53 : StackLang.HolProg 64 :=
.seq AllocBody831_37 AllocBody831_52

def AllocBody831_54 : StackLang.HolProg 64 :=
.seq AllocBody831_36 AllocBody831_53

def AllocBody831_55 : StackLang.HolProg 64 :=
.seq AllocBody831_17 AllocBody831_54

def AllocBody831_56 : StackLang.HolProg 64 :=
.seq AllocBody831_14 AllocBody831_55

def AllocBody831_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody831_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 12#64)

def AllocBody831_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody831_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 60#64)))

def AllocBody831_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4125#64)

def AllocBody831_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody831_68 : StackLang.HolProg 64 :=
.seq AllocBody831_66 AllocBody831_67

def AllocBody831_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody831_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody831_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody831_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 831 5

def AllocBody831_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody831_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody831_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody831_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody831_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody831_79 : StackLang.HolProg 64 :=
.seq AllocBody831_77 AllocBody831_78

def AllocBody831_80 : StackLang.HolProg 64 :=
.seq AllocBody831_76 AllocBody831_79

def AllocBody831_81 : StackLang.HolProg 64 :=
.seq AllocBody831_75 AllocBody831_80

def AllocBody831_82 : StackLang.HolProg 64 :=
.seq AllocBody831_74 AllocBody831_81

def AllocBody831_83 : StackLang.HolProg 64 :=
.seq AllocBody831_73 AllocBody831_82

def AllocBody831_84 : StackLang.HolProg 64 :=
.seq AllocBody831_72 AllocBody831_83

def AllocBody831_85 : StackLang.HolProg 64 :=
.seq AllocBody831_71 AllocBody831_84

def AllocBody831_86 : StackLang.HolProg 64 :=
.seq AllocBody831_70 AllocBody831_85

def AllocBody831_87 : StackLang.HolProg 64 :=
.seq AllocBody831_69 AllocBody831_86

def AllocBody831_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody831_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody831_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody831_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody831_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_95 : StackLang.HolProg 64 :=
.seq AllocBody831_93 AllocBody831_94

def AllocBody831_96 : StackLang.HolProg 64 :=
.seq AllocBody831_92 AllocBody831_95

def AllocBody831_97 : StackLang.HolProg 64 :=
.seq AllocBody831_91 AllocBody831_96

def AllocBody831_98 : StackLang.HolProg 64 :=
.seq AllocBody831_90 AllocBody831_97

def AllocBody831_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_100 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody831_101 : StackLang.HolProg 64 :=
.seq AllocBody831_99 AllocBody831_100

def AllocBody831_102 : StackLang.HolProg 64 :=
.call (some (AllocBody831_98, 0, 831, 4)) (Sum.inl 470) (some (AllocBody831_101, 831, 5))

def AllocBody831_103 : StackLang.HolProg 64 :=
.seq AllocBody831_89 AllocBody831_102

def AllocBody831_104 : StackLang.HolProg 64 :=
.seq AllocBody831_88 AllocBody831_103

def AllocBody831_105 : StackLang.HolProg 64 :=
.seq AllocBody831_87 AllocBody831_104

def AllocBody831_106 : StackLang.HolProg 64 :=
.seq AllocBody831_68 AllocBody831_105

def AllocBody831_107 : StackLang.HolProg 64 :=
.seq AllocBody831_65 AllocBody831_106

def AllocBody831_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody831_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody831_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4126#64)

def AllocBody831_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody831_114 : StackLang.HolProg 64 :=
.seq AllocBody831_112 AllocBody831_113

def AllocBody831_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody831_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody831_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody831_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 831 7

def AllocBody831_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody831_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody831_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody831_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody831_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody831_125 : StackLang.HolProg 64 :=
.seq AllocBody831_123 AllocBody831_124

def AllocBody831_126 : StackLang.HolProg 64 :=
.seq AllocBody831_122 AllocBody831_125

def AllocBody831_127 : StackLang.HolProg 64 :=
.seq AllocBody831_121 AllocBody831_126

def AllocBody831_128 : StackLang.HolProg 64 :=
.seq AllocBody831_120 AllocBody831_127

def AllocBody831_129 : StackLang.HolProg 64 :=
.seq AllocBody831_119 AllocBody831_128

def AllocBody831_130 : StackLang.HolProg 64 :=
.seq AllocBody831_118 AllocBody831_129

def AllocBody831_131 : StackLang.HolProg 64 :=
.seq AllocBody831_117 AllocBody831_130

def AllocBody831_132 : StackLang.HolProg 64 :=
.seq AllocBody831_116 AllocBody831_131

def AllocBody831_133 : StackLang.HolProg 64 :=
.seq AllocBody831_115 AllocBody831_132

def AllocBody831_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody831_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody831_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody831_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody831_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody831_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody831_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody831_143 : StackLang.HolProg 64 :=
.seq AllocBody831_141 AllocBody831_142

def AllocBody831_144 : StackLang.HolProg 64 :=
.seq AllocBody831_140 AllocBody831_143

def AllocBody831_145 : StackLang.HolProg 64 :=
.seq AllocBody831_139 AllocBody831_144

def AllocBody831_146 : StackLang.HolProg 64 :=
.seq AllocBody831_138 AllocBody831_145

def AllocBody831_147 : StackLang.HolProg 64 :=
.seq AllocBody831_137 AllocBody831_146

def AllocBody831_148 : StackLang.HolProg 64 :=
.seq AllocBody831_136 AllocBody831_147

def AllocBody831_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody831_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody831_151 : StackLang.HolProg 64 :=
.seq AllocBody831_149 AllocBody831_150

def AllocBody831_152 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody831_153 : StackLang.HolProg 64 :=
.seq AllocBody831_151 AllocBody831_152

def AllocBody831_154 : StackLang.HolProg 64 :=
.call (some (AllocBody831_148, 0, 831, 6)) (Sum.inl 68) (some (AllocBody831_153, 831, 7))

def AllocBody831_155 : StackLang.HolProg 64 :=
.seq AllocBody831_135 AllocBody831_154

def AllocBody831_156 : StackLang.HolProg 64 :=
.seq AllocBody831_134 AllocBody831_155

def AllocBody831_157 : StackLang.HolProg 64 :=
.seq AllocBody831_133 AllocBody831_156

def AllocBody831_158 : StackLang.HolProg 64 :=
.seq AllocBody831_114 AllocBody831_157

def AllocBody831_159 : StackLang.HolProg 64 :=
.seq AllocBody831_111 AllocBody831_158

def AllocBody831_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody831_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def AllocBody831_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody831_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4127#64)

def AllocBody831_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody831_167 : StackLang.HolProg 64 :=
.seq AllocBody831_165 AllocBody831_166

def AllocBody831_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody831_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody831_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody831_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 831 9

def AllocBody831_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody831_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody831_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody831_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody831_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody831_178 : StackLang.HolProg 64 :=
.seq AllocBody831_176 AllocBody831_177

def AllocBody831_179 : StackLang.HolProg 64 :=
.seq AllocBody831_175 AllocBody831_178

def AllocBody831_180 : StackLang.HolProg 64 :=
.seq AllocBody831_174 AllocBody831_179

def AllocBody831_181 : StackLang.HolProg 64 :=
.seq AllocBody831_173 AllocBody831_180

def AllocBody831_182 : StackLang.HolProg 64 :=
.seq AllocBody831_172 AllocBody831_181

def AllocBody831_183 : StackLang.HolProg 64 :=
.seq AllocBody831_171 AllocBody831_182

def AllocBody831_184 : StackLang.HolProg 64 :=
.seq AllocBody831_170 AllocBody831_183

def AllocBody831_185 : StackLang.HolProg 64 :=
.seq AllocBody831_169 AllocBody831_184

def AllocBody831_186 : StackLang.HolProg 64 :=
.seq AllocBody831_168 AllocBody831_185

def AllocBody831_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody831_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody831_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody831_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody831_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody831_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody831_195 : StackLang.HolProg 64 :=
.seq AllocBody831_193 AllocBody831_194

def AllocBody831_196 : StackLang.HolProg 64 :=
.seq AllocBody831_192 AllocBody831_195

def AllocBody831_197 : StackLang.HolProg 64 :=
.seq AllocBody831_191 AllocBody831_196

def AllocBody831_198 : StackLang.HolProg 64 :=
.seq AllocBody831_190 AllocBody831_197

def AllocBody831_199 : StackLang.HolProg 64 :=
.seq AllocBody831_189 AllocBody831_198

def AllocBody831_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody831_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody831_202 : StackLang.HolProg 64 :=
.seq AllocBody831_200 AllocBody831_201

def AllocBody831_203 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody831_204 : StackLang.HolProg 64 :=
.seq AllocBody831_202 AllocBody831_203

def AllocBody831_205 : StackLang.HolProg 64 :=
.call (some (AllocBody831_199, 0, 831, 8)) (Sum.inl 153) (some (AllocBody831_204, 831, 9))

def AllocBody831_206 : StackLang.HolProg 64 :=
.seq AllocBody831_188 AllocBody831_205

def AllocBody831_207 : StackLang.HolProg 64 :=
.seq AllocBody831_187 AllocBody831_206

def AllocBody831_208 : StackLang.HolProg 64 :=
.seq AllocBody831_186 AllocBody831_207

def AllocBody831_209 : StackLang.HolProg 64 :=
.seq AllocBody831_167 AllocBody831_208

def AllocBody831_210 : StackLang.HolProg 64 :=
.seq AllocBody831_164 AllocBody831_209

def AllocBody831_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody831_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody831_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody831_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody831_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody831_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def AllocBody831_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody831_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody831_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def AllocBody831_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody831_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody831_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody831_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody831_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody831_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody831_229 : StackLang.HolProg 64 :=
.seq AllocBody831_227 AllocBody831_228

def AllocBody831_230 : StackLang.HolProg 64 :=
.seq AllocBody831_226 AllocBody831_229

def AllocBody831_231 : StackLang.HolProg 64 :=
.seq AllocBody831_225 AllocBody831_230

def AllocBody831_232 : StackLang.HolProg 64 :=
.seq AllocBody831_224 AllocBody831_231

def AllocBody831_233 : StackLang.HolProg 64 :=
.seq AllocBody831_223 AllocBody831_232

def AllocBody831_234 : StackLang.HolProg 64 :=
.seq AllocBody831_222 AllocBody831_233

def AllocBody831_235 : StackLang.HolProg 64 :=
.seq AllocBody831_221 AllocBody831_234

def AllocBody831_236 : StackLang.HolProg 64 :=
.seq AllocBody831_220 AllocBody831_235

def AllocBody831_237 : StackLang.HolProg 64 :=
.seq AllocBody831_219 AllocBody831_236

def AllocBody831_238 : StackLang.HolProg 64 :=
.seq AllocBody831_218 AllocBody831_237

def AllocBody831_239 : StackLang.HolProg 64 :=
.seq AllocBody831_217 AllocBody831_238

def AllocBody831_240 : StackLang.HolProg 64 :=
.seq AllocBody831_216 AllocBody831_239

def AllocBody831_241 : StackLang.HolProg 64 :=
.seq AllocBody831_215 AllocBody831_240

def AllocBody831_242 : StackLang.HolProg 64 :=
.seq AllocBody831_214 AllocBody831_241

def AllocBody831_243 : StackLang.HolProg 64 :=
.seq AllocBody831_213 AllocBody831_242

def AllocBody831_244 : StackLang.HolProg 64 :=
.seq AllocBody831_212 AllocBody831_243

def AllocBody831_245 : StackLang.HolProg 64 :=
.seq AllocBody831_211 AllocBody831_244

def AllocBody831_246 : StackLang.HolProg 64 :=
.seq AllocBody831_210 AllocBody831_245

def AllocBody831_247 : StackLang.HolProg 64 :=
.seq AllocBody831_163 AllocBody831_246

def AllocBody831_248 : StackLang.HolProg 64 :=
.seq AllocBody831_162 AllocBody831_247

def AllocBody831_249 : StackLang.HolProg 64 :=
.seq AllocBody831_161 AllocBody831_248

def AllocBody831_250 : StackLang.HolProg 64 :=
.seq AllocBody831_160 AllocBody831_249

def AllocBody831_251 : StackLang.HolProg 64 :=
.seq AllocBody831_159 AllocBody831_250

def AllocBody831_252 : StackLang.HolProg 64 :=
.seq AllocBody831_110 AllocBody831_251

def AllocBody831_253 : StackLang.HolProg 64 :=
.seq AllocBody831_109 AllocBody831_252

def AllocBody831_254 : StackLang.HolProg 64 :=
.seq AllocBody831_108 AllocBody831_253

def AllocBody831_255 : StackLang.HolProg 64 :=
.seq AllocBody831_107 AllocBody831_254

def AllocBody831_256 : StackLang.HolProg 64 :=
.seq AllocBody831_64 AllocBody831_255

def AllocBody831_257 : StackLang.HolProg 64 :=
.seq AllocBody831_63 AllocBody831_256

def AllocBody831_258 : StackLang.HolProg 64 :=
.seq AllocBody831_62 AllocBody831_257

def AllocBody831_259 : StackLang.HolProg 64 :=
.seq AllocBody831_61 AllocBody831_258

def AllocBody831_260 : StackLang.HolProg 64 :=
.seq AllocBody831_60 AllocBody831_259

def AllocBody831_261 : StackLang.HolProg 64 :=
.seq AllocBody831_59 AllocBody831_260

def AllocBody831_262 : StackLang.HolProg 64 :=
.seq AllocBody831_58 AllocBody831_261

def AllocBody831_263 : StackLang.HolProg 64 :=
.seq AllocBody831_57 AllocBody831_262

def AllocBody831_264 : StackLang.HolProg 64 :=
.seq AllocBody831_56 AllocBody831_263

def AllocBody831_265 : StackLang.HolProg 64 :=
.seq AllocBody831_13 AllocBody831_264

def AllocBody831_266 : StackLang.HolProg 64 :=
.seq AllocBody831_8 AllocBody831_265

def AllocBody831_267 : StackLang.HolProg 64 :=
.seq AllocBody831_7 AllocBody831_266

def AllocBody831_268 : StackLang.HolProg 64 :=
.seq AllocBody831_6 AllocBody831_267

def AllocBody831_269 : StackLang.HolProg 64 :=
.seq AllocBody831_5 AllocBody831_268

def AllocBody831_270 : StackLang.HolProg 64 :=
.seq AllocBody831_4 AllocBody831_269

def AllocBody831_271 : StackLang.HolProg 64 :=
.seq AllocBody831_3 AllocBody831_270

def AllocBody831_272 : StackLang.HolProg 64 :=
.seq AllocBody831_2 AllocBody831_271

def AllocBody831_273 : StackLang.HolProg 64 :=
.seq AllocBody831_1 AllocBody831_272

def AllocBody831_274 : StackLang.HolProg 64 :=
.seq AllocBody831_0 AllocBody831_273

def Alloc831 : Nat × StackLang.HolProg 64 := (831, AllocBody831_274)
theorem Alloc831_eq : StackAlloc.progComp (831, raw831) = Alloc831 := by
  kernel_rfl
#print axioms Alloc831_eq
end InitECandidate.Proofs.BackendStages
