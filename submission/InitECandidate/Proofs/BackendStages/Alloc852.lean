import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw852
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody852_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody852_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody852_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody852_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4310#64)

def AllocBody852_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_7 : StackLang.HolProg 64 :=
.seq AllocBody852_5 AllocBody852_6

def AllocBody852_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody852_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody852_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 3

def AllocBody852_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody852_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody852_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody852_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody852_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_18 : StackLang.HolProg 64 :=
.seq AllocBody852_16 AllocBody852_17

def AllocBody852_19 : StackLang.HolProg 64 :=
.seq AllocBody852_15 AllocBody852_18

def AllocBody852_20 : StackLang.HolProg 64 :=
.seq AllocBody852_14 AllocBody852_19

def AllocBody852_21 : StackLang.HolProg 64 :=
.seq AllocBody852_13 AllocBody852_20

def AllocBody852_22 : StackLang.HolProg 64 :=
.seq AllocBody852_12 AllocBody852_21

def AllocBody852_23 : StackLang.HolProg 64 :=
.seq AllocBody852_11 AllocBody852_22

def AllocBody852_24 : StackLang.HolProg 64 :=
.seq AllocBody852_10 AllocBody852_23

def AllocBody852_25 : StackLang.HolProg 64 :=
.seq AllocBody852_9 AllocBody852_24

def AllocBody852_26 : StackLang.HolProg 64 :=
.seq AllocBody852_8 AllocBody852_25

def AllocBody852_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody852_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody852_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody852_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody852_34 : StackLang.HolProg 64 :=
.seq AllocBody852_32 AllocBody852_33

def AllocBody852_35 : StackLang.HolProg 64 :=
.seq AllocBody852_31 AllocBody852_34

def AllocBody852_36 : StackLang.HolProg 64 :=
.seq AllocBody852_30 AllocBody852_35

def AllocBody852_37 : StackLang.HolProg 64 :=
.seq AllocBody852_29 AllocBody852_36

def AllocBody852_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody852_40 : StackLang.HolProg 64 :=
.seq AllocBody852_38 AllocBody852_39

def AllocBody852_41 : StackLang.HolProg 64 :=
.call (some (AllocBody852_37, 0, 852, 2)) (Sum.inl 68) (some (AllocBody852_40, 852, 3))

def AllocBody852_42 : StackLang.HolProg 64 :=
.seq AllocBody852_28 AllocBody852_41

def AllocBody852_43 : StackLang.HolProg 64 :=
.seq AllocBody852_27 AllocBody852_42

def AllocBody852_44 : StackLang.HolProg 64 :=
.seq AllocBody852_26 AllocBody852_43

def AllocBody852_45 : StackLang.HolProg 64 :=
.seq AllocBody852_7 AllocBody852_44

def AllocBody852_46 : StackLang.HolProg 64 :=
.seq AllocBody852_4 AllocBody852_45

def AllocBody852_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody852_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody852_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody852_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody852_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551184#64)))

def AllocBody852_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody852_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551184#64))

def AllocBody852_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def AllocBody852_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4311#64)

def AllocBody852_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_61 : StackLang.HolProg 64 :=
.seq AllocBody852_59 AllocBody852_60

def AllocBody852_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody852_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody852_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 5

def AllocBody852_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody852_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody852_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody852_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody852_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_72 : StackLang.HolProg 64 :=
.seq AllocBody852_70 AllocBody852_71

def AllocBody852_73 : StackLang.HolProg 64 :=
.seq AllocBody852_69 AllocBody852_72

def AllocBody852_74 : StackLang.HolProg 64 :=
.seq AllocBody852_68 AllocBody852_73

def AllocBody852_75 : StackLang.HolProg 64 :=
.seq AllocBody852_67 AllocBody852_74

def AllocBody852_76 : StackLang.HolProg 64 :=
.seq AllocBody852_66 AllocBody852_75

def AllocBody852_77 : StackLang.HolProg 64 :=
.seq AllocBody852_65 AllocBody852_76

def AllocBody852_78 : StackLang.HolProg 64 :=
.seq AllocBody852_64 AllocBody852_77

def AllocBody852_79 : StackLang.HolProg 64 :=
.seq AllocBody852_63 AllocBody852_78

def AllocBody852_80 : StackLang.HolProg 64 :=
.seq AllocBody852_62 AllocBody852_79

def AllocBody852_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody852_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody852_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody852_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_88 : StackLang.HolProg 64 :=
.seq AllocBody852_86 AllocBody852_87

def AllocBody852_89 : StackLang.HolProg 64 :=
.seq AllocBody852_85 AllocBody852_88

def AllocBody852_90 : StackLang.HolProg 64 :=
.seq AllocBody852_84 AllocBody852_89

def AllocBody852_91 : StackLang.HolProg 64 :=
.seq AllocBody852_83 AllocBody852_90

def AllocBody852_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_93 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody852_94 : StackLang.HolProg 64 :=
.seq AllocBody852_92 AllocBody852_93

def AllocBody852_95 : StackLang.HolProg 64 :=
.call (some (AllocBody852_91, 0, 852, 4)) (Sum.inl 78) (some (AllocBody852_94, 852, 5))

def AllocBody852_96 : StackLang.HolProg 64 :=
.seq AllocBody852_82 AllocBody852_95

def AllocBody852_97 : StackLang.HolProg 64 :=
.seq AllocBody852_81 AllocBody852_96

def AllocBody852_98 : StackLang.HolProg 64 :=
.seq AllocBody852_80 AllocBody852_97

def AllocBody852_99 : StackLang.HolProg 64 :=
.seq AllocBody852_61 AllocBody852_98

def AllocBody852_100 : StackLang.HolProg 64 :=
.seq AllocBody852_58 AllocBody852_99

def AllocBody852_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody852_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 360#64)

def AllocBody852_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4312#64)

def AllocBody852_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_107 : StackLang.HolProg 64 :=
.seq AllocBody852_105 AllocBody852_106

def AllocBody852_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody852_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody852_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 7

def AllocBody852_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody852_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody852_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody852_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody852_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_118 : StackLang.HolProg 64 :=
.seq AllocBody852_116 AllocBody852_117

def AllocBody852_119 : StackLang.HolProg 64 :=
.seq AllocBody852_115 AllocBody852_118

def AllocBody852_120 : StackLang.HolProg 64 :=
.seq AllocBody852_114 AllocBody852_119

def AllocBody852_121 : StackLang.HolProg 64 :=
.seq AllocBody852_113 AllocBody852_120

def AllocBody852_122 : StackLang.HolProg 64 :=
.seq AllocBody852_112 AllocBody852_121

def AllocBody852_123 : StackLang.HolProg 64 :=
.seq AllocBody852_111 AllocBody852_122

def AllocBody852_124 : StackLang.HolProg 64 :=
.seq AllocBody852_110 AllocBody852_123

def AllocBody852_125 : StackLang.HolProg 64 :=
.seq AllocBody852_109 AllocBody852_124

def AllocBody852_126 : StackLang.HolProg 64 :=
.seq AllocBody852_108 AllocBody852_125

def AllocBody852_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody852_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody852_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody852_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody852_134 : StackLang.HolProg 64 :=
.seq AllocBody852_132 AllocBody852_133

def AllocBody852_135 : StackLang.HolProg 64 :=
.seq AllocBody852_131 AllocBody852_134

def AllocBody852_136 : StackLang.HolProg 64 :=
.seq AllocBody852_130 AllocBody852_135

def AllocBody852_137 : StackLang.HolProg 64 :=
.seq AllocBody852_129 AllocBody852_136

def AllocBody852_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_139 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody852_140 : StackLang.HolProg 64 :=
.seq AllocBody852_138 AllocBody852_139

def AllocBody852_141 : StackLang.HolProg 64 :=
.call (some (AllocBody852_137, 0, 852, 6)) (Sum.inl 68) (some (AllocBody852_140, 852, 7))

def AllocBody852_142 : StackLang.HolProg 64 :=
.seq AllocBody852_128 AllocBody852_141

def AllocBody852_143 : StackLang.HolProg 64 :=
.seq AllocBody852_127 AllocBody852_142

def AllocBody852_144 : StackLang.HolProg 64 :=
.seq AllocBody852_126 AllocBody852_143

def AllocBody852_145 : StackLang.HolProg 64 :=
.seq AllocBody852_107 AllocBody852_144

def AllocBody852_146 : StackLang.HolProg 64 :=
.seq AllocBody852_104 AllocBody852_145

def AllocBody852_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody852_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody852_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody852_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody852_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551192#64)))

def AllocBody852_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody852_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551192#64))

def AllocBody852_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 360#64)

def AllocBody852_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4313#64)

def AllocBody852_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_161 : StackLang.HolProg 64 :=
.seq AllocBody852_159 AllocBody852_160

def AllocBody852_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody852_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody852_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 9

def AllocBody852_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody852_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody852_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody852_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody852_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_172 : StackLang.HolProg 64 :=
.seq AllocBody852_170 AllocBody852_171

def AllocBody852_173 : StackLang.HolProg 64 :=
.seq AllocBody852_169 AllocBody852_172

def AllocBody852_174 : StackLang.HolProg 64 :=
.seq AllocBody852_168 AllocBody852_173

def AllocBody852_175 : StackLang.HolProg 64 :=
.seq AllocBody852_167 AllocBody852_174

def AllocBody852_176 : StackLang.HolProg 64 :=
.seq AllocBody852_166 AllocBody852_175

def AllocBody852_177 : StackLang.HolProg 64 :=
.seq AllocBody852_165 AllocBody852_176

def AllocBody852_178 : StackLang.HolProg 64 :=
.seq AllocBody852_164 AllocBody852_177

def AllocBody852_179 : StackLang.HolProg 64 :=
.seq AllocBody852_163 AllocBody852_178

def AllocBody852_180 : StackLang.HolProg 64 :=
.seq AllocBody852_162 AllocBody852_179

def AllocBody852_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody852_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody852_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody852_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_188 : StackLang.HolProg 64 :=
.seq AllocBody852_186 AllocBody852_187

def AllocBody852_189 : StackLang.HolProg 64 :=
.seq AllocBody852_185 AllocBody852_188

def AllocBody852_190 : StackLang.HolProg 64 :=
.seq AllocBody852_184 AllocBody852_189

def AllocBody852_191 : StackLang.HolProg 64 :=
.seq AllocBody852_183 AllocBody852_190

def AllocBody852_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_193 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody852_194 : StackLang.HolProg 64 :=
.seq AllocBody852_192 AllocBody852_193

def AllocBody852_195 : StackLang.HolProg 64 :=
.call (some (AllocBody852_191, 0, 852, 8)) (Sum.inl 78) (some (AllocBody852_194, 852, 9))

def AllocBody852_196 : StackLang.HolProg 64 :=
.seq AllocBody852_182 AllocBody852_195

def AllocBody852_197 : StackLang.HolProg 64 :=
.seq AllocBody852_181 AllocBody852_196

def AllocBody852_198 : StackLang.HolProg 64 :=
.seq AllocBody852_180 AllocBody852_197

def AllocBody852_199 : StackLang.HolProg 64 :=
.seq AllocBody852_161 AllocBody852_198

def AllocBody852_200 : StackLang.HolProg 64 :=
.seq AllocBody852_158 AllocBody852_199

def AllocBody852_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody852_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody852_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody852_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 17#64)

def AllocBody852_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody852_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 20#64)

def AllocBody852_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody852_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody852_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody852_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody852_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def AllocBody852_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551192#64))

def AllocBody852_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody852_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 19#64)))

def AllocBody852_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody852_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody852_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody852_224 : StackLang.HolProg 64 :=
.seq AllocBody852_222 AllocBody852_223

def AllocBody852_225 : StackLang.HolProg 64 :=
.seq AllocBody852_221 AllocBody852_224

def AllocBody852_226 : StackLang.HolProg 64 :=
.seq AllocBody852_220 AllocBody852_225

def AllocBody852_227 : StackLang.HolProg 64 :=
.seq AllocBody852_219 AllocBody852_226

def AllocBody852_228 : StackLang.HolProg 64 :=
.seq AllocBody852_218 AllocBody852_227

