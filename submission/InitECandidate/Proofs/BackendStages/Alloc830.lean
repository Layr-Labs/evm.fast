import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw830
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody830_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody830_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody830_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody830_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody830_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody830_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody830_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def AllocBody830_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody830_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 96#64))

def AllocBody830_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody830_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody830_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody830_12 : StackLang.HolProg 64 :=
.seq AllocBody830_10 AllocBody830_11

def AllocBody830_13 : StackLang.HolProg 64 :=
.seq AllocBody830_9 AllocBody830_12

def AllocBody830_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody830_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4122#64)

def AllocBody830_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody830_17 : StackLang.HolProg 64 :=
.seq AllocBody830_15 AllocBody830_16

def AllocBody830_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody830_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody830_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody830_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 830 3

def AllocBody830_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody830_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody830_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody830_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody830_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody830_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody830_28 : StackLang.HolProg 64 :=
.seq AllocBody830_26 AllocBody830_27

def AllocBody830_29 : StackLang.HolProg 64 :=
.seq AllocBody830_25 AllocBody830_28

def AllocBody830_30 : StackLang.HolProg 64 :=
.seq AllocBody830_24 AllocBody830_29

def AllocBody830_31 : StackLang.HolProg 64 :=
.seq AllocBody830_23 AllocBody830_30

def AllocBody830_32 : StackLang.HolProg 64 :=
.seq AllocBody830_22 AllocBody830_31

def AllocBody830_33 : StackLang.HolProg 64 :=
.seq AllocBody830_21 AllocBody830_32

def AllocBody830_34 : StackLang.HolProg 64 :=
.seq AllocBody830_20 AllocBody830_33

def AllocBody830_35 : StackLang.HolProg 64 :=
.seq AllocBody830_19 AllocBody830_34

def AllocBody830_36 : StackLang.HolProg 64 :=
.seq AllocBody830_18 AllocBody830_35

def AllocBody830_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody830_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody830_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody830_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody830_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody830_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody830_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody830_44 : StackLang.HolProg 64 :=
.seq AllocBody830_42 AllocBody830_43

def AllocBody830_45 : StackLang.HolProg 64 :=
.seq AllocBody830_41 AllocBody830_44

def AllocBody830_46 : StackLang.HolProg 64 :=
.seq AllocBody830_40 AllocBody830_45

def AllocBody830_47 : StackLang.HolProg 64 :=
.seq AllocBody830_39 AllocBody830_46

def AllocBody830_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody830_49 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody830_50 : StackLang.HolProg 64 :=
.seq AllocBody830_48 AllocBody830_49

def AllocBody830_51 : StackLang.HolProg 64 :=
.call (some (AllocBody830_47, 0, 830, 2)) (Sum.inl 465) (some (AllocBody830_50, 830, 3))

def AllocBody830_52 : StackLang.HolProg 64 :=
.seq AllocBody830_38 AllocBody830_51

def AllocBody830_53 : StackLang.HolProg 64 :=
.seq AllocBody830_37 AllocBody830_52

def AllocBody830_54 : StackLang.HolProg 64 :=
.seq AllocBody830_36 AllocBody830_53

def AllocBody830_55 : StackLang.HolProg 64 :=
.seq AllocBody830_17 AllocBody830_54

def AllocBody830_56 : StackLang.HolProg 64 :=
.seq AllocBody830_14 AllocBody830_55

def AllocBody830_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody830_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody830_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 3#64)

def AllocBody830_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody830_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody830_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody830_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def AllocBody830_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody830_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody830_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4123#64)

def AllocBody830_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody830_68 : StackLang.HolProg 64 :=
.seq AllocBody830_66 AllocBody830_67

def AllocBody830_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody830_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody830_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody830_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 830 5

def AllocBody830_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody830_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody830_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody830_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody830_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody830_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody830_79 : StackLang.HolProg 64 :=
.seq AllocBody830_77 AllocBody830_78

