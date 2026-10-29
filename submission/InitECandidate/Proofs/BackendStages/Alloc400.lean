import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw400
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody400_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody400_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody400_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody400_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody400_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody400_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551448#64))

def AllocBody400_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def AllocBody400_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody400_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody400_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody400_10 : StackLang.HolProg 64 :=
.seq AllocBody400_8 AllocBody400_9

def AllocBody400_11 : StackLang.HolProg 64 :=
.seq AllocBody400_7 AllocBody400_10

def AllocBody400_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody400_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1185#64)

def AllocBody400_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody400_15 : StackLang.HolProg 64 :=
.seq AllocBody400_13 AllocBody400_14

def AllocBody400_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody400_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody400_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody400_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 400 3

def AllocBody400_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody400_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody400_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody400_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody400_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody400_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody400_26 : StackLang.HolProg 64 :=
.seq AllocBody400_24 AllocBody400_25

def AllocBody400_27 : StackLang.HolProg 64 :=
.seq AllocBody400_23 AllocBody400_26

def AllocBody400_28 : StackLang.HolProg 64 :=
.seq AllocBody400_22 AllocBody400_27

def AllocBody400_29 : StackLang.HolProg 64 :=
.seq AllocBody400_21 AllocBody400_28

def AllocBody400_30 : StackLang.HolProg 64 :=
.seq AllocBody400_20 AllocBody400_29

def AllocBody400_31 : StackLang.HolProg 64 :=
.seq AllocBody400_19 AllocBody400_30

def AllocBody400_32 : StackLang.HolProg 64 :=
.seq AllocBody400_18 AllocBody400_31

def AllocBody400_33 : StackLang.HolProg 64 :=
.seq AllocBody400_17 AllocBody400_32

def AllocBody400_34 : StackLang.HolProg 64 :=
.seq AllocBody400_16 AllocBody400_33

def AllocBody400_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody400_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody400_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody400_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody400_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody400_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody400_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody400_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody400_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody400_44 : StackLang.HolProg 64 :=
.seq AllocBody400_42 AllocBody400_43

def AllocBody400_45 : StackLang.HolProg 64 :=
.seq AllocBody400_41 AllocBody400_44

def AllocBody400_46 : StackLang.HolProg 64 :=
.seq AllocBody400_40 AllocBody400_45

def AllocBody400_47 : StackLang.HolProg 64 :=
.seq AllocBody400_39 AllocBody400_46

def AllocBody400_48 : StackLang.HolProg 64 :=
.seq AllocBody400_38 AllocBody400_47

def AllocBody400_49 : StackLang.HolProg 64 :=
.seq AllocBody400_37 AllocBody400_48

def AllocBody400_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody400_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody400_52 : StackLang.HolProg 64 :=
.seq AllocBody400_50 AllocBody400_51

def AllocBody400_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody400_54 : StackLang.HolProg 64 :=
.seq AllocBody400_52 AllocBody400_53

def AllocBody400_55 : StackLang.HolProg 64 :=
.call (some (AllocBody400_49, 0, 400, 2)) (Sum.inl 186) (some (AllocBody400_54, 400, 3))

def AllocBody400_56 : StackLang.HolProg 64 :=
.seq AllocBody400_36 AllocBody400_55

def AllocBody400_57 : StackLang.HolProg 64 :=
.seq AllocBody400_35 AllocBody400_56

def AllocBody400_58 : StackLang.HolProg 64 :=
.seq AllocBody400_34 AllocBody400_57

def AllocBody400_59 : StackLang.HolProg 64 :=
.seq AllocBody400_15 AllocBody400_58

def AllocBody400_60 : StackLang.HolProg 64 :=
.seq AllocBody400_12 AllocBody400_59

def AllocBody400_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody400_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody400_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody400_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody400_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody400_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody400_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody400_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody400_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody400_70 : StackLang.HolProg 64 :=
.seq AllocBody400_68 AllocBody400_69

def AllocBody400_71 : StackLang.HolProg 64 :=
.seq AllocBody400_67 AllocBody400_70

def AllocBody400_72 : StackLang.HolProg 64 :=
.seq AllocBody400_66 AllocBody400_71

def AllocBody400_73 : StackLang.HolProg 64 :=
.seq AllocBody400_65 AllocBody400_72

def AllocBody400_74 : StackLang.HolProg 64 :=
.seq AllocBody400_64 AllocBody400_73

def AllocBody400_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody400_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody400_74 AllocBody400_75

def AllocBody400_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody400_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody400_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody400_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody400_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody400_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551448#64))

def AllocBody400_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody400_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody400_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody400_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody400_87 : StackLang.HolProg 64 :=
.seq AllocBody400_85 AllocBody400_86

def AllocBody400_88 : StackLang.HolProg 64 :=
.seq AllocBody400_84 AllocBody400_87

def AllocBody400_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody400_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1186#64)

def AllocBody400_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody400_92 : StackLang.HolProg 64 :=
.seq AllocBody400_90 AllocBody400_91

