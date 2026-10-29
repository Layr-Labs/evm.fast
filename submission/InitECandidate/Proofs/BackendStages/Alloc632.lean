import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw632
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody632_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody632_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody632_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody632_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody632_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551264#64))

def AllocBody632_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody632_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody632_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody632_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody632_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody632_12 : StackLang.HolProg 64 :=
.seq AllocBody632_10 AllocBody632_11

def AllocBody632_13 : StackLang.HolProg 64 :=
.seq AllocBody632_9 AllocBody632_12

def AllocBody632_14 : StackLang.HolProg 64 :=
.seq AllocBody632_8 AllocBody632_13

def AllocBody632_15 : StackLang.HolProg 64 :=
.seq AllocBody632_7 AllocBody632_14

def AllocBody632_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody632_15 AllocBody632_16

def AllocBody632_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody632_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody632_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 80#64)

def AllocBody632_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody632_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2573#64)

def AllocBody632_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody632_25 : StackLang.HolProg 64 :=
.seq AllocBody632_23 AllocBody632_24

def AllocBody632_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody632_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody632_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody632_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 632 3

def AllocBody632_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody632_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody632_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody632_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody632_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody632_36 : StackLang.HolProg 64 :=
.seq AllocBody632_34 AllocBody632_35

def AllocBody632_37 : StackLang.HolProg 64 :=
.seq AllocBody632_33 AllocBody632_36

def AllocBody632_38 : StackLang.HolProg 64 :=
.seq AllocBody632_32 AllocBody632_37

def AllocBody632_39 : StackLang.HolProg 64 :=
.seq AllocBody632_31 AllocBody632_38

def AllocBody632_40 : StackLang.HolProg 64 :=
.seq AllocBody632_30 AllocBody632_39

def AllocBody632_41 : StackLang.HolProg 64 :=
.seq AllocBody632_29 AllocBody632_40

def AllocBody632_42 : StackLang.HolProg 64 :=
.seq AllocBody632_28 AllocBody632_41

def AllocBody632_43 : StackLang.HolProg 64 :=
.seq AllocBody632_27 AllocBody632_42

def AllocBody632_44 : StackLang.HolProg 64 :=
.seq AllocBody632_26 AllocBody632_43

def AllocBody632_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody632_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody632_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody632_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody632_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody632_52 : StackLang.HolProg 64 :=
.seq AllocBody632_50 AllocBody632_51

def AllocBody632_53 : StackLang.HolProg 64 :=
.seq AllocBody632_49 AllocBody632_52

def AllocBody632_54 : StackLang.HolProg 64 :=
.seq AllocBody632_48 AllocBody632_53

def AllocBody632_55 : StackLang.HolProg 64 :=
.seq AllocBody632_47 AllocBody632_54

def AllocBody632_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody632_58 : StackLang.HolProg 64 :=
.seq AllocBody632_56 AllocBody632_57

def AllocBody632_59 : StackLang.HolProg 64 :=
.call (some (AllocBody632_55, 0, 632, 2)) (Sum.inl 68) (some (AllocBody632_58, 632, 3))

def AllocBody632_60 : StackLang.HolProg 64 :=
.seq AllocBody632_46 AllocBody632_59

def AllocBody632_61 : StackLang.HolProg 64 :=
.seq AllocBody632_45 AllocBody632_60

def AllocBody632_62 : StackLang.HolProg 64 :=
.seq AllocBody632_44 AllocBody632_61

def AllocBody632_63 : StackLang.HolProg 64 :=
.seq AllocBody632_25 AllocBody632_62

def AllocBody632_64 : StackLang.HolProg 64 :=
.seq AllocBody632_22 AllocBody632_63

def AllocBody632_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody632_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody632_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody632_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody632_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551264#64)))

def AllocBody632_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody632_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def AllocBody632_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2574#64)

def AllocBody632_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody632_77 : StackLang.HolProg 64 :=
.seq AllocBody632_75 AllocBody632_76

def AllocBody632_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody632_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody632_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody632_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 632 5

def AllocBody632_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody632_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody632_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody632_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody632_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody632_88 : StackLang.HolProg 64 :=
.seq AllocBody632_86 AllocBody632_87

