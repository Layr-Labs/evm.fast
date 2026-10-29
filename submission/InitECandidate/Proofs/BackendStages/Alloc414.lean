import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw414
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody414_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody414_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody414_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody414_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody414_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody414_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def AllocBody414_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def AllocBody414_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody414_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody414_9 : StackLang.HolProg 64 :=
.seq AllocBody414_7 AllocBody414_8

def AllocBody414_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody414_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1234#64)

def AllocBody414_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody414_13 : StackLang.HolProg 64 :=
.seq AllocBody414_11 AllocBody414_12

def AllocBody414_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody414_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody414_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody414_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 414 3

def AllocBody414_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody414_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody414_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody414_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody414_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody414_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody414_24 : StackLang.HolProg 64 :=
.seq AllocBody414_22 AllocBody414_23

def AllocBody414_25 : StackLang.HolProg 64 :=
.seq AllocBody414_21 AllocBody414_24

def AllocBody414_26 : StackLang.HolProg 64 :=
.seq AllocBody414_20 AllocBody414_25

def AllocBody414_27 : StackLang.HolProg 64 :=
.seq AllocBody414_19 AllocBody414_26

def AllocBody414_28 : StackLang.HolProg 64 :=
.seq AllocBody414_18 AllocBody414_27

def AllocBody414_29 : StackLang.HolProg 64 :=
.seq AllocBody414_17 AllocBody414_28

def AllocBody414_30 : StackLang.HolProg 64 :=
.seq AllocBody414_16 AllocBody414_29

def AllocBody414_31 : StackLang.HolProg 64 :=
.seq AllocBody414_15 AllocBody414_30

def AllocBody414_32 : StackLang.HolProg 64 :=
.seq AllocBody414_14 AllocBody414_31

def AllocBody414_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody414_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody414_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody414_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody414_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody414_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody414_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody414_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody414_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody414_42 : StackLang.HolProg 64 :=
.seq AllocBody414_40 AllocBody414_41

def AllocBody414_43 : StackLang.HolProg 64 :=
.seq AllocBody414_39 AllocBody414_42

def AllocBody414_44 : StackLang.HolProg 64 :=
.seq AllocBody414_38 AllocBody414_43

def AllocBody414_45 : StackLang.HolProg 64 :=
.seq AllocBody414_37 AllocBody414_44

def AllocBody414_46 : StackLang.HolProg 64 :=
.seq AllocBody414_36 AllocBody414_45

def AllocBody414_47 : StackLang.HolProg 64 :=
.seq AllocBody414_35 AllocBody414_46

def AllocBody414_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody414_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody414_50 : StackLang.HolProg 64 :=
.seq AllocBody414_48 AllocBody414_49

def AllocBody414_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody414_52 : StackLang.HolProg 64 :=
.seq AllocBody414_50 AllocBody414_51

def AllocBody414_53 : StackLang.HolProg 64 :=
.call (some (AllocBody414_47, 0, 414, 2)) (Sum.inl 186) (some (AllocBody414_52, 414, 3))

def AllocBody414_54 : StackLang.HolProg 64 :=
.seq AllocBody414_34 AllocBody414_53

def AllocBody414_55 : StackLang.HolProg 64 :=
.seq AllocBody414_33 AllocBody414_54

def AllocBody414_56 : StackLang.HolProg 64 :=
.seq AllocBody414_32 AllocBody414_55

def AllocBody414_57 : StackLang.HolProg 64 :=
.seq AllocBody414_13 AllocBody414_56

def AllocBody414_58 : StackLang.HolProg 64 :=
.seq AllocBody414_10 AllocBody414_57

def AllocBody414_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody414_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody414_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody414_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody414_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody414_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody414_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def AllocBody414_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody414_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody414_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody414_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody414_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody414_71 : StackLang.HolProg 64 :=
.seq AllocBody414_69 AllocBody414_70

def AllocBody414_72 : StackLang.HolProg 64 :=
.seq AllocBody414_68 AllocBody414_71

def AllocBody414_73 : StackLang.HolProg 64 :=
.seq AllocBody414_67 AllocBody414_72