def AllocBody852_229 : StackLang.HolProg 64 :=
.seq AllocBody852_217 AllocBody852_228

def AllocBody852_230 : StackLang.HolProg 64 :=
.seq AllocBody852_216 AllocBody852_229

def AllocBody852_231 : StackLang.HolProg 64 :=
.seq AllocBody852_215 AllocBody852_230

def AllocBody852_232 : StackLang.HolProg 64 :=
.seq AllocBody852_214 AllocBody852_231

def AllocBody852_233 : StackLang.HolProg 64 :=
.seq AllocBody852_213 AllocBody852_232

def AllocBody852_234 : StackLang.HolProg 64 :=
.seq AllocBody852_212 AllocBody852_233

def AllocBody852_235 : StackLang.HolProg 64 :=
.seq AllocBody852_211 AllocBody852_234

def AllocBody852_236 : StackLang.HolProg 64 :=
.seq AllocBody852_210 AllocBody852_235

def AllocBody852_237 : StackLang.HolProg 64 :=
.seq AllocBody852_209 AllocBody852_236

def AllocBody852_238 : StackLang.HolProg 64 :=
.seq AllocBody852_208 AllocBody852_237

def AllocBody852_239 : StackLang.HolProg 64 :=
.seq AllocBody852_207 AllocBody852_238

def AllocBody852_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody852_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody852_242 : StackLang.HolProg 64 :=
.seq AllocBody852_240 AllocBody852_241

def AllocBody852_243 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody852_239 AllocBody852_242

def AllocBody852_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody852_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_246 : StackLang.HolProg 64 :=
.seq AllocBody852_244 AllocBody852_245

def AllocBody852_247 : StackLang.HolProg 64 :=
.seq AllocBody852_243 AllocBody852_246

def AllocBody852_248 : StackLang.HolProg 64 :=
.seq AllocBody852_206 AllocBody852_247

def AllocBody852_249 : StackLang.HolProg 64 :=
.seq AllocBody852_205 AllocBody852_248

def AllocBody852_250 : StackLang.HolProg 64 :=
.loop AllocBody852_249

def AllocBody852_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody852_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody852_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody852_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody852_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551192#64))

def AllocBody852_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 358#64)))

def AllocBody852_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def AllocBody852_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody852_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 24#64)

def AllocBody852_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4314#64)

def AllocBody852_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_264 : StackLang.HolProg 64 :=
.seq AllocBody852_262 AllocBody852_263

def AllocBody852_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody852_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody852_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 11

def AllocBody852_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody852_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody852_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody852_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody852_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_275 : StackLang.HolProg 64 :=
.seq AllocBody852_273 AllocBody852_274

def AllocBody852_276 : StackLang.HolProg 64 :=
.seq AllocBody852_272 AllocBody852_275

def AllocBody852_277 : StackLang.HolProg 64 :=
.seq AllocBody852_271 AllocBody852_276

def AllocBody852_278 : StackLang.HolProg 64 :=
.seq AllocBody852_270 AllocBody852_277

def AllocBody852_279 : StackLang.HolProg 64 :=
.seq AllocBody852_269 AllocBody852_278

def AllocBody852_280 : StackLang.HolProg 64 :=
.seq AllocBody852_268 AllocBody852_279

def AllocBody852_281 : StackLang.HolProg 64 :=
.seq AllocBody852_267 AllocBody852_280

def AllocBody852_282 : StackLang.HolProg 64 :=
.seq AllocBody852_266 AllocBody852_281

def AllocBody852_283 : StackLang.HolProg 64 :=
.seq AllocBody852_265 AllocBody852_282

def AllocBody852_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody852_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody852_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody852_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody852_291 : StackLang.HolProg 64 :=
.seq AllocBody852_289 AllocBody852_290

def AllocBody852_292 : StackLang.HolProg 64 :=
.seq AllocBody852_288 AllocBody852_291

def AllocBody852_293 : StackLang.HolProg 64 :=
.seq AllocBody852_287 AllocBody852_292

def AllocBody852_294 : StackLang.HolProg 64 :=
.seq AllocBody852_286 AllocBody852_293

def AllocBody852_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_296 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody852_297 : StackLang.HolProg 64 :=
.seq AllocBody852_295 AllocBody852_296

def AllocBody852_298 : StackLang.HolProg 64 :=
.call (some (AllocBody852_294, 0, 852, 10)) (Sum.inl 68) (some (AllocBody852_297, 852, 11))

def AllocBody852_299 : StackLang.HolProg 64 :=
.seq AllocBody852_285 AllocBody852_298

def AllocBody852_300 : StackLang.HolProg 64 :=
.seq AllocBody852_284 AllocBody852_299

def AllocBody852_301 : StackLang.HolProg 64 :=
.seq AllocBody852_283 AllocBody852_300

def AllocBody852_302 : StackLang.HolProg 64 :=
.seq AllocBody852_264 AllocBody852_301

def AllocBody852_303 : StackLang.HolProg 64 :=
.seq AllocBody852_261 AllocBody852_302

def AllocBody852_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody852_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody852_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody852_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody852_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551152#64)))

def AllocBody852_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody852_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551152#64))

def AllocBody852_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 13311379508201171970#64)

def AllocBody852_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 15506597749690834871#64)

def AllocBody852_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 998902#64)

def AllocBody852_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4315#64)

def AllocBody852_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_320 : StackLang.HolProg 64 :=
.seq AllocBody852_318 AllocBody852_319

def AllocBody852_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody852_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody852_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 13

def AllocBody852_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody852_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody852_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody852_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody852_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_331 : StackLang.HolProg 64 :=
.seq AllocBody852_329 AllocBody852_330

def AllocBody852_332 : StackLang.HolProg 64 :=
.seq AllocBody852_328 AllocBody852_331

def AllocBody852_333 : StackLang.HolProg 64 :=
.seq AllocBody852_327 AllocBody852_332

def AllocBody852_334 : StackLang.HolProg 64 :=
.seq AllocBody852_326 AllocBody852_333

def AllocBody852_335 : StackLang.HolProg 64 :=
.seq AllocBody852_325 AllocBody852_334

def AllocBody852_336 : StackLang.HolProg 64 :=
.seq AllocBody852_324 AllocBody852_335

def AllocBody852_337 : StackLang.HolProg 64 :=
.seq AllocBody852_323 AllocBody852_336

def AllocBody852_338 : StackLang.HolProg 64 :=
.seq AllocBody852_322 AllocBody852_337

def AllocBody852_339 : StackLang.HolProg 64 :=
.seq AllocBody852_321 AllocBody852_338

def AllocBody852_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody852_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody852_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody852_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_347 : StackLang.HolProg 64 :=
.seq AllocBody852_345 AllocBody852_346

def AllocBody852_348 : StackLang.HolProg 64 :=
.seq AllocBody852_344 AllocBody852_347

def AllocBody852_349 : StackLang.HolProg 64 :=
.seq AllocBody852_343 AllocBody852_348

def AllocBody852_350 : StackLang.HolProg 64 :=
.seq AllocBody852_342 AllocBody852_349

def AllocBody852_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_352 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody852_353 : StackLang.HolProg 64 :=
.seq AllocBody852_351 AllocBody852_352

def AllocBody852_354 : StackLang.HolProg 64 :=
.call (some (AllocBody852_350, 0, 852, 12)) (Sum.inl 851) (some (AllocBody852_353, 852, 13))

def AllocBody852_355 : StackLang.HolProg 64 :=
.seq AllocBody852_341 AllocBody852_354

def AllocBody852_356 : StackLang.HolProg 64 :=
.seq AllocBody852_340 AllocBody852_355

def AllocBody852_357 : StackLang.HolProg 64 :=
.seq AllocBody852_339 AllocBody852_356

def AllocBody852_358 : StackLang.HolProg 64 :=
.seq AllocBody852_320 AllocBody852_357

def AllocBody852_359 : StackLang.HolProg 64 :=
.seq AllocBody852_317 AllocBody852_358

def AllocBody852_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody852_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 24#64)

def AllocBody852_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4316#64)

def AllocBody852_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_366 : StackLang.HolProg 64 :=
.seq AllocBody852_364 AllocBody852_365

def AllocBody852_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody852_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody852_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 15

def AllocBody852_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody852_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody852_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody852_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody852_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_377 : StackLang.HolProg 64 :=
.seq AllocBody852_375 AllocBody852_376

def AllocBody852_378 : StackLang.HolProg 64 :=
.seq AllocBody852_374 AllocBody852_377

def AllocBody852_379 : StackLang.HolProg 64 :=
.seq AllocBody852_373 AllocBody852_378

def AllocBody852_380 : StackLang.HolProg 64 :=
.seq AllocBody852_372 AllocBody852_379

def AllocBody852_381 : StackLang.HolProg 64 :=
.seq AllocBody852_371 AllocBody852_380

def AllocBody852_382 : StackLang.HolProg 64 :=
.seq AllocBody852_370 AllocBody852_381

def AllocBody852_383 : StackLang.HolProg 64 :=
.seq AllocBody852_369 AllocBody852_382

def AllocBody852_384 : StackLang.HolProg 64 :=
.seq AllocBody852_368 AllocBody852_383

def AllocBody852_385 : StackLang.HolProg 64 :=
.seq AllocBody852_367 AllocBody852_384

def AllocBody852_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody852_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody852_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody852_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody852_393 : StackLang.HolProg 64 :=
.seq AllocBody852_391 AllocBody852_392

def AllocBody852_394 : StackLang.HolProg 64 :=
.seq AllocBody852_390 AllocBody852_393

def AllocBody852_395 : StackLang.HolProg 64 :=
.seq AllocBody852_389 AllocBody852_394

def AllocBody852_396 : StackLang.HolProg 64 :=
.seq AllocBody852_388 AllocBody852_395

def AllocBody852_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_398 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody852_399 : StackLang.HolProg 64 :=
.seq AllocBody852_397 AllocBody852_398

def AllocBody852_400 : StackLang.HolProg 64 :=
.call (some (AllocBody852_396, 0, 852, 14)) (Sum.inl 68) (some (AllocBody852_399, 852, 15))

def AllocBody852_401 : StackLang.HolProg 64 :=
.seq AllocBody852_387 AllocBody852_400

def AllocBody852_402 : StackLang.HolProg 64 :=
.seq AllocBody852_386 AllocBody852_401

def AllocBody852_403 : StackLang.HolProg 64 :=
.seq AllocBody852_385 AllocBody852_402

def AllocBody852_404 : StackLang.HolProg 64 :=
.seq AllocBody852_366 AllocBody852_403

def AllocBody852_405 : StackLang.HolProg 64 :=
.seq AllocBody852_363 AllocBody852_404

def AllocBody852_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody852_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody852_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody852_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody852_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551144#64)))

def AllocBody852_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody852_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551144#64))

def AllocBody852_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 3700577164601600309#64)

def AllocBody852_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2878298490047003138#64)

def AllocBody852_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 63752#64)

def AllocBody852_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4317#64)

def AllocBody852_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_422 : StackLang.HolProg 64 :=
.seq AllocBody852_420 AllocBody852_421

def AllocBody852_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody852_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody852_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 17

def AllocBody852_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody852_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody852_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody852_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody852_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_433 : StackLang.HolProg 64 :=
.seq AllocBody852_431 AllocBody852_432

def AllocBody852_434 : StackLang.HolProg 64 :=
.seq AllocBody852_430 AllocBody852_433

def AllocBody852_435 : StackLang.HolProg 64 :=
.seq AllocBody852_429 AllocBody852_434

def AllocBody852_436 : StackLang.HolProg 64 :=
.seq AllocBody852_428 AllocBody852_435

def AllocBody852_437 : StackLang.HolProg 64 :=
.seq AllocBody852_427 AllocBody852_436

def AllocBody852_438 : StackLang.HolProg 64 :=
.seq AllocBody852_426 AllocBody852_437

def AllocBody852_439 : StackLang.HolProg 64 :=
.seq AllocBody852_425 AllocBody852_438

def AllocBody852_440 : StackLang.HolProg 64 :=
.seq AllocBody852_424 AllocBody852_439

