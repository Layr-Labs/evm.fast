import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw833
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody833_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody833_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody833_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody833_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody833_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody833_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def AllocBody833_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 96#64))

def AllocBody833_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody833_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody833_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody833_12 : StackLang.HolProg 64 :=
.seq AllocBody833_10 AllocBody833_11

def AllocBody833_13 : StackLang.HolProg 64 :=
.seq AllocBody833_9 AllocBody833_12

def AllocBody833_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4143#64)

def AllocBody833_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody833_17 : StackLang.HolProg 64 :=
.seq AllocBody833_15 AllocBody833_16

def AllocBody833_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody833_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody833_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody833_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 833 3

def AllocBody833_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody833_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody833_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody833_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody833_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody833_28 : StackLang.HolProg 64 :=
.seq AllocBody833_26 AllocBody833_27

def AllocBody833_29 : StackLang.HolProg 64 :=
.seq AllocBody833_25 AllocBody833_28

def AllocBody833_30 : StackLang.HolProg 64 :=
.seq AllocBody833_24 AllocBody833_29

def AllocBody833_31 : StackLang.HolProg 64 :=
.seq AllocBody833_23 AllocBody833_30

def AllocBody833_32 : StackLang.HolProg 64 :=
.seq AllocBody833_22 AllocBody833_31

def AllocBody833_33 : StackLang.HolProg 64 :=
.seq AllocBody833_21 AllocBody833_32

def AllocBody833_34 : StackLang.HolProg 64 :=
.seq AllocBody833_20 AllocBody833_33

def AllocBody833_35 : StackLang.HolProg 64 :=
.seq AllocBody833_19 AllocBody833_34

def AllocBody833_36 : StackLang.HolProg 64 :=
.seq AllocBody833_18 AllocBody833_35

def AllocBody833_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody833_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody833_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody833_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody833_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody833_44 : StackLang.HolProg 64 :=
.seq AllocBody833_42 AllocBody833_43

def AllocBody833_45 : StackLang.HolProg 64 :=
.seq AllocBody833_41 AllocBody833_44

def AllocBody833_46 : StackLang.HolProg 64 :=
.seq AllocBody833_40 AllocBody833_45

def AllocBody833_47 : StackLang.HolProg 64 :=
.seq AllocBody833_39 AllocBody833_46

def AllocBody833_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_49 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody833_50 : StackLang.HolProg 64 :=
.seq AllocBody833_48 AllocBody833_49

def AllocBody833_51 : StackLang.HolProg 64 :=
.call (some (AllocBody833_47, 0, 833, 2)) (Sum.inl 465) (some (AllocBody833_50, 833, 3))

def AllocBody833_52 : StackLang.HolProg 64 :=
.seq AllocBody833_38 AllocBody833_51

def AllocBody833_53 : StackLang.HolProg 64 :=
.seq AllocBody833_37 AllocBody833_52

def AllocBody833_54 : StackLang.HolProg 64 :=
.seq AllocBody833_36 AllocBody833_53

def AllocBody833_55 : StackLang.HolProg 64 :=
.seq AllocBody833_17 AllocBody833_54

def AllocBody833_56 : StackLang.HolProg 64 :=
.seq AllocBody833_14 AllocBody833_55

def AllocBody833_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody833_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 120#64)

def AllocBody833_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody833_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 600#64)))

def AllocBody833_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4144#64)

def AllocBody833_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody833_68 : StackLang.HolProg 64 :=
.seq AllocBody833_66 AllocBody833_67

def AllocBody833_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody833_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody833_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody833_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 833 5

def AllocBody833_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody833_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody833_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody833_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody833_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody833_79 : StackLang.HolProg 64 :=
.seq AllocBody833_77 AllocBody833_78

def AllocBody833_80 : StackLang.HolProg 64 :=
.seq AllocBody833_76 AllocBody833_79

def AllocBody833_81 : StackLang.HolProg 64 :=
.seq AllocBody833_75 AllocBody833_80

def AllocBody833_82 : StackLang.HolProg 64 :=
.seq AllocBody833_74 AllocBody833_81

def AllocBody833_83 : StackLang.HolProg 64 :=
.seq AllocBody833_73 AllocBody833_82

def AllocBody833_84 : StackLang.HolProg 64 :=
.seq AllocBody833_72 AllocBody833_83

def AllocBody833_85 : StackLang.HolProg 64 :=
.seq AllocBody833_71 AllocBody833_84