def AllocBody414_74 : StackLang.HolProg 64 :=
.seq AllocBody414_66 AllocBody414_73

def AllocBody414_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody414_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody414_74 AllocBody414_75

def AllocBody414_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody414_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody414_79 : StackLang.HolProg 64 :=
.seq AllocBody414_77 AllocBody414_78

def AllocBody414_80 : StackLang.HolProg 64 :=
.seq AllocBody414_76 AllocBody414_79

def AllocBody414_81 : StackLang.HolProg 64 :=
.seq AllocBody414_65 AllocBody414_80

def AllocBody414_82 : StackLang.HolProg 64 :=
.seq AllocBody414_64 AllocBody414_81

def AllocBody414_83 : StackLang.HolProg 64 :=
.seq AllocBody414_63 AllocBody414_82

def AllocBody414_84 : StackLang.HolProg 64 :=
.seq AllocBody414_62 AllocBody414_83

def AllocBody414_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody414_86 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody414_84 AllocBody414_85

def AllocBody414_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody414_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody414_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody414_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody414_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551440#64))

def AllocBody414_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def AllocBody414_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody414_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody414_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody414_96 : StackLang.HolProg 64 :=
.seq AllocBody414_94 AllocBody414_95

def AllocBody414_97 : StackLang.HolProg 64 :=
.seq AllocBody414_93 AllocBody414_96

def AllocBody414_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody414_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1235#64)

def AllocBody414_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody414_101 : StackLang.HolProg 64 :=
.seq AllocBody414_99 AllocBody414_100

def AllocBody414_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody414_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody414_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody414_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 414 5

def AllocBody414_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody414_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody414_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody414_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody414_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody414_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody414_112 : StackLang.HolProg 64 :=
.seq AllocBody414_110 AllocBody414_111

def AllocBody414_113 : StackLang.HolProg 64 :=
.seq AllocBody414_109 AllocBody414_112

def AllocBody414_114 : StackLang.HolProg 64 :=
.seq AllocBody414_108 AllocBody414_113

def AllocBody414_115 : StackLang.HolProg 64 :=
.seq AllocBody414_107 AllocBody414_114

def AllocBody414_116 : StackLang.HolProg 64 :=
.seq AllocBody414_106 AllocBody414_115

def AllocBody414_117 : StackLang.HolProg 64 :=
.seq AllocBody414_105 AllocBody414_116

def AllocBody414_118 : StackLang.HolProg 64 :=
.seq AllocBody414_104 AllocBody414_117

def AllocBody414_119 : StackLang.HolProg 64 :=
.seq AllocBody414_103 AllocBody414_118

def AllocBody414_120 : StackLang.HolProg 64 :=
.seq AllocBody414_102 AllocBody414_119

def AllocBody414_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody414_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody414_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody414_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody414_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody414_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody414_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody414_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody414_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody414_130 : StackLang.HolProg 64 :=
.seq AllocBody414_128 AllocBody414_129

def AllocBody414_131 : StackLang.HolProg 64 :=
.seq AllocBody414_127 AllocBody414_130

def AllocBody414_132 : StackLang.HolProg 64 :=
.seq AllocBody414_126 AllocBody414_131

def AllocBody414_133 : StackLang.HolProg 64 :=
.seq AllocBody414_125 AllocBody414_132

def AllocBody414_134 : StackLang.HolProg 64 :=
.seq AllocBody414_124 AllocBody414_133

def AllocBody414_135 : StackLang.HolProg 64 :=
.seq AllocBody414_123 AllocBody414_134

def AllocBody414_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody414_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody414_138 : StackLang.HolProg 64 :=
.seq AllocBody414_136 AllocBody414_137

def AllocBody414_139 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody414_140 : StackLang.HolProg 64 :=
.seq AllocBody414_138 AllocBody414_139

def AllocBody414_141 : StackLang.HolProg 64 :=
.call (some (AllocBody414_135, 0, 414, 4)) (Sum.inl 186) (some (AllocBody414_140, 414, 5))

def AllocBody414_142 : StackLang.HolProg 64 :=
.seq AllocBody414_122 AllocBody414_141

