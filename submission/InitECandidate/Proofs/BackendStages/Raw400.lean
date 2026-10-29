import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function400
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody400_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody400_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody400_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody400_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody400_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody400_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551448#64))

def rawBody400_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def rawBody400_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody400_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody400_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody400_10 : StackLang.HolProg 64 :=
.seq rawBody400_8 rawBody400_9

def rawBody400_11 : StackLang.HolProg 64 :=
.seq rawBody400_7 rawBody400_10

def rawBody400_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody400_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1185#64)

def rawBody400_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody400_15 : StackLang.HolProg 64 :=
.seq rawBody400_13 rawBody400_14

def rawBody400_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody400_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody400_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody400_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 400 3

def rawBody400_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody400_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody400_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody400_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody400_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody400_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody400_26 : StackLang.HolProg 64 :=
.seq rawBody400_24 rawBody400_25

def rawBody400_27 : StackLang.HolProg 64 :=
.seq rawBody400_23 rawBody400_26

def rawBody400_28 : StackLang.HolProg 64 :=
.seq rawBody400_22 rawBody400_27

def rawBody400_29 : StackLang.HolProg 64 :=
.seq rawBody400_21 rawBody400_28

def rawBody400_30 : StackLang.HolProg 64 :=
.seq rawBody400_20 rawBody400_29

def rawBody400_31 : StackLang.HolProg 64 :=
.seq rawBody400_19 rawBody400_30

def rawBody400_32 : StackLang.HolProg 64 :=
.seq rawBody400_18 rawBody400_31

def rawBody400_33 : StackLang.HolProg 64 :=
.seq rawBody400_17 rawBody400_32

def rawBody400_34 : StackLang.HolProg 64 :=
.seq rawBody400_16 rawBody400_33

def rawBody400_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody400_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody400_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody400_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody400_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody400_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody400_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody400_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody400_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody400_44 : StackLang.HolProg 64 :=
.seq rawBody400_42 rawBody400_43

def rawBody400_45 : StackLang.HolProg 64 :=
.seq rawBody400_41 rawBody400_44

def rawBody400_46 : StackLang.HolProg 64 :=
.seq rawBody400_40 rawBody400_45

def rawBody400_47 : StackLang.HolProg 64 :=
.seq rawBody400_39 rawBody400_46

def rawBody400_48 : StackLang.HolProg 64 :=
.seq rawBody400_38 rawBody400_47

def rawBody400_49 : StackLang.HolProg 64 :=
.seq rawBody400_37 rawBody400_48

def rawBody400_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody400_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody400_52 : StackLang.HolProg 64 :=
.seq rawBody400_50 rawBody400_51

def rawBody400_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody400_54 : StackLang.HolProg 64 :=
.seq rawBody400_52 rawBody400_53

def rawBody400_55 : StackLang.HolProg 64 :=
.call (some (rawBody400_49, 0, 400, 2)) (Sum.inl 186) (some (rawBody400_54, 400, 3))

def rawBody400_56 : StackLang.HolProg 64 :=
.seq rawBody400_36 rawBody400_55

def rawBody400_57 : StackLang.HolProg 64 :=
.seq rawBody400_35 rawBody400_56

def rawBody400_58 : StackLang.HolProg 64 :=
.seq rawBody400_34 rawBody400_57

def rawBody400_59 : StackLang.HolProg 64 :=
.seq rawBody400_15 rawBody400_58

def rawBody400_60 : StackLang.HolProg 64 :=
.seq rawBody400_12 rawBody400_59

def rawBody400_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody400_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody400_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody400_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody400_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody400_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody400_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody400_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody400_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody400_70 : StackLang.HolProg 64 :=
.seq rawBody400_68 rawBody400_69

def rawBody400_71 : StackLang.HolProg 64 :=
.seq rawBody400_67 rawBody400_70

def rawBody400_72 : StackLang.HolProg 64 :=
.seq rawBody400_66 rawBody400_71

def rawBody400_73 : StackLang.HolProg 64 :=
.seq rawBody400_65 rawBody400_72

def rawBody400_74 : StackLang.HolProg 64 :=
.seq rawBody400_64 rawBody400_73

def rawBody400_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody400_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody400_74 rawBody400_75

def rawBody400_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody400_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody400_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody400_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody400_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody400_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551448#64))

def rawBody400_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody400_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody400_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody400_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody400_87 : StackLang.HolProg 64 :=
.seq rawBody400_85 rawBody400_86

def rawBody400_88 : StackLang.HolProg 64 :=
.seq rawBody400_84 rawBody400_87

def rawBody400_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody400_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1186#64)

def rawBody400_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody400_92 : StackLang.HolProg 64 :=
.seq rawBody400_90 rawBody400_91

