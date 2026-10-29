import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw71
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody71_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody71_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody71_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody71_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody71_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 3 2

def AllocBody71_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 18446744073709551584#64))

def AllocBody71_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody71_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 18446744073709551592#64))

def AllocBody71_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody71_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody71_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody71_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody71_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def AllocBody71_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody71_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody71_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody71_16 : StackLang.HolProg 64 :=
.seq AllocBody71_14 AllocBody71_15

def AllocBody71_17 : StackLang.HolProg 64 :=
.seq AllocBody71_13 AllocBody71_16

def AllocBody71_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody71_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 29#64)

def AllocBody71_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody71_21 : StackLang.HolProg 64 :=
.seq AllocBody71_19 AllocBody71_20

def AllocBody71_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody71_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody71_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody71_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 71 3

def AllocBody71_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody71_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody71_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody71_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody71_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody71_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody71_32 : StackLang.HolProg 64 :=
.seq AllocBody71_30 AllocBody71_31

def AllocBody71_33 : StackLang.HolProg 64 :=
.seq AllocBody71_29 AllocBody71_32

def AllocBody71_34 : StackLang.HolProg 64 :=
.seq AllocBody71_28 AllocBody71_33

def AllocBody71_35 : StackLang.HolProg 64 :=
.seq AllocBody71_27 AllocBody71_34

def AllocBody71_36 : StackLang.HolProg 64 :=
.seq AllocBody71_26 AllocBody71_35

def AllocBody71_37 : StackLang.HolProg 64 :=
.seq AllocBody71_25 AllocBody71_36

def AllocBody71_38 : StackLang.HolProg 64 :=
.seq AllocBody71_24 AllocBody71_37

def AllocBody71_39 : StackLang.HolProg 64 :=
.seq AllocBody71_23 AllocBody71_38

def AllocBody71_40 : StackLang.HolProg 64 :=
.seq AllocBody71_22 AllocBody71_39

def AllocBody71_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody71_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody71_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody71_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody71_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody71_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody71_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody71_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody71_49 : StackLang.HolProg 64 :=
.seq AllocBody71_47 AllocBody71_48

def AllocBody71_50 : StackLang.HolProg 64 :=
.seq AllocBody71_46 AllocBody71_49

def AllocBody71_51 : StackLang.HolProg 64 :=
.seq AllocBody71_45 AllocBody71_50

def AllocBody71_52 : StackLang.HolProg 64 :=
.seq AllocBody71_44 AllocBody71_51

def AllocBody71_53 : StackLang.HolProg 64 :=
.seq AllocBody71_43 AllocBody71_52

def AllocBody71_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody71_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody71_56 : StackLang.HolProg 64 :=
.seq AllocBody71_54 AllocBody71_55

def AllocBody71_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody71_58 : StackLang.HolProg 64 :=
.seq AllocBody71_56 AllocBody71_57

def AllocBody71_59 : StackLang.HolProg 64 :=
.call (some (AllocBody71_53, 0, 71, 2)) (Sum.inl 66) (some (AllocBody71_58, 71, 3))

def AllocBody71_60 : StackLang.HolProg 64 :=
.seq AllocBody71_42 AllocBody71_59

def AllocBody71_61 : StackLang.HolProg 64 :=
.seq AllocBody71_41 AllocBody71_60

def AllocBody71_62 : StackLang.HolProg 64 :=
.seq AllocBody71_40 AllocBody71_61

def AllocBody71_63 : StackLang.HolProg 64 :=
.seq AllocBody71_21 AllocBody71_62

def AllocBody71_64 : StackLang.HolProg 64 :=
.seq AllocBody71_18 AllocBody71_63

def AllocBody71_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody71_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody71_67 : StackLang.HolProg 64 :=
.seq AllocBody71_65 AllocBody71_66

def AllocBody71_68 : StackLang.HolProg 64 :=
.seq AllocBody71_64 AllocBody71_67

def AllocBody71_69 : StackLang.HolProg 64 :=
.seq AllocBody71_17 AllocBody71_68

def AllocBody71_70 : StackLang.HolProg 64 :=
.seq AllocBody71_12 AllocBody71_69

def AllocBody71_71 : StackLang.HolProg 64 :=
.seq AllocBody71_11 AllocBody71_70

def AllocBody71_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody71_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody71_74 : StackLang.HolProg 64 :=
.seq AllocBody71_72 AllocBody71_73