def AllocBody414_143 : StackLang.HolProg 64 :=
.seq AllocBody414_121 AllocBody414_142

def AllocBody414_144 : StackLang.HolProg 64 :=
.seq AllocBody414_120 AllocBody414_143

def AllocBody414_145 : StackLang.HolProg 64 :=
.seq AllocBody414_101 AllocBody414_144

def AllocBody414_146 : StackLang.HolProg 64 :=
.seq AllocBody414_98 AllocBody414_145

def AllocBody414_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody414_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody414_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody414_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody414_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody414_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody414_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def AllocBody414_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody414_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody414_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody414_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody414_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody414_159 : StackLang.HolProg 64 :=
.seq AllocBody414_157 AllocBody414_158

def AllocBody414_160 : StackLang.HolProg 64 :=
.seq AllocBody414_156 AllocBody414_159

def AllocBody414_161 : StackLang.HolProg 64 :=
.seq AllocBody414_155 AllocBody414_160

def AllocBody414_162 : StackLang.HolProg 64 :=
.seq AllocBody414_154 AllocBody414_161

def AllocBody414_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody414_164 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody414_162 AllocBody414_163

def AllocBody414_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody414_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody414_167 : StackLang.HolProg 64 :=
.seq AllocBody414_165 AllocBody414_166

def AllocBody414_168 : StackLang.HolProg 64 :=
.seq AllocBody414_164 AllocBody414_167

def AllocBody414_169 : StackLang.HolProg 64 :=
.seq AllocBody414_153 AllocBody414_168

def AllocBody414_170 : StackLang.HolProg 64 :=
.seq AllocBody414_152 AllocBody414_169

def AllocBody414_171 : StackLang.HolProg 64 :=
.seq AllocBody414_151 AllocBody414_170

def AllocBody414_172 : StackLang.HolProg 64 :=
.seq AllocBody414_150 AllocBody414_171

def AllocBody414_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody414_174 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody414_172 AllocBody414_173

def AllocBody414_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody414_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody414_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody414_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody414_179 : StackLang.HolProg 64 :=
.seq AllocBody414_177 AllocBody414_178

def AllocBody414_180 : StackLang.HolProg 64 :=
.seq AllocBody414_176 AllocBody414_179

def AllocBody414_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody414_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1236#64)

def AllocBody414_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody414_184 : StackLang.HolProg 64 :=
.seq AllocBody414_182 AllocBody414_183

def AllocBody414_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody414_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody414_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody414_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 414 7

def AllocBody414_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody414_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody414_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody414_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody414_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody414_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody414_195 : StackLang.HolProg 64 :=
.seq AllocBody414_193 AllocBody414_194

def AllocBody414_196 : StackLang.HolProg 64 :=
.seq AllocBody414_192 AllocBody414_195

def AllocBody414_197 : StackLang.HolProg 64 :=
.seq AllocBody414_191 AllocBody414_196

def AllocBody414_198 : StackLang.HolProg 64 :=
.seq AllocBody414_190 AllocBody414_197

def AllocBody414_199 : StackLang.HolProg 64 :=
.seq AllocBody414_189 AllocBody414_198

def AllocBody414_200 : StackLang.HolProg 64 :=
.seq AllocBody414_188 AllocBody414_199

def AllocBody414_201 : StackLang.HolProg 64 :=
.seq AllocBody414_187 AllocBody414_200

def AllocBody414_202 : StackLang.HolProg 64 :=
.seq AllocBody414_186 AllocBody414_201

def AllocBody414_203 : StackLang.HolProg 64 :=
.seq AllocBody414_185 AllocBody414_202

def AllocBody414_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody414_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody414_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody414_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody414_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody414_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody414_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody414_211 : StackLang.HolProg 64 :=
.seq AllocBody414_209 AllocBody414_210

def AllocBody414_212 : StackLang.HolProg 64 :=
.seq AllocBody414_208 AllocBody414_211

def AllocBody414_213 : StackLang.HolProg 64 :=
.seq AllocBody414_207 AllocBody414_212

def AllocBody414_214 : StackLang.HolProg 64 :=
.seq AllocBody414_206 AllocBody414_213