def AllocBody632_89 : StackLang.HolProg 64 :=
.seq AllocBody632_85 AllocBody632_88

def AllocBody632_90 : StackLang.HolProg 64 :=
.seq AllocBody632_84 AllocBody632_89

def AllocBody632_91 : StackLang.HolProg 64 :=
.seq AllocBody632_83 AllocBody632_90

def AllocBody632_92 : StackLang.HolProg 64 :=
.seq AllocBody632_82 AllocBody632_91

def AllocBody632_93 : StackLang.HolProg 64 :=
.seq AllocBody632_81 AllocBody632_92

def AllocBody632_94 : StackLang.HolProg 64 :=
.seq AllocBody632_80 AllocBody632_93

def AllocBody632_95 : StackLang.HolProg 64 :=
.seq AllocBody632_79 AllocBody632_94

def AllocBody632_96 : StackLang.HolProg 64 :=
.seq AllocBody632_78 AllocBody632_95

def AllocBody632_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody632_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody632_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody632_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody632_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody632_104 : StackLang.HolProg 64 :=
.seq AllocBody632_102 AllocBody632_103

def AllocBody632_105 : StackLang.HolProg 64 :=
.seq AllocBody632_101 AllocBody632_104

def AllocBody632_106 : StackLang.HolProg 64 :=
.seq AllocBody632_100 AllocBody632_105

def AllocBody632_107 : StackLang.HolProg 64 :=
.seq AllocBody632_99 AllocBody632_106

def AllocBody632_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_109 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody632_110 : StackLang.HolProg 64 :=
.seq AllocBody632_108 AllocBody632_109

def AllocBody632_111 : StackLang.HolProg 64 :=
.call (some (AllocBody632_107, 0, 632, 4)) (Sum.inl 68) (some (AllocBody632_110, 632, 5))

def AllocBody632_112 : StackLang.HolProg 64 :=
.seq AllocBody632_98 AllocBody632_111

def AllocBody632_113 : StackLang.HolProg 64 :=
.seq AllocBody632_97 AllocBody632_112

def AllocBody632_114 : StackLang.HolProg 64 :=
.seq AllocBody632_96 AllocBody632_113

def AllocBody632_115 : StackLang.HolProg 64 :=
.seq AllocBody632_77 AllocBody632_114

def AllocBody632_116 : StackLang.HolProg 64 :=
.seq AllocBody632_74 AllocBody632_115

def AllocBody632_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody632_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody632_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody632_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody632_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551256#64)))

def AllocBody632_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody632_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def AllocBody632_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2575#64)

def AllocBody632_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody632_129 : StackLang.HolProg 64 :=
.seq AllocBody632_127 AllocBody632_128

def AllocBody632_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody632_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody632_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody632_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 632 7

def AllocBody632_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody632_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody632_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody632_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody632_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody632_140 : StackLang.HolProg 64 :=
.seq AllocBody632_138 AllocBody632_139

def AllocBody632_141 : StackLang.HolProg 64 :=
.seq AllocBody632_137 AllocBody632_140

def AllocBody632_142 : StackLang.HolProg 64 :=
.seq AllocBody632_136 AllocBody632_141

def AllocBody632_143 : StackLang.HolProg 64 :=
.seq AllocBody632_135 AllocBody632_142

def AllocBody632_144 : StackLang.HolProg 64 :=
.seq AllocBody632_134 AllocBody632_143

def AllocBody632_145 : StackLang.HolProg 64 :=
.seq AllocBody632_133 AllocBody632_144

def AllocBody632_146 : StackLang.HolProg 64 :=
.seq AllocBody632_132 AllocBody632_145

def AllocBody632_147 : StackLang.HolProg 64 :=
.seq AllocBody632_131 AllocBody632_146

def AllocBody632_148 : StackLang.HolProg 64 :=
.seq AllocBody632_130 AllocBody632_147

def AllocBody632_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody632_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody632_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody632_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody632_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody632_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody632_157 : StackLang.HolProg 64 :=
.seq AllocBody632_155 AllocBody632_156

def AllocBody632_158 : StackLang.HolProg 64 :=
.seq AllocBody632_154 AllocBody632_157

def AllocBody632_159 : StackLang.HolProg 64 :=
.seq AllocBody632_153 AllocBody632_158

