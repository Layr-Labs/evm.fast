import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw606
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody606_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 11

def AllocBody606_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1024#64)

def AllocBody606_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody606_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 128#64))

def AllocBody606_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody606_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 7#64)

def AllocBody606_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody606_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody606_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_11 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody606_12 : StackLang.HolProg 64 :=
.seq AllocBody606_10 AllocBody606_11

def AllocBody606_13 : StackLang.HolProg 64 :=
.seq AllocBody606_9 AllocBody606_12

def AllocBody606_14 : StackLang.HolProg 64 :=
.seq AllocBody606_8 AllocBody606_13

def AllocBody606_15 : StackLang.HolProg 64 :=
.seq AllocBody606_7 AllocBody606_14

def AllocBody606_16 : StackLang.HolProg 64 :=
.seq AllocBody606_6 AllocBody606_15

def AllocBody606_17 : StackLang.HolProg 64 :=
.seq AllocBody606_5 AllocBody606_16

def AllocBody606_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody606_17 AllocBody606_18

def AllocBody606_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody606_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody606_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody606_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody606_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody606_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody606_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551328#64))

def AllocBody606_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody606_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody606_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 10

def AllocBody606_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def AllocBody606_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 9

def AllocBody606_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def AllocBody606_34 : StackLang.HolProg 64 :=
.seq AllocBody606_32 AllocBody606_33

def AllocBody606_35 : StackLang.HolProg 64 :=
.seq AllocBody606_31 AllocBody606_34

def AllocBody606_36 : StackLang.HolProg 64 :=
.seq AllocBody606_30 AllocBody606_35

def AllocBody606_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2318#64)

def AllocBody606_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody606_40 : StackLang.HolProg 64 :=
.seq AllocBody606_38 AllocBody606_39

def AllocBody606_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody606_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody606_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody606_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 3

def AllocBody606_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody606_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody606_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody606_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody606_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody606_51 : StackLang.HolProg 64 :=
.seq AllocBody606_49 AllocBody606_50

def AllocBody606_52 : StackLang.HolProg 64 :=
.seq AllocBody606_48 AllocBody606_51

def AllocBody606_53 : StackLang.HolProg 64 :=
.seq AllocBody606_47 AllocBody606_52

def AllocBody606_54 : StackLang.HolProg 64 :=
.seq AllocBody606_46 AllocBody606_53

def AllocBody606_55 : StackLang.HolProg 64 :=
.seq AllocBody606_45 AllocBody606_54

def AllocBody606_56 : StackLang.HolProg 64 :=
.seq AllocBody606_44 AllocBody606_55

def AllocBody606_57 : StackLang.HolProg 64 :=
.seq AllocBody606_43 AllocBody606_56

def AllocBody606_58 : StackLang.HolProg 64 :=
.seq AllocBody606_42 AllocBody606_57

def AllocBody606_59 : StackLang.HolProg 64 :=
.seq AllocBody606_41 AllocBody606_58

def AllocBody606_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody606_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody606_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody606_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody606_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody606_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody606_68 : StackLang.HolProg 64 :=
.seq AllocBody606_66 AllocBody606_67

def AllocBody606_69 : StackLang.HolProg 64 :=
.seq AllocBody606_65 AllocBody606_68

def AllocBody606_70 : StackLang.HolProg 64 :=
.seq AllocBody606_64 AllocBody606_69

def AllocBody606_71 : StackLang.HolProg 64 :=
.seq AllocBody606_63 AllocBody606_70

def AllocBody606_72 : StackLang.HolProg 64 :=
.seq AllocBody606_62 AllocBody606_71

def AllocBody606_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody606_74 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody606_75 : StackLang.HolProg 64 :=
.seq AllocBody606_73 AllocBody606_74

def AllocBody606_76 : StackLang.HolProg 64 :=
.call (some (AllocBody606_72, 0, 606, 2)) (Sum.inl 596) (some (AllocBody606_75, 606, 3))

def AllocBody606_77 : StackLang.HolProg 64 :=
.seq AllocBody606_61 AllocBody606_76

def AllocBody606_78 : StackLang.HolProg 64 :=
.seq AllocBody606_60 AllocBody606_77

def AllocBody606_79 : StackLang.HolProg 64 :=
.seq AllocBody606_59 AllocBody606_78

def AllocBody606_80 : StackLang.HolProg 64 :=
.seq AllocBody606_40 AllocBody606_79

def AllocBody606_81 : StackLang.HolProg 64 :=
.seq AllocBody606_37 AllocBody606_80

def AllocBody606_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody606_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 128#64))

def AllocBody606_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody606_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody606_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody606_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def AllocBody606_89 : StackLang.HolProg 64 :=
.seq AllocBody606_87 AllocBody606_88

def AllocBody606_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2319#64)

def AllocBody606_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody606_93 : StackLang.HolProg 64 :=
.seq AllocBody606_91 AllocBody606_92

def AllocBody606_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody606_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody606_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody606_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 5

def AllocBody606_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody606_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody606_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody606_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody606_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody606_104 : StackLang.HolProg 64 :=
.seq AllocBody606_102 AllocBody606_103

def AllocBody606_105 : StackLang.HolProg 64 :=
.seq AllocBody606_101 AllocBody606_104

def AllocBody606_106 : StackLang.HolProg 64 :=
.seq AllocBody606_100 AllocBody606_105

def AllocBody606_107 : StackLang.HolProg 64 :=
.seq AllocBody606_99 AllocBody606_106

def AllocBody606_108 : StackLang.HolProg 64 :=
.seq AllocBody606_98 AllocBody606_107

def AllocBody606_109 : StackLang.HolProg 64 :=
.seq AllocBody606_97 AllocBody606_108

def AllocBody606_110 : StackLang.HolProg 64 :=
.seq AllocBody606_96 AllocBody606_109

def AllocBody606_111 : StackLang.HolProg 64 :=
.seq AllocBody606_95 AllocBody606_110

def AllocBody606_112 : StackLang.HolProg 64 :=
.seq AllocBody606_94 AllocBody606_111

def AllocBody606_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody606_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody606_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody606_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody606_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody606_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody606_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody606_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody606_123 : StackLang.HolProg 64 :=
.seq AllocBody606_121 AllocBody606_122

def AllocBody606_124 : StackLang.HolProg 64 :=
.seq AllocBody606_120 AllocBody606_123

def AllocBody606_125 : StackLang.HolProg 64 :=
.seq AllocBody606_119 AllocBody606_124

def AllocBody606_126 : StackLang.HolProg 64 :=
.seq AllocBody606_118 AllocBody606_125

def AllocBody606_127 : StackLang.HolProg 64 :=
.seq AllocBody606_117 AllocBody606_126

def AllocBody606_128 : StackLang.HolProg 64 :=
.seq AllocBody606_116 AllocBody606_127

def AllocBody606_129 : StackLang.HolProg 64 :=
.seq AllocBody606_115 AllocBody606_128

