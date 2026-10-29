import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw68
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody68_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody68_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody68_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody68_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody68_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def AllocBody68_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551608#64))

def AllocBody68_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2952790016#64)

def AllocBody68_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody68_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody68_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody68_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody68_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody68_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody68_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody68_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody68_15 : StackLang.HolProg 64 :=
.seq AllocBody68_13 AllocBody68_14

def AllocBody68_16 : StackLang.HolProg 64 :=
.seq AllocBody68_12 AllocBody68_15

def AllocBody68_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody68_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 27#64)

def AllocBody68_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody68_20 : StackLang.HolProg 64 :=
.seq AllocBody68_18 AllocBody68_19

def AllocBody68_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody68_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody68_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody68_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 68 3

def AllocBody68_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody68_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody68_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody68_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody68_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody68_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody68_31 : StackLang.HolProg 64 :=
.seq AllocBody68_29 AllocBody68_30

def AllocBody68_32 : StackLang.HolProg 64 :=
.seq AllocBody68_28 AllocBody68_31

def AllocBody68_33 : StackLang.HolProg 64 :=
.seq AllocBody68_27 AllocBody68_32

def AllocBody68_34 : StackLang.HolProg 64 :=
.seq AllocBody68_26 AllocBody68_33

def AllocBody68_35 : StackLang.HolProg 64 :=
.seq AllocBody68_25 AllocBody68_34

def AllocBody68_36 : StackLang.HolProg 64 :=
.seq AllocBody68_24 AllocBody68_35

def AllocBody68_37 : StackLang.HolProg 64 :=
.seq AllocBody68_23 AllocBody68_36

def AllocBody68_38 : StackLang.HolProg 64 :=
.seq AllocBody68_22 AllocBody68_37

def AllocBody68_39 : StackLang.HolProg 64 :=
.seq AllocBody68_21 AllocBody68_38

def AllocBody68_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody68_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody68_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody68_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody68_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody68_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody68_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody68_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody68_48 : StackLang.HolProg 64 :=
.seq AllocBody68_46 AllocBody68_47

def AllocBody68_49 : StackLang.HolProg 64 :=
.seq AllocBody68_45 AllocBody68_48

def AllocBody68_50 : StackLang.HolProg 64 :=
.seq AllocBody68_44 AllocBody68_49

def AllocBody68_51 : StackLang.HolProg 64 :=
.seq AllocBody68_43 AllocBody68_50

def AllocBody68_52 : StackLang.HolProg 64 :=
.seq AllocBody68_42 AllocBody68_51

def AllocBody68_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody68_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody68_55 : StackLang.HolProg 64 :=
.seq AllocBody68_53 AllocBody68_54

def AllocBody68_56 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody68_57 : StackLang.HolProg 64 :=
.seq AllocBody68_55 AllocBody68_56

def AllocBody68_58 : StackLang.HolProg 64 :=
.call (some (AllocBody68_52, 0, 68, 2)) (Sum.inl 66) (some (AllocBody68_57, 68, 3))

def AllocBody68_59 : StackLang.HolProg 64 :=
.seq AllocBody68_41 AllocBody68_58

def AllocBody68_60 : StackLang.HolProg 64 :=
.seq AllocBody68_40 AllocBody68_59

def AllocBody68_61 : StackLang.HolProg 64 :=
.seq AllocBody68_39 AllocBody68_60

def AllocBody68_62 : StackLang.HolProg 64 :=
.seq AllocBody68_20 AllocBody68_61

def AllocBody68_63 : StackLang.HolProg 64 :=
.seq AllocBody68_17 AllocBody68_62

def AllocBody68_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody68_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody68_66 : StackLang.HolProg 64 :=
.seq AllocBody68_64 AllocBody68_65

def AllocBody68_67 : StackLang.HolProg 64 :=
.seq AllocBody68_63 AllocBody68_66

def AllocBody68_68 : StackLang.HolProg 64 :=
.seq AllocBody68_16 AllocBody68_67

def AllocBody68_69 : StackLang.HolProg 64 :=
.seq AllocBody68_11 AllocBody68_68

def AllocBody68_70 : StackLang.HolProg 64 :=
.seq AllocBody68_10 AllocBody68_69