def AllocBody852_441 : StackLang.HolProg 64 :=
.seq AllocBody852_423 AllocBody852_440

def AllocBody852_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody852_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody852_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody852_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_449 : StackLang.HolProg 64 :=
.seq AllocBody852_447 AllocBody852_448

def AllocBody852_450 : StackLang.HolProg 64 :=
.seq AllocBody852_446 AllocBody852_449

def AllocBody852_451 : StackLang.HolProg 64 :=
.seq AllocBody852_445 AllocBody852_450

def AllocBody852_452 : StackLang.HolProg 64 :=
.seq AllocBody852_444 AllocBody852_451

def AllocBody852_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_454 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody852_455 : StackLang.HolProg 64 :=
.seq AllocBody852_453 AllocBody852_454

def AllocBody852_456 : StackLang.HolProg 64 :=
.call (some (AllocBody852_452, 0, 852, 16)) (Sum.inl 851) (some (AllocBody852_455, 852, 17))

def AllocBody852_457 : StackLang.HolProg 64 :=
.seq AllocBody852_443 AllocBody852_456

def AllocBody852_458 : StackLang.HolProg 64 :=
.seq AllocBody852_442 AllocBody852_457

def AllocBody852_459 : StackLang.HolProg 64 :=
.seq AllocBody852_441 AllocBody852_458

def AllocBody852_460 : StackLang.HolProg 64 :=
.seq AllocBody852_422 AllocBody852_459

def AllocBody852_461 : StackLang.HolProg 64 :=
.seq AllocBody852_419 AllocBody852_460

def AllocBody852_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody852_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 24#64)

def AllocBody852_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4318#64)

def AllocBody852_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_468 : StackLang.HolProg 64 :=
.seq AllocBody852_466 AllocBody852_467

def AllocBody852_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody852_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody852_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 19

def AllocBody852_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody852_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody852_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody852_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody852_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_479 : StackLang.HolProg 64 :=
.seq AllocBody852_477 AllocBody852_478

def AllocBody852_480 : StackLang.HolProg 64 :=
.seq AllocBody852_476 AllocBody852_479

def AllocBody852_481 : StackLang.HolProg 64 :=
.seq AllocBody852_475 AllocBody852_480

def AllocBody852_482 : StackLang.HolProg 64 :=
.seq AllocBody852_474 AllocBody852_481

def AllocBody852_483 : StackLang.HolProg 64 :=
.seq AllocBody852_473 AllocBody852_482

def AllocBody852_484 : StackLang.HolProg 64 :=
.seq AllocBody852_472 AllocBody852_483

def AllocBody852_485 : StackLang.HolProg 64 :=
.seq AllocBody852_471 AllocBody852_484

def AllocBody852_486 : StackLang.HolProg 64 :=
.seq AllocBody852_470 AllocBody852_485

def AllocBody852_487 : StackLang.HolProg 64 :=
.seq AllocBody852_469 AllocBody852_486

def AllocBody852_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody852_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody852_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody852_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody852_495 : StackLang.HolProg 64 :=
.seq AllocBody852_493 AllocBody852_494

def AllocBody852_496 : StackLang.HolProg 64 :=
.seq AllocBody852_492 AllocBody852_495

def AllocBody852_497 : StackLang.HolProg 64 :=
.seq AllocBody852_491 AllocBody852_496

def AllocBody852_498 : StackLang.HolProg 64 :=
.seq AllocBody852_490 AllocBody852_497

def AllocBody852_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_500 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody852_501 : StackLang.HolProg 64 :=
.seq AllocBody852_499 AllocBody852_500

def AllocBody852_502 : StackLang.HolProg 64 :=
.call (some (AllocBody852_498, 0, 852, 18)) (Sum.inl 68) (some (AllocBody852_501, 852, 19))

def AllocBody852_503 : StackLang.HolProg 64 :=
.seq AllocBody852_489 AllocBody852_502

def AllocBody852_504 : StackLang.HolProg 64 :=
.seq AllocBody852_488 AllocBody852_503

def AllocBody852_505 : StackLang.HolProg 64 :=
.seq AllocBody852_487 AllocBody852_504

def AllocBody852_506 : StackLang.HolProg 64 :=
.seq AllocBody852_468 AllocBody852_505

def AllocBody852_507 : StackLang.HolProg 64 :=
.seq AllocBody852_465 AllocBody852_506

def AllocBody852_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody852_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody852_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody852_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody852_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551136#64)))

def AllocBody852_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody852_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551136#64))

def AllocBody852_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 15579492241104728066#64)

def AllocBody852_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 17242047345525313946#64)

def AllocBody852_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 2401#64)

def AllocBody852_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4319#64)

def AllocBody852_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_524 : StackLang.HolProg 64 :=
.seq AllocBody852_522 AllocBody852_523

def AllocBody852_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody852_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody852_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 21

def AllocBody852_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody852_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody852_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody852_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody852_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_535 : StackLang.HolProg 64 :=
.seq AllocBody852_533 AllocBody852_534

def AllocBody852_536 : StackLang.HolProg 64 :=
.seq AllocBody852_532 AllocBody852_535

def AllocBody852_537 : StackLang.HolProg 64 :=
.seq AllocBody852_531 AllocBody852_536

def AllocBody852_538 : StackLang.HolProg 64 :=
.seq AllocBody852_530 AllocBody852_537

def AllocBody852_539 : StackLang.HolProg 64 :=
.seq AllocBody852_529 AllocBody852_538

def AllocBody852_540 : StackLang.HolProg 64 :=
.seq AllocBody852_528 AllocBody852_539

def AllocBody852_541 : StackLang.HolProg 64 :=
.seq AllocBody852_527 AllocBody852_540

def AllocBody852_542 : StackLang.HolProg 64 :=
.seq AllocBody852_526 AllocBody852_541

def AllocBody852_543 : StackLang.HolProg 64 :=
.seq AllocBody852_525 AllocBody852_542

def AllocBody852_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody852_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody852_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody852_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_551 : StackLang.HolProg 64 :=
.seq AllocBody852_549 AllocBody852_550

def AllocBody852_552 : StackLang.HolProg 64 :=
.seq AllocBody852_548 AllocBody852_551

def AllocBody852_553 : StackLang.HolProg 64 :=
.seq AllocBody852_547 AllocBody852_552

def AllocBody852_554 : StackLang.HolProg 64 :=
.seq AllocBody852_546 AllocBody852_553

def AllocBody852_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_556 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody852_557 : StackLang.HolProg 64 :=
.seq AllocBody852_555 AllocBody852_556

def AllocBody852_558 : StackLang.HolProg 64 :=
.call (some (AllocBody852_554, 0, 852, 20)) (Sum.inl 851) (some (AllocBody852_557, 852, 21))

def AllocBody852_559 : StackLang.HolProg 64 :=
.seq AllocBody852_545 AllocBody852_558

def AllocBody852_560 : StackLang.HolProg 64 :=
.seq AllocBody852_544 AllocBody852_559

def AllocBody852_561 : StackLang.HolProg 64 :=
.seq AllocBody852_543 AllocBody852_560

def AllocBody852_562 : StackLang.HolProg 64 :=
.seq AllocBody852_524 AllocBody852_561

def AllocBody852_563 : StackLang.HolProg 64 :=
.seq AllocBody852_521 AllocBody852_562

def AllocBody852_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody852_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 24#64)

def AllocBody852_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4320#64)

def AllocBody852_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_570 : StackLang.HolProg 64 :=
.seq AllocBody852_568 AllocBody852_569

def AllocBody852_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody852_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody852_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 23

def AllocBody852_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody852_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody852_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody852_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody852_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_581 : StackLang.HolProg 64 :=
.seq AllocBody852_579 AllocBody852_580

def AllocBody852_582 : StackLang.HolProg 64 :=
.seq AllocBody852_578 AllocBody852_581

def AllocBody852_583 : StackLang.HolProg 64 :=
.seq AllocBody852_577 AllocBody852_582

def AllocBody852_584 : StackLang.HolProg 64 :=
.seq AllocBody852_576 AllocBody852_583

def AllocBody852_585 : StackLang.HolProg 64 :=
.seq AllocBody852_575 AllocBody852_584

def AllocBody852_586 : StackLang.HolProg 64 :=
.seq AllocBody852_574 AllocBody852_585

def AllocBody852_587 : StackLang.HolProg 64 :=
.seq AllocBody852_573 AllocBody852_586

def AllocBody852_588 : StackLang.HolProg 64 :=
.seq AllocBody852_572 AllocBody852_587

def AllocBody852_589 : StackLang.HolProg 64 :=
.seq AllocBody852_571 AllocBody852_588

def AllocBody852_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody852_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody852_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody852_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody852_597 : StackLang.HolProg 64 :=
.seq AllocBody852_595 AllocBody852_596

def AllocBody852_598 : StackLang.HolProg 64 :=
.seq AllocBody852_594 AllocBody852_597

def AllocBody852_599 : StackLang.HolProg 64 :=
.seq AllocBody852_593 AllocBody852_598

def AllocBody852_600 : StackLang.HolProg 64 :=
.seq AllocBody852_592 AllocBody852_599

def AllocBody852_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_602 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody852_603 : StackLang.HolProg 64 :=
.seq AllocBody852_601 AllocBody852_602

def AllocBody852_604 : StackLang.HolProg 64 :=
.call (some (AllocBody852_600, 0, 852, 22)) (Sum.inl 68) (some (AllocBody852_603, 852, 23))

def AllocBody852_605 : StackLang.HolProg 64 :=
.seq AllocBody852_591 AllocBody852_604

def AllocBody852_606 : StackLang.HolProg 64 :=
.seq AllocBody852_590 AllocBody852_605

def AllocBody852_607 : StackLang.HolProg 64 :=
.seq AllocBody852_589 AllocBody852_606

def AllocBody852_608 : StackLang.HolProg 64 :=
.seq AllocBody852_570 AllocBody852_607

def AllocBody852_609 : StackLang.HolProg 64 :=
.seq AllocBody852_567 AllocBody852_608

def AllocBody852_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody852_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody852_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody852_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody852_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551128#64)))

def AllocBody852_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody852_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551128#64))

def AllocBody852_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 10016273463683084881#64)

def AllocBody852_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 14397524800236640159#64)

def AllocBody852_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 48093#64)

def AllocBody852_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4321#64)

def AllocBody852_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_626 : StackLang.HolProg 64 :=
.seq AllocBody852_624 AllocBody852_625

def AllocBody852_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody852_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody852_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 25

def AllocBody852_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody852_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody852_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody852_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody852_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_637 : StackLang.HolProg 64 :=
.seq AllocBody852_635 AllocBody852_636

def AllocBody852_638 : StackLang.HolProg 64 :=
.seq AllocBody852_634 AllocBody852_637

def AllocBody852_639 : StackLang.HolProg 64 :=
.seq AllocBody852_633 AllocBody852_638

def AllocBody852_640 : StackLang.HolProg 64 :=
.seq AllocBody852_632 AllocBody852_639

def AllocBody852_641 : StackLang.HolProg 64 :=
.seq AllocBody852_631 AllocBody852_640

def AllocBody852_642 : StackLang.HolProg 64 :=
.seq AllocBody852_630 AllocBody852_641

def AllocBody852_643 : StackLang.HolProg 64 :=
.seq AllocBody852_629 AllocBody852_642

def AllocBody852_644 : StackLang.HolProg 64 :=
.seq AllocBody852_628 AllocBody852_643

def AllocBody852_645 : StackLang.HolProg 64 :=
.seq AllocBody852_627 AllocBody852_644

def AllocBody852_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody852_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody852_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody852_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_653 : StackLang.HolProg 64 :=
.seq AllocBody852_651 AllocBody852_652

def AllocBody852_654 : StackLang.HolProg 64 :=
.seq AllocBody852_650 AllocBody852_653

def AllocBody852_655 : StackLang.HolProg 64 :=
.seq AllocBody852_649 AllocBody852_654

def AllocBody852_656 : StackLang.HolProg 64 :=
.seq AllocBody852_648 AllocBody852_655

def AllocBody852_657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_658 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody852_659 : StackLang.HolProg 64 :=
.seq AllocBody852_657 AllocBody852_658