def AllocBody833_86 : StackLang.HolProg 64 :=
.seq AllocBody833_70 AllocBody833_85

def AllocBody833_87 : StackLang.HolProg 64 :=
.seq AllocBody833_69 AllocBody833_86

def AllocBody833_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody833_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody833_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody833_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody833_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_95 : StackLang.HolProg 64 :=
.seq AllocBody833_93 AllocBody833_94

def AllocBody833_96 : StackLang.HolProg 64 :=
.seq AllocBody833_92 AllocBody833_95

def AllocBody833_97 : StackLang.HolProg 64 :=
.seq AllocBody833_91 AllocBody833_96

def AllocBody833_98 : StackLang.HolProg 64 :=
.seq AllocBody833_90 AllocBody833_97

def AllocBody833_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_100 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody833_101 : StackLang.HolProg 64 :=
.seq AllocBody833_99 AllocBody833_100

def AllocBody833_102 : StackLang.HolProg 64 :=
.call (some (AllocBody833_98, 0, 833, 4)) (Sum.inl 470) (some (AllocBody833_101, 833, 5))

def AllocBody833_103 : StackLang.HolProg 64 :=
.seq AllocBody833_89 AllocBody833_102

def AllocBody833_104 : StackLang.HolProg 64 :=
.seq AllocBody833_88 AllocBody833_103

def AllocBody833_105 : StackLang.HolProg 64 :=
.seq AllocBody833_87 AllocBody833_104

def AllocBody833_106 : StackLang.HolProg 64 :=
.seq AllocBody833_68 AllocBody833_105

def AllocBody833_107 : StackLang.HolProg 64 :=
.seq AllocBody833_65 AllocBody833_106

def AllocBody833_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody833_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody833_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4145#64)

def AllocBody833_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody833_114 : StackLang.HolProg 64 :=
.seq AllocBody833_112 AllocBody833_113

def AllocBody833_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody833_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody833_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody833_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 833 7

def AllocBody833_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody833_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody833_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody833_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody833_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody833_125 : StackLang.HolProg 64 :=
.seq AllocBody833_123 AllocBody833_124

def AllocBody833_126 : StackLang.HolProg 64 :=
.seq AllocBody833_122 AllocBody833_125

def AllocBody833_127 : StackLang.HolProg 64 :=
.seq AllocBody833_121 AllocBody833_126

def AllocBody833_128 : StackLang.HolProg 64 :=
.seq AllocBody833_120 AllocBody833_127

def AllocBody833_129 : StackLang.HolProg 64 :=
.seq AllocBody833_119 AllocBody833_128

def AllocBody833_130 : StackLang.HolProg 64 :=
.seq AllocBody833_118 AllocBody833_129

def AllocBody833_131 : StackLang.HolProg 64 :=
.seq AllocBody833_117 AllocBody833_130

def AllocBody833_132 : StackLang.HolProg 64 :=
.seq AllocBody833_116 AllocBody833_131

def AllocBody833_133 : StackLang.HolProg 64 :=
.seq AllocBody833_115 AllocBody833_132

def AllocBody833_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody833_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody833_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody833_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody833_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody833_141 : StackLang.HolProg 64 :=
.seq AllocBody833_139 AllocBody833_140

def AllocBody833_142 : StackLang.HolProg 64 :=
.seq AllocBody833_138 AllocBody833_141

def AllocBody833_143 : StackLang.HolProg 64 :=
.seq AllocBody833_137 AllocBody833_142

def AllocBody833_144 : StackLang.HolProg 64 :=
.seq AllocBody833_136 AllocBody833_143

def AllocBody833_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_146 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody833_147 : StackLang.HolProg 64 :=
.seq AllocBody833_145 AllocBody833_146

def AllocBody833_148 : StackLang.HolProg 64 :=
.call (some (AllocBody833_144, 0, 833, 6)) (Sum.inl 68) (some (AllocBody833_147, 833, 7))

def AllocBody833_149 : StackLang.HolProg 64 :=
.seq AllocBody833_135 AllocBody833_148

def AllocBody833_150 : StackLang.HolProg 64 :=
.seq AllocBody833_134 AllocBody833_149

def AllocBody833_151 : StackLang.HolProg 64 :=
.seq AllocBody833_133 AllocBody833_150

def AllocBody833_152 : StackLang.HolProg 64 :=
.seq AllocBody833_114 AllocBody833_151

