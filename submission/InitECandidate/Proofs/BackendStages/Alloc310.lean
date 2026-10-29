import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw310
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody310_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody310_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody310_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody310_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody310_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody310_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody310_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody310_7 : StackLang.HolProg 64 :=
.seq AllocBody310_5 AllocBody310_6

def AllocBody310_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 3 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody310_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody310_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 3 3

def AllocBody310_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 18446744073709551464#64))

def AllocBody310_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody310_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody310_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 851#64)

def AllocBody310_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody310_16 : StackLang.HolProg 64 :=
.seq AllocBody310_14 AllocBody310_15

def AllocBody310_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody310_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody310_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody310_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 310 3

def AllocBody310_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody310_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody310_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody310_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody310_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody310_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody310_27 : StackLang.HolProg 64 :=
.seq AllocBody310_25 AllocBody310_26

def AllocBody310_28 : StackLang.HolProg 64 :=
.seq AllocBody310_24 AllocBody310_27

def AllocBody310_29 : StackLang.HolProg 64 :=
.seq AllocBody310_23 AllocBody310_28

def AllocBody310_30 : StackLang.HolProg 64 :=
.seq AllocBody310_22 AllocBody310_29

def AllocBody310_31 : StackLang.HolProg 64 :=
.seq AllocBody310_21 AllocBody310_30

def AllocBody310_32 : StackLang.HolProg 64 :=
.seq AllocBody310_20 AllocBody310_31

def AllocBody310_33 : StackLang.HolProg 64 :=
.seq AllocBody310_19 AllocBody310_32

def AllocBody310_34 : StackLang.HolProg 64 :=
.seq AllocBody310_18 AllocBody310_33

def AllocBody310_35 : StackLang.HolProg 64 :=
.seq AllocBody310_17 AllocBody310_34

def AllocBody310_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody310_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody310_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody310_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody310_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody310_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody310_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody310_43 : StackLang.HolProg 64 :=
.seq AllocBody310_41 AllocBody310_42

def AllocBody310_44 : StackLang.HolProg 64 :=
.seq AllocBody310_40 AllocBody310_43

def AllocBody310_45 : StackLang.HolProg 64 :=
.seq AllocBody310_39 AllocBody310_44

def AllocBody310_46 : StackLang.HolProg 64 :=
.seq AllocBody310_38 AllocBody310_45

def AllocBody310_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody310_48 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody310_49 : StackLang.HolProg 64 :=
.seq AllocBody310_47 AllocBody310_48

def AllocBody310_50 : StackLang.HolProg 64 :=
.call (some (AllocBody310_46, 0, 310, 2)) (Sum.inl 158) (some (AllocBody310_49, 310, 3))

def AllocBody310_51 : StackLang.HolProg 64 :=
.seq AllocBody310_37 AllocBody310_50

def AllocBody310_52 : StackLang.HolProg 64 :=
.seq AllocBody310_36 AllocBody310_51

def AllocBody310_53 : StackLang.HolProg 64 :=
.seq AllocBody310_35 AllocBody310_52

def AllocBody310_54 : StackLang.HolProg 64 :=
.seq AllocBody310_16 AllocBody310_53

def AllocBody310_55 : StackLang.HolProg 64 :=
.seq AllocBody310_13 AllocBody310_54

def AllocBody310_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody310_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def AllocBody310_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody310_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody310_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 852#64)

def AllocBody310_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody310_62 : StackLang.HolProg 64 :=
.seq AllocBody310_60 AllocBody310_61

def AllocBody310_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody310_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody310_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody310_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 310 5

def AllocBody310_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody310_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody310_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody310_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody310_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody310_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody310_73 : StackLang.HolProg 64 :=
.seq AllocBody310_71 AllocBody310_72

def AllocBody310_74 : StackLang.HolProg 64 :=
.seq AllocBody310_70 AllocBody310_73

def AllocBody310_75 : StackLang.HolProg 64 :=
.seq AllocBody310_69 AllocBody310_74

def AllocBody310_76 : StackLang.HolProg 64 :=
.seq AllocBody310_68 AllocBody310_75

def AllocBody310_77 : StackLang.HolProg 64 :=
.seq AllocBody310_67 AllocBody310_76

def AllocBody310_78 : StackLang.HolProg 64 :=
.seq AllocBody310_66 AllocBody310_77

def AllocBody310_79 : StackLang.HolProg 64 :=
.seq AllocBody310_65 AllocBody310_78