def rawBody400_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody400_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody400_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody400_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 400 5

def rawBody400_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody400_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody400_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody400_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody400_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody400_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody400_103 : StackLang.HolProg 64 :=
.seq rawBody400_101 rawBody400_102

def rawBody400_104 : StackLang.HolProg 64 :=
.seq rawBody400_100 rawBody400_103

def rawBody400_105 : StackLang.HolProg 64 :=
.seq rawBody400_99 rawBody400_104

def rawBody400_106 : StackLang.HolProg 64 :=
.seq rawBody400_98 rawBody400_105

def rawBody400_107 : StackLang.HolProg 64 :=
.seq rawBody400_97 rawBody400_106

def rawBody400_108 : StackLang.HolProg 64 :=
.seq rawBody400_96 rawBody400_107

def rawBody400_109 : StackLang.HolProg 64 :=
.seq rawBody400_95 rawBody400_108

def rawBody400_110 : StackLang.HolProg 64 :=
.seq rawBody400_94 rawBody400_109

def rawBody400_111 : StackLang.HolProg 64 :=
.seq rawBody400_93 rawBody400_110

def rawBody400_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody400_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody400_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody400_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody400_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody400_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody400_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody400_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody400_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody400_121 : StackLang.HolProg 64 :=
.seq rawBody400_119 rawBody400_120

def rawBody400_122 : StackLang.HolProg 64 :=
.seq rawBody400_118 rawBody400_121

def rawBody400_123 : StackLang.HolProg 64 :=
.seq rawBody400_117 rawBody400_122

def rawBody400_124 : StackLang.HolProg 64 :=
.seq rawBody400_116 rawBody400_123

def rawBody400_125 : StackLang.HolProg 64 :=
.seq rawBody400_115 rawBody400_124

def rawBody400_126 : StackLang.HolProg 64 :=
.seq rawBody400_114 rawBody400_125

def rawBody400_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody400_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody400_129 : StackLang.HolProg 64 :=
.seq rawBody400_127 rawBody400_128

def rawBody400_130 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody400_131 : StackLang.HolProg 64 :=
.seq rawBody400_129 rawBody400_130

def rawBody400_132 : StackLang.HolProg 64 :=
.call (some (rawBody400_126, 0, 400, 4)) (Sum.inl 305) (some (rawBody400_131, 400, 5))

def rawBody400_133 : StackLang.HolProg 64 :=
.seq rawBody400_113 rawBody400_132

def rawBody400_134 : StackLang.HolProg 64 :=
.seq rawBody400_112 rawBody400_133

def rawBody400_135 : StackLang.HolProg 64 :=
.seq rawBody400_111 rawBody400_134

def rawBody400_136 : StackLang.HolProg 64 :=
.seq rawBody400_92 rawBody400_135

def rawBody400_137 : StackLang.HolProg 64 :=
.seq rawBody400_89 rawBody400_136

def rawBody400_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody400_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody400_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody400_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody400_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody400_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1187#64)

def rawBody400_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody400_145 : StackLang.HolProg 64 :=
.seq rawBody400_143 rawBody400_144

def rawBody400_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody400_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody400_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody400_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 400 7

def rawBody400_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody400_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody400_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody400_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody400_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody400_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody400_156 : StackLang.HolProg 64 :=
.seq rawBody400_154 rawBody400_155

def rawBody400_157 : StackLang.HolProg 64 :=
.seq rawBody400_153 rawBody400_156

def rawBody400_158 : StackLang.HolProg 64 :=
.seq rawBody400_152 rawBody400_157

def rawBody400_159 : StackLang.HolProg 64 :=
.seq rawBody400_151 rawBody400_158

def rawBody400_160 : StackLang.HolProg 64 :=
.seq rawBody400_150 rawBody400_159

def rawBody400_161 : StackLang.HolProg 64 :=
.seq rawBody400_149 rawBody400_160

def rawBody400_162 : StackLang.HolProg 64 :=
.seq rawBody400_148 rawBody400_161

def rawBody400_163 : StackLang.HolProg 64 :=
.seq rawBody400_147 rawBody400_162

def rawBody400_164 : StackLang.HolProg 64 :=
.seq rawBody400_146 rawBody400_163

def rawBody400_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody400_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody400_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody400_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody400_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody400_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody400_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody400_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody400_173 : StackLang.HolProg 64 :=
.seq rawBody400_171 rawBody400_172

def rawBody400_174 : StackLang.HolProg 64 :=
.seq rawBody400_170 rawBody400_173

def rawBody400_175 : StackLang.HolProg 64 :=
.seq rawBody400_169 rawBody400_174

def rawBody400_176 : StackLang.HolProg 64 :=
.seq rawBody400_168 rawBody400_175