def AllocBody606_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody606_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody606_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody606_133 : StackLang.HolProg 64 :=
.seq AllocBody606_131 AllocBody606_132

def AllocBody606_134 : StackLang.HolProg 64 :=
.seq AllocBody606_130 AllocBody606_133

def AllocBody606_135 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody606_136 : StackLang.HolProg 64 :=
.seq AllocBody606_134 AllocBody606_135

def AllocBody606_137 : StackLang.HolProg 64 :=
.call (some (AllocBody606_129, 0, 606, 4)) (Sum.inl 390) (some (AllocBody606_136, 606, 5))

def AllocBody606_138 : StackLang.HolProg 64 :=
.seq AllocBody606_114 AllocBody606_137

def AllocBody606_139 : StackLang.HolProg 64 :=
.seq AllocBody606_113 AllocBody606_138

def AllocBody606_140 : StackLang.HolProg 64 :=
.seq AllocBody606_112 AllocBody606_139

def AllocBody606_141 : StackLang.HolProg 64 :=
.seq AllocBody606_93 AllocBody606_140

def AllocBody606_142 : StackLang.HolProg 64 :=
.seq AllocBody606_90 AllocBody606_141

def AllocBody606_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody606_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 48#64))

def AllocBody606_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def AllocBody606_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def AllocBody606_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 7

def AllocBody606_149 : StackLang.HolProg 64 :=
.seq AllocBody606_147 AllocBody606_148

def AllocBody606_150 : StackLang.HolProg 64 :=
.seq AllocBody606_146 AllocBody606_149

def AllocBody606_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2320#64)

def AllocBody606_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody606_154 : StackLang.HolProg 64 :=
.seq AllocBody606_152 AllocBody606_153

def AllocBody606_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody606_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody606_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody606_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 17

def AllocBody606_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody606_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody606_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody606_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody606_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody606_165 : StackLang.HolProg 64 :=
.seq AllocBody606_163 AllocBody606_164

def AllocBody606_166 : StackLang.HolProg 64 :=
.seq AllocBody606_162 AllocBody606_165

def AllocBody606_167 : StackLang.HolProg 64 :=
.seq AllocBody606_161 AllocBody606_166

def AllocBody606_168 : StackLang.HolProg 64 :=
.seq AllocBody606_160 AllocBody606_167

def AllocBody606_169 : StackLang.HolProg 64 :=
.seq AllocBody606_159 AllocBody606_168

def AllocBody606_170 : StackLang.HolProg 64 :=
.seq AllocBody606_158 AllocBody606_169

def AllocBody606_171 : StackLang.HolProg 64 :=
.seq AllocBody606_157 AllocBody606_170

def AllocBody606_172 : StackLang.HolProg 64 :=
.seq AllocBody606_156 AllocBody606_171

def AllocBody606_173 : StackLang.HolProg 64 :=
.seq AllocBody606_155 AllocBody606_172

def AllocBody606_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody606_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody606_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody606_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody606_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_181 : StackLang.HolProg 64 :=
.seq AllocBody606_179 AllocBody606_180

def AllocBody606_182 : StackLang.HolProg 64 :=
.seq AllocBody606_178 AllocBody606_181

def AllocBody606_183 : StackLang.HolProg 64 :=
.seq AllocBody606_177 AllocBody606_182

def AllocBody606_184 : StackLang.HolProg 64 :=
.seq AllocBody606_176 AllocBody606_183

def AllocBody606_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 23 4

def AllocBody606_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody606_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody606_188 : StackLang.HolProg 64 :=
.seq AllocBody606_186 AllocBody606_187

def AllocBody606_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody606_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody606_191 : StackLang.HolProg 64 :=
.seq AllocBody606_189 AllocBody606_190

def AllocBody606_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 23 8

def AllocBody606_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody606_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def AllocBody606_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody606_196 : StackLang.HolProg 64 :=
.seq AllocBody606_194 AllocBody606_195

def AllocBody606_197 : StackLang.HolProg 64 :=
.seq AllocBody606_193 AllocBody606_196

def AllocBody606_198 : StackLang.HolProg 64 :=
.seq AllocBody606_192 AllocBody606_197

def AllocBody606_199 : StackLang.HolProg 64 :=
.seq AllocBody606_191 AllocBody606_198

def AllocBody606_200 : StackLang.HolProg 64 :=
.seq AllocBody606_188 AllocBody606_199

def AllocBody606_201 : StackLang.HolProg 64 :=
.seq AllocBody606_185 AllocBody606_200

def AllocBody606_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_203 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody606_204 : StackLang.HolProg 64 :=
.seq AllocBody606_202 AllocBody606_203

def AllocBody606_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody606_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def AllocBody606_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody606_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody606_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody606_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 208#64))

def AllocBody606_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody606_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody606_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody606_215 : StackLang.HolProg 64 :=
.seq AllocBody606_213 AllocBody606_214

def AllocBody606_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody606_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody606_218 : StackLang.HolProg 64 :=
.seq AllocBody606_216 AllocBody606_217

def AllocBody606_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody606_220 : StackLang.HolProg 64 :=
.seq AllocBody606_218 AllocBody606_219

def AllocBody606_221 : StackLang.HolProg 64 :=
.seq AllocBody606_215 AllocBody606_220

def AllocBody606_222 : StackLang.HolProg 64 :=
.seq AllocBody606_212 AllocBody606_221

def AllocBody606_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2321#64)

def AllocBody606_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody606_226 : StackLang.HolProg 64 :=
.seq AllocBody606_224 AllocBody606_225

def AllocBody606_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody606_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody606_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody606_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 8

def AllocBody606_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody606_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody606_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody606_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody606_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody606_237 : StackLang.HolProg 64 :=
.seq AllocBody606_235 AllocBody606_236

def AllocBody606_238 : StackLang.HolProg 64 :=
.seq AllocBody606_234 AllocBody606_237

def AllocBody606_239 : StackLang.HolProg 64 :=
.seq AllocBody606_233 AllocBody606_238

def AllocBody606_240 : StackLang.HolProg 64 :=
.seq AllocBody606_232 AllocBody606_239

def AllocBody606_241 : StackLang.HolProg 64 :=
.seq AllocBody606_231 AllocBody606_240

def AllocBody606_242 : StackLang.HolProg 64 :=
.seq AllocBody606_230 AllocBody606_241

def AllocBody606_243 : StackLang.HolProg 64 :=
.seq AllocBody606_229 AllocBody606_242

def AllocBody606_244 : StackLang.HolProg 64 :=
.seq AllocBody606_228 AllocBody606_243

def AllocBody606_245 : StackLang.HolProg 64 :=
.seq AllocBody606_227 AllocBody606_244

def AllocBody606_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody606_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody606_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody606_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody606_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody606_253 : StackLang.HolProg 64 :=
.seq AllocBody606_251 AllocBody606_252

def AllocBody606_254 : StackLang.HolProg 64 :=
.seq AllocBody606_250 AllocBody606_253

def AllocBody606_255 : StackLang.HolProg 64 :=
.seq AllocBody606_249 AllocBody606_254