def AllocBody310_80 : StackLang.HolProg 64 :=
.seq AllocBody310_64 AllocBody310_79

def AllocBody310_81 : StackLang.HolProg 64 :=
.seq AllocBody310_63 AllocBody310_80

def AllocBody310_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody310_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody310_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody310_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody310_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody310_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody310_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody310_89 : StackLang.HolProg 64 :=
.seq AllocBody310_87 AllocBody310_88

def AllocBody310_90 : StackLang.HolProg 64 :=
.seq AllocBody310_86 AllocBody310_89

def AllocBody310_91 : StackLang.HolProg 64 :=
.seq AllocBody310_85 AllocBody310_90

def AllocBody310_92 : StackLang.HolProg 64 :=
.seq AllocBody310_84 AllocBody310_91

def AllocBody310_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody310_94 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody310_95 : StackLang.HolProg 64 :=
.seq AllocBody310_93 AllocBody310_94

def AllocBody310_96 : StackLang.HolProg 64 :=
.call (some (AllocBody310_92, 0, 310, 4)) (Sum.inl 68) (some (AllocBody310_95, 310, 5))

def AllocBody310_97 : StackLang.HolProg 64 :=
.seq AllocBody310_83 AllocBody310_96

def AllocBody310_98 : StackLang.HolProg 64 :=
.seq AllocBody310_82 AllocBody310_97

def AllocBody310_99 : StackLang.HolProg 64 :=
.seq AllocBody310_81 AllocBody310_98

def AllocBody310_100 : StackLang.HolProg 64 :=
.seq AllocBody310_62 AllocBody310_99

def AllocBody310_101 : StackLang.HolProg 64 :=
.seq AllocBody310_59 AllocBody310_100

def AllocBody310_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody310_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody310_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody310_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody310_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551464#64))

def AllocBody310_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody310_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def AllocBody310_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody310_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody310_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 853#64)

def AllocBody310_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody310_113 : StackLang.HolProg 64 :=
.seq AllocBody310_111 AllocBody310_112

def AllocBody310_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody310_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody310_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody310_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 310 7

def AllocBody310_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody310_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody310_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody310_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody310_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody310_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody310_124 : StackLang.HolProg 64 :=
.seq AllocBody310_122 AllocBody310_123

def AllocBody310_125 : StackLang.HolProg 64 :=
.seq AllocBody310_121 AllocBody310_124

def AllocBody310_126 : StackLang.HolProg 64 :=
.seq AllocBody310_120 AllocBody310_125

def AllocBody310_127 : StackLang.HolProg 64 :=
.seq AllocBody310_119 AllocBody310_126

def AllocBody310_128 : StackLang.HolProg 64 :=
.seq AllocBody310_118 AllocBody310_127

def AllocBody310_129 : StackLang.HolProg 64 :=
.seq AllocBody310_117 AllocBody310_128

def AllocBody310_130 : StackLang.HolProg 64 :=
.seq AllocBody310_116 AllocBody310_129

def AllocBody310_131 : StackLang.HolProg 64 :=
.seq AllocBody310_115 AllocBody310_130

def AllocBody310_132 : StackLang.HolProg 64 :=
.seq AllocBody310_114 AllocBody310_131

def AllocBody310_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody310_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody310_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody310_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody310_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody310_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody310_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody310_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody310_141 : StackLang.HolProg 64 :=
.seq AllocBody310_139 AllocBody310_140

def AllocBody310_142 : StackLang.HolProg 64 :=
.seq AllocBody310_138 AllocBody310_141

def AllocBody310_143 : StackLang.HolProg 64 :=
.seq AllocBody310_137 AllocBody310_142

def AllocBody310_144 : StackLang.HolProg 64 :=
.seq AllocBody310_136 AllocBody310_143

def AllocBody310_145 : StackLang.HolProg 64 :=
.seq AllocBody310_135 AllocBody310_144

def AllocBody310_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody310_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody310_148 : StackLang.HolProg 64 :=
.seq AllocBody310_146 AllocBody310_147

def AllocBody310_149 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody310_150 : StackLang.HolProg 64 :=
.seq AllocBody310_148 AllocBody310_149

def AllocBody310_151 : StackLang.HolProg 64 :=
.call (some (AllocBody310_145, 0, 310, 6)) (Sum.inl 288) (some (AllocBody310_150, 310, 7))

def AllocBody310_152 : StackLang.HolProg 64 :=
.seq AllocBody310_134 AllocBody310_151