def AllocBody830_80 : StackLang.HolProg 64 :=
.seq AllocBody830_76 AllocBody830_79

def AllocBody830_81 : StackLang.HolProg 64 :=
.seq AllocBody830_75 AllocBody830_80

def AllocBody830_82 : StackLang.HolProg 64 :=
.seq AllocBody830_74 AllocBody830_81

def AllocBody830_83 : StackLang.HolProg 64 :=
.seq AllocBody830_73 AllocBody830_82

def AllocBody830_84 : StackLang.HolProg 64 :=
.seq AllocBody830_72 AllocBody830_83

def AllocBody830_85 : StackLang.HolProg 64 :=
.seq AllocBody830_71 AllocBody830_84

def AllocBody830_86 : StackLang.HolProg 64 :=
.seq AllocBody830_70 AllocBody830_85

def AllocBody830_87 : StackLang.HolProg 64 :=
.seq AllocBody830_69 AllocBody830_86

def AllocBody830_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody830_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody830_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody830_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody830_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody830_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody830_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody830_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody830_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody830_97 : StackLang.HolProg 64 :=
.seq AllocBody830_95 AllocBody830_96

def AllocBody830_98 : StackLang.HolProg 64 :=
.seq AllocBody830_94 AllocBody830_97

def AllocBody830_99 : StackLang.HolProg 64 :=
.seq AllocBody830_93 AllocBody830_98

def AllocBody830_100 : StackLang.HolProg 64 :=
.seq AllocBody830_92 AllocBody830_99

def AllocBody830_101 : StackLang.HolProg 64 :=
.seq AllocBody830_91 AllocBody830_100

def AllocBody830_102 : StackLang.HolProg 64 :=
.seq AllocBody830_90 AllocBody830_101

def AllocBody830_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody830_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody830_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody830_106 : StackLang.HolProg 64 :=
.seq AllocBody830_104 AllocBody830_105

def AllocBody830_107 : StackLang.HolProg 64 :=
.seq AllocBody830_103 AllocBody830_106

def AllocBody830_108 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody830_109 : StackLang.HolProg 64 :=
.seq AllocBody830_107 AllocBody830_108

def AllocBody830_110 : StackLang.HolProg 64 :=
.call (some (AllocBody830_102, 0, 830, 4)) (Sum.inl 470) (some (AllocBody830_109, 830, 5))

def AllocBody830_111 : StackLang.HolProg 64 :=
.seq AllocBody830_89 AllocBody830_110

def AllocBody830_112 : StackLang.HolProg 64 :=
.seq AllocBody830_88 AllocBody830_111

def AllocBody830_113 : StackLang.HolProg 64 :=
.seq AllocBody830_87 AllocBody830_112

def AllocBody830_114 : StackLang.HolProg 64 :=
.seq AllocBody830_68 AllocBody830_113

def AllocBody830_115 : StackLang.HolProg 64 :=
.seq AllocBody830_65 AllocBody830_114

def AllocBody830_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody830_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody830_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody830_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody830_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody830_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def AllocBody830_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody830_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 88#64))

def AllocBody830_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody830_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody830_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody830_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody830_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def AllocBody830_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody830_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody830_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody830_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody830_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody830_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody830_135 : StackLang.HolProg 64 :=
.seq AllocBody830_133 AllocBody830_134

def AllocBody830_136 : StackLang.HolProg 64 :=
.seq AllocBody830_132 AllocBody830_135

def AllocBody830_137 : StackLang.HolProg 64 :=
.seq AllocBody830_131 AllocBody830_136

def AllocBody830_138 : StackLang.HolProg 64 :=
.seq AllocBody830_130 AllocBody830_137

def AllocBody830_139 : StackLang.HolProg 64 :=
.seq AllocBody830_129 AllocBody830_138

def AllocBody830_140 : StackLang.HolProg 64 :=
.seq AllocBody830_128 AllocBody830_139