def AllocBody632_160 : StackLang.HolProg 64 :=
.seq AllocBody632_152 AllocBody632_159

def AllocBody632_161 : StackLang.HolProg 64 :=
.seq AllocBody632_151 AllocBody632_160

def AllocBody632_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody632_163 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody632_164 : StackLang.HolProg 64 :=
.seq AllocBody632_162 AllocBody632_163

def AllocBody632_165 : StackLang.HolProg 64 :=
.call (some (AllocBody632_161, 0, 632, 6)) (Sum.inl 68) (some (AllocBody632_164, 632, 7))

def AllocBody632_166 : StackLang.HolProg 64 :=
.seq AllocBody632_150 AllocBody632_165

def AllocBody632_167 : StackLang.HolProg 64 :=
.seq AllocBody632_149 AllocBody632_166

def AllocBody632_168 : StackLang.HolProg 64 :=
.seq AllocBody632_148 AllocBody632_167

def AllocBody632_169 : StackLang.HolProg 64 :=
.seq AllocBody632_129 AllocBody632_168

def AllocBody632_170 : StackLang.HolProg 64 :=
.seq AllocBody632_126 AllocBody632_169

def AllocBody632_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody632_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody632_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody632_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody632_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551248#64)))

def AllocBody632_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody632_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551264#64))

def AllocBody632_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 18364758544493064720#64)

def AllocBody632_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody632_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551264#64))

def AllocBody632_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody632_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 3853709921291437230#64)

def AllocBody632_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody632_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551264#64))

def AllocBody632_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody632_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 5266788149650328715#64)

def AllocBody632_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody632_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551264#64))

def AllocBody632_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody632_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 10305543691612001175#64)

def AllocBody632_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody632_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551264#64))

def AllocBody632_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody632_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 15242093322790139145#64)

def AllocBody632_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody632_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551264#64))

def AllocBody632_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def AllocBody632_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 10515720223929181890#64)

def AllocBody632_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody632_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551264#64))

def AllocBody632_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def AllocBody632_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 13270197634454188380#64)

def AllocBody632_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody632_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551264#64))

def AllocBody632_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def AllocBody632_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 11702690517083809725#64)

def AllocBody632_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody632_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551264#64))

def AllocBody632_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def AllocBody632_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 6503616966983130870#64)

def AllocBody632_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody632_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551264#64))

def AllocBody632_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def AllocBody632_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 991893350865389610#64)

def AllocBody632_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody632_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551256#64))

def AllocBody632_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 7640891576956012808#64)

def AllocBody632_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody632_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551256#64))

def AllocBody632_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody632_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 13503953896175478587#64)

def AllocBody632_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody632_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551256#64))

def AllocBody632_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody632_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 4354685564936845355#64)

def AllocBody632_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody632_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551256#64))

def AllocBody632_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody632_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 11912009170470909681#64)

def AllocBody632_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody632_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551256#64))

def AllocBody632_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody632_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 5840696475078001361#64)

def AllocBody632_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody632_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551256#64))

def AllocBody632_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def AllocBody632_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 11170449401992604703#64)

def AllocBody632_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody632_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551256#64))

def AllocBody632_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def AllocBody632_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2270897969802886507#64)

def AllocBody632_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody632_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551256#64))

def AllocBody632_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def AllocBody632_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6620516959819538809#64)

def AllocBody632_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody632_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody632_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody632_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody632_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody632_288 : StackLang.HolProg 64 :=
.seq AllocBody632_286 AllocBody632_287

def AllocBody632_289 : StackLang.HolProg 64 :=
.seq AllocBody632_285 AllocBody632_288

def AllocBody632_290 : StackLang.HolProg 64 :=
.seq AllocBody632_284 AllocBody632_289

def AllocBody632_291 : StackLang.HolProg 64 :=
.seq AllocBody632_283 AllocBody632_290

def AllocBody632_292 : StackLang.HolProg 64 :=
.seq AllocBody632_282 AllocBody632_291

def AllocBody632_293 : StackLang.HolProg 64 :=
.seq AllocBody632_281 AllocBody632_292

def AllocBody632_294 : StackLang.HolProg 64 :=
.seq AllocBody632_280 AllocBody632_293

