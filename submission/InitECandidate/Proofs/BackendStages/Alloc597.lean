import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw597
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody597_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody597_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody597_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody597_3 : StackLang.HolProg 64 :=
.seq AllocBody597_1 AllocBody597_2

def AllocBody597_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody597_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2265#64)

def AllocBody597_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody597_7 : StackLang.HolProg 64 :=
.seq AllocBody597_5 AllocBody597_6

def AllocBody597_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody597_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody597_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody597_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 597 3

def AllocBody597_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody597_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody597_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody597_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody597_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody597_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody597_18 : StackLang.HolProg 64 :=
.seq AllocBody597_16 AllocBody597_17

def AllocBody597_19 : StackLang.HolProg 64 :=
.seq AllocBody597_15 AllocBody597_18

def AllocBody597_20 : StackLang.HolProg 64 :=
.seq AllocBody597_14 AllocBody597_19

def AllocBody597_21 : StackLang.HolProg 64 :=
.seq AllocBody597_13 AllocBody597_20

def AllocBody597_22 : StackLang.HolProg 64 :=
.seq AllocBody597_12 AllocBody597_21

def AllocBody597_23 : StackLang.HolProg 64 :=
.seq AllocBody597_11 AllocBody597_22

def AllocBody597_24 : StackLang.HolProg 64 :=
.seq AllocBody597_10 AllocBody597_23

def AllocBody597_25 : StackLang.HolProg 64 :=
.seq AllocBody597_9 AllocBody597_24

def AllocBody597_26 : StackLang.HolProg 64 :=
.seq AllocBody597_8 AllocBody597_25

def AllocBody597_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody597_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody597_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody597_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody597_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody597_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody597_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody597_34 : StackLang.HolProg 64 :=
.seq AllocBody597_32 AllocBody597_33

def AllocBody597_35 : StackLang.HolProg 64 :=
.seq AllocBody597_31 AllocBody597_34

def AllocBody597_36 : StackLang.HolProg 64 :=
.seq AllocBody597_30 AllocBody597_35

def AllocBody597_37 : StackLang.HolProg 64 :=
.seq AllocBody597_29 AllocBody597_36

def AllocBody597_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody597_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody597_40 : StackLang.HolProg 64 :=
.seq AllocBody597_38 AllocBody597_39

def AllocBody597_41 : StackLang.HolProg 64 :=
.call (some (AllocBody597_37, 0, 597, 2)) (Sum.inl 474) (some (AllocBody597_40, 597, 3))

def AllocBody597_42 : StackLang.HolProg 64 :=
.seq AllocBody597_28 AllocBody597_41

def AllocBody597_43 : StackLang.HolProg 64 :=
.seq AllocBody597_27 AllocBody597_42

def AllocBody597_44 : StackLang.HolProg 64 :=
.seq AllocBody597_26 AllocBody597_43

def AllocBody597_45 : StackLang.HolProg 64 :=
.seq AllocBody597_7 AllocBody597_44

def AllocBody597_46 : StackLang.HolProg 64 :=
.seq AllocBody597_4 AllocBody597_45

def AllocBody597_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody597_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody597_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def AllocBody597_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody597_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody597_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody597_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2266#64)

def AllocBody597_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody597_55 : StackLang.HolProg 64 :=
.seq AllocBody597_53 AllocBody597_54

def AllocBody597_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody597_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody597_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody597_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 597 5

def AllocBody597_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody597_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody597_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody597_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody597_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody597_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody597_66 : StackLang.HolProg 64 :=
.seq AllocBody597_64 AllocBody597_65

def AllocBody597_67 : StackLang.HolProg 64 :=
.seq AllocBody597_63 AllocBody597_66

def AllocBody597_68 : StackLang.HolProg 64 :=
.seq AllocBody597_62 AllocBody597_67

def AllocBody597_69 : StackLang.HolProg 64 :=
.seq AllocBody597_61 AllocBody597_68

def AllocBody597_70 : StackLang.HolProg 64 :=
.seq AllocBody597_60 AllocBody597_69