def AllocBody833_153 : StackLang.HolProg 64 :=
.seq AllocBody833_111 AllocBody833_152

def AllocBody833_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody833_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody833_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 12#64)

def AllocBody833_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody833_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4146#64)

def AllocBody833_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody833_161 : StackLang.HolProg 64 :=
.seq AllocBody833_159 AllocBody833_160

def AllocBody833_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody833_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody833_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody833_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 833 9

def AllocBody833_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody833_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody833_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody833_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody833_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody833_172 : StackLang.HolProg 64 :=
.seq AllocBody833_170 AllocBody833_171

def AllocBody833_173 : StackLang.HolProg 64 :=
.seq AllocBody833_169 AllocBody833_172

def AllocBody833_174 : StackLang.HolProg 64 :=
.seq AllocBody833_168 AllocBody833_173

def AllocBody833_175 : StackLang.HolProg 64 :=
.seq AllocBody833_167 AllocBody833_174

def AllocBody833_176 : StackLang.HolProg 64 :=
.seq AllocBody833_166 AllocBody833_175

def AllocBody833_177 : StackLang.HolProg 64 :=
.seq AllocBody833_165 AllocBody833_176

def AllocBody833_178 : StackLang.HolProg 64 :=
.seq AllocBody833_164 AllocBody833_177

def AllocBody833_179 : StackLang.HolProg 64 :=
.seq AllocBody833_163 AllocBody833_178

def AllocBody833_180 : StackLang.HolProg 64 :=
.seq AllocBody833_162 AllocBody833_179

def AllocBody833_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody833_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody833_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody833_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody833_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody833_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody833_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody833_190 : StackLang.HolProg 64 :=
.seq AllocBody833_188 AllocBody833_189

def AllocBody833_191 : StackLang.HolProg 64 :=
.seq AllocBody833_187 AllocBody833_190

def AllocBody833_192 : StackLang.HolProg 64 :=
.seq AllocBody833_186 AllocBody833_191

def AllocBody833_193 : StackLang.HolProg 64 :=
.seq AllocBody833_185 AllocBody833_192

def AllocBody833_194 : StackLang.HolProg 64 :=
.seq AllocBody833_184 AllocBody833_193

def AllocBody833_195 : StackLang.HolProg 64 :=
.seq AllocBody833_183 AllocBody833_194

def AllocBody833_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody833_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody833_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody833_199 : StackLang.HolProg 64 :=
.seq AllocBody833_197 AllocBody833_198

def AllocBody833_200 : StackLang.HolProg 64 :=
.seq AllocBody833_196 AllocBody833_199

def AllocBody833_201 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody833_202 : StackLang.HolProg 64 :=
.seq AllocBody833_200 AllocBody833_201

def AllocBody833_203 : StackLang.HolProg 64 :=
.call (some (AllocBody833_195, 0, 833, 8)) (Sum.inl 78) (some (AllocBody833_202, 833, 9))

def AllocBody833_204 : StackLang.HolProg 64 :=
.seq AllocBody833_182 AllocBody833_203

def AllocBody833_205 : StackLang.HolProg 64 :=
.seq AllocBody833_181 AllocBody833_204

def AllocBody833_206 : StackLang.HolProg 64 :=
.seq AllocBody833_180 AllocBody833_205

def AllocBody833_207 : StackLang.HolProg 64 :=
.seq AllocBody833_161 AllocBody833_206

def AllocBody833_208 : StackLang.HolProg 64 :=
.seq AllocBody833_158 AllocBody833_207

def AllocBody833_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody833_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 88#64))

def AllocBody833_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 12#64)))

def AllocBody833_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody833_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4147#64)

def AllocBody833_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody833_218 : StackLang.HolProg 64 :=
.seq AllocBody833_216 AllocBody833_217

def AllocBody833_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody833_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody833_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody833_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 833 11

def AllocBody833_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody833_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody833_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody833_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody833_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody833_229 : StackLang.HolProg 64 :=
.seq AllocBody833_227 AllocBody833_228

def AllocBody833_230 : StackLang.HolProg 64 :=
.seq AllocBody833_226 AllocBody833_229

def AllocBody833_231 : StackLang.HolProg 64 :=
.seq AllocBody833_225 AllocBody833_230

def AllocBody833_232 : StackLang.HolProg 64 :=
.seq AllocBody833_224 AllocBody833_231

def AllocBody833_233 : StackLang.HolProg 64 :=
.seq AllocBody833_223 AllocBody833_232