def AllocBody632_295 : StackLang.HolProg 64 :=
.seq AllocBody632_279 AllocBody632_294

def AllocBody632_296 : StackLang.HolProg 64 :=
.seq AllocBody632_278 AllocBody632_295

def AllocBody632_297 : StackLang.HolProg 64 :=
.seq AllocBody632_277 AllocBody632_296

def AllocBody632_298 : StackLang.HolProg 64 :=
.seq AllocBody632_276 AllocBody632_297

def AllocBody632_299 : StackLang.HolProg 64 :=
.seq AllocBody632_275 AllocBody632_298

def AllocBody632_300 : StackLang.HolProg 64 :=
.seq AllocBody632_274 AllocBody632_299

def AllocBody632_301 : StackLang.HolProg 64 :=
.seq AllocBody632_273 AllocBody632_300

def AllocBody632_302 : StackLang.HolProg 64 :=
.seq AllocBody632_272 AllocBody632_301

def AllocBody632_303 : StackLang.HolProg 64 :=
.seq AllocBody632_271 AllocBody632_302

def AllocBody632_304 : StackLang.HolProg 64 :=
.seq AllocBody632_270 AllocBody632_303

def AllocBody632_305 : StackLang.HolProg 64 :=
.seq AllocBody632_269 AllocBody632_304

def AllocBody632_306 : StackLang.HolProg 64 :=
.seq AllocBody632_268 AllocBody632_305

def AllocBody632_307 : StackLang.HolProg 64 :=
.seq AllocBody632_267 AllocBody632_306

def AllocBody632_308 : StackLang.HolProg 64 :=
.seq AllocBody632_266 AllocBody632_307

def AllocBody632_309 : StackLang.HolProg 64 :=
.seq AllocBody632_265 AllocBody632_308

def AllocBody632_310 : StackLang.HolProg 64 :=
.seq AllocBody632_264 AllocBody632_309

def AllocBody632_311 : StackLang.HolProg 64 :=
.seq AllocBody632_263 AllocBody632_310

def AllocBody632_312 : StackLang.HolProg 64 :=
.seq AllocBody632_262 AllocBody632_311

def AllocBody632_313 : StackLang.HolProg 64 :=
.seq AllocBody632_261 AllocBody632_312

def AllocBody632_314 : StackLang.HolProg 64 :=
.seq AllocBody632_260 AllocBody632_313

def AllocBody632_315 : StackLang.HolProg 64 :=
.seq AllocBody632_259 AllocBody632_314

def AllocBody632_316 : StackLang.HolProg 64 :=
.seq AllocBody632_258 AllocBody632_315

def AllocBody632_317 : StackLang.HolProg 64 :=
.seq AllocBody632_257 AllocBody632_316

def AllocBody632_318 : StackLang.HolProg 64 :=
.seq AllocBody632_256 AllocBody632_317

def AllocBody632_319 : StackLang.HolProg 64 :=
.seq AllocBody632_255 AllocBody632_318

def AllocBody632_320 : StackLang.HolProg 64 :=
.seq AllocBody632_254 AllocBody632_319

def AllocBody632_321 : StackLang.HolProg 64 :=
.seq AllocBody632_253 AllocBody632_320

def AllocBody632_322 : StackLang.HolProg 64 :=
.seq AllocBody632_252 AllocBody632_321

def AllocBody632_323 : StackLang.HolProg 64 :=
.seq AllocBody632_251 AllocBody632_322

def AllocBody632_324 : StackLang.HolProg 64 :=
.seq AllocBody632_250 AllocBody632_323

def AllocBody632_325 : StackLang.HolProg 64 :=
.seq AllocBody632_249 AllocBody632_324

def AllocBody632_326 : StackLang.HolProg 64 :=
.seq AllocBody632_248 AllocBody632_325

def AllocBody632_327 : StackLang.HolProg 64 :=
.seq AllocBody632_247 AllocBody632_326

def AllocBody632_328 : StackLang.HolProg 64 :=
.seq AllocBody632_246 AllocBody632_327

def AllocBody632_329 : StackLang.HolProg 64 :=
.seq AllocBody632_245 AllocBody632_328

def AllocBody632_330 : StackLang.HolProg 64 :=
.seq AllocBody632_244 AllocBody632_329