def AllocBody310_153 : StackLang.HolProg 64 :=
.seq AllocBody310_133 AllocBody310_152

def AllocBody310_154 : StackLang.HolProg 64 :=
.seq AllocBody310_132 AllocBody310_153

def AllocBody310_155 : StackLang.HolProg 64 :=
.seq AllocBody310_113 AllocBody310_154

def AllocBody310_156 : StackLang.HolProg 64 :=
.seq AllocBody310_110 AllocBody310_155

def AllocBody310_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody310_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody310_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 64#64)

def AllocBody310_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody310_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody310_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody310_163 : StackLang.HolProg 64 :=
.seq AllocBody310_161 AllocBody310_162

def AllocBody310_164 : StackLang.HolProg 64 :=
.seq AllocBody310_160 AllocBody310_163

def AllocBody310_165 : StackLang.HolProg 64 :=
.seq AllocBody310_159 AllocBody310_164

def AllocBody310_166 : StackLang.HolProg 64 :=
.seq AllocBody310_158 AllocBody310_165

def AllocBody310_167 : StackLang.HolProg 64 :=
.seq AllocBody310_157 AllocBody310_166

def AllocBody310_168 : StackLang.HolProg 64 :=
.seq AllocBody310_156 AllocBody310_167

def AllocBody310_169 : StackLang.HolProg 64 :=
.seq AllocBody310_109 AllocBody310_168

def AllocBody310_170 : StackLang.HolProg 64 :=
.seq AllocBody310_108 AllocBody310_169

def AllocBody310_171 : StackLang.HolProg 64 :=
.seq AllocBody310_107 AllocBody310_170

def AllocBody310_172 : StackLang.HolProg 64 :=
.seq AllocBody310_106 AllocBody310_171

def AllocBody310_173 : StackLang.HolProg 64 :=
.seq AllocBody310_105 AllocBody310_172

def AllocBody310_174 : StackLang.HolProg 64 :=
.seq AllocBody310_104 AllocBody310_173

def AllocBody310_175 : StackLang.HolProg 64 :=
.seq AllocBody310_103 AllocBody310_174

def AllocBody310_176 : StackLang.HolProg 64 :=
.seq AllocBody310_102 AllocBody310_175

def AllocBody310_177 : StackLang.HolProg 64 :=
.seq AllocBody310_101 AllocBody310_176

def AllocBody310_178 : StackLang.HolProg 64 :=
.seq AllocBody310_58 AllocBody310_177

def AllocBody310_179 : StackLang.HolProg 64 :=
.seq AllocBody310_57 AllocBody310_178

def AllocBody310_180 : StackLang.HolProg 64 :=
.seq AllocBody310_56 AllocBody310_179

def AllocBody310_181 : StackLang.HolProg 64 :=
.seq AllocBody310_55 AllocBody310_180

def AllocBody310_182 : StackLang.HolProg 64 :=
.seq AllocBody310_12 AllocBody310_181

def AllocBody310_183 : StackLang.HolProg 64 :=
.seq AllocBody310_11 AllocBody310_182

def AllocBody310_184 : StackLang.HolProg 64 :=
.seq AllocBody310_10 AllocBody310_183

def AllocBody310_185 : StackLang.HolProg 64 :=
.seq AllocBody310_9 AllocBody310_184

def AllocBody310_186 : StackLang.HolProg 64 :=
.seq AllocBody310_8 AllocBody310_185

def AllocBody310_187 : StackLang.HolProg 64 :=
.seq AllocBody310_7 AllocBody310_186

def AllocBody310_188 : StackLang.HolProg 64 :=
.seq AllocBody310_4 AllocBody310_187

def AllocBody310_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody310_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody310_191 : StackLang.HolProg 64 :=
.seq AllocBody310_189 AllocBody310_190

def AllocBody310_192 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody310_188 AllocBody310_191

def AllocBody310_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody310_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody310_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody310_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody310_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody310_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody310_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 854#64)

def AllocBody310_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody310_201 : StackLang.HolProg 64 :=
.seq AllocBody310_199 AllocBody310_200

def AllocBody310_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody310_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody310_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody310_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 310 9

def AllocBody310_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody310_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody310_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody310_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody310_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody310_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody310_212 : StackLang.HolProg 64 :=
.seq AllocBody310_210 AllocBody310_211

def AllocBody310_213 : StackLang.HolProg 64 :=
.seq AllocBody310_209 AllocBody310_212

