import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function597
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody597_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody597_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody597_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody597_3 : StackLang.HolProg 64 :=
.seq rawBody597_1 rawBody597_2

def rawBody597_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody597_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2265#64)

def rawBody597_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody597_7 : StackLang.HolProg 64 :=
.seq rawBody597_5 rawBody597_6

def rawBody597_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody597_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody597_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody597_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 597 3

def rawBody597_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody597_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody597_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody597_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody597_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody597_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody597_18 : StackLang.HolProg 64 :=
.seq rawBody597_16 rawBody597_17

def rawBody597_19 : StackLang.HolProg 64 :=
.seq rawBody597_15 rawBody597_18

def rawBody597_20 : StackLang.HolProg 64 :=
.seq rawBody597_14 rawBody597_19

def rawBody597_21 : StackLang.HolProg 64 :=
.seq rawBody597_13 rawBody597_20

def rawBody597_22 : StackLang.HolProg 64 :=
.seq rawBody597_12 rawBody597_21

def rawBody597_23 : StackLang.HolProg 64 :=
.seq rawBody597_11 rawBody597_22

def rawBody597_24 : StackLang.HolProg 64 :=
.seq rawBody597_10 rawBody597_23

def rawBody597_25 : StackLang.HolProg 64 :=
.seq rawBody597_9 rawBody597_24

def rawBody597_26 : StackLang.HolProg 64 :=
.seq rawBody597_8 rawBody597_25

def rawBody597_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody597_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody597_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody597_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody597_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody597_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody597_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody597_34 : StackLang.HolProg 64 :=
.seq rawBody597_32 rawBody597_33

def rawBody597_35 : StackLang.HolProg 64 :=
.seq rawBody597_31 rawBody597_34

def rawBody597_36 : StackLang.HolProg 64 :=
.seq rawBody597_30 rawBody597_35

def rawBody597_37 : StackLang.HolProg 64 :=
.seq rawBody597_29 rawBody597_36

def rawBody597_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody597_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody597_40 : StackLang.HolProg 64 :=
.seq rawBody597_38 rawBody597_39

def rawBody597_41 : StackLang.HolProg 64 :=
.call (some (rawBody597_37, 0, 597, 2)) (Sum.inl 474) (some (rawBody597_40, 597, 3))

def rawBody597_42 : StackLang.HolProg 64 :=
.seq rawBody597_28 rawBody597_41

def rawBody597_43 : StackLang.HolProg 64 :=
.seq rawBody597_27 rawBody597_42

def rawBody597_44 : StackLang.HolProg 64 :=
.seq rawBody597_26 rawBody597_43

def rawBody597_45 : StackLang.HolProg 64 :=
.seq rawBody597_7 rawBody597_44

def rawBody597_46 : StackLang.HolProg 64 :=
.seq rawBody597_4 rawBody597_45

def rawBody597_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody597_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody597_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def rawBody597_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody597_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody597_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody597_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2266#64)

def rawBody597_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody597_55 : StackLang.HolProg 64 :=
.seq rawBody597_53 rawBody597_54

def rawBody597_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody597_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody597_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody597_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 597 5

def rawBody597_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody597_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody597_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody597_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody597_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody597_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody597_66 : StackLang.HolProg 64 :=
.seq rawBody597_64 rawBody597_65

def rawBody597_67 : StackLang.HolProg 64 :=
.seq rawBody597_63 rawBody597_66

def rawBody597_68 : StackLang.HolProg 64 :=
.seq rawBody597_62 rawBody597_67

def rawBody597_69 : StackLang.HolProg 64 :=
.seq rawBody597_61 rawBody597_68

def rawBody597_70 : StackLang.HolProg 64 :=
.seq rawBody597_60 rawBody597_69

def rawBody597_71 : StackLang.HolProg 64 :=
.seq rawBody597_59 rawBody597_70

def rawBody597_72 : StackLang.HolProg 64 :=
.seq rawBody597_58 rawBody597_71

def rawBody597_73 : StackLang.HolProg 64 :=
.seq rawBody597_57 rawBody597_72

def rawBody597_74 : StackLang.HolProg 64 :=
.seq rawBody597_56 rawBody597_73

def rawBody597_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody597_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody597_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody597_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody597_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody597_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody597_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody597_82 : StackLang.HolProg 64 :=
.seq rawBody597_80 rawBody597_81

def rawBody597_83 : StackLang.HolProg 64 :=
.seq rawBody597_79 rawBody597_82

def rawBody597_84 : StackLang.HolProg 64 :=
.seq rawBody597_78 rawBody597_83

def rawBody597_85 : StackLang.HolProg 64 :=
.seq rawBody597_77 rawBody597_84

def rawBody597_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody597_87 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody597_88 : StackLang.HolProg 64 :=
.seq rawBody597_86 rawBody597_87

def rawBody597_89 : StackLang.HolProg 64 :=
.call (some (rawBody597_85, 0, 597, 4)) (Sum.inl 604) (some (rawBody597_88, 597, 5))

def rawBody597_90 : StackLang.HolProg 64 :=
.seq rawBody597_76 rawBody597_89

def rawBody597_91 : StackLang.HolProg 64 :=
.seq rawBody597_75 rawBody597_90

def rawBody597_92 : StackLang.HolProg 64 :=
.seq rawBody597_74 rawBody597_91

def rawBody597_93 : StackLang.HolProg 64 :=
.seq rawBody597_55 rawBody597_92

def rawBody597_94 : StackLang.HolProg 64 :=
.seq rawBody597_52 rawBody597_93

def rawBody597_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody597_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody597_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody597_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody597_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody597_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def rawBody597_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody597_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551352#64))