def AllocBody632_331 : StackLang.HolProg 64 :=
.seq AllocBody632_243 AllocBody632_330

def AllocBody632_332 : StackLang.HolProg 64 :=
.seq AllocBody632_242 AllocBody632_331

def AllocBody632_333 : StackLang.HolProg 64 :=
.seq AllocBody632_241 AllocBody632_332

def AllocBody632_334 : StackLang.HolProg 64 :=
.seq AllocBody632_240 AllocBody632_333

def AllocBody632_335 : StackLang.HolProg 64 :=
.seq AllocBody632_239 AllocBody632_334

def AllocBody632_336 : StackLang.HolProg 64 :=
.seq AllocBody632_238 AllocBody632_335

def AllocBody632_337 : StackLang.HolProg 64 :=
.seq AllocBody632_237 AllocBody632_336

def AllocBody632_338 : StackLang.HolProg 64 :=
.seq AllocBody632_236 AllocBody632_337

def AllocBody632_339 : StackLang.HolProg 64 :=
.seq AllocBody632_235 AllocBody632_338

def AllocBody632_340 : StackLang.HolProg 64 :=
.seq AllocBody632_234 AllocBody632_339

def AllocBody632_341 : StackLang.HolProg 64 :=
.seq AllocBody632_233 AllocBody632_340

def AllocBody632_342 : StackLang.HolProg 64 :=
.seq AllocBody632_232 AllocBody632_341

def AllocBody632_343 : StackLang.HolProg 64 :=
.seq AllocBody632_231 AllocBody632_342

def AllocBody632_344 : StackLang.HolProg 64 :=
.seq AllocBody632_230 AllocBody632_343

def AllocBody632_345 : StackLang.HolProg 64 :=
.seq AllocBody632_229 AllocBody632_344

def AllocBody632_346 : StackLang.HolProg 64 :=
.seq AllocBody632_228 AllocBody632_345

def AllocBody632_347 : StackLang.HolProg 64 :=
.seq AllocBody632_227 AllocBody632_346

def AllocBody632_348 : StackLang.HolProg 64 :=
.seq AllocBody632_226 AllocBody632_347

def AllocBody632_349 : StackLang.HolProg 64 :=
.seq AllocBody632_225 AllocBody632_348

def AllocBody632_350 : StackLang.HolProg 64 :=
.seq AllocBody632_224 AllocBody632_349

def AllocBody632_351 : StackLang.HolProg 64 :=
.seq AllocBody632_223 AllocBody632_350

def AllocBody632_352 : StackLang.HolProg 64 :=
.seq AllocBody632_222 AllocBody632_351

def AllocBody632_353 : StackLang.HolProg 64 :=
.seq AllocBody632_221 AllocBody632_352

def AllocBody632_354 : StackLang.HolProg 64 :=
.seq AllocBody632_220 AllocBody632_353

def AllocBody632_355 : StackLang.HolProg 64 :=
.seq AllocBody632_219 AllocBody632_354

def AllocBody632_356 : StackLang.HolProg 64 :=
.seq AllocBody632_218 AllocBody632_355

def AllocBody632_357 : StackLang.HolProg 64 :=
.seq AllocBody632_217 AllocBody632_356

def AllocBody632_358 : StackLang.HolProg 64 :=
.seq AllocBody632_216 AllocBody632_357

def AllocBody632_359 : StackLang.HolProg 64 :=
.seq AllocBody632_215 AllocBody632_358

def AllocBody632_360 : StackLang.HolProg 64 :=
.seq AllocBody632_214 AllocBody632_359

def AllocBody632_361 : StackLang.HolProg 64 :=
.seq AllocBody632_213 AllocBody632_360

def AllocBody632_362 : StackLang.HolProg 64 :=
.seq AllocBody632_212 AllocBody632_361

def AllocBody632_363 : StackLang.HolProg 64 :=
.seq AllocBody632_211 AllocBody632_362

def AllocBody632_364 : StackLang.HolProg 64 :=
.seq AllocBody632_210 AllocBody632_363

def AllocBody632_365 : StackLang.HolProg 64 :=
.seq AllocBody632_209 AllocBody632_364

def AllocBody632_366 : StackLang.HolProg 64 :=
.seq AllocBody632_208 AllocBody632_365