def AllocBody310_214 : StackLang.HolProg 64 :=
.seq AllocBody310_208 AllocBody310_213

def AllocBody310_215 : StackLang.HolProg 64 :=
.seq AllocBody310_207 AllocBody310_214

def AllocBody310_216 : StackLang.HolProg 64 :=
.seq AllocBody310_206 AllocBody310_215

def AllocBody310_217 : StackLang.HolProg 64 :=
.seq AllocBody310_205 AllocBody310_216

def AllocBody310_218 : StackLang.HolProg 64 :=
.seq AllocBody310_204 AllocBody310_217

def AllocBody310_219 : StackLang.HolProg 64 :=
.seq AllocBody310_203 AllocBody310_218

def AllocBody310_220 : StackLang.HolProg 64 :=
.seq AllocBody310_202 AllocBody310_219

def AllocBody310_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody310_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody310_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody310_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody310_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody310_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody310_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody310_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody310_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody310_230 : StackLang.HolProg 64 :=
.seq AllocBody310_228 AllocBody310_229

def AllocBody310_231 : StackLang.HolProg 64 :=
.seq AllocBody310_227 AllocBody310_230

def AllocBody310_232 : StackLang.HolProg 64 :=
.seq AllocBody310_226 AllocBody310_231

def AllocBody310_233 : StackLang.HolProg 64 :=
.seq AllocBody310_225 AllocBody310_232

def AllocBody310_234 : StackLang.HolProg 64 :=
.seq AllocBody310_224 AllocBody310_233

def AllocBody310_235 : StackLang.HolProg 64 :=
.seq AllocBody310_223 AllocBody310_234

def AllocBody310_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody310_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody310_238 : StackLang.HolProg 64 :=
.seq AllocBody310_236 AllocBody310_237

def AllocBody310_239 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody310_240 : StackLang.HolProg 64 :=
.seq AllocBody310_238 AllocBody310_239

def AllocBody310_241 : StackLang.HolProg 64 :=
.call (some (AllocBody310_235, 0, 310, 8)) (Sum.inl 68) (some (AllocBody310_240, 310, 9))

def AllocBody310_242 : StackLang.HolProg 64 :=
.seq AllocBody310_222 AllocBody310_241

def AllocBody310_243 : StackLang.HolProg 64 :=
.seq AllocBody310_221 AllocBody310_242

def AllocBody310_244 : StackLang.HolProg 64 :=
.seq AllocBody310_220 AllocBody310_243

def AllocBody310_245 : StackLang.HolProg 64 :=
.seq AllocBody310_201 AllocBody310_244

def AllocBody310_246 : StackLang.HolProg 64 :=
.seq AllocBody310_198 AllocBody310_245

def AllocBody310_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody310_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody310_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody310_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody310_251 : StackLang.HolProg 64 :=
.seq AllocBody310_249 AllocBody310_250

def AllocBody310_252 : StackLang.HolProg 64 :=
.seq AllocBody310_248 AllocBody310_251

def AllocBody310_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody310_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 855#64)

def AllocBody310_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody310_256 : StackLang.HolProg 64 :=
.seq AllocBody310_254 AllocBody310_255

def AllocBody310_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody310_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody310_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody310_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 310 11

def AllocBody310_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody310_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody310_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody310_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody310_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody310_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody310_267 : StackLang.HolProg 64 :=
.seq AllocBody310_265 AllocBody310_266

def AllocBody310_268 : StackLang.HolProg 64 :=
.seq AllocBody310_264 AllocBody310_267

def AllocBody310_269 : StackLang.HolProg 64 :=
.seq AllocBody310_263 AllocBody310_268

def AllocBody310_270 : StackLang.HolProg 64 :=
.seq AllocBody310_262 AllocBody310_269

def AllocBody310_271 : StackLang.HolProg 64 :=
.seq AllocBody310_261 AllocBody310_270

def AllocBody310_272 : StackLang.HolProg 64 :=
.seq AllocBody310_260 AllocBody310_271

def AllocBody310_273 : StackLang.HolProg 64 :=
.seq AllocBody310_259 AllocBody310_272

def AllocBody310_274 : StackLang.HolProg 64 :=
.seq AllocBody310_258 AllocBody310_273

def AllocBody310_275 : StackLang.HolProg 64 :=
.seq AllocBody310_257 AllocBody310_274

def AllocBody310_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody310_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody310_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody310_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody310_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody310_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody310_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody310_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody310_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody310_285 : StackLang.HolProg 64 :=
.seq AllocBody310_283 AllocBody310_284