def AllocBody852_660 : StackLang.HolProg 64 :=
.call (some (AllocBody852_656, 0, 852, 24)) (Sum.inl 851) (some (AllocBody852_659, 852, 25))

def AllocBody852_661 : StackLang.HolProg 64 :=
.seq AllocBody852_647 AllocBody852_660

def AllocBody852_662 : StackLang.HolProg 64 :=
.seq AllocBody852_646 AllocBody852_661

def AllocBody852_663 : StackLang.HolProg 64 :=
.seq AllocBody852_645 AllocBody852_662

def AllocBody852_664 : StackLang.HolProg 64 :=
.seq AllocBody852_626 AllocBody852_663

def AllocBody852_665 : StackLang.HolProg 64 :=
.seq AllocBody852_623 AllocBody852_664

def AllocBody852_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody852_667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 24#64)

def AllocBody852_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4322#64)

def AllocBody852_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_672 : StackLang.HolProg 64 :=
.seq AllocBody852_670 AllocBody852_671

def AllocBody852_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody852_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody852_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 27

def AllocBody852_677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody852_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody852_679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody852_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody852_682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_683 : StackLang.HolProg 64 :=
.seq AllocBody852_681 AllocBody852_682

def AllocBody852_684 : StackLang.HolProg 64 :=
.seq AllocBody852_680 AllocBody852_683

def AllocBody852_685 : StackLang.HolProg 64 :=
.seq AllocBody852_679 AllocBody852_684

def AllocBody852_686 : StackLang.HolProg 64 :=
.seq AllocBody852_678 AllocBody852_685

def AllocBody852_687 : StackLang.HolProg 64 :=
.seq AllocBody852_677 AllocBody852_686

def AllocBody852_688 : StackLang.HolProg 64 :=
.seq AllocBody852_676 AllocBody852_687

def AllocBody852_689 : StackLang.HolProg 64 :=
.seq AllocBody852_675 AllocBody852_688

def AllocBody852_690 : StackLang.HolProg 64 :=
.seq AllocBody852_674 AllocBody852_689

def AllocBody852_691 : StackLang.HolProg 64 :=
.seq AllocBody852_673 AllocBody852_690

def AllocBody852_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody852_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody852_696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody852_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody852_699 : StackLang.HolProg 64 :=
.seq AllocBody852_697 AllocBody852_698

def AllocBody852_700 : StackLang.HolProg 64 :=
.seq AllocBody852_696 AllocBody852_699

def AllocBody852_701 : StackLang.HolProg 64 :=
.seq AllocBody852_695 AllocBody852_700

def AllocBody852_702 : StackLang.HolProg 64 :=
.seq AllocBody852_694 AllocBody852_701

def AllocBody852_703 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_704 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody852_705 : StackLang.HolProg 64 :=
.seq AllocBody852_703 AllocBody852_704

def AllocBody852_706 : StackLang.HolProg 64 :=
.call (some (AllocBody852_702, 0, 852, 26)) (Sum.inl 68) (some (AllocBody852_705, 852, 27))

def AllocBody852_707 : StackLang.HolProg 64 :=
.seq AllocBody852_693 AllocBody852_706

def AllocBody852_708 : StackLang.HolProg 64 :=
.seq AllocBody852_692 AllocBody852_707

def AllocBody852_709 : StackLang.HolProg 64 :=
.seq AllocBody852_691 AllocBody852_708

def AllocBody852_710 : StackLang.HolProg 64 :=
.seq AllocBody852_672 AllocBody852_709

def AllocBody852_711 : StackLang.HolProg 64 :=
.seq AllocBody852_669 AllocBody852_710

def AllocBody852_712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody852_713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody852_714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody852_715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody852_716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551120#64)))

def AllocBody852_717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody852_719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551120#64))

def AllocBody852_721 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 760111669195932290#64)

def AllocBody852_722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 7603452151126424148#64)

def AllocBody852_723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 49140#64)

def AllocBody852_724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_725 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4323#64)

def AllocBody852_727 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_728 : StackLang.HolProg 64 :=
.seq AllocBody852_726 AllocBody852_727

def AllocBody852_729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody852_730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody852_731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_732 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 29

def AllocBody852_733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody852_734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody852_735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody852_736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody852_738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_739 : StackLang.HolProg 64 :=
.seq AllocBody852_737 AllocBody852_738

def AllocBody852_740 : StackLang.HolProg 64 :=
.seq AllocBody852_736 AllocBody852_739

def AllocBody852_741 : StackLang.HolProg 64 :=
.seq AllocBody852_735 AllocBody852_740

def AllocBody852_742 : StackLang.HolProg 64 :=
.seq AllocBody852_734 AllocBody852_741

def AllocBody852_743 : StackLang.HolProg 64 :=
.seq AllocBody852_733 AllocBody852_742

def AllocBody852_744 : StackLang.HolProg 64 :=
.seq AllocBody852_732 AllocBody852_743

def AllocBody852_745 : StackLang.HolProg 64 :=
.seq AllocBody852_731 AllocBody852_744

def AllocBody852_746 : StackLang.HolProg 64 :=
.seq AllocBody852_730 AllocBody852_745

def AllocBody852_747 : StackLang.HolProg 64 :=
.seq AllocBody852_729 AllocBody852_746

def AllocBody852_748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody852_749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody852_752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody852_754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_755 : StackLang.HolProg 64 :=
.seq AllocBody852_753 AllocBody852_754

def AllocBody852_756 : StackLang.HolProg 64 :=
.seq AllocBody852_752 AllocBody852_755

def AllocBody852_757 : StackLang.HolProg 64 :=
.seq AllocBody852_751 AllocBody852_756

def AllocBody852_758 : StackLang.HolProg 64 :=
.seq AllocBody852_750 AllocBody852_757

def AllocBody852_759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_760 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody852_761 : StackLang.HolProg 64 :=
.seq AllocBody852_759 AllocBody852_760

def AllocBody852_762 : StackLang.HolProg 64 :=
.call (some (AllocBody852_758, 0, 852, 28)) (Sum.inl 851) (some (AllocBody852_761, 852, 29))

def AllocBody852_763 : StackLang.HolProg 64 :=
.seq AllocBody852_749 AllocBody852_762

def AllocBody852_764 : StackLang.HolProg 64 :=
.seq AllocBody852_748 AllocBody852_763

def AllocBody852_765 : StackLang.HolProg 64 :=
.seq AllocBody852_747 AllocBody852_764

def AllocBody852_766 : StackLang.HolProg 64 :=
.seq AllocBody852_728 AllocBody852_765

def AllocBody852_767 : StackLang.HolProg 64 :=
.seq AllocBody852_725 AllocBody852_766

def AllocBody852_768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody852_769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 24#64)

def AllocBody852_770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4324#64)

def AllocBody852_773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_774 : StackLang.HolProg 64 :=
.seq AllocBody852_772 AllocBody852_773

def AllocBody852_775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody852_776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody852_777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_778 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 31

def AllocBody852_779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody852_780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody852_781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody852_782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody852_784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_785 : StackLang.HolProg 64 :=
.seq AllocBody852_783 AllocBody852_784

def AllocBody852_786 : StackLang.HolProg 64 :=
.seq AllocBody852_782 AllocBody852_785

def AllocBody852_787 : StackLang.HolProg 64 :=
.seq AllocBody852_781 AllocBody852_786

def AllocBody852_788 : StackLang.HolProg 64 :=
.seq AllocBody852_780 AllocBody852_787

def AllocBody852_789 : StackLang.HolProg 64 :=
.seq AllocBody852_779 AllocBody852_788

def AllocBody852_790 : StackLang.HolProg 64 :=
.seq AllocBody852_778 AllocBody852_789

def AllocBody852_791 : StackLang.HolProg 64 :=
.seq AllocBody852_777 AllocBody852_790

def AllocBody852_792 : StackLang.HolProg 64 :=
.seq AllocBody852_776 AllocBody852_791

def AllocBody852_793 : StackLang.HolProg 64 :=
.seq AllocBody852_775 AllocBody852_792

def AllocBody852_794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody852_795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody852_798 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody852_800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody852_801 : StackLang.HolProg 64 :=
.seq AllocBody852_799 AllocBody852_800

def AllocBody852_802 : StackLang.HolProg 64 :=
.seq AllocBody852_798 AllocBody852_801

def AllocBody852_803 : StackLang.HolProg 64 :=
.seq AllocBody852_797 AllocBody852_802

def AllocBody852_804 : StackLang.HolProg 64 :=
.seq AllocBody852_796 AllocBody852_803

def AllocBody852_805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_806 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody852_807 : StackLang.HolProg 64 :=
.seq AllocBody852_805 AllocBody852_806

def AllocBody852_808 : StackLang.HolProg 64 :=
.call (some (AllocBody852_804, 0, 852, 30)) (Sum.inl 68) (some (AllocBody852_807, 852, 31))

def AllocBody852_809 : StackLang.HolProg 64 :=
.seq AllocBody852_795 AllocBody852_808

def AllocBody852_810 : StackLang.HolProg 64 :=
.seq AllocBody852_794 AllocBody852_809

def AllocBody852_811 : StackLang.HolProg 64 :=
.seq AllocBody852_793 AllocBody852_810

def AllocBody852_812 : StackLang.HolProg 64 :=
.seq AllocBody852_774 AllocBody852_811

def AllocBody852_813 : StackLang.HolProg 64 :=
.seq AllocBody852_771 AllocBody852_812

def AllocBody852_814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody852_815 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody852_816 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody852_817 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody852_818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551112#64)))

def AllocBody852_819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody852_821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_822 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551112#64))

def AllocBody852_823 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 4307224735379260034#64)

def AllocBody852_824 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 8669529151676140297#64)

def AllocBody852_825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 25814#64)

def AllocBody852_826 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_827 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4325#64)

def AllocBody852_829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_830 : StackLang.HolProg 64 :=
.seq AllocBody852_828 AllocBody852_829

def AllocBody852_831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody852_832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody852_833 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 33

def AllocBody852_835 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody852_836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody852_837 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody852_838 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_839 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody852_840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_841 : StackLang.HolProg 64 :=
.seq AllocBody852_839 AllocBody852_840

def AllocBody852_842 : StackLang.HolProg 64 :=
.seq AllocBody852_838 AllocBody852_841

def AllocBody852_843 : StackLang.HolProg 64 :=
.seq AllocBody852_837 AllocBody852_842

def AllocBody852_844 : StackLang.HolProg 64 :=
.seq AllocBody852_836 AllocBody852_843

def AllocBody852_845 : StackLang.HolProg 64 :=
.seq AllocBody852_835 AllocBody852_844

def AllocBody852_846 : StackLang.HolProg 64 :=
.seq AllocBody852_834 AllocBody852_845

def AllocBody852_847 : StackLang.HolProg 64 :=
.seq AllocBody852_833 AllocBody852_846

def AllocBody852_848 : StackLang.HolProg 64 :=
.seq AllocBody852_832 AllocBody852_847

def AllocBody852_849 : StackLang.HolProg 64 :=
.seq AllocBody852_831 AllocBody852_848

def AllocBody852_850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody852_851 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_852 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody852_854 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_855 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody852_856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_857 : StackLang.HolProg 64 :=
.seq AllocBody852_855 AllocBody852_856

def AllocBody852_858 : StackLang.HolProg 64 :=
.seq AllocBody852_854 AllocBody852_857

def AllocBody852_859 : StackLang.HolProg 64 :=
.seq AllocBody852_853 AllocBody852_858

def AllocBody852_860 : StackLang.HolProg 64 :=
.seq AllocBody852_852 AllocBody852_859

def AllocBody852_861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_862 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody852_863 : StackLang.HolProg 64 :=
.seq AllocBody852_861 AllocBody852_862

def AllocBody852_864 : StackLang.HolProg 64 :=
.call (some (AllocBody852_860, 0, 852, 32)) (Sum.inl 851) (some (AllocBody852_863, 852, 33))

def AllocBody852_865 : StackLang.HolProg 64 :=
.seq AllocBody852_851 AllocBody852_864

def AllocBody852_866 : StackLang.HolProg 64 :=
.seq AllocBody852_850 AllocBody852_865

