import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function437
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody437_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def rawBody437_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody437_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody437_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody437_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 16#64))

def rawBody437_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody437_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody437_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def rawBody437_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody437_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody437_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody437_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def rawBody437_12 : StackLang.HolProg 64 :=
.seq rawBody437_10 rawBody437_11

def rawBody437_13 : StackLang.HolProg 64 :=
.seq rawBody437_9 rawBody437_12

def rawBody437_14 : StackLang.HolProg 64 :=
.seq rawBody437_8 rawBody437_13

def rawBody437_15 : StackLang.HolProg 64 :=
.seq rawBody437_7 rawBody437_14

def rawBody437_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody437_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody437_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody437_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 6

def rawBody437_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def rawBody437_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody437_22 : StackLang.HolProg 64 :=
.seq rawBody437_20 rawBody437_21

def rawBody437_23 : StackLang.HolProg 64 :=
.seq rawBody437_19 rawBody437_22

def rawBody437_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody437_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1317#64)

def rawBody437_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody437_27 : StackLang.HolProg 64 :=
.seq rawBody437_25 rawBody437_26

def rawBody437_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody437_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody437_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody437_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 437 3

def rawBody437_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody437_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody437_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody437_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody437_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody437_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody437_38 : StackLang.HolProg 64 :=
.seq rawBody437_36 rawBody437_37

def rawBody437_39 : StackLang.HolProg 64 :=
.seq rawBody437_35 rawBody437_38

def rawBody437_40 : StackLang.HolProg 64 :=
.seq rawBody437_34 rawBody437_39

def rawBody437_41 : StackLang.HolProg 64 :=
.seq rawBody437_33 rawBody437_40

def rawBody437_42 : StackLang.HolProg 64 :=
.seq rawBody437_32 rawBody437_41

def rawBody437_43 : StackLang.HolProg 64 :=
.seq rawBody437_31 rawBody437_42

def rawBody437_44 : StackLang.HolProg 64 :=
.seq rawBody437_30 rawBody437_43

def rawBody437_45 : StackLang.HolProg 64 :=
.seq rawBody437_29 rawBody437_44

def rawBody437_46 : StackLang.HolProg 64 :=
.seq rawBody437_28 rawBody437_45

def rawBody437_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody437_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody437_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody437_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody437_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody437_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody437_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody437_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody437_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody437_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody437_57 : StackLang.HolProg 64 :=
.seq rawBody437_55 rawBody437_56

def rawBody437_58 : StackLang.HolProg 64 :=
.seq rawBody437_54 rawBody437_57

def rawBody437_59 : StackLang.HolProg 64 :=
.seq rawBody437_53 rawBody437_58

def rawBody437_60 : StackLang.HolProg 64 :=
.seq rawBody437_52 rawBody437_59

def rawBody437_61 : StackLang.HolProg 64 :=
.seq rawBody437_51 rawBody437_60

def rawBody437_62 : StackLang.HolProg 64 :=
.seq rawBody437_50 rawBody437_61

def rawBody437_63 : StackLang.HolProg 64 :=
.seq rawBody437_49 rawBody437_62

def rawBody437_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody437_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody437_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody437_67 : StackLang.HolProg 64 :=
.seq rawBody437_65 rawBody437_66

def rawBody437_68 : StackLang.HolProg 64 :=
.seq rawBody437_64 rawBody437_67

def rawBody437_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody437_70 : StackLang.HolProg 64 :=
.seq rawBody437_68 rawBody437_69

def rawBody437_71 : StackLang.HolProg 64 :=
.call (some (rawBody437_63, 0, 437, 2)) (Sum.inl 68) (some (rawBody437_70, 437, 3))

def rawBody437_72 : StackLang.HolProg 64 :=
.seq rawBody437_48 rawBody437_71

def rawBody437_73 : StackLang.HolProg 64 :=
.seq rawBody437_47 rawBody437_72

def rawBody437_74 : StackLang.HolProg 64 :=
.seq rawBody437_46 rawBody437_73

def rawBody437_75 : StackLang.HolProg 64 :=
.seq rawBody437_27 rawBody437_74

def rawBody437_76 : StackLang.HolProg 64 :=
.seq rawBody437_24 rawBody437_75

def rawBody437_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody437_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody437_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody437_80 : StackLang.HolProg 64 :=
.seq rawBody437_78 rawBody437_79

def rawBody437_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody437_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody437_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def rawBody437_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody437_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def rawBody437_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def rawBody437_87 : StackLang.HolProg 64 :=
.seq rawBody437_85 rawBody437_86

def rawBody437_88 : StackLang.HolProg 64 :=
.seq rawBody437_84 rawBody437_87

def rawBody437_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody437_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1318#64)