def AllocBody606_256 : StackLang.HolProg 64 :=
.seq AllocBody606_248 AllocBody606_255

def AllocBody606_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody606_258 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody606_259 : StackLang.HolProg 64 :=
.seq AllocBody606_257 AllocBody606_258

def AllocBody606_260 : StackLang.HolProg 64 :=
.call (some (AllocBody606_256, 0, 606, 7)) (Sum.inl 76) (some (AllocBody606_259, 606, 8))

def AllocBody606_261 : StackLang.HolProg 64 :=
.seq AllocBody606_247 AllocBody606_260

def AllocBody606_262 : StackLang.HolProg 64 :=
.seq AllocBody606_246 AllocBody606_261

def AllocBody606_263 : StackLang.HolProg 64 :=
.seq AllocBody606_245 AllocBody606_262

def AllocBody606_264 : StackLang.HolProg 64 :=
.seq AllocBody606_226 AllocBody606_263

def AllocBody606_265 : StackLang.HolProg 64 :=
.seq AllocBody606_223 AllocBody606_264

def AllocBody606_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody606_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 224#64))

def AllocBody606_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2322#64)

def AllocBody606_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody606_273 : StackLang.HolProg 64 :=
.seq AllocBody606_271 AllocBody606_272

def AllocBody606_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody606_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody606_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody606_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 10

def AllocBody606_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody606_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody606_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody606_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody606_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody606_284 : StackLang.HolProg 64 :=
.seq AllocBody606_282 AllocBody606_283

def AllocBody606_285 : StackLang.HolProg 64 :=
.seq AllocBody606_281 AllocBody606_284

def AllocBody606_286 : StackLang.HolProg 64 :=
.seq AllocBody606_280 AllocBody606_285

def AllocBody606_287 : StackLang.HolProg 64 :=
.seq AllocBody606_279 AllocBody606_286

def AllocBody606_288 : StackLang.HolProg 64 :=
.seq AllocBody606_278 AllocBody606_287

def AllocBody606_289 : StackLang.HolProg 64 :=
.seq AllocBody606_277 AllocBody606_288

def AllocBody606_290 : StackLang.HolProg 64 :=
.seq AllocBody606_276 AllocBody606_289

def AllocBody606_291 : StackLang.HolProg 64 :=
.seq AllocBody606_275 AllocBody606_290

def AllocBody606_292 : StackLang.HolProg 64 :=
.seq AllocBody606_274 AllocBody606_291

def AllocBody606_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody606_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody606_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody606_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody606_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody606_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody606_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody606_302 : StackLang.HolProg 64 :=
.seq AllocBody606_300 AllocBody606_301

def AllocBody606_303 : StackLang.HolProg 64 :=
.seq AllocBody606_299 AllocBody606_302

def AllocBody606_304 : StackLang.HolProg 64 :=
.seq AllocBody606_298 AllocBody606_303

def AllocBody606_305 : StackLang.HolProg 64 :=
.seq AllocBody606_297 AllocBody606_304

def AllocBody606_306 : StackLang.HolProg 64 :=
.seq AllocBody606_296 AllocBody606_305

def AllocBody606_307 : StackLang.HolProg 64 :=
.seq AllocBody606_295 AllocBody606_306

def AllocBody606_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody606_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody606_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody606_311 : StackLang.HolProg 64 :=
.seq AllocBody606_309 AllocBody606_310

def AllocBody606_312 : StackLang.HolProg 64 :=
.seq AllocBody606_308 AllocBody606_311

def AllocBody606_313 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody606_314 : StackLang.HolProg 64 :=
.seq AllocBody606_312 AllocBody606_313

def AllocBody606_315 : StackLang.HolProg 64 :=
.call (some (AllocBody606_307, 0, 606, 9)) (Sum.inl 73) (some (AllocBody606_314, 606, 10))

def AllocBody606_316 : StackLang.HolProg 64 :=
.seq AllocBody606_294 AllocBody606_315

def AllocBody606_317 : StackLang.HolProg 64 :=
.seq AllocBody606_293 AllocBody606_316

def AllocBody606_318 : StackLang.HolProg 64 :=
.seq AllocBody606_292 AllocBody606_317

def AllocBody606_319 : StackLang.HolProg 64 :=
.seq AllocBody606_273 AllocBody606_318

def AllocBody606_320 : StackLang.HolProg 64 :=
.seq AllocBody606_270 AllocBody606_319

def AllocBody606_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody606_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody606_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody606_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody606_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551360#64)))

def AllocBody606_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody606_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody606_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody606_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody606_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551328#64)))

def AllocBody606_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody606_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 2

def AllocBody606_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody606_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_338 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody606_339 : StackLang.HolProg 64 :=
.seq AllocBody606_337 AllocBody606_338

def AllocBody606_340 : StackLang.HolProg 64 :=
.seq AllocBody606_336 AllocBody606_339

def AllocBody606_341 : StackLang.HolProg 64 :=
.seq AllocBody606_335 AllocBody606_340

def AllocBody606_342 : StackLang.HolProg 64 :=
.seq AllocBody606_334 AllocBody606_341

def AllocBody606_343 : StackLang.HolProg 64 :=
.seq AllocBody606_333 AllocBody606_342

def AllocBody606_344 : StackLang.HolProg 64 :=
.seq AllocBody606_332 AllocBody606_343

def AllocBody606_345 : StackLang.HolProg 64 :=
.seq AllocBody606_331 AllocBody606_344

def AllocBody606_346 : StackLang.HolProg 64 :=
.seq AllocBody606_330 AllocBody606_345

def AllocBody606_347 : StackLang.HolProg 64 :=
.seq AllocBody606_329 AllocBody606_346

def AllocBody606_348 : StackLang.HolProg 64 :=
.seq AllocBody606_328 AllocBody606_347

def AllocBody606_349 : StackLang.HolProg 64 :=
.seq AllocBody606_327 AllocBody606_348

def AllocBody606_350 : StackLang.HolProg 64 :=
.seq AllocBody606_326 AllocBody606_349

def AllocBody606_351 : StackLang.HolProg 64 :=
.seq AllocBody606_325 AllocBody606_350

def AllocBody606_352 : StackLang.HolProg 64 :=
.seq AllocBody606_324 AllocBody606_351

def AllocBody606_353 : StackLang.HolProg 64 :=
.seq AllocBody606_323 AllocBody606_352

def AllocBody606_354 : StackLang.HolProg 64 :=
.seq AllocBody606_322 AllocBody606_353

def AllocBody606_355 : StackLang.HolProg 64 :=
.seq AllocBody606_321 AllocBody606_354

def AllocBody606_356 : StackLang.HolProg 64 :=
.seq AllocBody606_320 AllocBody606_355

def AllocBody606_357 : StackLang.HolProg 64 :=
.seq AllocBody606_269 AllocBody606_356

def AllocBody606_358 : StackLang.HolProg 64 :=
.seq AllocBody606_268 AllocBody606_357