def AllocBody414_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody414_216 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody414_217 : StackLang.HolProg 64 :=
.seq AllocBody414_215 AllocBody414_216

def AllocBody414_218 : StackLang.HolProg 64 :=
.call (some (AllocBody414_214, 0, 414, 6)) (Sum.inl 396) (some (AllocBody414_217, 414, 7))

def AllocBody414_219 : StackLang.HolProg 64 :=
.seq AllocBody414_205 AllocBody414_218

def AllocBody414_220 : StackLang.HolProg 64 :=
.seq AllocBody414_204 AllocBody414_219

def AllocBody414_221 : StackLang.HolProg 64 :=
.seq AllocBody414_203 AllocBody414_220

def AllocBody414_222 : StackLang.HolProg 64 :=
.seq AllocBody414_184 AllocBody414_221

def AllocBody414_223 : StackLang.HolProg 64 :=
.seq AllocBody414_181 AllocBody414_222

def AllocBody414_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody414_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody414_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody414_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1237#64)

def AllocBody414_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody414_229 : StackLang.HolProg 64 :=
.seq AllocBody414_227 AllocBody414_228

def AllocBody414_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody414_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody414_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody414_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 414 9

def AllocBody414_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody414_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody414_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody414_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody414_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody414_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody414_240 : StackLang.HolProg 64 :=
.seq AllocBody414_238 AllocBody414_239

def AllocBody414_241 : StackLang.HolProg 64 :=
.seq AllocBody414_237 AllocBody414_240

def AllocBody414_242 : StackLang.HolProg 64 :=
.seq AllocBody414_236 AllocBody414_241

def AllocBody414_243 : StackLang.HolProg 64 :=
.seq AllocBody414_235 AllocBody414_242

def AllocBody414_244 : StackLang.HolProg 64 :=
.seq AllocBody414_234 AllocBody414_243

def AllocBody414_245 : StackLang.HolProg 64 :=
.seq AllocBody414_233 AllocBody414_244

def AllocBody414_246 : StackLang.HolProg 64 :=
.seq AllocBody414_232 AllocBody414_245

def AllocBody414_247 : StackLang.HolProg 64 :=
.seq AllocBody414_231 AllocBody414_246

def AllocBody414_248 : StackLang.HolProg 64 :=
.seq AllocBody414_230 AllocBody414_247

def AllocBody414_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody414_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody414_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody414_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody414_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody414_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody414_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody414_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody414_257 : StackLang.HolProg 64 :=
.seq AllocBody414_255 AllocBody414_256

def AllocBody414_258 : StackLang.HolProg 64 :=
.seq AllocBody414_254 AllocBody414_257

def AllocBody414_259 : StackLang.HolProg 64 :=
.seq AllocBody414_253 AllocBody414_258

def AllocBody414_260 : StackLang.HolProg 64 :=
.seq AllocBody414_252 AllocBody414_259

def AllocBody414_261 : StackLang.HolProg 64 :=
.seq AllocBody414_251 AllocBody414_260

def AllocBody414_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody414_263 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody414_264 : StackLang.HolProg 64 :=
.seq AllocBody414_262 AllocBody414_263

def AllocBody414_265 : StackLang.HolProg 64 :=
.call (some (AllocBody414_261, 0, 414, 8)) (Sum.inl 403) (some (AllocBody414_264, 414, 9))

def AllocBody414_266 : StackLang.HolProg 64 :=
.seq AllocBody414_250 AllocBody414_265

def AllocBody414_267 : StackLang.HolProg 64 :=
.seq AllocBody414_249 AllocBody414_266

def AllocBody414_268 : StackLang.HolProg 64 :=
.seq AllocBody414_248 AllocBody414_267

def AllocBody414_269 : StackLang.HolProg 64 :=
.seq AllocBody414_229 AllocBody414_268

def AllocBody414_270 : StackLang.HolProg 64 :=
.seq AllocBody414_226 AllocBody414_269

def AllocBody414_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody414_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody414_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody414_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody414_275 : StackLang.HolProg 64 :=
.seq AllocBody414_273 AllocBody414_274