def AllocBody852_867 : StackLang.HolProg 64 :=
.seq AllocBody852_849 AllocBody852_866

def AllocBody852_868 : StackLang.HolProg 64 :=
.seq AllocBody852_830 AllocBody852_867

def AllocBody852_869 : StackLang.HolProg 64 :=
.seq AllocBody852_827 AllocBody852_868

def AllocBody852_870 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody852_871 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 24#64)

def AllocBody852_872 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_873 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_874 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4326#64)

def AllocBody852_875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_876 : StackLang.HolProg 64 :=
.seq AllocBody852_874 AllocBody852_875

def AllocBody852_877 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody852_878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody852_879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_880 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 35

def AllocBody852_881 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody852_882 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody852_883 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody852_884 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_885 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody852_886 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_887 : StackLang.HolProg 64 :=
.seq AllocBody852_885 AllocBody852_886

def AllocBody852_888 : StackLang.HolProg 64 :=
.seq AllocBody852_884 AllocBody852_887

def AllocBody852_889 : StackLang.HolProg 64 :=
.seq AllocBody852_883 AllocBody852_888

def AllocBody852_890 : StackLang.HolProg 64 :=
.seq AllocBody852_882 AllocBody852_889

def AllocBody852_891 : StackLang.HolProg 64 :=
.seq AllocBody852_881 AllocBody852_890

def AllocBody852_892 : StackLang.HolProg 64 :=
.seq AllocBody852_880 AllocBody852_891

def AllocBody852_893 : StackLang.HolProg 64 :=
.seq AllocBody852_879 AllocBody852_892

def AllocBody852_894 : StackLang.HolProg 64 :=
.seq AllocBody852_878 AllocBody852_893

def AllocBody852_895 : StackLang.HolProg 64 :=
.seq AllocBody852_877 AllocBody852_894

def AllocBody852_896 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody852_897 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_898 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_899 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody852_900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody852_902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody852_903 : StackLang.HolProg 64 :=
.seq AllocBody852_901 AllocBody852_902

def AllocBody852_904 : StackLang.HolProg 64 :=
.seq AllocBody852_900 AllocBody852_903

def AllocBody852_905 : StackLang.HolProg 64 :=
.seq AllocBody852_899 AllocBody852_904

def AllocBody852_906 : StackLang.HolProg 64 :=
.seq AllocBody852_898 AllocBody852_905

def AllocBody852_907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_908 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody852_909 : StackLang.HolProg 64 :=
.seq AllocBody852_907 AllocBody852_908

def AllocBody852_910 : StackLang.HolProg 64 :=
.call (some (AllocBody852_906, 0, 852, 34)) (Sum.inl 68) (some (AllocBody852_909, 852, 35))

def AllocBody852_911 : StackLang.HolProg 64 :=
.seq AllocBody852_897 AllocBody852_910

def AllocBody852_912 : StackLang.HolProg 64 :=
.seq AllocBody852_896 AllocBody852_911

def AllocBody852_913 : StackLang.HolProg 64 :=
.seq AllocBody852_895 AllocBody852_912

def AllocBody852_914 : StackLang.HolProg 64 :=
.seq AllocBody852_876 AllocBody852_913

def AllocBody852_915 : StackLang.HolProg 64 :=
.seq AllocBody852_873 AllocBody852_914

def AllocBody852_916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody852_917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody852_918 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody852_919 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody852_920 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551104#64)))

def AllocBody852_921 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody852_923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_924 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551104#64))

def AllocBody852_925 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 11294470620239562234#64)

def AllocBody852_926 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2421447037043915651#64)

def AllocBody852_927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody852_928 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_930 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4327#64)

def AllocBody852_931 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_932 : StackLang.HolProg 64 :=
.seq AllocBody852_930 AllocBody852_931

def AllocBody852_933 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody852_934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody852_935 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_936 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 37

def AllocBody852_937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody852_938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody852_939 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody852_940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_941 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody852_942 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_943 : StackLang.HolProg 64 :=
.seq AllocBody852_941 AllocBody852_942

def AllocBody852_944 : StackLang.HolProg 64 :=
.seq AllocBody852_940 AllocBody852_943

def AllocBody852_945 : StackLang.HolProg 64 :=
.seq AllocBody852_939 AllocBody852_944

def AllocBody852_946 : StackLang.HolProg 64 :=
.seq AllocBody852_938 AllocBody852_945

def AllocBody852_947 : StackLang.HolProg 64 :=
.seq AllocBody852_937 AllocBody852_946

def AllocBody852_948 : StackLang.HolProg 64 :=
.seq AllocBody852_936 AllocBody852_947

def AllocBody852_949 : StackLang.HolProg 64 :=
.seq AllocBody852_935 AllocBody852_948

def AllocBody852_950 : StackLang.HolProg 64 :=
.seq AllocBody852_934 AllocBody852_949

def AllocBody852_951 : StackLang.HolProg 64 :=
.seq AllocBody852_933 AllocBody852_950

def AllocBody852_952 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody852_953 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_954 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_955 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody852_956 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_957 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody852_958 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_959 : StackLang.HolProg 64 :=
.seq AllocBody852_957 AllocBody852_958

def AllocBody852_960 : StackLang.HolProg 64 :=
.seq AllocBody852_956 AllocBody852_959

def AllocBody852_961 : StackLang.HolProg 64 :=
.seq AllocBody852_955 AllocBody852_960

def AllocBody852_962 : StackLang.HolProg 64 :=
.seq AllocBody852_954 AllocBody852_961

def AllocBody852_963 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_964 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody852_965 : StackLang.HolProg 64 :=
.seq AllocBody852_963 AllocBody852_964

def AllocBody852_966 : StackLang.HolProg 64 :=
.call (some (AllocBody852_962, 0, 852, 36)) (Sum.inl 851) (some (AllocBody852_965, 852, 37))

def AllocBody852_967 : StackLang.HolProg 64 :=
.seq AllocBody852_953 AllocBody852_966

def AllocBody852_968 : StackLang.HolProg 64 :=
.seq AllocBody852_952 AllocBody852_967

def AllocBody852_969 : StackLang.HolProg 64 :=
.seq AllocBody852_951 AllocBody852_968

def AllocBody852_970 : StackLang.HolProg 64 :=
.seq AllocBody852_932 AllocBody852_969

def AllocBody852_971 : StackLang.HolProg 64 :=
.seq AllocBody852_929 AllocBody852_970

def AllocBody852_972 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody852_973 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody852_974 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_975 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4328#64)

def AllocBody852_977 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_978 : StackLang.HolProg 64 :=
.seq AllocBody852_976 AllocBody852_977

def AllocBody852_979 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody852_980 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody852_981 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_982 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 39

def AllocBody852_983 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody852_984 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody852_985 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody852_986 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_987 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody852_988 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_989 : StackLang.HolProg 64 :=
.seq AllocBody852_987 AllocBody852_988

def AllocBody852_990 : StackLang.HolProg 64 :=
.seq AllocBody852_986 AllocBody852_989

def AllocBody852_991 : StackLang.HolProg 64 :=
.seq AllocBody852_985 AllocBody852_990

def AllocBody852_992 : StackLang.HolProg 64 :=
.seq AllocBody852_984 AllocBody852_991

def AllocBody852_993 : StackLang.HolProg 64 :=
.seq AllocBody852_983 AllocBody852_992

def AllocBody852_994 : StackLang.HolProg 64 :=
.seq AllocBody852_982 AllocBody852_993

def AllocBody852_995 : StackLang.HolProg 64 :=
.seq AllocBody852_981 AllocBody852_994

def AllocBody852_996 : StackLang.HolProg 64 :=
.seq AllocBody852_980 AllocBody852_995

def AllocBody852_997 : StackLang.HolProg 64 :=
.seq AllocBody852_979 AllocBody852_996

def AllocBody852_998 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody852_999 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1000 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1001 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody852_1002 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_1003 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody852_1004 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody852_1005 : StackLang.HolProg 64 :=
.seq AllocBody852_1003 AllocBody852_1004

def AllocBody852_1006 : StackLang.HolProg 64 :=
.seq AllocBody852_1002 AllocBody852_1005

def AllocBody852_1007 : StackLang.HolProg 64 :=
.seq AllocBody852_1001 AllocBody852_1006

def AllocBody852_1008 : StackLang.HolProg 64 :=
.seq AllocBody852_1000 AllocBody852_1007

def AllocBody852_1009 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1010 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody852_1011 : StackLang.HolProg 64 :=
.seq AllocBody852_1009 AllocBody852_1010

def AllocBody852_1012 : StackLang.HolProg 64 :=
.call (some (AllocBody852_1008, 0, 852, 38)) (Sum.inl 68) (some (AllocBody852_1011, 852, 39))

def AllocBody852_1013 : StackLang.HolProg 64 :=
.seq AllocBody852_999 AllocBody852_1012

def AllocBody852_1014 : StackLang.HolProg 64 :=
.seq AllocBody852_998 AllocBody852_1013

def AllocBody852_1015 : StackLang.HolProg 64 :=
.seq AllocBody852_997 AllocBody852_1014

def AllocBody852_1016 : StackLang.HolProg 64 :=
.seq AllocBody852_978 AllocBody852_1015

def AllocBody852_1017 : StackLang.HolProg 64 :=
.seq AllocBody852_975 AllocBody852_1016

def AllocBody852_1018 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody852_1019 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody852_1020 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody852_1021 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody852_1022 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551096#64)))

def AllocBody852_1023 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1024 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody852_1025 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1026 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551096#64))

def AllocBody852_1027 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 7249595157780304706#64)

def AllocBody852_1028 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1029 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1030 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4329#64)

def AllocBody852_1031 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_1032 : StackLang.HolProg 64 :=
.seq AllocBody852_1030 AllocBody852_1031

def AllocBody852_1033 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody852_1034 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody852_1035 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_1036 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 41

def AllocBody852_1037 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody852_1038 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody852_1039 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody852_1040 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1041 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody852_1042 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_1043 : StackLang.HolProg 64 :=
.seq AllocBody852_1041 AllocBody852_1042

def AllocBody852_1044 : StackLang.HolProg 64 :=
.seq AllocBody852_1040 AllocBody852_1043

def AllocBody852_1045 : StackLang.HolProg 64 :=
.seq AllocBody852_1039 AllocBody852_1044

def AllocBody852_1046 : StackLang.HolProg 64 :=
.seq AllocBody852_1038 AllocBody852_1045

def AllocBody852_1047 : StackLang.HolProg 64 :=
.seq AllocBody852_1037 AllocBody852_1046

def AllocBody852_1048 : StackLang.HolProg 64 :=
.seq AllocBody852_1036 AllocBody852_1047

def AllocBody852_1049 : StackLang.HolProg 64 :=
.seq AllocBody852_1035 AllocBody852_1048

def AllocBody852_1050 : StackLang.HolProg 64 :=
.seq AllocBody852_1034 AllocBody852_1049

def AllocBody852_1051 : StackLang.HolProg 64 :=
.seq AllocBody852_1033 AllocBody852_1050

def AllocBody852_1052 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody852_1053 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1054 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1055 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody852_1056 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_1057 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody852_1058 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1059 : StackLang.HolProg 64 :=
.seq AllocBody852_1057 AllocBody852_1058

def AllocBody852_1060 : StackLang.HolProg 64 :=
.seq AllocBody852_1056 AllocBody852_1059

def AllocBody852_1061 : StackLang.HolProg 64 :=
.seq AllocBody852_1055 AllocBody852_1060

def AllocBody852_1062 : StackLang.HolProg 64 :=
.seq AllocBody852_1054 AllocBody852_1061

def AllocBody852_1063 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1064 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody852_1065 : StackLang.HolProg 64 :=
.seq AllocBody852_1063 AllocBody852_1064

def AllocBody852_1066 : StackLang.HolProg 64 :=
.call (some (AllocBody852_1062, 0, 852, 40)) (Sum.inl 89) (some (AllocBody852_1065, 852, 41))

def AllocBody852_1067 : StackLang.HolProg 64 :=
.seq AllocBody852_1053 AllocBody852_1066