def AllocBody606_359 : StackLang.HolProg 64 :=
.seq AllocBody606_267 AllocBody606_358

def AllocBody606_360 : StackLang.HolProg 64 :=
.seq AllocBody606_266 AllocBody606_359

def AllocBody606_361 : StackLang.HolProg 64 :=
.seq AllocBody606_265 AllocBody606_360

def AllocBody606_362 : StackLang.HolProg 64 :=
.seq AllocBody606_222 AllocBody606_361

def AllocBody606_363 : StackLang.HolProg 64 :=
.seq AllocBody606_211 AllocBody606_362

def AllocBody606_364 : StackLang.HolProg 64 :=
.seq AllocBody606_210 AllocBody606_363

def AllocBody606_365 : StackLang.HolProg 64 :=
.seq AllocBody606_209 AllocBody606_364

def AllocBody606_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody606_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 9

def AllocBody606_368 : StackLang.HolProg 64 :=
.seq AllocBody606_366 AllocBody606_367

def AllocBody606_369 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody606_365 AllocBody606_368

def AllocBody606_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody606_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody606_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2323#64)

def AllocBody606_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody606_375 : StackLang.HolProg 64 :=
.seq AllocBody606_373 AllocBody606_374

def AllocBody606_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody606_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody606_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody606_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 12

def AllocBody606_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody606_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody606_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody606_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody606_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody606_386 : StackLang.HolProg 64 :=
.seq AllocBody606_384 AllocBody606_385

def AllocBody606_387 : StackLang.HolProg 64 :=
.seq AllocBody606_383 AllocBody606_386

def AllocBody606_388 : StackLang.HolProg 64 :=
.seq AllocBody606_382 AllocBody606_387

def AllocBody606_389 : StackLang.HolProg 64 :=
.seq AllocBody606_381 AllocBody606_388

def AllocBody606_390 : StackLang.HolProg 64 :=
.seq AllocBody606_380 AllocBody606_389

def AllocBody606_391 : StackLang.HolProg 64 :=
.seq AllocBody606_379 AllocBody606_390

def AllocBody606_392 : StackLang.HolProg 64 :=
.seq AllocBody606_378 AllocBody606_391

def AllocBody606_393 : StackLang.HolProg 64 :=
.seq AllocBody606_377 AllocBody606_392

def AllocBody606_394 : StackLang.HolProg 64 :=
.seq AllocBody606_376 AllocBody606_393

def AllocBody606_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody606_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody606_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody606_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody606_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody606_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody606_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody606_404 : StackLang.HolProg 64 :=
.seq AllocBody606_402 AllocBody606_403

def AllocBody606_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody606_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody606_407 : StackLang.HolProg 64 :=
.seq AllocBody606_405 AllocBody606_406

def AllocBody606_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody606_409 : StackLang.HolProg 64 :=
.seq AllocBody606_407 AllocBody606_408

def AllocBody606_410 : StackLang.HolProg 64 :=
.seq AllocBody606_404 AllocBody606_409

def AllocBody606_411 : StackLang.HolProg 64 :=
.seq AllocBody606_401 AllocBody606_410

def AllocBody606_412 : StackLang.HolProg 64 :=
.seq AllocBody606_400 AllocBody606_411

def AllocBody606_413 : StackLang.HolProg 64 :=
.seq AllocBody606_399 AllocBody606_412

def AllocBody606_414 : StackLang.HolProg 64 :=
.seq AllocBody606_398 AllocBody606_413

def AllocBody606_415 : StackLang.HolProg 64 :=
.seq AllocBody606_397 AllocBody606_414

def AllocBody606_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody606_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody606_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody606_419 : StackLang.HolProg 64 :=
.seq AllocBody606_417 AllocBody606_418

def AllocBody606_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody606_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody606_422 : StackLang.HolProg 64 :=
.seq AllocBody606_420 AllocBody606_421

def AllocBody606_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody606_424 : StackLang.HolProg 64 :=
.seq AllocBody606_422 AllocBody606_423

def AllocBody606_425 : StackLang.HolProg 64 :=
.seq AllocBody606_419 AllocBody606_424

def AllocBody606_426 : StackLang.HolProg 64 :=
.seq AllocBody606_416 AllocBody606_425

def AllocBody606_427 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody606_428 : StackLang.HolProg 64 :=
.seq AllocBody606_426 AllocBody606_427

def AllocBody606_429 : StackLang.HolProg 64 :=
.call (some (AllocBody606_415, 0, 606, 11)) (Sum.inl 391) (some (AllocBody606_428, 606, 12))

def AllocBody606_430 : StackLang.HolProg 64 :=
.seq AllocBody606_396 AllocBody606_429

def AllocBody606_431 : StackLang.HolProg 64 :=
.seq AllocBody606_395 AllocBody606_430

def AllocBody606_432 : StackLang.HolProg 64 :=
.seq AllocBody606_394 AllocBody606_431

def AllocBody606_433 : StackLang.HolProg 64 :=
.seq AllocBody606_375 AllocBody606_432

def AllocBody606_434 : StackLang.HolProg 64 :=
.seq AllocBody606_372 AllocBody606_433

def AllocBody606_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody606_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def AllocBody606_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody606_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody606_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody606_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody606_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody606_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 200#64)))

def AllocBody606_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody606_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody606_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2324#64)

def AllocBody606_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody606_452 : StackLang.HolProg 64 :=
.seq AllocBody606_450 AllocBody606_451

def AllocBody606_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody606_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody606_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody606_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 14

def AllocBody606_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody606_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody606_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody606_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody606_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody606_463 : StackLang.HolProg 64 :=
.seq AllocBody606_461 AllocBody606_462

def AllocBody606_464 : StackLang.HolProg 64 :=
.seq AllocBody606_460 AllocBody606_463

def AllocBody606_465 : StackLang.HolProg 64 :=
.seq AllocBody606_459 AllocBody606_464

def AllocBody606_466 : StackLang.HolProg 64 :=
.seq AllocBody606_458 AllocBody606_465

def AllocBody606_467 : StackLang.HolProg 64 :=
.seq AllocBody606_457 AllocBody606_466

def AllocBody606_468 : StackLang.HolProg 64 :=
.seq AllocBody606_456 AllocBody606_467

def AllocBody606_469 : StackLang.HolProg 64 :=
.seq AllocBody606_455 AllocBody606_468

def AllocBody606_470 : StackLang.HolProg 64 :=
.seq AllocBody606_454 AllocBody606_469

def AllocBody606_471 : StackLang.HolProg 64 :=
.seq AllocBody606_453 AllocBody606_470

def AllocBody606_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody606_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody606_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody606_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody606_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody606_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody606_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody606_481 : StackLang.HolProg 64 :=
.seq AllocBody606_479 AllocBody606_480

def AllocBody606_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody606_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody606_484 : StackLang.HolProg 64 :=
.seq AllocBody606_482 AllocBody606_483

def AllocBody606_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody606_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody606_487 : StackLang.HolProg 64 :=
.seq AllocBody606_485 AllocBody606_486