def AllocBody830_141 : StackLang.HolProg 64 :=
.seq AllocBody830_127 AllocBody830_140

def AllocBody830_142 : StackLang.HolProg 64 :=
.seq AllocBody830_126 AllocBody830_141

def AllocBody830_143 : StackLang.HolProg 64 :=
.seq AllocBody830_125 AllocBody830_142

def AllocBody830_144 : StackLang.HolProg 64 :=
.seq AllocBody830_124 AllocBody830_143

def AllocBody830_145 : StackLang.HolProg 64 :=
.seq AllocBody830_123 AllocBody830_144

def AllocBody830_146 : StackLang.HolProg 64 :=
.seq AllocBody830_122 AllocBody830_145

def AllocBody830_147 : StackLang.HolProg 64 :=
.seq AllocBody830_121 AllocBody830_146

def AllocBody830_148 : StackLang.HolProg 64 :=
.seq AllocBody830_120 AllocBody830_147

def AllocBody830_149 : StackLang.HolProg 64 :=
.seq AllocBody830_119 AllocBody830_148

def AllocBody830_150 : StackLang.HolProg 64 :=
.seq AllocBody830_118 AllocBody830_149

def AllocBody830_151 : StackLang.HolProg 64 :=
.seq AllocBody830_117 AllocBody830_150

def AllocBody830_152 : StackLang.HolProg 64 :=
.seq AllocBody830_116 AllocBody830_151

def AllocBody830_153 : StackLang.HolProg 64 :=
.seq AllocBody830_115 AllocBody830_152

def AllocBody830_154 : StackLang.HolProg 64 :=
.seq AllocBody830_64 AllocBody830_153

def AllocBody830_155 : StackLang.HolProg 64 :=
.seq AllocBody830_63 AllocBody830_154

def AllocBody830_156 : StackLang.HolProg 64 :=
.seq AllocBody830_62 AllocBody830_155

def AllocBody830_157 : StackLang.HolProg 64 :=
.seq AllocBody830_61 AllocBody830_156

def AllocBody830_158 : StackLang.HolProg 64 :=
.seq AllocBody830_60 AllocBody830_157

def AllocBody830_159 : StackLang.HolProg 64 :=
.seq AllocBody830_59 AllocBody830_158

def AllocBody830_160 : StackLang.HolProg 64 :=
.seq AllocBody830_58 AllocBody830_159

def AllocBody830_161 : StackLang.HolProg 64 :=
.seq AllocBody830_57 AllocBody830_160

def AllocBody830_162 : StackLang.HolProg 64 :=
.seq AllocBody830_56 AllocBody830_161

def AllocBody830_163 : StackLang.HolProg 64 :=
.seq AllocBody830_13 AllocBody830_162

def AllocBody830_164 : StackLang.HolProg 64 :=
.seq AllocBody830_8 AllocBody830_163

def AllocBody830_165 : StackLang.HolProg 64 :=
.seq AllocBody830_7 AllocBody830_164

def AllocBody830_166 : StackLang.HolProg 64 :=
.seq AllocBody830_6 AllocBody830_165

def AllocBody830_167 : StackLang.HolProg 64 :=
.seq AllocBody830_5 AllocBody830_166

def AllocBody830_168 : StackLang.HolProg 64 :=
.seq AllocBody830_4 AllocBody830_167

def AllocBody830_169 : StackLang.HolProg 64 :=
.seq AllocBody830_3 AllocBody830_168

def AllocBody830_170 : StackLang.HolProg 64 :=
.seq AllocBody830_2 AllocBody830_169

def AllocBody830_171 : StackLang.HolProg 64 :=
.seq AllocBody830_1 AllocBody830_170

def AllocBody830_172 : StackLang.HolProg 64 :=
.seq AllocBody830_0 AllocBody830_171

def Alloc830 : Nat × StackLang.HolProg 64 := (830, AllocBody830_172)
theorem Alloc830_eq : StackAlloc.progComp (830, raw830) = Alloc830 := by
  kernel_rfl
#print axioms Alloc830_eq
end InitECandidate.Proofs.BackendStages