def AllocBody597_71 : StackLang.HolProg 64 :=
.seq AllocBody597_59 AllocBody597_70

def AllocBody597_72 : StackLang.HolProg 64 :=
.seq AllocBody597_58 AllocBody597_71

def AllocBody597_73 : StackLang.HolProg 64 :=
.seq AllocBody597_57 AllocBody597_72

def AllocBody597_74 : StackLang.HolProg 64 :=
.seq AllocBody597_56 AllocBody597_73

def AllocBody597_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody597_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody597_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody597_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody597_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody597_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody597_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody597_82 : StackLang.HolProg 64 :=
.seq AllocBody597_80 AllocBody597_81

def AllocBody597_83 : StackLang.HolProg 64 :=
.seq AllocBody597_79 AllocBody597_82

def AllocBody597_84 : StackLang.HolProg 64 :=
.seq AllocBody597_78 AllocBody597_83

def AllocBody597_85 : StackLang.HolProg 64 :=
.seq AllocBody597_77 AllocBody597_84

def AllocBody597_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody597_87 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody597_88 : StackLang.HolProg 64 :=
.seq AllocBody597_86 AllocBody597_87

def AllocBody597_89 : StackLang.HolProg 64 :=
.call (some (AllocBody597_85, 0, 597, 4)) (Sum.inl 604) (some (AllocBody597_88, 597, 5))

def AllocBody597_90 : StackLang.HolProg 64 :=
.seq AllocBody597_76 AllocBody597_89

def AllocBody597_91 : StackLang.HolProg 64 :=
.seq AllocBody597_75 AllocBody597_90

def AllocBody597_92 : StackLang.HolProg 64 :=
.seq AllocBody597_74 AllocBody597_91

def AllocBody597_93 : StackLang.HolProg 64 :=
.seq AllocBody597_55 AllocBody597_92

def AllocBody597_94 : StackLang.HolProg 64 :=
.seq AllocBody597_52 AllocBody597_93

def AllocBody597_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody597_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody597_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody597_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody597_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody597_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def AllocBody597_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody597_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551352#64))

def AllocBody597_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody597_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody597_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody597_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody597_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def AllocBody597_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody597_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody597_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody597_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody597_112 : StackLang.HolProg 64 :=
.seq AllocBody597_110 AllocBody597_111

def AllocBody597_113 : StackLang.HolProg 64 :=
.seq AllocBody597_109 AllocBody597_112

def AllocBody597_114 : StackLang.HolProg 64 :=
.seq AllocBody597_108 AllocBody597_113

def AllocBody597_115 : StackLang.HolProg 64 :=
.seq AllocBody597_107 AllocBody597_114

def AllocBody597_116 : StackLang.HolProg 64 :=
.seq AllocBody597_106 AllocBody597_115

def AllocBody597_117 : StackLang.HolProg 64 :=
.seq AllocBody597_105 AllocBody597_116

def AllocBody597_118 : StackLang.HolProg 64 :=
.seq AllocBody597_104 AllocBody597_117

def AllocBody597_119 : StackLang.HolProg 64 :=
.seq AllocBody597_103 AllocBody597_118

def AllocBody597_120 : StackLang.HolProg 64 :=
.seq AllocBody597_102 AllocBody597_119

def AllocBody597_121 : StackLang.HolProg 64 :=
.seq AllocBody597_101 AllocBody597_120

def AllocBody597_122 : StackLang.HolProg 64 :=
.seq AllocBody597_100 AllocBody597_121

def AllocBody597_123 : StackLang.HolProg 64 :=
.seq AllocBody597_99 AllocBody597_122

def AllocBody597_124 : StackLang.HolProg 64 :=
.seq AllocBody597_98 AllocBody597_123

def AllocBody597_125 : StackLang.HolProg 64 :=
.seq AllocBody597_97 AllocBody597_124

def AllocBody597_126 : StackLang.HolProg 64 :=
.seq AllocBody597_96 AllocBody597_125

def AllocBody597_127 : StackLang.HolProg 64 :=
.seq AllocBody597_95 AllocBody597_126

def AllocBody597_128 : StackLang.HolProg 64 :=
.seq AllocBody597_94 AllocBody597_127