def rawBody437_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody437_92 : StackLang.HolProg 64 :=
.seq rawBody437_90 rawBody437_91

def rawBody437_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody437_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody437_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody437_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 437 5

def rawBody437_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody437_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody437_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody437_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody437_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody437_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody437_103 : StackLang.HolProg 64 :=
.seq rawBody437_101 rawBody437_102

def rawBody437_104 : StackLang.HolProg 64 :=
.seq rawBody437_100 rawBody437_103

def rawBody437_105 : StackLang.HolProg 64 :=
.seq rawBody437_99 rawBody437_104

def rawBody437_106 : StackLang.HolProg 64 :=
.seq rawBody437_98 rawBody437_105

def rawBody437_107 : StackLang.HolProg 64 :=
.seq rawBody437_97 rawBody437_106

def rawBody437_108 : StackLang.HolProg 64 :=
.seq rawBody437_96 rawBody437_107

def rawBody437_109 : StackLang.HolProg 64 :=
.seq rawBody437_95 rawBody437_108

def rawBody437_110 : StackLang.HolProg 64 :=
.seq rawBody437_94 rawBody437_109

def rawBody437_111 : StackLang.HolProg 64 :=
.seq rawBody437_93 rawBody437_110

def rawBody437_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody437_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody437_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody437_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody437_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody437_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody437_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def rawBody437_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody437_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody437_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody437_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody437_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody437_124 : StackLang.HolProg 64 :=
.seq rawBody437_122 rawBody437_123

def rawBody437_125 : StackLang.HolProg 64 :=
.seq rawBody437_121 rawBody437_124

def rawBody437_126 : StackLang.HolProg 64 :=
.seq rawBody437_120 rawBody437_125

def rawBody437_127 : StackLang.HolProg 64 :=
.seq rawBody437_119 rawBody437_126

def rawBody437_128 : StackLang.HolProg 64 :=
.seq rawBody437_118 rawBody437_127

def rawBody437_129 : StackLang.HolProg 64 :=
.seq rawBody437_117 rawBody437_128

def rawBody437_130 : StackLang.HolProg 64 :=
.seq rawBody437_116 rawBody437_129

def rawBody437_131 : StackLang.HolProg 64 :=
.seq rawBody437_115 rawBody437_130

def rawBody437_132 : StackLang.HolProg 64 :=
.seq rawBody437_114 rawBody437_131

def rawBody437_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def rawBody437_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody437_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody437_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody437_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody437_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody437_139 : StackLang.HolProg 64 :=
.seq rawBody437_137 rawBody437_138

def rawBody437_140 : StackLang.HolProg 64 :=
.seq rawBody437_136 rawBody437_139

def rawBody437_141 : StackLang.HolProg 64 :=
.seq rawBody437_135 rawBody437_140

def rawBody437_142 : StackLang.HolProg 64 :=
.seq rawBody437_134 rawBody437_141

def rawBody437_143 : StackLang.HolProg 64 :=
.seq rawBody437_133 rawBody437_142

def rawBody437_144 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody437_145 : StackLang.HolProg 64 :=
.seq rawBody437_143 rawBody437_144

def rawBody437_146 : StackLang.HolProg 64 :=
.call (some (rawBody437_132, 0, 437, 4)) (Sum.inl 77) (some (rawBody437_145, 437, 5))

def rawBody437_147 : StackLang.HolProg 64 :=
.seq rawBody437_113 rawBody437_146

def rawBody437_148 : StackLang.HolProg 64 :=
.seq rawBody437_112 rawBody437_147

def rawBody437_149 : StackLang.HolProg 64 :=
.seq rawBody437_111 rawBody437_148

def rawBody437_150 : StackLang.HolProg 64 :=
.seq rawBody437_92 rawBody437_149

def rawBody437_151 : StackLang.HolProg 64 :=
.seq rawBody437_89 rawBody437_150

def rawBody437_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody437_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody437_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody437_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody437_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody437_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody437_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody437_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody437_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody437_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody437_162 : StackLang.HolProg 64 :=
.seq rawBody437_160 rawBody437_161

def rawBody437_163 : StackLang.HolProg 64 :=
.seq rawBody437_159 rawBody437_162

def rawBody437_164 : StackLang.HolProg 64 :=
.seq rawBody437_158 rawBody437_163

def rawBody437_165 : StackLang.HolProg 64 :=
.seq rawBody437_157 rawBody437_164

def rawBody437_166 : StackLang.HolProg 64 :=
.seq rawBody437_156 rawBody437_165

def rawBody437_167 : StackLang.HolProg 64 :=
.seq rawBody437_155 rawBody437_166

def rawBody437_168 : StackLang.HolProg 64 :=
.seq rawBody437_154 rawBody437_167