def AllocBody414_276 : StackLang.HolProg 64 :=
.seq AllocBody414_272 AllocBody414_275

def AllocBody414_277 : StackLang.HolProg 64 :=
.seq AllocBody414_271 AllocBody414_276

def AllocBody414_278 : StackLang.HolProg 64 :=
.seq AllocBody414_270 AllocBody414_277

def AllocBody414_279 : StackLang.HolProg 64 :=
.seq AllocBody414_225 AllocBody414_278

def AllocBody414_280 : StackLang.HolProg 64 :=
.seq AllocBody414_224 AllocBody414_279

def AllocBody414_281 : StackLang.HolProg 64 :=
.seq AllocBody414_223 AllocBody414_280

def AllocBody414_282 : StackLang.HolProg 64 :=
.seq AllocBody414_180 AllocBody414_281

def AllocBody414_283 : StackLang.HolProg 64 :=
.seq AllocBody414_175 AllocBody414_282

def AllocBody414_284 : StackLang.HolProg 64 :=
.seq AllocBody414_174 AllocBody414_283

def AllocBody414_285 : StackLang.HolProg 64 :=
.seq AllocBody414_149 AllocBody414_284

def AllocBody414_286 : StackLang.HolProg 64 :=
.seq AllocBody414_148 AllocBody414_285

def AllocBody414_287 : StackLang.HolProg 64 :=
.seq AllocBody414_147 AllocBody414_286

def AllocBody414_288 : StackLang.HolProg 64 :=
.seq AllocBody414_146 AllocBody414_287

def AllocBody414_289 : StackLang.HolProg 64 :=
.seq AllocBody414_97 AllocBody414_288

def AllocBody414_290 : StackLang.HolProg 64 :=
.seq AllocBody414_92 AllocBody414_289

def AllocBody414_291 : StackLang.HolProg 64 :=
.seq AllocBody414_91 AllocBody414_290

def AllocBody414_292 : StackLang.HolProg 64 :=
.seq AllocBody414_90 AllocBody414_291

def AllocBody414_293 : StackLang.HolProg 64 :=
.seq AllocBody414_89 AllocBody414_292

def AllocBody414_294 : StackLang.HolProg 64 :=
.seq AllocBody414_88 AllocBody414_293

def AllocBody414_295 : StackLang.HolProg 64 :=
.seq AllocBody414_87 AllocBody414_294

def AllocBody414_296 : StackLang.HolProg 64 :=
.seq AllocBody414_86 AllocBody414_295

def AllocBody414_297 : StackLang.HolProg 64 :=
.seq AllocBody414_61 AllocBody414_296

def AllocBody414_298 : StackLang.HolProg 64 :=
.seq AllocBody414_60 AllocBody414_297

def AllocBody414_299 : StackLang.HolProg 64 :=
.seq AllocBody414_59 AllocBody414_298

def AllocBody414_300 : StackLang.HolProg 64 :=
.seq AllocBody414_58 AllocBody414_299

def AllocBody414_301 : StackLang.HolProg 64 :=
.seq AllocBody414_9 AllocBody414_300

def AllocBody414_302 : StackLang.HolProg 64 :=
.seq AllocBody414_6 AllocBody414_301

def AllocBody414_303 : StackLang.HolProg 64 :=
.seq AllocBody414_5 AllocBody414_302

def AllocBody414_304 : StackLang.HolProg 64 :=
.seq AllocBody414_4 AllocBody414_303

def AllocBody414_305 : StackLang.HolProg 64 :=
.seq AllocBody414_3 AllocBody414_304

def AllocBody414_306 : StackLang.HolProg 64 :=
.seq AllocBody414_2 AllocBody414_305

def AllocBody414_307 : StackLang.HolProg 64 :=
.seq AllocBody414_1 AllocBody414_306

def AllocBody414_308 : StackLang.HolProg 64 :=
.seq AllocBody414_0 AllocBody414_307

def Alloc414 : Nat × StackLang.HolProg 64 := (414, AllocBody414_308)
theorem Alloc414_eq : StackAlloc.progComp (414, raw414) = Alloc414 := by
  kernel_rfl
#print axioms Alloc414_eq
end InitECandidate.Proofs.BackendStages