def AllocBody852_1068 : StackLang.HolProg 64 :=
.seq AllocBody852_1052 AllocBody852_1067

def AllocBody852_1069 : StackLang.HolProg 64 :=
.seq AllocBody852_1051 AllocBody852_1068

def AllocBody852_1070 : StackLang.HolProg 64 :=
.seq AllocBody852_1032 AllocBody852_1069

def AllocBody852_1071 : StackLang.HolProg 64 :=
.seq AllocBody852_1029 AllocBody852_1070

def AllocBody852_1072 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody852_1073 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody852_1074 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody852_1075 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody852_1076 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551096#64))

def AllocBody852_1077 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody852_1078 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 12676030261858484297#64)

def AllocBody852_1079 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1080 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1081 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4330#64)

def AllocBody852_1082 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_1083 : StackLang.HolProg 64 :=
.seq AllocBody852_1081 AllocBody852_1082

def AllocBody852_1084 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody852_1085 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody852_1086 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_1087 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 43

def AllocBody852_1088 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody852_1089 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody852_1090 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody852_1091 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1092 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody852_1093 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_1094 : StackLang.HolProg 64 :=
.seq AllocBody852_1092 AllocBody852_1093

def AllocBody852_1095 : StackLang.HolProg 64 :=
.seq AllocBody852_1091 AllocBody852_1094

def AllocBody852_1096 : StackLang.HolProg 64 :=
.seq AllocBody852_1090 AllocBody852_1095

def AllocBody852_1097 : StackLang.HolProg 64 :=
.seq AllocBody852_1089 AllocBody852_1096

def AllocBody852_1098 : StackLang.HolProg 64 :=
.seq AllocBody852_1088 AllocBody852_1097

def AllocBody852_1099 : StackLang.HolProg 64 :=
.seq AllocBody852_1087 AllocBody852_1098

def AllocBody852_1100 : StackLang.HolProg 64 :=
.seq AllocBody852_1086 AllocBody852_1099

def AllocBody852_1101 : StackLang.HolProg 64 :=
.seq AllocBody852_1085 AllocBody852_1100

def AllocBody852_1102 : StackLang.HolProg 64 :=
.seq AllocBody852_1084 AllocBody852_1101

def AllocBody852_1103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody852_1104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody852_1107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_1108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody852_1109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1110 : StackLang.HolProg 64 :=
.seq AllocBody852_1108 AllocBody852_1109

def AllocBody852_1111 : StackLang.HolProg 64 :=
.seq AllocBody852_1107 AllocBody852_1110

def AllocBody852_1112 : StackLang.HolProg 64 :=
.seq AllocBody852_1106 AllocBody852_1111

def AllocBody852_1113 : StackLang.HolProg 64 :=
.seq AllocBody852_1105 AllocBody852_1112

def AllocBody852_1114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody852_1116 : StackLang.HolProg 64 :=
.seq AllocBody852_1114 AllocBody852_1115

def AllocBody852_1117 : StackLang.HolProg 64 :=
.call (some (AllocBody852_1113, 0, 852, 42)) (Sum.inl 89) (some (AllocBody852_1116, 852, 43))

def AllocBody852_1118 : StackLang.HolProg 64 :=
.seq AllocBody852_1104 AllocBody852_1117

def AllocBody852_1119 : StackLang.HolProg 64 :=
.seq AllocBody852_1103 AllocBody852_1118

def AllocBody852_1120 : StackLang.HolProg 64 :=
.seq AllocBody852_1102 AllocBody852_1119

def AllocBody852_1121 : StackLang.HolProg 64 :=
.seq AllocBody852_1083 AllocBody852_1120

def AllocBody852_1122 : StackLang.HolProg 64 :=
.seq AllocBody852_1080 AllocBody852_1121

def AllocBody852_1123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody852_1124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody852_1125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody852_1126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody852_1127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551096#64))

def AllocBody852_1128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody852_1129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 16708898399860066458#64)

def AllocBody852_1130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4331#64)

def AllocBody852_1133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_1134 : StackLang.HolProg 64 :=
.seq AllocBody852_1132 AllocBody852_1133

def AllocBody852_1135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody852_1136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody852_1137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_1138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 45

def AllocBody852_1139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody852_1140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody852_1141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody852_1142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody852_1144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_1145 : StackLang.HolProg 64 :=
.seq AllocBody852_1143 AllocBody852_1144

def AllocBody852_1146 : StackLang.HolProg 64 :=
.seq AllocBody852_1142 AllocBody852_1145

def AllocBody852_1147 : StackLang.HolProg 64 :=
.seq AllocBody852_1141 AllocBody852_1146

def AllocBody852_1148 : StackLang.HolProg 64 :=
.seq AllocBody852_1140 AllocBody852_1147

def AllocBody852_1149 : StackLang.HolProg 64 :=
.seq AllocBody852_1139 AllocBody852_1148

def AllocBody852_1150 : StackLang.HolProg 64 :=
.seq AllocBody852_1138 AllocBody852_1149

def AllocBody852_1151 : StackLang.HolProg 64 :=
.seq AllocBody852_1137 AllocBody852_1150

def AllocBody852_1152 : StackLang.HolProg 64 :=
.seq AllocBody852_1136 AllocBody852_1151

def AllocBody852_1153 : StackLang.HolProg 64 :=
.seq AllocBody852_1135 AllocBody852_1152

def AllocBody852_1154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody852_1155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody852_1158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_1159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody852_1160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1161 : StackLang.HolProg 64 :=
.seq AllocBody852_1159 AllocBody852_1160

def AllocBody852_1162 : StackLang.HolProg 64 :=
.seq AllocBody852_1158 AllocBody852_1161

def AllocBody852_1163 : StackLang.HolProg 64 :=
.seq AllocBody852_1157 AllocBody852_1162

def AllocBody852_1164 : StackLang.HolProg 64 :=
.seq AllocBody852_1156 AllocBody852_1163

def AllocBody852_1165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1166 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody852_1167 : StackLang.HolProg 64 :=
.seq AllocBody852_1165 AllocBody852_1166

def AllocBody852_1168 : StackLang.HolProg 64 :=
.call (some (AllocBody852_1164, 0, 852, 44)) (Sum.inl 89) (some (AllocBody852_1167, 852, 45))

def AllocBody852_1169 : StackLang.HolProg 64 :=
.seq AllocBody852_1155 AllocBody852_1168

def AllocBody852_1170 : StackLang.HolProg 64 :=
.seq AllocBody852_1154 AllocBody852_1169

def AllocBody852_1171 : StackLang.HolProg 64 :=
.seq AllocBody852_1153 AllocBody852_1170

def AllocBody852_1172 : StackLang.HolProg 64 :=
.seq AllocBody852_1134 AllocBody852_1171

def AllocBody852_1173 : StackLang.HolProg 64 :=
.seq AllocBody852_1131 AllocBody852_1172

def AllocBody852_1174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody852_1175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody852_1176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody852_1177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody852_1178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551096#64))

def AllocBody852_1179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody852_1180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 12074291595689605317#64)

def AllocBody852_1181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4332#64)

def AllocBody852_1184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_1185 : StackLang.HolProg 64 :=
.seq AllocBody852_1183 AllocBody852_1184

def AllocBody852_1186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody852_1187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody852_1188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody852_1189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 852 47

def AllocBody852_1190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody852_1191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody852_1192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody852_1193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody852_1195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_1196 : StackLang.HolProg 64 :=
.seq AllocBody852_1194 AllocBody852_1195

def AllocBody852_1197 : StackLang.HolProg 64 :=
.seq AllocBody852_1193 AllocBody852_1196

def AllocBody852_1198 : StackLang.HolProg 64 :=
.seq AllocBody852_1192 AllocBody852_1197

def AllocBody852_1199 : StackLang.HolProg 64 :=
.seq AllocBody852_1191 AllocBody852_1198

def AllocBody852_1200 : StackLang.HolProg 64 :=
.seq AllocBody852_1190 AllocBody852_1199

def AllocBody852_1201 : StackLang.HolProg 64 :=
.seq AllocBody852_1189 AllocBody852_1200

def AllocBody852_1202 : StackLang.HolProg 64 :=
.seq AllocBody852_1188 AllocBody852_1201

def AllocBody852_1203 : StackLang.HolProg 64 :=
.seq AllocBody852_1187 AllocBody852_1202

def AllocBody852_1204 : StackLang.HolProg 64 :=
.seq AllocBody852_1186 AllocBody852_1203

def AllocBody852_1205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody852_1206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody852_1209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody852_1210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody852_1211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody852_1212 : StackLang.HolProg 64 :=
.seq AllocBody852_1210 AllocBody852_1211

def AllocBody852_1213 : StackLang.HolProg 64 :=
.seq AllocBody852_1209 AllocBody852_1212

def AllocBody852_1214 : StackLang.HolProg 64 :=
.seq AllocBody852_1208 AllocBody852_1213

def AllocBody852_1215 : StackLang.HolProg 64 :=
.seq AllocBody852_1207 AllocBody852_1214

def AllocBody852_1216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody852_1217 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody852_1218 : StackLang.HolProg 64 :=
.seq AllocBody852_1216 AllocBody852_1217

def AllocBody852_1219 : StackLang.HolProg 64 :=
.call (some (AllocBody852_1215, 0, 852, 46)) (Sum.inl 89) (some (AllocBody852_1218, 852, 47))

def AllocBody852_1220 : StackLang.HolProg 64 :=
.seq AllocBody852_1206 AllocBody852_1219

def AllocBody852_1221 : StackLang.HolProg 64 :=
.seq AllocBody852_1205 AllocBody852_1220

def AllocBody852_1222 : StackLang.HolProg 64 :=
.seq AllocBody852_1204 AllocBody852_1221

def AllocBody852_1223 : StackLang.HolProg 64 :=
.seq AllocBody852_1185 AllocBody852_1222

def AllocBody852_1224 : StackLang.HolProg 64 :=
.seq AllocBody852_1182 AllocBody852_1223

def AllocBody852_1225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody852_1226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody852_1227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody852_1228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody852_1229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody852_1230 : StackLang.HolProg 64 :=
.seq AllocBody852_1228 AllocBody852_1229

def AllocBody852_1231 : StackLang.HolProg 64 :=
.seq AllocBody852_1227 AllocBody852_1230

def AllocBody852_1232 : StackLang.HolProg 64 :=
.seq AllocBody852_1226 AllocBody852_1231

def AllocBody852_1233 : StackLang.HolProg 64 :=
.seq AllocBody852_1225 AllocBody852_1232

def AllocBody852_1234 : StackLang.HolProg 64 :=
.seq AllocBody852_1224 AllocBody852_1233

def AllocBody852_1235 : StackLang.HolProg 64 :=
.seq AllocBody852_1181 AllocBody852_1234

def AllocBody852_1236 : StackLang.HolProg 64 :=
.seq AllocBody852_1180 AllocBody852_1235

def AllocBody852_1237 : StackLang.HolProg 64 :=
.seq AllocBody852_1179 AllocBody852_1236

def AllocBody852_1238 : StackLang.HolProg 64 :=
.seq AllocBody852_1178 AllocBody852_1237

def AllocBody852_1239 : StackLang.HolProg 64 :=
.seq AllocBody852_1177 AllocBody852_1238

def AllocBody852_1240 : StackLang.HolProg 64 :=
.seq AllocBody852_1176 AllocBody852_1239

def AllocBody852_1241 : StackLang.HolProg 64 :=
.seq AllocBody852_1175 AllocBody852_1240

def AllocBody852_1242 : StackLang.HolProg 64 :=
.seq AllocBody852_1174 AllocBody852_1241

def AllocBody852_1243 : StackLang.HolProg 64 :=
.seq AllocBody852_1173 AllocBody852_1242

def AllocBody852_1244 : StackLang.HolProg 64 :=
.seq AllocBody852_1130 AllocBody852_1243

def AllocBody852_1245 : StackLang.HolProg 64 :=
.seq AllocBody852_1129 AllocBody852_1244

def AllocBody852_1246 : StackLang.HolProg 64 :=
.seq AllocBody852_1128 AllocBody852_1245