def AllocBody632_367 : StackLang.HolProg 64 :=
.seq AllocBody632_207 AllocBody632_366

def AllocBody632_368 : StackLang.HolProg 64 :=
.seq AllocBody632_206 AllocBody632_367

def AllocBody632_369 : StackLang.HolProg 64 :=
.seq AllocBody632_205 AllocBody632_368

def AllocBody632_370 : StackLang.HolProg 64 :=
.seq AllocBody632_204 AllocBody632_369

def AllocBody632_371 : StackLang.HolProg 64 :=
.seq AllocBody632_203 AllocBody632_370

def AllocBody632_372 : StackLang.HolProg 64 :=
.seq AllocBody632_202 AllocBody632_371

def AllocBody632_373 : StackLang.HolProg 64 :=
.seq AllocBody632_201 AllocBody632_372

def AllocBody632_374 : StackLang.HolProg 64 :=
.seq AllocBody632_200 AllocBody632_373

def AllocBody632_375 : StackLang.HolProg 64 :=
.seq AllocBody632_199 AllocBody632_374

def AllocBody632_376 : StackLang.HolProg 64 :=
.seq AllocBody632_198 AllocBody632_375

def AllocBody632_377 : StackLang.HolProg 64 :=
.seq AllocBody632_197 AllocBody632_376

def AllocBody632_378 : StackLang.HolProg 64 :=
.seq AllocBody632_196 AllocBody632_377

def AllocBody632_379 : StackLang.HolProg 64 :=
.seq AllocBody632_195 AllocBody632_378

def AllocBody632_380 : StackLang.HolProg 64 :=
.seq AllocBody632_194 AllocBody632_379

def AllocBody632_381 : StackLang.HolProg 64 :=
.seq AllocBody632_193 AllocBody632_380

def AllocBody632_382 : StackLang.HolProg 64 :=
.seq AllocBody632_192 AllocBody632_381

def AllocBody632_383 : StackLang.HolProg 64 :=
.seq AllocBody632_191 AllocBody632_382

def AllocBody632_384 : StackLang.HolProg 64 :=
.seq AllocBody632_190 AllocBody632_383

def AllocBody632_385 : StackLang.HolProg 64 :=
.seq AllocBody632_189 AllocBody632_384

def AllocBody632_386 : StackLang.HolProg 64 :=
.seq AllocBody632_188 AllocBody632_385

def AllocBody632_387 : StackLang.HolProg 64 :=
.seq AllocBody632_187 AllocBody632_386

def AllocBody632_388 : StackLang.HolProg 64 :=
.seq AllocBody632_186 AllocBody632_387

def AllocBody632_389 : StackLang.HolProg 64 :=
.seq AllocBody632_185 AllocBody632_388

def AllocBody632_390 : StackLang.HolProg 64 :=
.seq AllocBody632_184 AllocBody632_389

def AllocBody632_391 : StackLang.HolProg 64 :=
.seq AllocBody632_183 AllocBody632_390

def AllocBody632_392 : StackLang.HolProg 64 :=
.seq AllocBody632_182 AllocBody632_391

def AllocBody632_393 : StackLang.HolProg 64 :=
.seq AllocBody632_181 AllocBody632_392

def AllocBody632_394 : StackLang.HolProg 64 :=
.seq AllocBody632_180 AllocBody632_393

def AllocBody632_395 : StackLang.HolProg 64 :=
.seq AllocBody632_179 AllocBody632_394

def AllocBody632_396 : StackLang.HolProg 64 :=
.seq AllocBody632_178 AllocBody632_395

def AllocBody632_397 : StackLang.HolProg 64 :=
.seq AllocBody632_177 AllocBody632_396

def AllocBody632_398 : StackLang.HolProg 64 :=
.seq AllocBody632_176 AllocBody632_397

def AllocBody632_399 : StackLang.HolProg 64 :=
.seq AllocBody632_175 AllocBody632_398

def AllocBody632_400 : StackLang.HolProg 64 :=
.seq AllocBody632_174 AllocBody632_399

def AllocBody632_401 : StackLang.HolProg 64 :=
.seq AllocBody632_173 AllocBody632_400

def AllocBody632_402 : StackLang.HolProg 64 :=
.seq AllocBody632_172 AllocBody632_401