def AllocBody833_234 : StackLang.HolProg 64 :=
.seq AllocBody833_222 AllocBody833_233

def AllocBody833_235 : StackLang.HolProg 64 :=
.seq AllocBody833_221 AllocBody833_234

def AllocBody833_236 : StackLang.HolProg 64 :=
.seq AllocBody833_220 AllocBody833_235

def AllocBody833_237 : StackLang.HolProg 64 :=
.seq AllocBody833_219 AllocBody833_236

def AllocBody833_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody833_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody833_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody833_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody833_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody833_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody833_246 : StackLang.HolProg 64 :=
.seq AllocBody833_244 AllocBody833_245

def AllocBody833_247 : StackLang.HolProg 64 :=
.seq AllocBody833_243 AllocBody833_246

def AllocBody833_248 : StackLang.HolProg 64 :=
.seq AllocBody833_242 AllocBody833_247

def AllocBody833_249 : StackLang.HolProg 64 :=
.seq AllocBody833_241 AllocBody833_248

def AllocBody833_250 : StackLang.HolProg 64 :=
.seq AllocBody833_240 AllocBody833_249

def AllocBody833_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody833_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody833_253 : StackLang.HolProg 64 :=
.seq AllocBody833_251 AllocBody833_252

def AllocBody833_254 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody833_255 : StackLang.HolProg 64 :=
.seq AllocBody833_253 AllocBody833_254

def AllocBody833_256 : StackLang.HolProg 64 :=
.call (some (AllocBody833_250, 0, 833, 10)) (Sum.inl 631) (some (AllocBody833_255, 833, 11))

def AllocBody833_257 : StackLang.HolProg 64 :=
.seq AllocBody833_239 AllocBody833_256

def AllocBody833_258 : StackLang.HolProg 64 :=
.seq AllocBody833_238 AllocBody833_257

def AllocBody833_259 : StackLang.HolProg 64 :=
.seq AllocBody833_237 AllocBody833_258

def AllocBody833_260 : StackLang.HolProg 64 :=
.seq AllocBody833_218 AllocBody833_259

def AllocBody833_261 : StackLang.HolProg 64 :=
.seq AllocBody833_215 AllocBody833_260

def AllocBody833_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody833_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody833_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody833_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody833_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody833_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def AllocBody833_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody833_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody833_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def AllocBody833_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody833_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody833_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody833_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody833_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody833_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody833_280 : StackLang.HolProg 64 :=
.seq AllocBody833_278 AllocBody833_279

def AllocBody833_281 : StackLang.HolProg 64 :=
.seq AllocBody833_277 AllocBody833_280

def AllocBody833_282 : StackLang.HolProg 64 :=
.seq AllocBody833_276 AllocBody833_281

def AllocBody833_283 : StackLang.HolProg 64 :=
.seq AllocBody833_275 AllocBody833_282

def AllocBody833_284 : StackLang.HolProg 64 :=
.seq AllocBody833_274 AllocBody833_283

def AllocBody833_285 : StackLang.HolProg 64 :=
.seq AllocBody833_273 AllocBody833_284

def AllocBody833_286 : StackLang.HolProg 64 :=
.seq AllocBody833_272 AllocBody833_285

def AllocBody833_287 : StackLang.HolProg 64 :=
.seq AllocBody833_271 AllocBody833_286

def AllocBody833_288 : StackLang.HolProg 64 :=
.seq AllocBody833_270 AllocBody833_287

def AllocBody833_289 : StackLang.HolProg 64 :=
.seq AllocBody833_269 AllocBody833_288

def AllocBody833_290 : StackLang.HolProg 64 :=
.seq AllocBody833_268 AllocBody833_289

def AllocBody833_291 : StackLang.HolProg 64 :=
.seq AllocBody833_267 AllocBody833_290

def AllocBody833_292 : StackLang.HolProg 64 :=
.seq AllocBody833_266 AllocBody833_291

def AllocBody833_293 : StackLang.HolProg 64 :=
.seq AllocBody833_265 AllocBody833_292

def AllocBody833_294 : StackLang.HolProg 64 :=
.seq AllocBody833_264 AllocBody833_293

def AllocBody833_295 : StackLang.HolProg 64 :=
.seq AllocBody833_263 AllocBody833_294

def AllocBody833_296 : StackLang.HolProg 64 :=
.seq AllocBody833_262 AllocBody833_295