def AllocBody852_1247 : StackLang.HolProg 64 :=
.seq AllocBody852_1127 AllocBody852_1246

def AllocBody852_1248 : StackLang.HolProg 64 :=
.seq AllocBody852_1126 AllocBody852_1247

def AllocBody852_1249 : StackLang.HolProg 64 :=
.seq AllocBody852_1125 AllocBody852_1248

def AllocBody852_1250 : StackLang.HolProg 64 :=
.seq AllocBody852_1124 AllocBody852_1249

def AllocBody852_1251 : StackLang.HolProg 64 :=
.seq AllocBody852_1123 AllocBody852_1250

def AllocBody852_1252 : StackLang.HolProg 64 :=
.seq AllocBody852_1122 AllocBody852_1251

def AllocBody852_1253 : StackLang.HolProg 64 :=
.seq AllocBody852_1079 AllocBody852_1252

def AllocBody852_1254 : StackLang.HolProg 64 :=
.seq AllocBody852_1078 AllocBody852_1253

def AllocBody852_1255 : StackLang.HolProg 64 :=
.seq AllocBody852_1077 AllocBody852_1254

def AllocBody852_1256 : StackLang.HolProg 64 :=
.seq AllocBody852_1076 AllocBody852_1255

def AllocBody852_1257 : StackLang.HolProg 64 :=
.seq AllocBody852_1075 AllocBody852_1256

def AllocBody852_1258 : StackLang.HolProg 64 :=
.seq AllocBody852_1074 AllocBody852_1257

def AllocBody852_1259 : StackLang.HolProg 64 :=
.seq AllocBody852_1073 AllocBody852_1258

def AllocBody852_1260 : StackLang.HolProg 64 :=
.seq AllocBody852_1072 AllocBody852_1259

def AllocBody852_1261 : StackLang.HolProg 64 :=
.seq AllocBody852_1071 AllocBody852_1260

def AllocBody852_1262 : StackLang.HolProg 64 :=
.seq AllocBody852_1028 AllocBody852_1261

def AllocBody852_1263 : StackLang.HolProg 64 :=
.seq AllocBody852_1027 AllocBody852_1262

def AllocBody852_1264 : StackLang.HolProg 64 :=
.seq AllocBody852_1026 AllocBody852_1263

def AllocBody852_1265 : StackLang.HolProg 64 :=
.seq AllocBody852_1025 AllocBody852_1264

def AllocBody852_1266 : StackLang.HolProg 64 :=
.seq AllocBody852_1024 AllocBody852_1265

def AllocBody852_1267 : StackLang.HolProg 64 :=
.seq AllocBody852_1023 AllocBody852_1266

def AllocBody852_1268 : StackLang.HolProg 64 :=
.seq AllocBody852_1022 AllocBody852_1267

def AllocBody852_1269 : StackLang.HolProg 64 :=
.seq AllocBody852_1021 AllocBody852_1268

def AllocBody852_1270 : StackLang.HolProg 64 :=
.seq AllocBody852_1020 AllocBody852_1269

def AllocBody852_1271 : StackLang.HolProg 64 :=
.seq AllocBody852_1019 AllocBody852_1270

def AllocBody852_1272 : StackLang.HolProg 64 :=
.seq AllocBody852_1018 AllocBody852_1271

def AllocBody852_1273 : StackLang.HolProg 64 :=
.seq AllocBody852_1017 AllocBody852_1272

def AllocBody852_1274 : StackLang.HolProg 64 :=
.seq AllocBody852_974 AllocBody852_1273

def AllocBody852_1275 : StackLang.HolProg 64 :=
.seq AllocBody852_973 AllocBody852_1274

def AllocBody852_1276 : StackLang.HolProg 64 :=
.seq AllocBody852_972 AllocBody852_1275

def AllocBody852_1277 : StackLang.HolProg 64 :=
.seq AllocBody852_971 AllocBody852_1276

def AllocBody852_1278 : StackLang.HolProg 64 :=
.seq AllocBody852_928 AllocBody852_1277

def AllocBody852_1279 : StackLang.HolProg 64 :=
.seq AllocBody852_927 AllocBody852_1278

def AllocBody852_1280 : StackLang.HolProg 64 :=
.seq AllocBody852_926 AllocBody852_1279

def AllocBody852_1281 : StackLang.HolProg 64 :=
.seq AllocBody852_925 AllocBody852_1280

def AllocBody852_1282 : StackLang.HolProg 64 :=
.seq AllocBody852_924 AllocBody852_1281

def AllocBody852_1283 : StackLang.HolProg 64 :=
.seq AllocBody852_923 AllocBody852_1282

def AllocBody852_1284 : StackLang.HolProg 64 :=
.seq AllocBody852_922 AllocBody852_1283

def AllocBody852_1285 : StackLang.HolProg 64 :=
.seq AllocBody852_921 AllocBody852_1284

def AllocBody852_1286 : StackLang.HolProg 64 :=
.seq AllocBody852_920 AllocBody852_1285

def AllocBody852_1287 : StackLang.HolProg 64 :=
.seq AllocBody852_919 AllocBody852_1286

def AllocBody852_1288 : StackLang.HolProg 64 :=
.seq AllocBody852_918 AllocBody852_1287

def AllocBody852_1289 : StackLang.HolProg 64 :=
.seq AllocBody852_917 AllocBody852_1288

def AllocBody852_1290 : StackLang.HolProg 64 :=
.seq AllocBody852_916 AllocBody852_1289

def AllocBody852_1291 : StackLang.HolProg 64 :=
.seq AllocBody852_915 AllocBody852_1290

def AllocBody852_1292 : StackLang.HolProg 64 :=
.seq AllocBody852_872 AllocBody852_1291

def AllocBody852_1293 : StackLang.HolProg 64 :=
.seq AllocBody852_871 AllocBody852_1292

def AllocBody852_1294 : StackLang.HolProg 64 :=
.seq AllocBody852_870 AllocBody852_1293

def AllocBody852_1295 : StackLang.HolProg 64 :=
.seq AllocBody852_869 AllocBody852_1294

def AllocBody852_1296 : StackLang.HolProg 64 :=
.seq AllocBody852_826 AllocBody852_1295

def AllocBody852_1297 : StackLang.HolProg 64 :=
.seq AllocBody852_825 AllocBody852_1296

def AllocBody852_1298 : StackLang.HolProg 64 :=
.seq AllocBody852_824 AllocBody852_1297

def AllocBody852_1299 : StackLang.HolProg 64 :=
.seq AllocBody852_823 AllocBody852_1298

def AllocBody852_1300 : StackLang.HolProg 64 :=
.seq AllocBody852_822 AllocBody852_1299

def AllocBody852_1301 : StackLang.HolProg 64 :=
.seq AllocBody852_821 AllocBody852_1300

def AllocBody852_1302 : StackLang.HolProg 64 :=
.seq AllocBody852_820 AllocBody852_1301

def AllocBody852_1303 : StackLang.HolProg 64 :=
.seq AllocBody852_819 AllocBody852_1302

def AllocBody852_1304 : StackLang.HolProg 64 :=
.seq AllocBody852_818 AllocBody852_1303

def AllocBody852_1305 : StackLang.HolProg 64 :=
.seq AllocBody852_817 AllocBody852_1304

def AllocBody852_1306 : StackLang.HolProg 64 :=
.seq AllocBody852_816 AllocBody852_1305

def AllocBody852_1307 : StackLang.HolProg 64 :=
.seq AllocBody852_815 AllocBody852_1306

def AllocBody852_1308 : StackLang.HolProg 64 :=
.seq AllocBody852_814 AllocBody852_1307

def AllocBody852_1309 : StackLang.HolProg 64 :=
.seq AllocBody852_813 AllocBody852_1308

def AllocBody852_1310 : StackLang.HolProg 64 :=
.seq AllocBody852_770 AllocBody852_1309

def AllocBody852_1311 : StackLang.HolProg 64 :=
.seq AllocBody852_769 AllocBody852_1310

def AllocBody852_1312 : StackLang.HolProg 64 :=
.seq AllocBody852_768 AllocBody852_1311

def AllocBody852_1313 : StackLang.HolProg 64 :=
.seq AllocBody852_767 AllocBody852_1312

def AllocBody852_1314 : StackLang.HolProg 64 :=
.seq AllocBody852_724 AllocBody852_1313

def AllocBody852_1315 : StackLang.HolProg 64 :=
.seq AllocBody852_723 AllocBody852_1314

def AllocBody852_1316 : StackLang.HolProg 64 :=
.seq AllocBody852_722 AllocBody852_1315

def AllocBody852_1317 : StackLang.HolProg 64 :=
.seq AllocBody852_721 AllocBody852_1316

def AllocBody852_1318 : StackLang.HolProg 64 :=
.seq AllocBody852_720 AllocBody852_1317

def AllocBody852_1319 : StackLang.HolProg 64 :=
.seq AllocBody852_719 AllocBody852_1318

def AllocBody852_1320 : StackLang.HolProg 64 :=
.seq AllocBody852_718 AllocBody852_1319

def AllocBody852_1321 : StackLang.HolProg 64 :=
.seq AllocBody852_717 AllocBody852_1320

def AllocBody852_1322 : StackLang.HolProg 64 :=
.seq AllocBody852_716 AllocBody852_1321

def AllocBody852_1323 : StackLang.HolProg 64 :=
.seq AllocBody852_715 AllocBody852_1322

def AllocBody852_1324 : StackLang.HolProg 64 :=
.seq AllocBody852_714 AllocBody852_1323

def AllocBody852_1325 : StackLang.HolProg 64 :=
.seq AllocBody852_713 AllocBody852_1324

def AllocBody852_1326 : StackLang.HolProg 64 :=
.seq AllocBody852_712 AllocBody852_1325

def AllocBody852_1327 : StackLang.HolProg 64 :=
.seq AllocBody852_711 AllocBody852_1326

def AllocBody852_1328 : StackLang.HolProg 64 :=
.seq AllocBody852_668 AllocBody852_1327

def AllocBody852_1329 : StackLang.HolProg 64 :=
.seq AllocBody852_667 AllocBody852_1328

def AllocBody852_1330 : StackLang.HolProg 64 :=
.seq AllocBody852_666 AllocBody852_1329

def AllocBody852_1331 : StackLang.HolProg 64 :=
.seq AllocBody852_665 AllocBody852_1330

def AllocBody852_1332 : StackLang.HolProg 64 :=
.seq AllocBody852_622 AllocBody852_1331

def AllocBody852_1333 : StackLang.HolProg 64 :=
.seq AllocBody852_621 AllocBody852_1332

def AllocBody852_1334 : StackLang.HolProg 64 :=
.seq AllocBody852_620 AllocBody852_1333

def AllocBody852_1335 : StackLang.HolProg 64 :=
.seq AllocBody852_619 AllocBody852_1334

def AllocBody852_1336 : StackLang.HolProg 64 :=
.seq AllocBody852_618 AllocBody852_1335

def AllocBody852_1337 : StackLang.HolProg 64 :=
.seq AllocBody852_617 AllocBody852_1336

def AllocBody852_1338 : StackLang.HolProg 64 :=
.seq AllocBody852_616 AllocBody852_1337

def AllocBody852_1339 : StackLang.HolProg 64 :=
.seq AllocBody852_615 AllocBody852_1338

def AllocBody852_1340 : StackLang.HolProg 64 :=
.seq AllocBody852_614 AllocBody852_1339

def AllocBody852_1341 : StackLang.HolProg 64 :=
.seq AllocBody852_613 AllocBody852_1340

def AllocBody852_1342 : StackLang.HolProg 64 :=
.seq AllocBody852_612 AllocBody852_1341

def AllocBody852_1343 : StackLang.HolProg 64 :=
.seq AllocBody852_611 AllocBody852_1342

def AllocBody852_1344 : StackLang.HolProg 64 :=
.seq AllocBody852_610 AllocBody852_1343

def AllocBody852_1345 : StackLang.HolProg 64 :=
.seq AllocBody852_609 AllocBody852_1344

def AllocBody852_1346 : StackLang.HolProg 64 :=
.seq AllocBody852_566 AllocBody852_1345

def AllocBody852_1347 : StackLang.HolProg 64 :=
.seq AllocBody852_565 AllocBody852_1346

def AllocBody852_1348 : StackLang.HolProg 64 :=
.seq AllocBody852_564 AllocBody852_1347