def AllocBody632_403 : StackLang.HolProg 64 :=
.seq AllocBody632_171 AllocBody632_402

def AllocBody632_404 : StackLang.HolProg 64 :=
.seq AllocBody632_170 AllocBody632_403

def AllocBody632_405 : StackLang.HolProg 64 :=
.seq AllocBody632_125 AllocBody632_404

def AllocBody632_406 : StackLang.HolProg 64 :=
.seq AllocBody632_124 AllocBody632_405

def AllocBody632_407 : StackLang.HolProg 64 :=
.seq AllocBody632_123 AllocBody632_406

def AllocBody632_408 : StackLang.HolProg 64 :=
.seq AllocBody632_122 AllocBody632_407

def AllocBody632_409 : StackLang.HolProg 64 :=
.seq AllocBody632_121 AllocBody632_408

def AllocBody632_410 : StackLang.HolProg 64 :=
.seq AllocBody632_120 AllocBody632_409

def AllocBody632_411 : StackLang.HolProg 64 :=
.seq AllocBody632_119 AllocBody632_410

def AllocBody632_412 : StackLang.HolProg 64 :=
.seq AllocBody632_118 AllocBody632_411

def AllocBody632_413 : StackLang.HolProg 64 :=
.seq AllocBody632_117 AllocBody632_412

def AllocBody632_414 : StackLang.HolProg 64 :=
.seq AllocBody632_116 AllocBody632_413

def AllocBody632_415 : StackLang.HolProg 64 :=
.seq AllocBody632_73 AllocBody632_414

def AllocBody632_416 : StackLang.HolProg 64 :=
.seq AllocBody632_72 AllocBody632_415

def AllocBody632_417 : StackLang.HolProg 64 :=
.seq AllocBody632_71 AllocBody632_416

def AllocBody632_418 : StackLang.HolProg 64 :=
.seq AllocBody632_70 AllocBody632_417

def AllocBody632_419 : StackLang.HolProg 64 :=
.seq AllocBody632_69 AllocBody632_418

def AllocBody632_420 : StackLang.HolProg 64 :=
.seq AllocBody632_68 AllocBody632_419

def AllocBody632_421 : StackLang.HolProg 64 :=
.seq AllocBody632_67 AllocBody632_420

def AllocBody632_422 : StackLang.HolProg 64 :=
.seq AllocBody632_66 AllocBody632_421

def AllocBody632_423 : StackLang.HolProg 64 :=
.seq AllocBody632_65 AllocBody632_422

def AllocBody632_424 : StackLang.HolProg 64 :=
.seq AllocBody632_64 AllocBody632_423

def AllocBody632_425 : StackLang.HolProg 64 :=
.seq AllocBody632_21 AllocBody632_424

def AllocBody632_426 : StackLang.HolProg 64 :=
.seq AllocBody632_20 AllocBody632_425

def AllocBody632_427 : StackLang.HolProg 64 :=
.seq AllocBody632_19 AllocBody632_426

def AllocBody632_428 : StackLang.HolProg 64 :=
.seq AllocBody632_18 AllocBody632_427

def AllocBody632_429 : StackLang.HolProg 64 :=
.seq AllocBody632_17 AllocBody632_428

def AllocBody632_430 : StackLang.HolProg 64 :=
.seq AllocBody632_6 AllocBody632_429

def AllocBody632_431 : StackLang.HolProg 64 :=
.seq AllocBody632_5 AllocBody632_430

def AllocBody632_432 : StackLang.HolProg 64 :=
.seq AllocBody632_4 AllocBody632_431

def AllocBody632_433 : StackLang.HolProg 64 :=
.seq AllocBody632_3 AllocBody632_432

def AllocBody632_434 : StackLang.HolProg 64 :=
.seq AllocBody632_2 AllocBody632_433

def AllocBody632_435 : StackLang.HolProg 64 :=
.seq AllocBody632_1 AllocBody632_434

def AllocBody632_436 : StackLang.HolProg 64 :=
.seq AllocBody632_0 AllocBody632_435

def Alloc632 : Nat × StackLang.HolProg 64 := (632, AllocBody632_436)
theorem Alloc632_eq : StackAlloc.progComp (632, raw632) = Alloc632 := by
  kernel_rfl
#print axioms Alloc632_eq
end InitECandidate.Proofs.BackendStages
