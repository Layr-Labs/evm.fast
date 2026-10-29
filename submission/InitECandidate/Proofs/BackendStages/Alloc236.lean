import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw236
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody236_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody236_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody236_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody236_3 : StackLang.HolProg 64 :=
.seq AllocBody236_1 AllocBody236_2

def AllocBody236_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody236_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody236_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody236_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551512#64))

def AllocBody236_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def AllocBody236_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody236_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody236_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def AllocBody236_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody236_13 : StackLang.HolProg 64 :=
.seq AllocBody236_11 AllocBody236_12

def AllocBody236_14 : StackLang.HolProg 64 :=
.seq AllocBody236_10 AllocBody236_13

def AllocBody236_15 : StackLang.HolProg 64 :=
.seq AllocBody236_9 AllocBody236_14

def AllocBody236_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody236_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 444#64)

def AllocBody236_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody236_19 : StackLang.HolProg 64 :=
.seq AllocBody236_17 AllocBody236_18

def AllocBody236_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody236_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody236_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody236_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 236 3

def AllocBody236_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody236_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody236_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody236_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody236_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody236_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody236_30 : StackLang.HolProg 64 :=
.seq AllocBody236_28 AllocBody236_29

def AllocBody236_31 : StackLang.HolProg 64 :=
.seq AllocBody236_27 AllocBody236_30

def AllocBody236_32 : StackLang.HolProg 64 :=
.seq AllocBody236_26 AllocBody236_31

def AllocBody236_33 : StackLang.HolProg 64 :=
.seq AllocBody236_25 AllocBody236_32

def AllocBody236_34 : StackLang.HolProg 64 :=
.seq AllocBody236_24 AllocBody236_33

def AllocBody236_35 : StackLang.HolProg 64 :=
.seq AllocBody236_23 AllocBody236_34

def AllocBody236_36 : StackLang.HolProg 64 :=
.seq AllocBody236_22 AllocBody236_35

def AllocBody236_37 : StackLang.HolProg 64 :=
.seq AllocBody236_21 AllocBody236_36

def AllocBody236_38 : StackLang.HolProg 64 :=
.seq AllocBody236_20 AllocBody236_37

def AllocBody236_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody236_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody236_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody236_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody236_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody236_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody236_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody236_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody236_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody236_48 : StackLang.HolProg 64 :=
.seq AllocBody236_46 AllocBody236_47

def AllocBody236_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody236_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody236_51 : StackLang.HolProg 64 :=
.seq AllocBody236_49 AllocBody236_50

def AllocBody236_52 : StackLang.HolProg 64 :=
.seq AllocBody236_48 AllocBody236_51

def AllocBody236_53 : StackLang.HolProg 64 :=
.seq AllocBody236_45 AllocBody236_52

def AllocBody236_54 : StackLang.HolProg 64 :=
.seq AllocBody236_44 AllocBody236_53

def AllocBody236_55 : StackLang.HolProg 64 :=
.seq AllocBody236_43 AllocBody236_54

def AllocBody236_56 : StackLang.HolProg 64 :=
.seq AllocBody236_42 AllocBody236_55

def AllocBody236_57 : StackLang.HolProg 64 :=
.seq AllocBody236_41 AllocBody236_56

def AllocBody236_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody236_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody236_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody236_61 : StackLang.HolProg 64 :=
.seq AllocBody236_59 AllocBody236_60

def AllocBody236_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody236_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody236_64 : StackLang.HolProg 64 :=
.seq AllocBody236_62 AllocBody236_63

def AllocBody236_65 : StackLang.HolProg 64 :=
.seq AllocBody236_61 AllocBody236_64

def AllocBody236_66 : StackLang.HolProg 64 :=
.seq AllocBody236_58 AllocBody236_65

def AllocBody236_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody236_68 : StackLang.HolProg 64 :=
.seq AllocBody236_66 AllocBody236_67

def AllocBody236_69 : StackLang.HolProg 64 :=
.call (some (AllocBody236_57, 0, 236, 2)) (Sum.inl 78) (some (AllocBody236_68, 236, 3))

def AllocBody236_70 : StackLang.HolProg 64 :=
.seq AllocBody236_40 AllocBody236_69

def AllocBody236_71 : StackLang.HolProg 64 :=
.seq AllocBody236_39 AllocBody236_70

def AllocBody236_72 : StackLang.HolProg 64 :=
.seq AllocBody236_38 AllocBody236_71

def AllocBody236_73 : StackLang.HolProg 64 :=
.seq AllocBody236_19 AllocBody236_72

def AllocBody236_74 : StackLang.HolProg 64 :=
.seq AllocBody236_16 AllocBody236_73

def AllocBody236_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody236_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody236_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody236_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody236_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551512#64))

def AllocBody236_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody236_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody236_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 445#64)