def AllocBody310_286 : StackLang.HolProg 64 :=
.seq AllocBody310_282 AllocBody310_285

def AllocBody310_287 : StackLang.HolProg 64 :=
.seq AllocBody310_281 AllocBody310_286

def AllocBody310_288 : StackLang.HolProg 64 :=
.seq AllocBody310_280 AllocBody310_287

def AllocBody310_289 : StackLang.HolProg 64 :=
.seq AllocBody310_279 AllocBody310_288

def AllocBody310_290 : StackLang.HolProg 64 :=
.seq AllocBody310_278 AllocBody310_289

def AllocBody310_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody310_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody310_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody310_294 : StackLang.HolProg 64 :=
.seq AllocBody310_292 AllocBody310_293

def AllocBody310_295 : StackLang.HolProg 64 :=
.seq AllocBody310_291 AllocBody310_294

def AllocBody310_296 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody310_297 : StackLang.HolProg 64 :=
.seq AllocBody310_295 AllocBody310_296

def AllocBody310_298 : StackLang.HolProg 64 :=
.call (some (AllocBody310_290, 0, 310, 10)) (Sum.inl 288) (some (AllocBody310_297, 310, 11))

def AllocBody310_299 : StackLang.HolProg 64 :=
.seq AllocBody310_277 AllocBody310_298

def AllocBody310_300 : StackLang.HolProg 64 :=
.seq AllocBody310_276 AllocBody310_299

def AllocBody310_301 : StackLang.HolProg 64 :=
.seq AllocBody310_275 AllocBody310_300

def AllocBody310_302 : StackLang.HolProg 64 :=
.seq AllocBody310_256 AllocBody310_301

def AllocBody310_303 : StackLang.HolProg 64 :=
.seq AllocBody310_253 AllocBody310_302

def AllocBody310_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody310_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody310_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody310_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody310_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody310_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody310_310 : StackLang.HolProg 64 :=
.seq AllocBody310_308 AllocBody310_309

def AllocBody310_311 : StackLang.HolProg 64 :=
.seq AllocBody310_307 AllocBody310_310

def AllocBody310_312 : StackLang.HolProg 64 :=
.seq AllocBody310_306 AllocBody310_311

def AllocBody310_313 : StackLang.HolProg 64 :=
.seq AllocBody310_305 AllocBody310_312

def AllocBody310_314 : StackLang.HolProg 64 :=
.seq AllocBody310_304 AllocBody310_313

def AllocBody310_315 : StackLang.HolProg 64 :=
.seq AllocBody310_303 AllocBody310_314

def AllocBody310_316 : StackLang.HolProg 64 :=
.seq AllocBody310_252 AllocBody310_315

def AllocBody310_317 : StackLang.HolProg 64 :=
.seq AllocBody310_247 AllocBody310_316

def AllocBody310_318 : StackLang.HolProg 64 :=
.seq AllocBody310_246 AllocBody310_317

def AllocBody310_319 : StackLang.HolProg 64 :=
.seq AllocBody310_197 AllocBody310_318

def AllocBody310_320 : StackLang.HolProg 64 :=
.seq AllocBody310_196 AllocBody310_319

def AllocBody310_321 : StackLang.HolProg 64 :=
.seq AllocBody310_195 AllocBody310_320

def AllocBody310_322 : StackLang.HolProg 64 :=
.seq AllocBody310_194 AllocBody310_321

def AllocBody310_323 : StackLang.HolProg 64 :=
.seq AllocBody310_193 AllocBody310_322

def AllocBody310_324 : StackLang.HolProg 64 :=
.seq AllocBody310_192 AllocBody310_323

def AllocBody310_325 : StackLang.HolProg 64 :=
.seq AllocBody310_3 AllocBody310_324

def AllocBody310_326 : StackLang.HolProg 64 :=
.seq AllocBody310_2 AllocBody310_325

def AllocBody310_327 : StackLang.HolProg 64 :=
.seq AllocBody310_1 AllocBody310_326

def AllocBody310_328 : StackLang.HolProg 64 :=
.seq AllocBody310_0 AllocBody310_327

def Alloc310 : Nat × StackLang.HolProg 64 := (310, AllocBody310_328)
theorem Alloc310_eq : StackAlloc.progComp (310, raw310) = Alloc310 := by
  kernel_rfl
#print axioms Alloc310_eq
end InitECandidate.Proofs.BackendStages