def AllocBody606_488 : StackLang.HolProg 64 :=
.seq AllocBody606_484 AllocBody606_487

def AllocBody606_489 : StackLang.HolProg 64 :=
.seq AllocBody606_481 AllocBody606_488

def AllocBody606_490 : StackLang.HolProg 64 :=
.seq AllocBody606_478 AllocBody606_489

def AllocBody606_491 : StackLang.HolProg 64 :=
.seq AllocBody606_477 AllocBody606_490

def AllocBody606_492 : StackLang.HolProg 64 :=
.seq AllocBody606_476 AllocBody606_491

def AllocBody606_493 : StackLang.HolProg 64 :=
.seq AllocBody606_475 AllocBody606_492

def AllocBody606_494 : StackLang.HolProg 64 :=
.seq AllocBody606_474 AllocBody606_493

def AllocBody606_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody606_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody606_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody606_498 : StackLang.HolProg 64 :=
.seq AllocBody606_496 AllocBody606_497

def AllocBody606_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody606_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody606_501 : StackLang.HolProg 64 :=
.seq AllocBody606_499 AllocBody606_500

def AllocBody606_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody606_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody606_504 : StackLang.HolProg 64 :=
.seq AllocBody606_502 AllocBody606_503

def AllocBody606_505 : StackLang.HolProg 64 :=
.seq AllocBody606_501 AllocBody606_504

def AllocBody606_506 : StackLang.HolProg 64 :=
.seq AllocBody606_498 AllocBody606_505

def AllocBody606_507 : StackLang.HolProg 64 :=
.seq AllocBody606_495 AllocBody606_506

def AllocBody606_508 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody606_509 : StackLang.HolProg 64 :=
.seq AllocBody606_507 AllocBody606_508

def AllocBody606_510 : StackLang.HolProg 64 :=
.call (some (AllocBody606_494, 0, 606, 13)) (Sum.inl 474) (some (AllocBody606_509, 606, 14))

def AllocBody606_511 : StackLang.HolProg 64 :=
.seq AllocBody606_473 AllocBody606_510

def AllocBody606_512 : StackLang.HolProg 64 :=
.seq AllocBody606_472 AllocBody606_511

def AllocBody606_513 : StackLang.HolProg 64 :=
.seq AllocBody606_471 AllocBody606_512

def AllocBody606_514 : StackLang.HolProg 64 :=
.seq AllocBody606_452 AllocBody606_513

def AllocBody606_515 : StackLang.HolProg 64 :=
.seq AllocBody606_449 AllocBody606_514

def AllocBody606_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody606_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody606_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2325#64)

def AllocBody606_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody606_521 : StackLang.HolProg 64 :=
.seq AllocBody606_519 AllocBody606_520

def AllocBody606_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody606_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody606_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody606_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 16

def AllocBody606_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody606_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody606_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody606_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody606_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody606_532 : StackLang.HolProg 64 :=
.seq AllocBody606_530 AllocBody606_531

def AllocBody606_533 : StackLang.HolProg 64 :=
.seq AllocBody606_529 AllocBody606_532

def AllocBody606_534 : StackLang.HolProg 64 :=
.seq AllocBody606_528 AllocBody606_533

def AllocBody606_535 : StackLang.HolProg 64 :=
.seq AllocBody606_527 AllocBody606_534

def AllocBody606_536 : StackLang.HolProg 64 :=
.seq AllocBody606_526 AllocBody606_535

def AllocBody606_537 : StackLang.HolProg 64 :=
.seq AllocBody606_525 AllocBody606_536

def AllocBody606_538 : StackLang.HolProg 64 :=
.seq AllocBody606_524 AllocBody606_537

def AllocBody606_539 : StackLang.HolProg 64 :=
.seq AllocBody606_523 AllocBody606_538

def AllocBody606_540 : StackLang.HolProg 64 :=
.seq AllocBody606_522 AllocBody606_539

def AllocBody606_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody606_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody606_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody606_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody606_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 10

def AllocBody606_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody606_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def AllocBody606_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 7

def AllocBody606_551 : StackLang.HolProg 64 :=
.seq AllocBody606_549 AllocBody606_550

def AllocBody606_552 : StackLang.HolProg 64 :=
.seq AllocBody606_548 AllocBody606_551

def AllocBody606_553 : StackLang.HolProg 64 :=
.seq AllocBody606_547 AllocBody606_552

def AllocBody606_554 : StackLang.HolProg 64 :=
.seq AllocBody606_546 AllocBody606_553

def AllocBody606_555 : StackLang.HolProg 64 :=
.seq AllocBody606_545 AllocBody606_554

def AllocBody606_556 : StackLang.HolProg 64 :=
.seq AllocBody606_544 AllocBody606_555

def AllocBody606_557 : StackLang.HolProg 64 :=
.seq AllocBody606_543 AllocBody606_556

def AllocBody606_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 10

def AllocBody606_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody606_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def AllocBody606_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 7

def AllocBody606_562 : StackLang.HolProg 64 :=
.seq AllocBody606_560 AllocBody606_561

def AllocBody606_563 : StackLang.HolProg 64 :=
.seq AllocBody606_559 AllocBody606_562

def AllocBody606_564 : StackLang.HolProg 64 :=
.seq AllocBody606_558 AllocBody606_563

def AllocBody606_565 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody606_566 : StackLang.HolProg 64 :=
.seq AllocBody606_564 AllocBody606_565

def AllocBody606_567 : StackLang.HolProg 64 :=
.call (some (AllocBody606_557, 0, 606, 15)) (Sum.inl 604) (some (AllocBody606_566, 606, 16))

def AllocBody606_568 : StackLang.HolProg 64 :=
.seq AllocBody606_542 AllocBody606_567

def AllocBody606_569 : StackLang.HolProg 64 :=
.seq AllocBody606_541 AllocBody606_568

def AllocBody606_570 : StackLang.HolProg 64 :=
.seq AllocBody606_540 AllocBody606_569

def AllocBody606_571 : StackLang.HolProg 64 :=
.seq AllocBody606_521 AllocBody606_570

def AllocBody606_572 : StackLang.HolProg 64 :=
.seq AllocBody606_518 AllocBody606_571

def AllocBody606_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody606_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody606_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody606_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody606_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551360#64)))

def AllocBody606_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody606_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody606_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody606_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody606_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551328#64)))

def AllocBody606_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody606_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody606_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 11

def AllocBody606_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def AllocBody606_589 : StackLang.HolProg 64 :=
.seq AllocBody606_587 AllocBody606_588

def AllocBody606_590 : StackLang.HolProg 64 :=
.seq AllocBody606_586 AllocBody606_589

def AllocBody606_591 : StackLang.HolProg 64 :=
.seq AllocBody606_585 AllocBody606_590

def AllocBody606_592 : StackLang.HolProg 64 :=
.seq AllocBody606_584 AllocBody606_591

def AllocBody606_593 : StackLang.HolProg 64 :=
.seq AllocBody606_583 AllocBody606_592