def AllocBody400_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody400_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody400_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody400_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 400 5

def AllocBody400_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody400_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody400_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody400_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody400_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody400_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody400_103 : StackLang.HolProg 64 :=
.seq AllocBody400_101 AllocBody400_102

def AllocBody400_104 : StackLang.HolProg 64 :=
.seq AllocBody400_100 AllocBody400_103

def AllocBody400_105 : StackLang.HolProg 64 :=
.seq AllocBody400_99 AllocBody400_104

def AllocBody400_106 : StackLang.HolProg 64 :=
.seq AllocBody400_98 AllocBody400_105

def AllocBody400_107 : StackLang.HolProg 64 :=
.seq AllocBody400_97 AllocBody400_106

def AllocBody400_108 : StackLang.HolProg 64 :=
.seq AllocBody400_96 AllocBody400_107

def AllocBody400_109 : StackLang.HolProg 64 :=
.seq AllocBody400_95 AllocBody400_108

def AllocBody400_110 : StackLang.HolProg 64 :=
.seq AllocBody400_94 AllocBody400_109

def AllocBody400_111 : StackLang.HolProg 64 :=
.seq AllocBody400_93 AllocBody400_110

def AllocBody400_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody400_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody400_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody400_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody400_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody400_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody400_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody400_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody400_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody400_121 : StackLang.HolProg 64 :=
.seq AllocBody400_119 AllocBody400_120

def AllocBody400_122 : StackLang.HolProg 64 :=
.seq AllocBody400_118 AllocBody400_121

def AllocBody400_123 : StackLang.HolProg 64 :=
.seq AllocBody400_117 AllocBody400_122

def AllocBody400_124 : StackLang.HolProg 64 :=
.seq AllocBody400_116 AllocBody400_123

def AllocBody400_125 : StackLang.HolProg 64 :=
.seq AllocBody400_115 AllocBody400_124

def AllocBody400_126 : StackLang.HolProg 64 :=
.seq AllocBody400_114 AllocBody400_125

def AllocBody400_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody400_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody400_129 : StackLang.HolProg 64 :=
.seq AllocBody400_127 AllocBody400_128

def AllocBody400_130 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody400_131 : StackLang.HolProg 64 :=
.seq AllocBody400_129 AllocBody400_130

def AllocBody400_132 : StackLang.HolProg 64 :=
.call (some (AllocBody400_126, 0, 400, 4)) (Sum.inl 305) (some (AllocBody400_131, 400, 5))

def AllocBody400_133 : StackLang.HolProg 64 :=
.seq AllocBody400_113 AllocBody400_132

def AllocBody400_134 : StackLang.HolProg 64 :=
.seq AllocBody400_112 AllocBody400_133

def AllocBody400_135 : StackLang.HolProg 64 :=
.seq AllocBody400_111 AllocBody400_134

def AllocBody400_136 : StackLang.HolProg 64 :=
.seq AllocBody400_92 AllocBody400_135

def AllocBody400_137 : StackLang.HolProg 64 :=
.seq AllocBody400_89 AllocBody400_136

def AllocBody400_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody400_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody400_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody400_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody400_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody400_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1187#64)

def AllocBody400_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody400_145 : StackLang.HolProg 64 :=
.seq AllocBody400_143 AllocBody400_144

def AllocBody400_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody400_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody400_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody400_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 400 7

def AllocBody400_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody400_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody400_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody400_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody400_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody400_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody400_156 : StackLang.HolProg 64 :=
.seq AllocBody400_154 AllocBody400_155

def AllocBody400_157 : StackLang.HolProg 64 :=
.seq AllocBody400_153 AllocBody400_156

def AllocBody400_158 : StackLang.HolProg 64 :=
.seq AllocBody400_152 AllocBody400_157

def AllocBody400_159 : StackLang.HolProg 64 :=
.seq AllocBody400_151 AllocBody400_158

def AllocBody400_160 : StackLang.HolProg 64 :=
.seq AllocBody400_150 AllocBody400_159

def AllocBody400_161 : StackLang.HolProg 64 :=
.seq AllocBody400_149 AllocBody400_160

def AllocBody400_162 : StackLang.HolProg 64 :=
.seq AllocBody400_148 AllocBody400_161

def AllocBody400_163 : StackLang.HolProg 64 :=
.seq AllocBody400_147 AllocBody400_162

def AllocBody400_164 : StackLang.HolProg 64 :=
.seq AllocBody400_146 AllocBody400_163

def AllocBody400_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody400_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody400_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody400_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody400_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody400_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody400_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody400_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody400_173 : StackLang.HolProg 64 :=
.seq AllocBody400_171 AllocBody400_172

def AllocBody400_174 : StackLang.HolProg 64 :=
.seq AllocBody400_170 AllocBody400_173

def AllocBody400_175 : StackLang.HolProg 64 :=
.seq AllocBody400_169 AllocBody400_174

def AllocBody400_176 : StackLang.HolProg 64 :=
.seq AllocBody400_168 AllocBody400_175