def AllocBody236_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody236_84 : StackLang.HolProg 64 :=
.seq AllocBody236_82 AllocBody236_83

def AllocBody236_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody236_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody236_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody236_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 236 5

def AllocBody236_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody236_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody236_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody236_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody236_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody236_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody236_95 : StackLang.HolProg 64 :=
.seq AllocBody236_93 AllocBody236_94

def AllocBody236_96 : StackLang.HolProg 64 :=
.seq AllocBody236_92 AllocBody236_95

def AllocBody236_97 : StackLang.HolProg 64 :=
.seq AllocBody236_91 AllocBody236_96

def AllocBody236_98 : StackLang.HolProg 64 :=
.seq AllocBody236_90 AllocBody236_97

def AllocBody236_99 : StackLang.HolProg 64 :=
.seq AllocBody236_89 AllocBody236_98

def AllocBody236_100 : StackLang.HolProg 64 :=
.seq AllocBody236_88 AllocBody236_99

def AllocBody236_101 : StackLang.HolProg 64 :=
.seq AllocBody236_87 AllocBody236_100

def AllocBody236_102 : StackLang.HolProg 64 :=
.seq AllocBody236_86 AllocBody236_101

def AllocBody236_103 : StackLang.HolProg 64 :=
.seq AllocBody236_85 AllocBody236_102

def AllocBody236_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody236_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody236_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody236_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody236_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody236_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody236_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody236_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody236_112 : StackLang.HolProg 64 :=
.seq AllocBody236_110 AllocBody236_111

def AllocBody236_113 : StackLang.HolProg 64 :=
.seq AllocBody236_109 AllocBody236_112

def AllocBody236_114 : StackLang.HolProg 64 :=
.seq AllocBody236_108 AllocBody236_113

def AllocBody236_115 : StackLang.HolProg 64 :=
.seq AllocBody236_107 AllocBody236_114

def AllocBody236_116 : StackLang.HolProg 64 :=
.seq AllocBody236_106 AllocBody236_115

def AllocBody236_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody236_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody236_119 : StackLang.HolProg 64 :=
.seq AllocBody236_117 AllocBody236_118

def AllocBody236_120 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody236_121 : StackLang.HolProg 64 :=
.seq AllocBody236_119 AllocBody236_120

def AllocBody236_122 : StackLang.HolProg 64 :=
.call (some (AllocBody236_116, 0, 236, 4)) (Sum.inl 87) (some (AllocBody236_121, 236, 5))

def AllocBody236_123 : StackLang.HolProg 64 :=
.seq AllocBody236_105 AllocBody236_122

def AllocBody236_124 : StackLang.HolProg 64 :=
.seq AllocBody236_104 AllocBody236_123

def AllocBody236_125 : StackLang.HolProg 64 :=
.seq AllocBody236_103 AllocBody236_124

def AllocBody236_126 : StackLang.HolProg 64 :=
.seq AllocBody236_84 AllocBody236_125

def AllocBody236_127 : StackLang.HolProg 64 :=
.seq AllocBody236_81 AllocBody236_126

def AllocBody236_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody236_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody236_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody236_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody236_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody236_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551512#64))

def AllocBody236_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody236_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody236_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 446#64)

def AllocBody236_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody236_138 : StackLang.HolProg 64 :=
.seq AllocBody236_136 AllocBody236_137

def AllocBody236_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody236_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody236_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody236_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 236 7

def AllocBody236_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody236_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody236_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody236_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody236_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody236_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody236_149 : StackLang.HolProg 64 :=
.seq AllocBody236_147 AllocBody236_148

def AllocBody236_150 : StackLang.HolProg 64 :=
.seq AllocBody236_146 AllocBody236_149

def AllocBody236_151 : StackLang.HolProg 64 :=
.seq AllocBody236_145 AllocBody236_150

def AllocBody236_152 : StackLang.HolProg 64 :=
.seq AllocBody236_144 AllocBody236_151

def AllocBody236_153 : StackLang.HolProg 64 :=
.seq AllocBody236_143 AllocBody236_152

def AllocBody236_154 : StackLang.HolProg 64 :=
.seq AllocBody236_142 AllocBody236_153

def AllocBody236_155 : StackLang.HolProg 64 :=
.seq AllocBody236_141 AllocBody236_154

def AllocBody236_156 : StackLang.HolProg 64 :=
.seq AllocBody236_140 AllocBody236_155

def AllocBody236_157 : StackLang.HolProg 64 :=
.seq AllocBody236_139 AllocBody236_156

def AllocBody236_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody236_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody236_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody236_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody236_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody236_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody236_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody236_165 : StackLang.HolProg 64 :=
.seq AllocBody236_163 AllocBody236_164

def AllocBody236_166 : StackLang.HolProg 64 :=
.seq AllocBody236_162 AllocBody236_165