def AllocBody597_129 : StackLang.HolProg 64 :=
.seq AllocBody597_51 AllocBody597_128

def AllocBody597_130 : StackLang.HolProg 64 :=
.seq AllocBody597_50 AllocBody597_129

def AllocBody597_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody597_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody597_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody597_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody597_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody597_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def AllocBody597_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody597_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody597_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody597_140 : StackLang.HolProg 64 :=
.seq AllocBody597_138 AllocBody597_139

def AllocBody597_141 : StackLang.HolProg 64 :=
.seq AllocBody597_137 AllocBody597_140

def AllocBody597_142 : StackLang.HolProg 64 :=
.seq AllocBody597_136 AllocBody597_141

def AllocBody597_143 : StackLang.HolProg 64 :=
.seq AllocBody597_135 AllocBody597_142

def AllocBody597_144 : StackLang.HolProg 64 :=
.seq AllocBody597_134 AllocBody597_143

def AllocBody597_145 : StackLang.HolProg 64 :=
.seq AllocBody597_133 AllocBody597_144

def AllocBody597_146 : StackLang.HolProg 64 :=
.seq AllocBody597_132 AllocBody597_145

def AllocBody597_147 : StackLang.HolProg 64 :=
.seq AllocBody597_131 AllocBody597_146

def AllocBody597_148 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody597_130 AllocBody597_147

def AllocBody597_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody597_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody597_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody597_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody597_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551328#64))

def AllocBody597_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody597_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def AllocBody597_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody597_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody597_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody597_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody597_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody597_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody597_162 : StackLang.HolProg 64 :=
.seq AllocBody597_160 AllocBody597_161

def AllocBody597_163 : StackLang.HolProg 64 :=
.seq AllocBody597_159 AllocBody597_162

def AllocBody597_164 : StackLang.HolProg 64 :=
.seq AllocBody597_158 AllocBody597_163

def AllocBody597_165 : StackLang.HolProg 64 :=
.seq AllocBody597_157 AllocBody597_164

def AllocBody597_166 : StackLang.HolProg 64 :=
.seq AllocBody597_156 AllocBody597_165

def AllocBody597_167 : StackLang.HolProg 64 :=
.seq AllocBody597_155 AllocBody597_166

def AllocBody597_168 : StackLang.HolProg 64 :=
.seq AllocBody597_154 AllocBody597_167

def AllocBody597_169 : StackLang.HolProg 64 :=
.seq AllocBody597_153 AllocBody597_168

def AllocBody597_170 : StackLang.HolProg 64 :=
.seq AllocBody597_152 AllocBody597_169

def AllocBody597_171 : StackLang.HolProg 64 :=
.seq AllocBody597_151 AllocBody597_170

def AllocBody597_172 : StackLang.HolProg 64 :=
.seq AllocBody597_150 AllocBody597_171

def AllocBody597_173 : StackLang.HolProg 64 :=
.seq AllocBody597_149 AllocBody597_172

def AllocBody597_174 : StackLang.HolProg 64 :=
.seq AllocBody597_148 AllocBody597_173

def AllocBody597_175 : StackLang.HolProg 64 :=
.seq AllocBody597_49 AllocBody597_174

def AllocBody597_176 : StackLang.HolProg 64 :=
.seq AllocBody597_48 AllocBody597_175

def AllocBody597_177 : StackLang.HolProg 64 :=
.seq AllocBody597_47 AllocBody597_176

def AllocBody597_178 : StackLang.HolProg 64 :=
.seq AllocBody597_46 AllocBody597_177

def AllocBody597_179 : StackLang.HolProg 64 :=
.seq AllocBody597_3 AllocBody597_178

def AllocBody597_180 : StackLang.HolProg 64 :=
.seq AllocBody597_0 AllocBody597_179

def Alloc597 : Nat × StackLang.HolProg 64 := (597, AllocBody597_180)
theorem Alloc597_eq : StackAlloc.progComp (597, raw597) = Alloc597 := by
  kernel_rfl
#print axioms Alloc597_eq
end InitECandidate.Proofs.BackendStages