def AllocBody400_177 : StackLang.HolProg 64 :=
.seq AllocBody400_167 AllocBody400_176

def AllocBody400_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody400_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody400_180 : StackLang.HolProg 64 :=
.seq AllocBody400_178 AllocBody400_179

def AllocBody400_181 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody400_182 : StackLang.HolProg 64 :=
.seq AllocBody400_180 AllocBody400_181

def AllocBody400_183 : StackLang.HolProg 64 :=
.call (some (AllocBody400_177, 0, 400, 6)) (Sum.inl 192) (some (AllocBody400_182, 400, 7))

def AllocBody400_184 : StackLang.HolProg 64 :=
.seq AllocBody400_166 AllocBody400_183

def AllocBody400_185 : StackLang.HolProg 64 :=
.seq AllocBody400_165 AllocBody400_184

def AllocBody400_186 : StackLang.HolProg 64 :=
.seq AllocBody400_164 AllocBody400_185

def AllocBody400_187 : StackLang.HolProg 64 :=
.seq AllocBody400_145 AllocBody400_186

def AllocBody400_188 : StackLang.HolProg 64 :=
.seq AllocBody400_142 AllocBody400_187

def AllocBody400_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody400_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody400_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody400_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody400_193 : StackLang.HolProg 64 :=
.seq AllocBody400_191 AllocBody400_192

def AllocBody400_194 : StackLang.HolProg 64 :=
.seq AllocBody400_190 AllocBody400_193

def AllocBody400_195 : StackLang.HolProg 64 :=
.seq AllocBody400_189 AllocBody400_194

def AllocBody400_196 : StackLang.HolProg 64 :=
.seq AllocBody400_188 AllocBody400_195

def AllocBody400_197 : StackLang.HolProg 64 :=
.seq AllocBody400_141 AllocBody400_196

def AllocBody400_198 : StackLang.HolProg 64 :=
.seq AllocBody400_140 AllocBody400_197

def AllocBody400_199 : StackLang.HolProg 64 :=
.seq AllocBody400_139 AllocBody400_198

def AllocBody400_200 : StackLang.HolProg 64 :=
.seq AllocBody400_138 AllocBody400_199

def AllocBody400_201 : StackLang.HolProg 64 :=
.seq AllocBody400_137 AllocBody400_200

def AllocBody400_202 : StackLang.HolProg 64 :=
.seq AllocBody400_88 AllocBody400_201

def AllocBody400_203 : StackLang.HolProg 64 :=
.seq AllocBody400_83 AllocBody400_202

def AllocBody400_204 : StackLang.HolProg 64 :=
.seq AllocBody400_82 AllocBody400_203

def AllocBody400_205 : StackLang.HolProg 64 :=
.seq AllocBody400_81 AllocBody400_204

def AllocBody400_206 : StackLang.HolProg 64 :=
.seq AllocBody400_80 AllocBody400_205

def AllocBody400_207 : StackLang.HolProg 64 :=
.seq AllocBody400_79 AllocBody400_206

def AllocBody400_208 : StackLang.HolProg 64 :=
.seq AllocBody400_78 AllocBody400_207

def AllocBody400_209 : StackLang.HolProg 64 :=
.seq AllocBody400_77 AllocBody400_208

def AllocBody400_210 : StackLang.HolProg 64 :=
.seq AllocBody400_76 AllocBody400_209

def AllocBody400_211 : StackLang.HolProg 64 :=
.seq AllocBody400_63 AllocBody400_210

def AllocBody400_212 : StackLang.HolProg 64 :=
.seq AllocBody400_62 AllocBody400_211

def AllocBody400_213 : StackLang.HolProg 64 :=
.seq AllocBody400_61 AllocBody400_212

def AllocBody400_214 : StackLang.HolProg 64 :=
.seq AllocBody400_60 AllocBody400_213

def AllocBody400_215 : StackLang.HolProg 64 :=
.seq AllocBody400_11 AllocBody400_214

def AllocBody400_216 : StackLang.HolProg 64 :=
.seq AllocBody400_6 AllocBody400_215

def AllocBody400_217 : StackLang.HolProg 64 :=
.seq AllocBody400_5 AllocBody400_216

def AllocBody400_218 : StackLang.HolProg 64 :=
.seq AllocBody400_4 AllocBody400_217

def AllocBody400_219 : StackLang.HolProg 64 :=
.seq AllocBody400_3 AllocBody400_218

def AllocBody400_220 : StackLang.HolProg 64 :=
.seq AllocBody400_2 AllocBody400_219

def AllocBody400_221 : StackLang.HolProg 64 :=
.seq AllocBody400_1 AllocBody400_220

def AllocBody400_222 : StackLang.HolProg 64 :=
.seq AllocBody400_0 AllocBody400_221

def Alloc400 : Nat × StackLang.HolProg 64 := (400, AllocBody400_222)
theorem Alloc400_eq : StackAlloc.progComp (400, raw400) = Alloc400 := by
  kernel_rfl
#print axioms Alloc400_eq
end InitECandidate.Proofs.BackendStages