def rawBody437_169 : StackLang.HolProg 64 :=
.seq rawBody437_153 rawBody437_168

def rawBody437_170 : StackLang.HolProg 64 :=
.seq rawBody437_152 rawBody437_169

def rawBody437_171 : StackLang.HolProg 64 :=
.seq rawBody437_151 rawBody437_170

def rawBody437_172 : StackLang.HolProg 64 :=
.seq rawBody437_88 rawBody437_171

def rawBody437_173 : StackLang.HolProg 64 :=
.seq rawBody437_83 rawBody437_172

def rawBody437_174 : StackLang.HolProg 64 :=
.seq rawBody437_82 rawBody437_173

def rawBody437_175 : StackLang.HolProg 64 :=
.seq rawBody437_81 rawBody437_174

def rawBody437_176 : StackLang.HolProg 64 :=
.seq rawBody437_80 rawBody437_175

def rawBody437_177 : StackLang.HolProg 64 :=
.seq rawBody437_77 rawBody437_176

def rawBody437_178 : StackLang.HolProg 64 :=
.seq rawBody437_76 rawBody437_177

def rawBody437_179 : StackLang.HolProg 64 :=
.seq rawBody437_23 rawBody437_178

def rawBody437_180 : StackLang.HolProg 64 :=
.seq rawBody437_18 rawBody437_179

def rawBody437_181 : StackLang.HolProg 64 :=
.seq rawBody437_17 rawBody437_180

def rawBody437_182 : StackLang.HolProg 64 :=
.seq rawBody437_16 rawBody437_181

def rawBody437_183 : StackLang.HolProg 64 :=
.seq rawBody437_15 rawBody437_182

def rawBody437_184 : StackLang.HolProg 64 :=
.seq rawBody437_6 rawBody437_183

def rawBody437_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody437_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody437_187 : StackLang.HolProg 64 :=
.seq rawBody437_185 rawBody437_186

def rawBody437_188 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody437_184 rawBody437_187

def rawBody437_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody437_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody437_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody437_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody437_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody437_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody437_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody437_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody437_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody437_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody437_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody437_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody437_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody437_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody437_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def rawBody437_204 : StackLang.HolProg 64 :=
.seq rawBody437_202 rawBody437_203

def rawBody437_205 : StackLang.HolProg 64 :=
.seq rawBody437_201 rawBody437_204

def rawBody437_206 : StackLang.HolProg 64 :=
.seq rawBody437_200 rawBody437_205

def rawBody437_207 : StackLang.HolProg 64 :=
.seq rawBody437_199 rawBody437_206

def rawBody437_208 : StackLang.HolProg 64 :=
.seq rawBody437_198 rawBody437_207

def rawBody437_209 : StackLang.HolProg 64 :=
.seq rawBody437_197 rawBody437_208

def rawBody437_210 : StackLang.HolProg 64 :=
.seq rawBody437_196 rawBody437_209

def rawBody437_211 : StackLang.HolProg 64 :=
.seq rawBody437_195 rawBody437_210

def rawBody437_212 : StackLang.HolProg 64 :=
.seq rawBody437_194 rawBody437_211

def rawBody437_213 : StackLang.HolProg 64 :=
.seq rawBody437_193 rawBody437_212

def rawBody437_214 : StackLang.HolProg 64 :=
.seq rawBody437_192 rawBody437_213

def rawBody437_215 : StackLang.HolProg 64 :=
.seq rawBody437_191 rawBody437_214

def rawBody437_216 : StackLang.HolProg 64 :=
.seq rawBody437_190 rawBody437_215

def rawBody437_217 : StackLang.HolProg 64 :=
.seq rawBody437_189 rawBody437_216

def rawBody437_218 : StackLang.HolProg 64 :=
.seq rawBody437_188 rawBody437_217

def rawBody437_219 : StackLang.HolProg 64 :=
.seq rawBody437_5 rawBody437_218

def rawBody437_220 : StackLang.HolProg 64 :=
.seq rawBody437_4 rawBody437_219

def rawBody437_221 : StackLang.HolProg 64 :=
.seq rawBody437_3 rawBody437_220

def rawBody437_222 : StackLang.HolProg 64 :=
.seq rawBody437_2 rawBody437_221

def rawBody437_223 : StackLang.HolProg 64 :=
.seq rawBody437_1 rawBody437_222

def rawBody437_224 : StackLang.HolProg 64 :=
.seq rawBody437_0 rawBody437_223

def raw437 : StackLang.HolProg 64 := rawBody437_224
theorem raw437_eq : StackRawCall.compTop RawInfo.rawInfo (function437 (.list [])).1 = raw437 := by
  kernel_rfl
#print axioms raw437_eq
end InitECandidate.Proofs.BackendStages