def rawBody400_177 : StackLang.HolProg 64 :=
.seq rawBody400_167 rawBody400_176

def rawBody400_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody400_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody400_180 : StackLang.HolProg 64 :=
.seq rawBody400_178 rawBody400_179

def rawBody400_181 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody400_182 : StackLang.HolProg 64 :=
.seq rawBody400_180 rawBody400_181

def rawBody400_183 : StackLang.HolProg 64 :=
.call (some (rawBody400_177, 0, 400, 6)) (Sum.inl 192) (some (rawBody400_182, 400, 7))

def rawBody400_184 : StackLang.HolProg 64 :=
.seq rawBody400_166 rawBody400_183

def rawBody400_185 : StackLang.HolProg 64 :=
.seq rawBody400_165 rawBody400_184

def rawBody400_186 : StackLang.HolProg 64 :=
.seq rawBody400_164 rawBody400_185

def rawBody400_187 : StackLang.HolProg 64 :=
.seq rawBody400_145 rawBody400_186

def rawBody400_188 : StackLang.HolProg 64 :=
.seq rawBody400_142 rawBody400_187

def rawBody400_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody400_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody400_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody400_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody400_193 : StackLang.HolProg 64 :=
.seq rawBody400_191 rawBody400_192

def rawBody400_194 : StackLang.HolProg 64 :=
.seq rawBody400_190 rawBody400_193

def rawBody400_195 : StackLang.HolProg 64 :=
.seq rawBody400_189 rawBody400_194

def rawBody400_196 : StackLang.HolProg 64 :=
.seq rawBody400_188 rawBody400_195

def rawBody400_197 : StackLang.HolProg 64 :=
.seq rawBody400_141 rawBody400_196

def rawBody400_198 : StackLang.HolProg 64 :=
.seq rawBody400_140 rawBody400_197

def rawBody400_199 : StackLang.HolProg 64 :=
.seq rawBody400_139 rawBody400_198

def rawBody400_200 : StackLang.HolProg 64 :=
.seq rawBody400_138 rawBody400_199

def rawBody400_201 : StackLang.HolProg 64 :=
.seq rawBody400_137 rawBody400_200

def rawBody400_202 : StackLang.HolProg 64 :=
.seq rawBody400_88 rawBody400_201

def rawBody400_203 : StackLang.HolProg 64 :=
.seq rawBody400_83 rawBody400_202

def rawBody400_204 : StackLang.HolProg 64 :=
.seq rawBody400_82 rawBody400_203

def rawBody400_205 : StackLang.HolProg 64 :=
.seq rawBody400_81 rawBody400_204

def rawBody400_206 : StackLang.HolProg 64 :=
.seq rawBody400_80 rawBody400_205

def rawBody400_207 : StackLang.HolProg 64 :=
.seq rawBody400_79 rawBody400_206

def rawBody400_208 : StackLang.HolProg 64 :=
.seq rawBody400_78 rawBody400_207

def rawBody400_209 : StackLang.HolProg 64 :=
.seq rawBody400_77 rawBody400_208

def rawBody400_210 : StackLang.HolProg 64 :=
.seq rawBody400_76 rawBody400_209

def rawBody400_211 : StackLang.HolProg 64 :=
.seq rawBody400_63 rawBody400_210

def rawBody400_212 : StackLang.HolProg 64 :=
.seq rawBody400_62 rawBody400_211

def rawBody400_213 : StackLang.HolProg 64 :=
.seq rawBody400_61 rawBody400_212

def rawBody400_214 : StackLang.HolProg 64 :=
.seq rawBody400_60 rawBody400_213

def rawBody400_215 : StackLang.HolProg 64 :=
.seq rawBody400_11 rawBody400_214

def rawBody400_216 : StackLang.HolProg 64 :=
.seq rawBody400_6 rawBody400_215

def rawBody400_217 : StackLang.HolProg 64 :=
.seq rawBody400_5 rawBody400_216

def rawBody400_218 : StackLang.HolProg 64 :=
.seq rawBody400_4 rawBody400_217

def rawBody400_219 : StackLang.HolProg 64 :=
.seq rawBody400_3 rawBody400_218

def rawBody400_220 : StackLang.HolProg 64 :=
.seq rawBody400_2 rawBody400_219

def rawBody400_221 : StackLang.HolProg 64 :=
.seq rawBody400_1 rawBody400_220

def rawBody400_222 : StackLang.HolProg 64 :=
.seq rawBody400_0 rawBody400_221

def raw400 : StackLang.HolProg 64 := rawBody400_222
theorem raw400_eq : StackRawCall.compTop RawInfo.rawInfo (function400 (.list [])).1 = raw400 := by
  kernel_rfl
#print axioms raw400_eq
end InitECandidate.Proofs.BackendStages
