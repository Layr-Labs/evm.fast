import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function830
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody830_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody830_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody830_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody830_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody830_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody830_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody830_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def rawBody830_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody830_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 96#64))

def rawBody830_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody830_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody830_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody830_12 : StackLang.HolProg 64 :=
.seq rawBody830_10 rawBody830_11

def rawBody830_13 : StackLang.HolProg 64 :=
.seq rawBody830_9 rawBody830_12

def rawBody830_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody830_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4122#64)

def rawBody830_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody830_17 : StackLang.HolProg 64 :=
.seq rawBody830_15 rawBody830_16

def rawBody830_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody830_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody830_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody830_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 830 3

def rawBody830_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody830_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody830_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody830_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody830_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody830_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody830_28 : StackLang.HolProg 64 :=
.seq rawBody830_26 rawBody830_27

def rawBody830_29 : StackLang.HolProg 64 :=
.seq rawBody830_25 rawBody830_28

def rawBody830_30 : StackLang.HolProg 64 :=
.seq rawBody830_24 rawBody830_29

def rawBody830_31 : StackLang.HolProg 64 :=
.seq rawBody830_23 rawBody830_30

def rawBody830_32 : StackLang.HolProg 64 :=
.seq rawBody830_22 rawBody830_31

def rawBody830_33 : StackLang.HolProg 64 :=
.seq rawBody830_21 rawBody830_32

def rawBody830_34 : StackLang.HolProg 64 :=
.seq rawBody830_20 rawBody830_33

def rawBody830_35 : StackLang.HolProg 64 :=
.seq rawBody830_19 rawBody830_34

def rawBody830_36 : StackLang.HolProg 64 :=
.seq rawBody830_18 rawBody830_35

def rawBody830_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody830_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody830_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody830_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody830_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody830_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody830_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody830_44 : StackLang.HolProg 64 :=
.seq rawBody830_42 rawBody830_43

def rawBody830_45 : StackLang.HolProg 64 :=
.seq rawBody830_41 rawBody830_44

def rawBody830_46 : StackLang.HolProg 64 :=
.seq rawBody830_40 rawBody830_45

def rawBody830_47 : StackLang.HolProg 64 :=
.seq rawBody830_39 rawBody830_46

def rawBody830_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody830_49 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody830_50 : StackLang.HolProg 64 :=
.seq rawBody830_48 rawBody830_49

def rawBody830_51 : StackLang.HolProg 64 :=
.call (some (rawBody830_47, 0, 830, 2)) (Sum.inl 465) (some (rawBody830_50, 830, 3))

def rawBody830_52 : StackLang.HolProg 64 :=
.seq rawBody830_38 rawBody830_51

def rawBody830_53 : StackLang.HolProg 64 :=
.seq rawBody830_37 rawBody830_52

def rawBody830_54 : StackLang.HolProg 64 :=
.seq rawBody830_36 rawBody830_53

def rawBody830_55 : StackLang.HolProg 64 :=
.seq rawBody830_17 rawBody830_54

def rawBody830_56 : StackLang.HolProg 64 :=
.seq rawBody830_14 rawBody830_55

def rawBody830_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody830_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody830_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 3#64)

def rawBody830_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody830_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody830_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody830_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def rawBody830_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody830_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody830_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4123#64)

def rawBody830_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody830_68 : StackLang.HolProg 64 :=
.seq rawBody830_66 rawBody830_67

def rawBody830_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody830_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody830_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody830_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 830 5

def rawBody830_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody830_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody830_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody830_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody830_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody830_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody830_79 : StackLang.HolProg 64 :=
.seq rawBody830_77 rawBody830_78

def rawBody830_80 : StackLang.HolProg 64 :=
.seq rawBody830_76 rawBody830_79

def rawBody830_81 : StackLang.HolProg 64 :=
.seq rawBody830_75 rawBody830_80

def rawBody830_82 : StackLang.HolProg 64 :=
.seq rawBody830_74 rawBody830_81

def rawBody830_83 : StackLang.HolProg 64 :=
.seq rawBody830_73 rawBody830_82

def rawBody830_84 : StackLang.HolProg 64 :=
.seq rawBody830_72 rawBody830_83

def rawBody830_85 : StackLang.HolProg 64 :=
.seq rawBody830_71 rawBody830_84

def rawBody830_86 : StackLang.HolProg 64 :=
.seq rawBody830_70 rawBody830_85

def rawBody830_87 : StackLang.HolProg 64 :=
.seq rawBody830_69 rawBody830_86

def rawBody830_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody830_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody830_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody830_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody830_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody830_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody830_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody830_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody830_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody830_97 : StackLang.HolProg 64 :=
.seq rawBody830_95 rawBody830_96

def rawBody830_98 : StackLang.HolProg 64 :=
.seq rawBody830_94 rawBody830_97

def rawBody830_99 : StackLang.HolProg 64 :=
.seq rawBody830_93 rawBody830_98

def rawBody830_100 : StackLang.HolProg 64 :=
.seq rawBody830_92 rawBody830_99

def rawBody830_101 : StackLang.HolProg 64 :=
.seq rawBody830_91 rawBody830_100

def rawBody830_102 : StackLang.HolProg 64 :=
.seq rawBody830_90 rawBody830_101

def rawBody830_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody830_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody830_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody830_106 : StackLang.HolProg 64 :=
.seq rawBody830_104 rawBody830_105

def rawBody830_107 : StackLang.HolProg 64 :=
.seq rawBody830_103 rawBody830_106