def AllocBody606_594 : StackLang.HolProg 64 :=
.seq AllocBody606_582 AllocBody606_593

def AllocBody606_595 : StackLang.HolProg 64 :=
.seq AllocBody606_581 AllocBody606_594

def AllocBody606_596 : StackLang.HolProg 64 :=
.seq AllocBody606_580 AllocBody606_595

def AllocBody606_597 : StackLang.HolProg 64 :=
.seq AllocBody606_579 AllocBody606_596

def AllocBody606_598 : StackLang.HolProg 64 :=
.seq AllocBody606_578 AllocBody606_597

def AllocBody606_599 : StackLang.HolProg 64 :=
.seq AllocBody606_577 AllocBody606_598

def AllocBody606_600 : StackLang.HolProg 64 :=
.seq AllocBody606_576 AllocBody606_599

def AllocBody606_601 : StackLang.HolProg 64 :=
.seq AllocBody606_575 AllocBody606_600

def AllocBody606_602 : StackLang.HolProg 64 :=
.seq AllocBody606_574 AllocBody606_601

def AllocBody606_603 : StackLang.HolProg 64 :=
.seq AllocBody606_573 AllocBody606_602

def AllocBody606_604 : StackLang.HolProg 64 :=
.seq AllocBody606_572 AllocBody606_603

def AllocBody606_605 : StackLang.HolProg 64 :=
.seq AllocBody606_517 AllocBody606_604

def AllocBody606_606 : StackLang.HolProg 64 :=
.seq AllocBody606_516 AllocBody606_605

def AllocBody606_607 : StackLang.HolProg 64 :=
.seq AllocBody606_515 AllocBody606_606

def AllocBody606_608 : StackLang.HolProg 64 :=
.seq AllocBody606_448 AllocBody606_607

def AllocBody606_609 : StackLang.HolProg 64 :=
.seq AllocBody606_447 AllocBody606_608

def AllocBody606_610 : StackLang.HolProg 64 :=
.seq AllocBody606_446 AllocBody606_609

def AllocBody606_611 : StackLang.HolProg 64 :=
.seq AllocBody606_445 AllocBody606_610

def AllocBody606_612 : StackLang.HolProg 64 :=
.seq AllocBody606_444 AllocBody606_611

def AllocBody606_613 : StackLang.HolProg 64 :=
.seq AllocBody606_443 AllocBody606_612

def AllocBody606_614 : StackLang.HolProg 64 :=
.seq AllocBody606_442 AllocBody606_613

def AllocBody606_615 : StackLang.HolProg 64 :=
.seq AllocBody606_441 AllocBody606_614

def AllocBody606_616 : StackLang.HolProg 64 :=
.seq AllocBody606_440 AllocBody606_615

def AllocBody606_617 : StackLang.HolProg 64 :=
.seq AllocBody606_439 AllocBody606_616

def AllocBody606_618 : StackLang.HolProg 64 :=
.seq AllocBody606_438 AllocBody606_617

def AllocBody606_619 : StackLang.HolProg 64 :=
.seq AllocBody606_437 AllocBody606_618

def AllocBody606_620 : StackLang.HolProg 64 :=
.seq AllocBody606_436 AllocBody606_619

def AllocBody606_621 : StackLang.HolProg 64 :=
.seq AllocBody606_435 AllocBody606_620

def AllocBody606_622 : StackLang.HolProg 64 :=
.seq AllocBody606_434 AllocBody606_621

def AllocBody606_623 : StackLang.HolProg 64 :=
.seq AllocBody606_371 AllocBody606_622

def AllocBody606_624 : StackLang.HolProg 64 :=
.seq AllocBody606_370 AllocBody606_623

def AllocBody606_625 : StackLang.HolProg 64 :=
.seq AllocBody606_369 AllocBody606_624

def AllocBody606_626 : StackLang.HolProg 64 :=
.seq AllocBody606_208 AllocBody606_625

def AllocBody606_627 : StackLang.HolProg 64 :=
.seq AllocBody606_207 AllocBody606_626

def AllocBody606_628 : StackLang.HolProg 64 :=
.seq AllocBody606_206 AllocBody606_627

def AllocBody606_629 : StackLang.HolProg 64 :=
.seq AllocBody606_205 AllocBody606_628

def AllocBody606_630 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64) AllocBody606_204 AllocBody606_629

def AllocBody606_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody606_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 10

def AllocBody606_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 9

def AllocBody606_634 : StackLang.HolProg 64 :=
.seq AllocBody606_632 AllocBody606_633

def AllocBody606_635 : StackLang.HolProg 64 :=
.seq AllocBody606_631 AllocBody606_634

def AllocBody606_636 : StackLang.HolProg 64 :=
.seq AllocBody606_630 AllocBody606_635

def AllocBody606_637 : StackLang.HolProg 64 :=
.seq AllocBody606_201 AllocBody606_636

def AllocBody606_638 : StackLang.HolProg 64 :=
.call (some (AllocBody606_184, 0, 606, 6)) (Sum.inl 605) (some (AllocBody606_637, 606, 17))

def AllocBody606_639 : StackLang.HolProg 64 :=
.seq AllocBody606_175 AllocBody606_638

def AllocBody606_640 : StackLang.HolProg 64 :=
.seq AllocBody606_174 AllocBody606_639

def AllocBody606_641 : StackLang.HolProg 64 :=
.seq AllocBody606_173 AllocBody606_640

def AllocBody606_642 : StackLang.HolProg 64 :=
.seq AllocBody606_154 AllocBody606_641

def AllocBody606_643 : StackLang.HolProg 64 :=
.seq AllocBody606_151 AllocBody606_642

def AllocBody606_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody606_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_646 : StackLang.HolProg 64 :=
.seq AllocBody606_644 AllocBody606_645

def AllocBody606_647 : StackLang.HolProg 64 :=
.seq AllocBody606_643 AllocBody606_646

def AllocBody606_648 : StackLang.HolProg 64 :=
.seq AllocBody606_150 AllocBody606_647

def AllocBody606_649 : StackLang.HolProg 64 :=
.seq AllocBody606_145 AllocBody606_648

def AllocBody606_650 : StackLang.HolProg 64 :=
.seq AllocBody606_144 AllocBody606_649

def AllocBody606_651 : StackLang.HolProg 64 :=
.seq AllocBody606_143 AllocBody606_650

def AllocBody606_652 : StackLang.HolProg 64 :=
.seq AllocBody606_142 AllocBody606_651

def AllocBody606_653 : StackLang.HolProg 64 :=
.seq AllocBody606_89 AllocBody606_652

def AllocBody606_654 : StackLang.HolProg 64 :=
.seq AllocBody606_86 AllocBody606_653

def AllocBody606_655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody606_656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 9

def AllocBody606_657 : StackLang.HolProg 64 :=
.seq AllocBody606_655 AllocBody606_656

def AllocBody606_658 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody606_654 AllocBody606_657

def AllocBody606_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody606_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2326#64)

def AllocBody606_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody606_664 : StackLang.HolProg 64 :=
.seq AllocBody606_662 AllocBody606_663