def AllocBody71_75 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody71_71 AllocBody71_74

def AllocBody71_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody71_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody71_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody71_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def AllocBody71_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def AllocBody71_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody71_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody71_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody71_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551592#64))

def AllocBody71_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody71_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody71_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def AllocBody71_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody71_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody71_90 : StackLang.HolProg 64 :=
.seq AllocBody71_88 AllocBody71_89

def AllocBody71_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody71_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 30#64)

def AllocBody71_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody71_94 : StackLang.HolProg 64 :=
.seq AllocBody71_92 AllocBody71_93

def AllocBody71_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody71_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody71_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody71_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 71 5

def AllocBody71_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody71_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody71_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody71_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody71_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody71_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody71_105 : StackLang.HolProg 64 :=
.seq AllocBody71_103 AllocBody71_104

def AllocBody71_106 : StackLang.HolProg 64 :=
.seq AllocBody71_102 AllocBody71_105

def AllocBody71_107 : StackLang.HolProg 64 :=
.seq AllocBody71_101 AllocBody71_106

def AllocBody71_108 : StackLang.HolProg 64 :=
.seq AllocBody71_100 AllocBody71_107

def AllocBody71_109 : StackLang.HolProg 64 :=
.seq AllocBody71_99 AllocBody71_108

def AllocBody71_110 : StackLang.HolProg 64 :=
.seq AllocBody71_98 AllocBody71_109

def AllocBody71_111 : StackLang.HolProg 64 :=
.seq AllocBody71_97 AllocBody71_110

def AllocBody71_112 : StackLang.HolProg 64 :=
.seq AllocBody71_96 AllocBody71_111

def AllocBody71_113 : StackLang.HolProg 64 :=
.seq AllocBody71_95 AllocBody71_112

def AllocBody71_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody71_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody71_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody71_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody71_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody71_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody71_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody71_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody71_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody71_123 : StackLang.HolProg 64 :=
.seq AllocBody71_121 AllocBody71_122

def AllocBody71_124 : StackLang.HolProg 64 :=
.seq AllocBody71_120 AllocBody71_123

def AllocBody71_125 : StackLang.HolProg 64 :=
.seq AllocBody71_119 AllocBody71_124

def AllocBody71_126 : StackLang.HolProg 64 :=
.seq AllocBody71_118 AllocBody71_125

def AllocBody71_127 : StackLang.HolProg 64 :=
.seq AllocBody71_117 AllocBody71_126

def AllocBody71_128 : StackLang.HolProg 64 :=
.seq AllocBody71_116 AllocBody71_127

def AllocBody71_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody71_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody71_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody71_132 : StackLang.HolProg 64 :=
.seq AllocBody71_130 AllocBody71_131

def AllocBody71_133 : StackLang.HolProg 64 :=
.seq AllocBody71_129 AllocBody71_132

def AllocBody71_134 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody71_135 : StackLang.HolProg 64 :=
.seq AllocBody71_133 AllocBody71_134

def AllocBody71_136 : StackLang.HolProg 64 :=
.call (some (AllocBody71_128, 0, 71, 4)) (Sum.inl 66) (some (AllocBody71_135, 71, 5))

def AllocBody71_137 : StackLang.HolProg 64 :=
.seq AllocBody71_115 AllocBody71_136

def AllocBody71_138 : StackLang.HolProg 64 :=
.seq AllocBody71_114 AllocBody71_137

def AllocBody71_139 : StackLang.HolProg 64 :=
.seq AllocBody71_113 AllocBody71_138

def AllocBody71_140 : StackLang.HolProg 64 :=
.seq AllocBody71_94 AllocBody71_139

def AllocBody71_141 : StackLang.HolProg 64 :=
.seq AllocBody71_91 AllocBody71_140

def AllocBody71_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody71_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody71_144 : StackLang.HolProg 64 :=
.seq AllocBody71_142 AllocBody71_143

def AllocBody71_145 : StackLang.HolProg 64 :=
.seq AllocBody71_141 AllocBody71_144

def AllocBody71_146 : StackLang.HolProg 64 :=
.seq AllocBody71_90 AllocBody71_145

def AllocBody71_147 : StackLang.HolProg 64 :=
.seq AllocBody71_87 AllocBody71_146

def AllocBody71_148 : StackLang.HolProg 64 :=
.seq AllocBody71_86 AllocBody71_147