def AllocBody68_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody68_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody68_73 : StackLang.HolProg 64 :=
.seq AllocBody68_71 AllocBody68_72

def AllocBody68_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody68_70 AllocBody68_73

def AllocBody68_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody68_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody68_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody68_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def AllocBody68_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def AllocBody68_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 2952790016#64)

def AllocBody68_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody68_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody68_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody68_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody68_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody68_86 : StackLang.HolProg 64 :=
.seq AllocBody68_84 AllocBody68_85

def AllocBody68_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody68_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 28#64)

def AllocBody68_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody68_90 : StackLang.HolProg 64 :=
.seq AllocBody68_88 AllocBody68_89

def AllocBody68_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody68_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody68_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody68_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 68 5

def AllocBody68_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody68_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody68_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody68_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody68_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody68_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody68_101 : StackLang.HolProg 64 :=
.seq AllocBody68_99 AllocBody68_100

def AllocBody68_102 : StackLang.HolProg 64 :=
.seq AllocBody68_98 AllocBody68_101

def AllocBody68_103 : StackLang.HolProg 64 :=
.seq AllocBody68_97 AllocBody68_102

def AllocBody68_104 : StackLang.HolProg 64 :=
.seq AllocBody68_96 AllocBody68_103

def AllocBody68_105 : StackLang.HolProg 64 :=
.seq AllocBody68_95 AllocBody68_104

def AllocBody68_106 : StackLang.HolProg 64 :=
.seq AllocBody68_94 AllocBody68_105

def AllocBody68_107 : StackLang.HolProg 64 :=
.seq AllocBody68_93 AllocBody68_106

def AllocBody68_108 : StackLang.HolProg 64 :=
.seq AllocBody68_92 AllocBody68_107

def AllocBody68_109 : StackLang.HolProg 64 :=
.seq AllocBody68_91 AllocBody68_108

def AllocBody68_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody68_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody68_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody68_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody68_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody68_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody68_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody68_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody68_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody68_119 : StackLang.HolProg 64 :=
.seq AllocBody68_117 AllocBody68_118

def AllocBody68_120 : StackLang.HolProg 64 :=
.seq AllocBody68_116 AllocBody68_119

def AllocBody68_121 : StackLang.HolProg 64 :=
.seq AllocBody68_115 AllocBody68_120

def AllocBody68_122 : StackLang.HolProg 64 :=
.seq AllocBody68_114 AllocBody68_121

def AllocBody68_123 : StackLang.HolProg 64 :=
.seq AllocBody68_113 AllocBody68_122

def AllocBody68_124 : StackLang.HolProg 64 :=
.seq AllocBody68_112 AllocBody68_123

def AllocBody68_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody68_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody68_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody68_128 : StackLang.HolProg 64 :=
.seq AllocBody68_126 AllocBody68_127

def AllocBody68_129 : StackLang.HolProg 64 :=
.seq AllocBody68_125 AllocBody68_128

def AllocBody68_130 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody68_131 : StackLang.HolProg 64 :=
.seq AllocBody68_129 AllocBody68_130

def AllocBody68_132 : StackLang.HolProg 64 :=
.call (some (AllocBody68_124, 0, 68, 4)) (Sum.inl 66) (some (AllocBody68_131, 68, 5))

def AllocBody68_133 : StackLang.HolProg 64 :=
.seq AllocBody68_111 AllocBody68_132

def AllocBody68_134 : StackLang.HolProg 64 :=
.seq AllocBody68_110 AllocBody68_133

def AllocBody68_135 : StackLang.HolProg 64 :=
.seq AllocBody68_109 AllocBody68_134

def AllocBody68_136 : StackLang.HolProg 64 :=
.seq AllocBody68_90 AllocBody68_135

def AllocBody68_137 : StackLang.HolProg 64 :=
.seq AllocBody68_87 AllocBody68_136

def AllocBody68_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody68_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody68_140 : StackLang.HolProg 64 :=
.seq AllocBody68_138 AllocBody68_139

def AllocBody68_141 : StackLang.HolProg 64 :=
.seq AllocBody68_137 AllocBody68_140