def AllocBody606_665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody606_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody606_667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody606_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 19

def AllocBody606_669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody606_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody606_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody606_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody606_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody606_675 : StackLang.HolProg 64 :=
.seq AllocBody606_673 AllocBody606_674

def AllocBody606_676 : StackLang.HolProg 64 :=
.seq AllocBody606_672 AllocBody606_675

def AllocBody606_677 : StackLang.HolProg 64 :=
.seq AllocBody606_671 AllocBody606_676

def AllocBody606_678 : StackLang.HolProg 64 :=
.seq AllocBody606_670 AllocBody606_677

def AllocBody606_679 : StackLang.HolProg 64 :=
.seq AllocBody606_669 AllocBody606_678

def AllocBody606_680 : StackLang.HolProg 64 :=
.seq AllocBody606_668 AllocBody606_679

def AllocBody606_681 : StackLang.HolProg 64 :=
.seq AllocBody606_667 AllocBody606_680

def AllocBody606_682 : StackLang.HolProg 64 :=
.seq AllocBody606_666 AllocBody606_681

def AllocBody606_683 : StackLang.HolProg 64 :=
.seq AllocBody606_665 AllocBody606_682

def AllocBody606_684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody606_685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody606_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody606_689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody606_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody606_691 : StackLang.HolProg 64 :=
.seq AllocBody606_689 AllocBody606_690

def AllocBody606_692 : StackLang.HolProg 64 :=
.seq AllocBody606_688 AllocBody606_691

def AllocBody606_693 : StackLang.HolProg 64 :=
.seq AllocBody606_687 AllocBody606_692

def AllocBody606_694 : StackLang.HolProg 64 :=
.seq AllocBody606_686 AllocBody606_693

def AllocBody606_695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_696 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody606_697 : StackLang.HolProg 64 :=
.seq AllocBody606_695 AllocBody606_696

def AllocBody606_698 : StackLang.HolProg 64 :=
.call (some (AllocBody606_694, 0, 606, 18)) (Sum.inl 390) (some (AllocBody606_697, 606, 19))

def AllocBody606_699 : StackLang.HolProg 64 :=
.seq AllocBody606_685 AllocBody606_698

def AllocBody606_700 : StackLang.HolProg 64 :=
.seq AllocBody606_684 AllocBody606_699

def AllocBody606_701 : StackLang.HolProg 64 :=
.seq AllocBody606_683 AllocBody606_700

def AllocBody606_702 : StackLang.HolProg 64 :=
.seq AllocBody606_664 AllocBody606_701

def AllocBody606_703 : StackLang.HolProg 64 :=
.seq AllocBody606_661 AllocBody606_702

def AllocBody606_704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody606_705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody606_706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody606_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody606_708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551328#64))

def AllocBody606_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody606_710 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody606_712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2327#64)

def AllocBody606_715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody606_716 : StackLang.HolProg 64 :=
.seq AllocBody606_714 AllocBody606_715

def AllocBody606_717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody606_718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody606_719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody606_720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 21

def AllocBody606_721 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody606_722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody606_723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody606_724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_725 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody606_726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody606_727 : StackLang.HolProg 64 :=
.seq AllocBody606_725 AllocBody606_726

def AllocBody606_728 : StackLang.HolProg 64 :=
.seq AllocBody606_724 AllocBody606_727

def AllocBody606_729 : StackLang.HolProg 64 :=
.seq AllocBody606_723 AllocBody606_728

def AllocBody606_730 : StackLang.HolProg 64 :=
.seq AllocBody606_722 AllocBody606_729

def AllocBody606_731 : StackLang.HolProg 64 :=
.seq AllocBody606_721 AllocBody606_730

def AllocBody606_732 : StackLang.HolProg 64 :=
.seq AllocBody606_720 AllocBody606_731

def AllocBody606_733 : StackLang.HolProg 64 :=
.seq AllocBody606_719 AllocBody606_732

def AllocBody606_734 : StackLang.HolProg 64 :=
.seq AllocBody606_718 AllocBody606_733

def AllocBody606_735 : StackLang.HolProg 64 :=
.seq AllocBody606_717 AllocBody606_734

def AllocBody606_736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody606_737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody606_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody606_741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody606_742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_743 : StackLang.HolProg 64 :=
.seq AllocBody606_741 AllocBody606_742

def AllocBody606_744 : StackLang.HolProg 64 :=
.seq AllocBody606_740 AllocBody606_743

def AllocBody606_745 : StackLang.HolProg 64 :=
.seq AllocBody606_739 AllocBody606_744

def AllocBody606_746 : StackLang.HolProg 64 :=
.seq AllocBody606_738 AllocBody606_745

def AllocBody606_747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_748 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody606_749 : StackLang.HolProg 64 :=
.seq AllocBody606_747 AllocBody606_748

def AllocBody606_750 : StackLang.HolProg 64 :=
.call (some (AllocBody606_746, 0, 606, 20)) (Sum.inl 599) (some (AllocBody606_749, 606, 21))

def AllocBody606_751 : StackLang.HolProg 64 :=
.seq AllocBody606_737 AllocBody606_750

def AllocBody606_752 : StackLang.HolProg 64 :=
.seq AllocBody606_736 AllocBody606_751

def AllocBody606_753 : StackLang.HolProg 64 :=
.seq AllocBody606_735 AllocBody606_752

def AllocBody606_754 : StackLang.HolProg 64 :=
.seq AllocBody606_716 AllocBody606_753

def AllocBody606_755 : StackLang.HolProg 64 :=
.seq AllocBody606_713 AllocBody606_754

def AllocBody606_756 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody606_757 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_758 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2328#64)

def AllocBody606_760 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody606_761 : StackLang.HolProg 64 :=
.seq AllocBody606_759 AllocBody606_760

def AllocBody606_762 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody606_763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody606_764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody606_765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 606 23

def AllocBody606_766 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody606_767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody606_768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody606_769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody606_771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody606_772 : StackLang.HolProg 64 :=
.seq AllocBody606_770 AllocBody606_771

def AllocBody606_773 : StackLang.HolProg 64 :=
.seq AllocBody606_769 AllocBody606_772

def AllocBody606_774 : StackLang.HolProg 64 :=
.seq AllocBody606_768 AllocBody606_773

def AllocBody606_775 : StackLang.HolProg 64 :=
.seq AllocBody606_767 AllocBody606_774

def AllocBody606_776 : StackLang.HolProg 64 :=
.seq AllocBody606_766 AllocBody606_775

def AllocBody606_777 : StackLang.HolProg 64 :=
.seq AllocBody606_765 AllocBody606_776

def AllocBody606_778 : StackLang.HolProg 64 :=
.seq AllocBody606_764 AllocBody606_777

def AllocBody606_779 : StackLang.HolProg 64 :=
.seq AllocBody606_763 AllocBody606_778

def AllocBody606_780 : StackLang.HolProg 64 :=
.seq AllocBody606_762 AllocBody606_779