def AllocBody852_1349 : StackLang.HolProg 64 :=
.seq AllocBody852_563 AllocBody852_1348

def AllocBody852_1350 : StackLang.HolProg 64 :=
.seq AllocBody852_520 AllocBody852_1349

def AllocBody852_1351 : StackLang.HolProg 64 :=
.seq AllocBody852_519 AllocBody852_1350

def AllocBody852_1352 : StackLang.HolProg 64 :=
.seq AllocBody852_518 AllocBody852_1351

def AllocBody852_1353 : StackLang.HolProg 64 :=
.seq AllocBody852_517 AllocBody852_1352

def AllocBody852_1354 : StackLang.HolProg 64 :=
.seq AllocBody852_516 AllocBody852_1353

def AllocBody852_1355 : StackLang.HolProg 64 :=
.seq AllocBody852_515 AllocBody852_1354

def AllocBody852_1356 : StackLang.HolProg 64 :=
.seq AllocBody852_514 AllocBody852_1355

def AllocBody852_1357 : StackLang.HolProg 64 :=
.seq AllocBody852_513 AllocBody852_1356

def AllocBody852_1358 : StackLang.HolProg 64 :=
.seq AllocBody852_512 AllocBody852_1357

def AllocBody852_1359 : StackLang.HolProg 64 :=
.seq AllocBody852_511 AllocBody852_1358

def AllocBody852_1360 : StackLang.HolProg 64 :=
.seq AllocBody852_510 AllocBody852_1359

def AllocBody852_1361 : StackLang.HolProg 64 :=
.seq AllocBody852_509 AllocBody852_1360

def AllocBody852_1362 : StackLang.HolProg 64 :=
.seq AllocBody852_508 AllocBody852_1361

def AllocBody852_1363 : StackLang.HolProg 64 :=
.seq AllocBody852_507 AllocBody852_1362

def AllocBody852_1364 : StackLang.HolProg 64 :=
.seq AllocBody852_464 AllocBody852_1363

def AllocBody852_1365 : StackLang.HolProg 64 :=
.seq AllocBody852_463 AllocBody852_1364

def AllocBody852_1366 : StackLang.HolProg 64 :=
.seq AllocBody852_462 AllocBody852_1365

def AllocBody852_1367 : StackLang.HolProg 64 :=
.seq AllocBody852_461 AllocBody852_1366

def AllocBody852_1368 : StackLang.HolProg 64 :=
.seq AllocBody852_418 AllocBody852_1367

def AllocBody852_1369 : StackLang.HolProg 64 :=
.seq AllocBody852_417 AllocBody852_1368

def AllocBody852_1370 : StackLang.HolProg 64 :=
.seq AllocBody852_416 AllocBody852_1369

def AllocBody852_1371 : StackLang.HolProg 64 :=
.seq AllocBody852_415 AllocBody852_1370

def AllocBody852_1372 : StackLang.HolProg 64 :=
.seq AllocBody852_414 AllocBody852_1371

def AllocBody852_1373 : StackLang.HolProg 64 :=
.seq AllocBody852_413 AllocBody852_1372

def AllocBody852_1374 : StackLang.HolProg 64 :=
.seq AllocBody852_412 AllocBody852_1373

def AllocBody852_1375 : StackLang.HolProg 64 :=
.seq AllocBody852_411 AllocBody852_1374

def AllocBody852_1376 : StackLang.HolProg 64 :=
.seq AllocBody852_410 AllocBody852_1375

def AllocBody852_1377 : StackLang.HolProg 64 :=
.seq AllocBody852_409 AllocBody852_1376

def AllocBody852_1378 : StackLang.HolProg 64 :=
.seq AllocBody852_408 AllocBody852_1377

def AllocBody852_1379 : StackLang.HolProg 64 :=
.seq AllocBody852_407 AllocBody852_1378

def AllocBody852_1380 : StackLang.HolProg 64 :=
.seq AllocBody852_406 AllocBody852_1379

def AllocBody852_1381 : StackLang.HolProg 64 :=
.seq AllocBody852_405 AllocBody852_1380

def AllocBody852_1382 : StackLang.HolProg 64 :=
.seq AllocBody852_362 AllocBody852_1381

def AllocBody852_1383 : StackLang.HolProg 64 :=
.seq AllocBody852_361 AllocBody852_1382

def AllocBody852_1384 : StackLang.HolProg 64 :=
.seq AllocBody852_360 AllocBody852_1383

def AllocBody852_1385 : StackLang.HolProg 64 :=
.seq AllocBody852_359 AllocBody852_1384

def AllocBody852_1386 : StackLang.HolProg 64 :=
.seq AllocBody852_316 AllocBody852_1385

def AllocBody852_1387 : StackLang.HolProg 64 :=
.seq AllocBody852_315 AllocBody852_1386

def AllocBody852_1388 : StackLang.HolProg 64 :=
.seq AllocBody852_314 AllocBody852_1387

def AllocBody852_1389 : StackLang.HolProg 64 :=
.seq AllocBody852_313 AllocBody852_1388

def AllocBody852_1390 : StackLang.HolProg 64 :=
.seq AllocBody852_312 AllocBody852_1389

def AllocBody852_1391 : StackLang.HolProg 64 :=
.seq AllocBody852_311 AllocBody852_1390

def AllocBody852_1392 : StackLang.HolProg 64 :=
.seq AllocBody852_310 AllocBody852_1391

def AllocBody852_1393 : StackLang.HolProg 64 :=
.seq AllocBody852_309 AllocBody852_1392

def AllocBody852_1394 : StackLang.HolProg 64 :=
.seq AllocBody852_308 AllocBody852_1393

def AllocBody852_1395 : StackLang.HolProg 64 :=
.seq AllocBody852_307 AllocBody852_1394

def AllocBody852_1396 : StackLang.HolProg 64 :=
.seq AllocBody852_306 AllocBody852_1395

def AllocBody852_1397 : StackLang.HolProg 64 :=
.seq AllocBody852_305 AllocBody852_1396

def AllocBody852_1398 : StackLang.HolProg 64 :=
.seq AllocBody852_304 AllocBody852_1397

def AllocBody852_1399 : StackLang.HolProg 64 :=
.seq AllocBody852_303 AllocBody852_1398

def AllocBody852_1400 : StackLang.HolProg 64 :=
.seq AllocBody852_260 AllocBody852_1399

def AllocBody852_1401 : StackLang.HolProg 64 :=
.seq AllocBody852_259 AllocBody852_1400

def AllocBody852_1402 : StackLang.HolProg 64 :=
.seq AllocBody852_258 AllocBody852_1401

def AllocBody852_1403 : StackLang.HolProg 64 :=
.seq AllocBody852_257 AllocBody852_1402

def AllocBody852_1404 : StackLang.HolProg 64 :=
.seq AllocBody852_256 AllocBody852_1403

def AllocBody852_1405 : StackLang.HolProg 64 :=
.seq AllocBody852_255 AllocBody852_1404

def AllocBody852_1406 : StackLang.HolProg 64 :=
.seq AllocBody852_254 AllocBody852_1405

def AllocBody852_1407 : StackLang.HolProg 64 :=
.seq AllocBody852_253 AllocBody852_1406

def AllocBody852_1408 : StackLang.HolProg 64 :=
.seq AllocBody852_252 AllocBody852_1407

def AllocBody852_1409 : StackLang.HolProg 64 :=
.seq AllocBody852_251 AllocBody852_1408

def AllocBody852_1410 : StackLang.HolProg 64 :=
.seq AllocBody852_250 AllocBody852_1409

def AllocBody852_1411 : StackLang.HolProg 64 :=
.seq AllocBody852_204 AllocBody852_1410

def AllocBody852_1412 : StackLang.HolProg 64 :=
.seq AllocBody852_203 AllocBody852_1411

def AllocBody852_1413 : StackLang.HolProg 64 :=
.seq AllocBody852_202 AllocBody852_1412

def AllocBody852_1414 : StackLang.HolProg 64 :=
.seq AllocBody852_201 AllocBody852_1413

def AllocBody852_1415 : StackLang.HolProg 64 :=
.seq AllocBody852_200 AllocBody852_1414

def AllocBody852_1416 : StackLang.HolProg 64 :=
.seq AllocBody852_157 AllocBody852_1415

def AllocBody852_1417 : StackLang.HolProg 64 :=
.seq AllocBody852_156 AllocBody852_1416

def AllocBody852_1418 : StackLang.HolProg 64 :=
.seq AllocBody852_155 AllocBody852_1417

def AllocBody852_1419 : StackLang.HolProg 64 :=
.seq AllocBody852_154 AllocBody852_1418

def AllocBody852_1420 : StackLang.HolProg 64 :=
.seq AllocBody852_153 AllocBody852_1419

def AllocBody852_1421 : StackLang.HolProg 64 :=
.seq AllocBody852_152 AllocBody852_1420

def AllocBody852_1422 : StackLang.HolProg 64 :=
.seq AllocBody852_151 AllocBody852_1421

def AllocBody852_1423 : StackLang.HolProg 64 :=
.seq AllocBody852_150 AllocBody852_1422

def AllocBody852_1424 : StackLang.HolProg 64 :=
.seq AllocBody852_149 AllocBody852_1423

def AllocBody852_1425 : StackLang.HolProg 64 :=
.seq AllocBody852_148 AllocBody852_1424

def AllocBody852_1426 : StackLang.HolProg 64 :=
.seq AllocBody852_147 AllocBody852_1425

def AllocBody852_1427 : StackLang.HolProg 64 :=
.seq AllocBody852_146 AllocBody852_1426

def AllocBody852_1428 : StackLang.HolProg 64 :=
.seq AllocBody852_103 AllocBody852_1427

def AllocBody852_1429 : StackLang.HolProg 64 :=
.seq AllocBody852_102 AllocBody852_1428

def AllocBody852_1430 : StackLang.HolProg 64 :=
.seq AllocBody852_101 AllocBody852_1429

def AllocBody852_1431 : StackLang.HolProg 64 :=
.seq AllocBody852_100 AllocBody852_1430

def AllocBody852_1432 : StackLang.HolProg 64 :=
.seq AllocBody852_57 AllocBody852_1431

def AllocBody852_1433 : StackLang.HolProg 64 :=
.seq AllocBody852_56 AllocBody852_1432

def AllocBody852_1434 : StackLang.HolProg 64 :=
.seq AllocBody852_55 AllocBody852_1433

def AllocBody852_1435 : StackLang.HolProg 64 :=
.seq AllocBody852_54 AllocBody852_1434

def AllocBody852_1436 : StackLang.HolProg 64 :=
.seq AllocBody852_53 AllocBody852_1435

def AllocBody852_1437 : StackLang.HolProg 64 :=
.seq AllocBody852_52 AllocBody852_1436

def AllocBody852_1438 : StackLang.HolProg 64 :=
.seq AllocBody852_51 AllocBody852_1437

def AllocBody852_1439 : StackLang.HolProg 64 :=
.seq AllocBody852_50 AllocBody852_1438

def AllocBody852_1440 : StackLang.HolProg 64 :=
.seq AllocBody852_49 AllocBody852_1439

def AllocBody852_1441 : StackLang.HolProg 64 :=
.seq AllocBody852_48 AllocBody852_1440

def AllocBody852_1442 : StackLang.HolProg 64 :=
.seq AllocBody852_47 AllocBody852_1441

def AllocBody852_1443 : StackLang.HolProg 64 :=
.seq AllocBody852_46 AllocBody852_1442

def AllocBody852_1444 : StackLang.HolProg 64 :=
.seq AllocBody852_3 AllocBody852_1443

def AllocBody852_1445 : StackLang.HolProg 64 :=
.seq AllocBody852_2 AllocBody852_1444

def AllocBody852_1446 : StackLang.HolProg 64 :=
.seq AllocBody852_1 AllocBody852_1445

def AllocBody852_1447 : StackLang.HolProg 64 :=
.seq AllocBody852_0 AllocBody852_1446

def Alloc852 : Nat × StackLang.HolProg 64 := (852, AllocBody852_1447)
theorem Alloc852_eq : StackAlloc.progComp (852, raw852) = Alloc852 := by
  kernel_rfl
#print axioms Alloc852_eq
end InitECandidate.Proofs.BackendStages