def AllocBody833_297 : StackLang.HolProg 64 :=
.seq AllocBody833_261 AllocBody833_296

def AllocBody833_298 : StackLang.HolProg 64 :=
.seq AllocBody833_214 AllocBody833_297

def AllocBody833_299 : StackLang.HolProg 64 :=
.seq AllocBody833_213 AllocBody833_298

def AllocBody833_300 : StackLang.HolProg 64 :=
.seq AllocBody833_212 AllocBody833_299

def AllocBody833_301 : StackLang.HolProg 64 :=
.seq AllocBody833_211 AllocBody833_300

def AllocBody833_302 : StackLang.HolProg 64 :=
.seq AllocBody833_210 AllocBody833_301

def AllocBody833_303 : StackLang.HolProg 64 :=
.seq AllocBody833_209 AllocBody833_302

def AllocBody833_304 : StackLang.HolProg 64 :=
.seq AllocBody833_208 AllocBody833_303

def AllocBody833_305 : StackLang.HolProg 64 :=
.seq AllocBody833_157 AllocBody833_304

def AllocBody833_306 : StackLang.HolProg 64 :=
.seq AllocBody833_156 AllocBody833_305

def AllocBody833_307 : StackLang.HolProg 64 :=
.seq AllocBody833_155 AllocBody833_306

def AllocBody833_308 : StackLang.HolProg 64 :=
.seq AllocBody833_154 AllocBody833_307

def AllocBody833_309 : StackLang.HolProg 64 :=
.seq AllocBody833_153 AllocBody833_308

def AllocBody833_310 : StackLang.HolProg 64 :=
.seq AllocBody833_110 AllocBody833_309

def AllocBody833_311 : StackLang.HolProg 64 :=
.seq AllocBody833_109 AllocBody833_310

def AllocBody833_312 : StackLang.HolProg 64 :=
.seq AllocBody833_108 AllocBody833_311

def AllocBody833_313 : StackLang.HolProg 64 :=
.seq AllocBody833_107 AllocBody833_312

def AllocBody833_314 : StackLang.HolProg 64 :=
.seq AllocBody833_64 AllocBody833_313

def AllocBody833_315 : StackLang.HolProg 64 :=
.seq AllocBody833_63 AllocBody833_314

def AllocBody833_316 : StackLang.HolProg 64 :=
.seq AllocBody833_62 AllocBody833_315

def AllocBody833_317 : StackLang.HolProg 64 :=
.seq AllocBody833_61 AllocBody833_316

def AllocBody833_318 : StackLang.HolProg 64 :=
.seq AllocBody833_60 AllocBody833_317

def AllocBody833_319 : StackLang.HolProg 64 :=
.seq AllocBody833_59 AllocBody833_318

def AllocBody833_320 : StackLang.HolProg 64 :=
.seq AllocBody833_58 AllocBody833_319

def AllocBody833_321 : StackLang.HolProg 64 :=
.seq AllocBody833_57 AllocBody833_320

def AllocBody833_322 : StackLang.HolProg 64 :=
.seq AllocBody833_56 AllocBody833_321

def AllocBody833_323 : StackLang.HolProg 64 :=
.seq AllocBody833_13 AllocBody833_322

def AllocBody833_324 : StackLang.HolProg 64 :=
.seq AllocBody833_8 AllocBody833_323

def AllocBody833_325 : StackLang.HolProg 64 :=
.seq AllocBody833_7 AllocBody833_324

def AllocBody833_326 : StackLang.HolProg 64 :=
.seq AllocBody833_6 AllocBody833_325

def AllocBody833_327 : StackLang.HolProg 64 :=
.seq AllocBody833_5 AllocBody833_326

def AllocBody833_328 : StackLang.HolProg 64 :=
.seq AllocBody833_4 AllocBody833_327

def AllocBody833_329 : StackLang.HolProg 64 :=
.seq AllocBody833_3 AllocBody833_328

def AllocBody833_330 : StackLang.HolProg 64 :=
.seq AllocBody833_2 AllocBody833_329

def AllocBody833_331 : StackLang.HolProg 64 :=
.seq AllocBody833_1 AllocBody833_330

def AllocBody833_332 : StackLang.HolProg 64 :=
.seq AllocBody833_0 AllocBody833_331

def Alloc833 : Nat × StackLang.HolProg 64 := (833, AllocBody833_332)
theorem Alloc833_eq : StackAlloc.progComp (833, raw833) = Alloc833 := by
  kernel_rfl
#print axioms Alloc833_eq
end InitECandidate.Proofs.BackendStages