def AllocBody606_781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody606_782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody606_784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody606_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody606_786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody606_787 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 10

def AllocBody606_788 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def AllocBody606_789 : StackLang.HolProg 64 :=
.seq AllocBody606_787 AllocBody606_788

def AllocBody606_790 : StackLang.HolProg 64 :=
.seq AllocBody606_786 AllocBody606_789

def AllocBody606_791 : StackLang.HolProg 64 :=
.seq AllocBody606_785 AllocBody606_790

def AllocBody606_792 : StackLang.HolProg 64 :=
.seq AllocBody606_784 AllocBody606_791

def AllocBody606_793 : StackLang.HolProg 64 :=
.seq AllocBody606_783 AllocBody606_792

def AllocBody606_794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 10

def AllocBody606_795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def AllocBody606_796 : StackLang.HolProg 64 :=
.seq AllocBody606_794 AllocBody606_795

def AllocBody606_797 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody606_798 : StackLang.HolProg 64 :=
.seq AllocBody606_796 AllocBody606_797

def AllocBody606_799 : StackLang.HolProg 64 :=
.call (some (AllocBody606_793, 0, 606, 22)) (Sum.inl 602) (some (AllocBody606_798, 606, 23))

def AllocBody606_800 : StackLang.HolProg 64 :=
.seq AllocBody606_782 AllocBody606_799

def AllocBody606_801 : StackLang.HolProg 64 :=
.seq AllocBody606_781 AllocBody606_800

def AllocBody606_802 : StackLang.HolProg 64 :=
.seq AllocBody606_780 AllocBody606_801

def AllocBody606_803 : StackLang.HolProg 64 :=
.seq AllocBody606_761 AllocBody606_802

def AllocBody606_804 : StackLang.HolProg 64 :=
.seq AllocBody606_758 AllocBody606_803

def AllocBody606_805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody606_806 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody606_807 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 11

def AllocBody606_808 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody606_809 : StackLang.HolProg 64 :=
.seq AllocBody606_807 AllocBody606_808

def AllocBody606_810 : StackLang.HolProg 64 :=
.seq AllocBody606_806 AllocBody606_809

def AllocBody606_811 : StackLang.HolProg 64 :=
.seq AllocBody606_805 AllocBody606_810

def AllocBody606_812 : StackLang.HolProg 64 :=
.seq AllocBody606_804 AllocBody606_811

def AllocBody606_813 : StackLang.HolProg 64 :=
.seq AllocBody606_757 AllocBody606_812

def AllocBody606_814 : StackLang.HolProg 64 :=
.seq AllocBody606_756 AllocBody606_813

def AllocBody606_815 : StackLang.HolProg 64 :=
.seq AllocBody606_755 AllocBody606_814

def AllocBody606_816 : StackLang.HolProg 64 :=
.seq AllocBody606_712 AllocBody606_815

def AllocBody606_817 : StackLang.HolProg 64 :=
.seq AllocBody606_711 AllocBody606_816

def AllocBody606_818 : StackLang.HolProg 64 :=
.seq AllocBody606_710 AllocBody606_817

def AllocBody606_819 : StackLang.HolProg 64 :=
.seq AllocBody606_709 AllocBody606_818

def AllocBody606_820 : StackLang.HolProg 64 :=
.seq AllocBody606_708 AllocBody606_819

def AllocBody606_821 : StackLang.HolProg 64 :=
.seq AllocBody606_707 AllocBody606_820

def AllocBody606_822 : StackLang.HolProg 64 :=
.seq AllocBody606_706 AllocBody606_821

def AllocBody606_823 : StackLang.HolProg 64 :=
.seq AllocBody606_705 AllocBody606_822

def AllocBody606_824 : StackLang.HolProg 64 :=
.seq AllocBody606_704 AllocBody606_823

def AllocBody606_825 : StackLang.HolProg 64 :=
.seq AllocBody606_703 AllocBody606_824

def AllocBody606_826 : StackLang.HolProg 64 :=
.seq AllocBody606_660 AllocBody606_825

def AllocBody606_827 : StackLang.HolProg 64 :=
.seq AllocBody606_659 AllocBody606_826

def AllocBody606_828 : StackLang.HolProg 64 :=
.seq AllocBody606_658 AllocBody606_827

def AllocBody606_829 : StackLang.HolProg 64 :=
.seq AllocBody606_85 AllocBody606_828

def AllocBody606_830 : StackLang.HolProg 64 :=
.seq AllocBody606_84 AllocBody606_829

def AllocBody606_831 : StackLang.HolProg 64 :=
.seq AllocBody606_83 AllocBody606_830

def AllocBody606_832 : StackLang.HolProg 64 :=
.seq AllocBody606_82 AllocBody606_831

def AllocBody606_833 : StackLang.HolProg 64 :=
.seq AllocBody606_81 AllocBody606_832

def AllocBody606_834 : StackLang.HolProg 64 :=
.seq AllocBody606_36 AllocBody606_833

def AllocBody606_835 : StackLang.HolProg 64 :=
.seq AllocBody606_29 AllocBody606_834

def AllocBody606_836 : StackLang.HolProg 64 :=
.seq AllocBody606_28 AllocBody606_835

def AllocBody606_837 : StackLang.HolProg 64 :=
.seq AllocBody606_27 AllocBody606_836

def AllocBody606_838 : StackLang.HolProg 64 :=
.seq AllocBody606_26 AllocBody606_837

def AllocBody606_839 : StackLang.HolProg 64 :=
.seq AllocBody606_25 AllocBody606_838

def AllocBody606_840 : StackLang.HolProg 64 :=
.seq AllocBody606_24 AllocBody606_839

def AllocBody606_841 : StackLang.HolProg 64 :=
.seq AllocBody606_23 AllocBody606_840

def AllocBody606_842 : StackLang.HolProg 64 :=
.seq AllocBody606_22 AllocBody606_841

def AllocBody606_843 : StackLang.HolProg 64 :=
.seq AllocBody606_21 AllocBody606_842

def AllocBody606_844 : StackLang.HolProg 64 :=
.seq AllocBody606_20 AllocBody606_843

def AllocBody606_845 : StackLang.HolProg 64 :=
.seq AllocBody606_19 AllocBody606_844

def AllocBody606_846 : StackLang.HolProg 64 :=
.seq AllocBody606_4 AllocBody606_845

def AllocBody606_847 : StackLang.HolProg 64 :=
.seq AllocBody606_3 AllocBody606_846

def AllocBody606_848 : StackLang.HolProg 64 :=
.seq AllocBody606_2 AllocBody606_847

def AllocBody606_849 : StackLang.HolProg 64 :=
.seq AllocBody606_1 AllocBody606_848

def AllocBody606_850 : StackLang.HolProg 64 :=
.seq AllocBody606_0 AllocBody606_849

def Alloc606 : Nat × StackLang.HolProg 64 := (606, AllocBody606_850)
theorem Alloc606_eq : StackAlloc.progComp (606, raw606) = Alloc606 := by
  kernel_rfl
#print axioms Alloc606_eq
end InitECandidate.Proofs.BackendStages