def rawBody597_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody597_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody597_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody597_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody597_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def rawBody597_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody597_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody597_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody597_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody597_112 : StackLang.HolProg 64 :=
.seq rawBody597_110 rawBody597_111

def rawBody597_113 : StackLang.HolProg 64 :=
.seq rawBody597_109 rawBody597_112

def rawBody597_114 : StackLang.HolProg 64 :=
.seq rawBody597_108 rawBody597_113

def rawBody597_115 : StackLang.HolProg 64 :=
.seq rawBody597_107 rawBody597_114

def rawBody597_116 : StackLang.HolProg 64 :=
.seq rawBody597_106 rawBody597_115

def rawBody597_117 : StackLang.HolProg 64 :=
.seq rawBody597_105 rawBody597_116

def rawBody597_118 : StackLang.HolProg 64 :=
.seq rawBody597_104 rawBody597_117

def rawBody597_119 : StackLang.HolProg 64 :=
.seq rawBody597_103 rawBody597_118

def rawBody597_120 : StackLang.HolProg 64 :=
.seq rawBody597_102 rawBody597_119

def rawBody597_121 : StackLang.HolProg 64 :=
.seq rawBody597_101 rawBody597_120

def rawBody597_122 : StackLang.HolProg 64 :=
.seq rawBody597_100 rawBody597_121

def rawBody597_123 : StackLang.HolProg 64 :=
.seq rawBody597_99 rawBody597_122

def rawBody597_124 : StackLang.HolProg 64 :=
.seq rawBody597_98 rawBody597_123

def rawBody597_125 : StackLang.HolProg 64 :=
.seq rawBody597_97 rawBody597_124

def rawBody597_126 : StackLang.HolProg 64 :=
.seq rawBody597_96 rawBody597_125

def rawBody597_127 : StackLang.HolProg 64 :=
.seq rawBody597_95 rawBody597_126

def rawBody597_128 : StackLang.HolProg 64 :=
.seq rawBody597_94 rawBody597_127

def rawBody597_129 : StackLang.HolProg 64 :=
.seq rawBody597_51 rawBody597_128

def rawBody597_130 : StackLang.HolProg 64 :=
.seq rawBody597_50 rawBody597_129

def rawBody597_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody597_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody597_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody597_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody597_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody597_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def rawBody597_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody597_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody597_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody597_140 : StackLang.HolProg 64 :=
.seq rawBody597_138 rawBody597_139

def rawBody597_141 : StackLang.HolProg 64 :=
.seq rawBody597_137 rawBody597_140

def rawBody597_142 : StackLang.HolProg 64 :=
.seq rawBody597_136 rawBody597_141

def rawBody597_143 : StackLang.HolProg 64 :=
.seq rawBody597_135 rawBody597_142

def rawBody597_144 : StackLang.HolProg 64 :=
.seq rawBody597_134 rawBody597_143

def rawBody597_145 : StackLang.HolProg 64 :=
.seq rawBody597_133 rawBody597_144

def rawBody597_146 : StackLang.HolProg 64 :=
.seq rawBody597_132 rawBody597_145

def rawBody597_147 : StackLang.HolProg 64 :=
.seq rawBody597_131 rawBody597_146

def rawBody597_148 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody597_130 rawBody597_147

def rawBody597_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody597_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody597_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody597_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody597_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551328#64))

def rawBody597_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody597_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def rawBody597_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody597_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody597_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody597_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody597_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody597_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody597_162 : StackLang.HolProg 64 :=
.seq rawBody597_160 rawBody597_161

def rawBody597_163 : StackLang.HolProg 64 :=
.seq rawBody597_159 rawBody597_162

def rawBody597_164 : StackLang.HolProg 64 :=
.seq rawBody597_158 rawBody597_163

def rawBody597_165 : StackLang.HolProg 64 :=
.seq rawBody597_157 rawBody597_164

def rawBody597_166 : StackLang.HolProg 64 :=
.seq rawBody597_156 rawBody597_165

def rawBody597_167 : StackLang.HolProg 64 :=
.seq rawBody597_155 rawBody597_166

def rawBody597_168 : StackLang.HolProg 64 :=
.seq rawBody597_154 rawBody597_167

def rawBody597_169 : StackLang.HolProg 64 :=
.seq rawBody597_153 rawBody597_168

def rawBody597_170 : StackLang.HolProg 64 :=
.seq rawBody597_152 rawBody597_169

def rawBody597_171 : StackLang.HolProg 64 :=
.seq rawBody597_151 rawBody597_170

def rawBody597_172 : StackLang.HolProg 64 :=
.seq rawBody597_150 rawBody597_171

def rawBody597_173 : StackLang.HolProg 64 :=
.seq rawBody597_149 rawBody597_172

def rawBody597_174 : StackLang.HolProg 64 :=
.seq rawBody597_148 rawBody597_173

def rawBody597_175 : StackLang.HolProg 64 :=
.seq rawBody597_49 rawBody597_174

def rawBody597_176 : StackLang.HolProg 64 :=
.seq rawBody597_48 rawBody597_175

def rawBody597_177 : StackLang.HolProg 64 :=
.seq rawBody597_47 rawBody597_176

def rawBody597_178 : StackLang.HolProg 64 :=
.seq rawBody597_46 rawBody597_177

def rawBody597_179 : StackLang.HolProg 64 :=
.seq rawBody597_3 rawBody597_178

def rawBody597_180 : StackLang.HolProg 64 :=
.seq rawBody597_0 rawBody597_179

def raw597 : StackLang.HolProg 64 := rawBody597_180
theorem raw597_eq : StackRawCall.compTop RawInfo.rawInfo (function597 (.list [])).1 = raw597 := by
  kernel_rfl
#print axioms raw597_eq
end InitECandidate.Proofs.BackendStages