def AllocBody71_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody71_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody71_151 : StackLang.HolProg 64 :=
.seq AllocBody71_149 AllocBody71_150

def AllocBody71_152 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody71_148 AllocBody71_151

def AllocBody71_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody71_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody71_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody71_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody71_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551584#64)))

def AllocBody71_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody71_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody71_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody71_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody71_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody71_163 : StackLang.HolProg 64 :=
.seq AllocBody71_161 AllocBody71_162

def AllocBody71_164 : StackLang.HolProg 64 :=
.seq AllocBody71_160 AllocBody71_163

def AllocBody71_165 : StackLang.HolProg 64 :=
.seq AllocBody71_159 AllocBody71_164

def AllocBody71_166 : StackLang.HolProg 64 :=
.seq AllocBody71_158 AllocBody71_165

def AllocBody71_167 : StackLang.HolProg 64 :=
.seq AllocBody71_157 AllocBody71_166

def AllocBody71_168 : StackLang.HolProg 64 :=
.seq AllocBody71_156 AllocBody71_167

def AllocBody71_169 : StackLang.HolProg 64 :=
.seq AllocBody71_155 AllocBody71_168

def AllocBody71_170 : StackLang.HolProg 64 :=
.seq AllocBody71_154 AllocBody71_169

def AllocBody71_171 : StackLang.HolProg 64 :=
.seq AllocBody71_153 AllocBody71_170

def AllocBody71_172 : StackLang.HolProg 64 :=
.seq AllocBody71_152 AllocBody71_171

def AllocBody71_173 : StackLang.HolProg 64 :=
.seq AllocBody71_85 AllocBody71_172

def AllocBody71_174 : StackLang.HolProg 64 :=
.seq AllocBody71_84 AllocBody71_173

def AllocBody71_175 : StackLang.HolProg 64 :=
.seq AllocBody71_83 AllocBody71_174

def AllocBody71_176 : StackLang.HolProg 64 :=
.seq AllocBody71_82 AllocBody71_175

def AllocBody71_177 : StackLang.HolProg 64 :=
.seq AllocBody71_81 AllocBody71_176

def AllocBody71_178 : StackLang.HolProg 64 :=
.seq AllocBody71_80 AllocBody71_177

def AllocBody71_179 : StackLang.HolProg 64 :=
.seq AllocBody71_79 AllocBody71_178

def AllocBody71_180 : StackLang.HolProg 64 :=
.seq AllocBody71_78 AllocBody71_179

def AllocBody71_181 : StackLang.HolProg 64 :=
.seq AllocBody71_77 AllocBody71_180

def AllocBody71_182 : StackLang.HolProg 64 :=
.seq AllocBody71_76 AllocBody71_181

def AllocBody71_183 : StackLang.HolProg 64 :=
.seq AllocBody71_75 AllocBody71_182

def AllocBody71_184 : StackLang.HolProg 64 :=
.seq AllocBody71_10 AllocBody71_183

def AllocBody71_185 : StackLang.HolProg 64 :=
.seq AllocBody71_9 AllocBody71_184

def AllocBody71_186 : StackLang.HolProg 64 :=
.seq AllocBody71_8 AllocBody71_185

def AllocBody71_187 : StackLang.HolProg 64 :=
.seq AllocBody71_7 AllocBody71_186

def AllocBody71_188 : StackLang.HolProg 64 :=
.seq AllocBody71_6 AllocBody71_187

def AllocBody71_189 : StackLang.HolProg 64 :=
.seq AllocBody71_5 AllocBody71_188

def AllocBody71_190 : StackLang.HolProg 64 :=
.seq AllocBody71_4 AllocBody71_189

def AllocBody71_191 : StackLang.HolProg 64 :=
.seq AllocBody71_3 AllocBody71_190

def AllocBody71_192 : StackLang.HolProg 64 :=
.seq AllocBody71_2 AllocBody71_191

def AllocBody71_193 : StackLang.HolProg 64 :=
.seq AllocBody71_1 AllocBody71_192

def AllocBody71_194 : StackLang.HolProg 64 :=
.seq AllocBody71_0 AllocBody71_193

def Alloc71 : Nat × StackLang.HolProg 64 := (71, AllocBody71_194)
theorem Alloc71_eq : StackAlloc.progComp (71, raw71) = Alloc71 := by
  kernel_rfl
#print axioms Alloc71_eq
end InitECandidate.Proofs.BackendStages