def rawBody830_108 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody830_109 : StackLang.HolProg 64 :=
.seq rawBody830_107 rawBody830_108

def rawBody830_110 : StackLang.HolProg 64 :=
.call (some (rawBody830_102, 0, 830, 4)) (Sum.inl 470) (some (rawBody830_109, 830, 5))

def rawBody830_111 : StackLang.HolProg 64 :=
.seq rawBody830_89 rawBody830_110

def rawBody830_112 : StackLang.HolProg 64 :=
.seq rawBody830_88 rawBody830_111

def rawBody830_113 : StackLang.HolProg 64 :=
.seq rawBody830_87 rawBody830_112

def rawBody830_114 : StackLang.HolProg 64 :=
.seq rawBody830_68 rawBody830_113

def rawBody830_115 : StackLang.HolProg 64 :=
.seq rawBody830_65 rawBody830_114

def rawBody830_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody830_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody830_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody830_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody830_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody830_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def rawBody830_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody830_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 88#64))

def rawBody830_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody830_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody830_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody830_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody830_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def rawBody830_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody830_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody830_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody830_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody830_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody830_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody830_135 : StackLang.HolProg 64 :=
.seq rawBody830_133 rawBody830_134

def rawBody830_136 : StackLang.HolProg 64 :=
.seq rawBody830_132 rawBody830_135

def rawBody830_137 : StackLang.HolProg 64 :=
.seq rawBody830_131 rawBody830_136

def rawBody830_138 : StackLang.HolProg 64 :=
.seq rawBody830_130 rawBody830_137

def rawBody830_139 : StackLang.HolProg 64 :=
.seq rawBody830_129 rawBody830_138

def rawBody830_140 : StackLang.HolProg 64 :=
.seq rawBody830_128 rawBody830_139

def rawBody830_141 : StackLang.HolProg 64 :=
.seq rawBody830_127 rawBody830_140

def rawBody830_142 : StackLang.HolProg 64 :=
.seq rawBody830_126 rawBody830_141

def rawBody830_143 : StackLang.HolProg 64 :=
.seq rawBody830_125 rawBody830_142

def rawBody830_144 : StackLang.HolProg 64 :=
.seq rawBody830_124 rawBody830_143

def rawBody830_145 : StackLang.HolProg 64 :=
.seq rawBody830_123 rawBody830_144

def rawBody830_146 : StackLang.HolProg 64 :=
.seq rawBody830_122 rawBody830_145

def rawBody830_147 : StackLang.HolProg 64 :=
.seq rawBody830_121 rawBody830_146

def rawBody830_148 : StackLang.HolProg 64 :=
.seq rawBody830_120 rawBody830_147

def rawBody830_149 : StackLang.HolProg 64 :=
.seq rawBody830_119 rawBody830_148

def rawBody830_150 : StackLang.HolProg 64 :=
.seq rawBody830_118 rawBody830_149

def rawBody830_151 : StackLang.HolProg 64 :=
.seq rawBody830_117 rawBody830_150

def rawBody830_152 : StackLang.HolProg 64 :=
.seq rawBody830_116 rawBody830_151

def rawBody830_153 : StackLang.HolProg 64 :=
.seq rawBody830_115 rawBody830_152

def rawBody830_154 : StackLang.HolProg 64 :=
.seq rawBody830_64 rawBody830_153

def rawBody830_155 : StackLang.HolProg 64 :=
.seq rawBody830_63 rawBody830_154

def rawBody830_156 : StackLang.HolProg 64 :=
.seq rawBody830_62 rawBody830_155

def rawBody830_157 : StackLang.HolProg 64 :=
.seq rawBody830_61 rawBody830_156

def rawBody830_158 : StackLang.HolProg 64 :=
.seq rawBody830_60 rawBody830_157

def rawBody830_159 : StackLang.HolProg 64 :=
.seq rawBody830_59 rawBody830_158

def rawBody830_160 : StackLang.HolProg 64 :=
.seq rawBody830_58 rawBody830_159

def rawBody830_161 : StackLang.HolProg 64 :=
.seq rawBody830_57 rawBody830_160

def rawBody830_162 : StackLang.HolProg 64 :=
.seq rawBody830_56 rawBody830_161

def rawBody830_163 : StackLang.HolProg 64 :=
.seq rawBody830_13 rawBody830_162

def rawBody830_164 : StackLang.HolProg 64 :=
.seq rawBody830_8 rawBody830_163

def rawBody830_165 : StackLang.HolProg 64 :=
.seq rawBody830_7 rawBody830_164

def rawBody830_166 : StackLang.HolProg 64 :=
.seq rawBody830_6 rawBody830_165

def rawBody830_167 : StackLang.HolProg 64 :=
.seq rawBody830_5 rawBody830_166

def rawBody830_168 : StackLang.HolProg 64 :=
.seq rawBody830_4 rawBody830_167

def rawBody830_169 : StackLang.HolProg 64 :=
.seq rawBody830_3 rawBody830_168

def rawBody830_170 : StackLang.HolProg 64 :=
.seq rawBody830_2 rawBody830_169

def rawBody830_171 : StackLang.HolProg 64 :=
.seq rawBody830_1 rawBody830_170

def rawBody830_172 : StackLang.HolProg 64 :=
.seq rawBody830_0 rawBody830_171

def raw830 : StackLang.HolProg 64 := rawBody830_172
theorem raw830_eq : StackRawCall.compTop RawInfo.rawInfo (function830 (.list [])).1 = raw830 := by
  kernel_rfl
#print axioms raw830_eq
end InitECandidate.Proofs.BackendStages