def AllocBody236_167 : StackLang.HolProg 64 :=
.seq AllocBody236_161 AllocBody236_166

def AllocBody236_168 : StackLang.HolProg 64 :=
.seq AllocBody236_160 AllocBody236_167

def AllocBody236_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody236_170 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody236_171 : StackLang.HolProg 64 :=
.seq AllocBody236_169 AllocBody236_170

def AllocBody236_172 : StackLang.HolProg 64 :=
.call (some (AllocBody236_168, 0, 236, 6)) (Sum.inl 154) (some (AllocBody236_171, 236, 7))

def AllocBody236_173 : StackLang.HolProg 64 :=
.seq AllocBody236_159 AllocBody236_172

def AllocBody236_174 : StackLang.HolProg 64 :=
.seq AllocBody236_158 AllocBody236_173

def AllocBody236_175 : StackLang.HolProg 64 :=
.seq AllocBody236_157 AllocBody236_174

def AllocBody236_176 : StackLang.HolProg 64 :=
.seq AllocBody236_138 AllocBody236_175

def AllocBody236_177 : StackLang.HolProg 64 :=
.seq AllocBody236_135 AllocBody236_176

def AllocBody236_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody236_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody236_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody236_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody236_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody236_183 : StackLang.HolProg 64 :=
.seq AllocBody236_181 AllocBody236_182

def AllocBody236_184 : StackLang.HolProg 64 :=
.seq AllocBody236_180 AllocBody236_183

def AllocBody236_185 : StackLang.HolProg 64 :=
.seq AllocBody236_179 AllocBody236_184

def AllocBody236_186 : StackLang.HolProg 64 :=
.seq AllocBody236_178 AllocBody236_185

def AllocBody236_187 : StackLang.HolProg 64 :=
.seq AllocBody236_177 AllocBody236_186

def AllocBody236_188 : StackLang.HolProg 64 :=
.seq AllocBody236_134 AllocBody236_187

def AllocBody236_189 : StackLang.HolProg 64 :=
.seq AllocBody236_133 AllocBody236_188

def AllocBody236_190 : StackLang.HolProg 64 :=
.seq AllocBody236_132 AllocBody236_189

def AllocBody236_191 : StackLang.HolProg 64 :=
.seq AllocBody236_131 AllocBody236_190

def AllocBody236_192 : StackLang.HolProg 64 :=
.seq AllocBody236_130 AllocBody236_191

def AllocBody236_193 : StackLang.HolProg 64 :=
.seq AllocBody236_129 AllocBody236_192

def AllocBody236_194 : StackLang.HolProg 64 :=
.seq AllocBody236_128 AllocBody236_193

def AllocBody236_195 : StackLang.HolProg 64 :=
.seq AllocBody236_127 AllocBody236_194

def AllocBody236_196 : StackLang.HolProg 64 :=
.seq AllocBody236_80 AllocBody236_195

def AllocBody236_197 : StackLang.HolProg 64 :=
.seq AllocBody236_79 AllocBody236_196

def AllocBody236_198 : StackLang.HolProg 64 :=
.seq AllocBody236_78 AllocBody236_197

def AllocBody236_199 : StackLang.HolProg 64 :=
.seq AllocBody236_77 AllocBody236_198

def AllocBody236_200 : StackLang.HolProg 64 :=
.seq AllocBody236_76 AllocBody236_199

def AllocBody236_201 : StackLang.HolProg 64 :=
.seq AllocBody236_75 AllocBody236_200

def AllocBody236_202 : StackLang.HolProg 64 :=
.seq AllocBody236_74 AllocBody236_201

def AllocBody236_203 : StackLang.HolProg 64 :=
.seq AllocBody236_15 AllocBody236_202

def AllocBody236_204 : StackLang.HolProg 64 :=
.seq AllocBody236_8 AllocBody236_203

def AllocBody236_205 : StackLang.HolProg 64 :=
.seq AllocBody236_7 AllocBody236_204

def AllocBody236_206 : StackLang.HolProg 64 :=
.seq AllocBody236_6 AllocBody236_205

def AllocBody236_207 : StackLang.HolProg 64 :=
.seq AllocBody236_5 AllocBody236_206

def AllocBody236_208 : StackLang.HolProg 64 :=
.seq AllocBody236_4 AllocBody236_207

def AllocBody236_209 : StackLang.HolProg 64 :=
.seq AllocBody236_3 AllocBody236_208

def AllocBody236_210 : StackLang.HolProg 64 :=
.seq AllocBody236_0 AllocBody236_209

def Alloc236 : Nat × StackLang.HolProg 64 := (236, AllocBody236_210)
theorem Alloc236_eq : StackAlloc.progComp (236, raw236) = Alloc236 := by
  kernel_rfl
#print axioms Alloc236_eq
end InitECandidate.Proofs.BackendStages