def AllocBody68_142 : StackLang.HolProg 64 :=
.seq AllocBody68_86 AllocBody68_141

def AllocBody68_143 : StackLang.HolProg 64 :=
.seq AllocBody68_83 AllocBody68_142

def AllocBody68_144 : StackLang.HolProg 64 :=
.seq AllocBody68_82 AllocBody68_143

def AllocBody68_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody68_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody68_147 : StackLang.HolProg 64 :=
.seq AllocBody68_145 AllocBody68_146

def AllocBody68_148 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody68_144 AllocBody68_147

def AllocBody68_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody68_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody68_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody68_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody68_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def AllocBody68_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody68_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody68_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody68_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody68_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody68_159 : StackLang.HolProg 64 :=
.seq AllocBody68_157 AllocBody68_158

def AllocBody68_160 : StackLang.HolProg 64 :=
.seq AllocBody68_156 AllocBody68_159

def AllocBody68_161 : StackLang.HolProg 64 :=
.seq AllocBody68_155 AllocBody68_160

def AllocBody68_162 : StackLang.HolProg 64 :=
.seq AllocBody68_154 AllocBody68_161

def AllocBody68_163 : StackLang.HolProg 64 :=
.seq AllocBody68_153 AllocBody68_162

def AllocBody68_164 : StackLang.HolProg 64 :=
.seq AllocBody68_152 AllocBody68_163

def AllocBody68_165 : StackLang.HolProg 64 :=
.seq AllocBody68_151 AllocBody68_164

def AllocBody68_166 : StackLang.HolProg 64 :=
.seq AllocBody68_150 AllocBody68_165

def AllocBody68_167 : StackLang.HolProg 64 :=
.seq AllocBody68_149 AllocBody68_166

def AllocBody68_168 : StackLang.HolProg 64 :=
.seq AllocBody68_148 AllocBody68_167

def AllocBody68_169 : StackLang.HolProg 64 :=
.seq AllocBody68_81 AllocBody68_168

def AllocBody68_170 : StackLang.HolProg 64 :=
.seq AllocBody68_80 AllocBody68_169

def AllocBody68_171 : StackLang.HolProg 64 :=
.seq AllocBody68_79 AllocBody68_170

def AllocBody68_172 : StackLang.HolProg 64 :=
.seq AllocBody68_78 AllocBody68_171

def AllocBody68_173 : StackLang.HolProg 64 :=
.seq AllocBody68_77 AllocBody68_172

def AllocBody68_174 : StackLang.HolProg 64 :=
.seq AllocBody68_76 AllocBody68_173

def AllocBody68_175 : StackLang.HolProg 64 :=
.seq AllocBody68_75 AllocBody68_174

def AllocBody68_176 : StackLang.HolProg 64 :=
.seq AllocBody68_74 AllocBody68_175

def AllocBody68_177 : StackLang.HolProg 64 :=
.seq AllocBody68_9 AllocBody68_176

def AllocBody68_178 : StackLang.HolProg 64 :=
.seq AllocBody68_8 AllocBody68_177

def AllocBody68_179 : StackLang.HolProg 64 :=
.seq AllocBody68_7 AllocBody68_178

def AllocBody68_180 : StackLang.HolProg 64 :=
.seq AllocBody68_6 AllocBody68_179

def AllocBody68_181 : StackLang.HolProg 64 :=
.seq AllocBody68_5 AllocBody68_180

def AllocBody68_182 : StackLang.HolProg 64 :=
.seq AllocBody68_4 AllocBody68_181

def AllocBody68_183 : StackLang.HolProg 64 :=
.seq AllocBody68_3 AllocBody68_182

def AllocBody68_184 : StackLang.HolProg 64 :=
.seq AllocBody68_2 AllocBody68_183

def AllocBody68_185 : StackLang.HolProg 64 :=
.seq AllocBody68_1 AllocBody68_184

def AllocBody68_186 : StackLang.HolProg 64 :=
.seq AllocBody68_0 AllocBody68_185

def Alloc68 : Nat × StackLang.HolProg 64 := (68, AllocBody68_186)
theorem Alloc68_eq : StackAlloc.progComp (68, raw68) = Alloc68 := by
  kernel_rfl
#print axioms Alloc68_eq
end InitECandidate.Proofs.BackendStages
