import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function344
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody344_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def rawBody344_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def rawBody344_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def rawBody344_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def rawBody344_4 : StackLang.HolProg 64 :=
.seq rawBody344_2 rawBody344_3

def rawBody344_5 : StackLang.HolProg 64 :=
.seq rawBody344_1 rawBody344_4

def rawBody344_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 990#64)

def rawBody344_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody344_9 : StackLang.HolProg 64 :=
.seq rawBody344_7 rawBody344_8

def rawBody344_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody344_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody344_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody344_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 344 3

def rawBody344_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody344_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody344_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody344_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody344_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody344_20 : StackLang.HolProg 64 :=
.seq rawBody344_18 rawBody344_19

def rawBody344_21 : StackLang.HolProg 64 :=
.seq rawBody344_17 rawBody344_20

def rawBody344_22 : StackLang.HolProg 64 :=
.seq rawBody344_16 rawBody344_21

def rawBody344_23 : StackLang.HolProg 64 :=
.seq rawBody344_15 rawBody344_22

def rawBody344_24 : StackLang.HolProg 64 :=
.seq rawBody344_14 rawBody344_23

def rawBody344_25 : StackLang.HolProg 64 :=
.seq rawBody344_13 rawBody344_24

def rawBody344_26 : StackLang.HolProg 64 :=
.seq rawBody344_12 rawBody344_25

def rawBody344_27 : StackLang.HolProg 64 :=
.seq rawBody344_11 rawBody344_26

def rawBody344_28 : StackLang.HolProg 64 :=
.seq rawBody344_10 rawBody344_27

def rawBody344_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody344_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody344_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody344_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody344_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody344_36 : StackLang.HolProg 64 :=
.seq rawBody344_34 rawBody344_35

def rawBody344_37 : StackLang.HolProg 64 :=
.seq rawBody344_33 rawBody344_36

def rawBody344_38 : StackLang.HolProg 64 :=
.seq rawBody344_32 rawBody344_37

def rawBody344_39 : StackLang.HolProg 64 :=
.seq rawBody344_31 rawBody344_38

def rawBody344_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody344_42 : StackLang.HolProg 64 :=
.seq rawBody344_40 rawBody344_41

def rawBody344_43 : StackLang.HolProg 64 :=
.call (some (rawBody344_39, 0, 344, 2)) (Sum.inl 169) (some (rawBody344_42, 344, 3))

def rawBody344_44 : StackLang.HolProg 64 :=
.seq rawBody344_30 rawBody344_43

def rawBody344_45 : StackLang.HolProg 64 :=
.seq rawBody344_29 rawBody344_44

def rawBody344_46 : StackLang.HolProg 64 :=
.seq rawBody344_28 rawBody344_45

def rawBody344_47 : StackLang.HolProg 64 :=
.seq rawBody344_9 rawBody344_46

def rawBody344_48 : StackLang.HolProg 64 :=
.seq rawBody344_6 rawBody344_47

def rawBody344_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody344_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody344_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 120#64)

def rawBody344_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody344_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody344_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def rawBody344_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody344_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 8

def rawBody344_57 : StackLang.HolProg 64 :=
.seq rawBody344_55 rawBody344_56

def rawBody344_58 : StackLang.HolProg 64 :=
.seq rawBody344_54 rawBody344_57

def rawBody344_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 991#64)

def rawBody344_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody344_62 : StackLang.HolProg 64 :=
.seq rawBody344_60 rawBody344_61

def rawBody344_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody344_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody344_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody344_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 344 5

def rawBody344_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody344_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody344_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody344_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody344_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody344_73 : StackLang.HolProg 64 :=
.seq rawBody344_71 rawBody344_72

def rawBody344_74 : StackLang.HolProg 64 :=
.seq rawBody344_70 rawBody344_73

def rawBody344_75 : StackLang.HolProg 64 :=
.seq rawBody344_69 rawBody344_74

def rawBody344_76 : StackLang.HolProg 64 :=
.seq rawBody344_68 rawBody344_75

def rawBody344_77 : StackLang.HolProg 64 :=
.seq rawBody344_67 rawBody344_76

def rawBody344_78 : StackLang.HolProg 64 :=
.seq rawBody344_66 rawBody344_77

def rawBody344_79 : StackLang.HolProg 64 :=
.seq rawBody344_65 rawBody344_78

def rawBody344_80 : StackLang.HolProg 64 :=
.seq rawBody344_64 rawBody344_79

def rawBody344_81 : StackLang.HolProg 64 :=
.seq rawBody344_63 rawBody344_80

def rawBody344_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody344_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody344_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody344_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody344_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody344_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody344_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 5

def rawBody344_91 : StackLang.HolProg 64 :=
.seq rawBody344_89 rawBody344_90

def rawBody344_92 : StackLang.HolProg 64 :=
.seq rawBody344_88 rawBody344_91

def rawBody344_93 : StackLang.HolProg 64 :=
.seq rawBody344_87 rawBody344_92

def rawBody344_94 : StackLang.HolProg 64 :=
.seq rawBody344_86 rawBody344_93

def rawBody344_95 : StackLang.HolProg 64 :=
.seq rawBody344_85 rawBody344_94

def rawBody344_96 : StackLang.HolProg 64 :=
.seq rawBody344_84 rawBody344_95

def rawBody344_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody344_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 5

def rawBody344_99 : StackLang.HolProg 64 :=
.seq rawBody344_97 rawBody344_98

def rawBody344_100 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody344_101 : StackLang.HolProg 64 :=
.seq rawBody344_99 rawBody344_100

def rawBody344_102 : StackLang.HolProg 64 :=
.call (some (rawBody344_96, 0, 344, 4)) (Sum.inl 68) (some (rawBody344_101, 344, 5))

def rawBody344_103 : StackLang.HolProg 64 :=
.seq rawBody344_83 rawBody344_102

def rawBody344_104 : StackLang.HolProg 64 :=
.seq rawBody344_82 rawBody344_103

def rawBody344_105 : StackLang.HolProg 64 :=
.seq rawBody344_81 rawBody344_104

def rawBody344_106 : StackLang.HolProg 64 :=
.seq rawBody344_62 rawBody344_105

def rawBody344_107 : StackLang.HolProg 64 :=
.seq rawBody344_59 rawBody344_106

def rawBody344_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody344_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody344_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody344_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 8

def rawBody344_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody344_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody344_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody344_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody344_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody344_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def rawBody344_121 : StackLang.HolProg 64 :=
.seq rawBody344_119 rawBody344_120

def rawBody344_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 8#64))

def rawBody344_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 23 5

def rawBody344_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody344_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody344_126 : StackLang.HolProg 64 :=
.seq rawBody344_124 rawBody344_125

def rawBody344_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody344_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody344_129 : StackLang.HolProg 64 :=
.seq rawBody344_127 rawBody344_128

def rawBody344_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def rawBody344_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody344_132 : StackLang.HolProg 64 :=
.seq rawBody344_130 rawBody344_131

def rawBody344_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 23 8

def rawBody344_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody344_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody344_136 : StackLang.HolProg 64 :=
.seq rawBody344_134 rawBody344_135

def rawBody344_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 2

def rawBody344_138 : StackLang.HolProg 64 :=
.seq rawBody344_136 rawBody344_137

def rawBody344_139 : StackLang.HolProg 64 :=
.seq rawBody344_133 rawBody344_138

def rawBody344_140 : StackLang.HolProg 64 :=
.seq rawBody344_132 rawBody344_139

def rawBody344_141 : StackLang.HolProg 64 :=
.seq rawBody344_129 rawBody344_140

def rawBody344_142 : StackLang.HolProg 64 :=
.seq rawBody344_126 rawBody344_141

def rawBody344_143 : StackLang.HolProg 64 :=
.seq rawBody344_123 rawBody344_142

def rawBody344_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 992#64)

def rawBody344_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody344_147 : StackLang.HolProg 64 :=
.seq rawBody344_145 rawBody344_146

def rawBody344_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody344_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody344_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody344_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 344 7

def rawBody344_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody344_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody344_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody344_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody344_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody344_158 : StackLang.HolProg 64 :=
.seq rawBody344_156 rawBody344_157

def rawBody344_159 : StackLang.HolProg 64 :=
.seq rawBody344_155 rawBody344_158

def rawBody344_160 : StackLang.HolProg 64 :=
.seq rawBody344_154 rawBody344_159

def rawBody344_161 : StackLang.HolProg 64 :=
.seq rawBody344_153 rawBody344_160

def rawBody344_162 : StackLang.HolProg 64 :=
.seq rawBody344_152 rawBody344_161

def rawBody344_163 : StackLang.HolProg 64 :=
.seq rawBody344_151 rawBody344_162

def rawBody344_164 : StackLang.HolProg 64 :=
.seq rawBody344_150 rawBody344_163

def rawBody344_165 : StackLang.HolProg 64 :=
.seq rawBody344_149 rawBody344_164

def rawBody344_166 : StackLang.HolProg 64 :=
.seq rawBody344_148 rawBody344_165

def rawBody344_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody344_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody344_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody344_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody344_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody344_174 : StackLang.HolProg 64 :=
.seq rawBody344_172 rawBody344_173

def rawBody344_175 : StackLang.HolProg 64 :=
.seq rawBody344_171 rawBody344_174

def rawBody344_176 : StackLang.HolProg 64 :=
.seq rawBody344_170 rawBody344_175

def rawBody344_177 : StackLang.HolProg 64 :=
.seq rawBody344_169 rawBody344_176

def rawBody344_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_179 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody344_180 : StackLang.HolProg 64 :=
.seq rawBody344_178 rawBody344_179

def rawBody344_181 : StackLang.HolProg 64 :=
.call (some (rawBody344_177, 0, 344, 6)) (Sum.inl 161) (some (rawBody344_180, 344, 7))

def rawBody344_182 : StackLang.HolProg 64 :=
.seq rawBody344_168 rawBody344_181

def rawBody344_183 : StackLang.HolProg 64 :=
.seq rawBody344_167 rawBody344_182

def rawBody344_184 : StackLang.HolProg 64 :=
.seq rawBody344_166 rawBody344_183

def rawBody344_185 : StackLang.HolProg 64 :=
.seq rawBody344_147 rawBody344_184

def rawBody344_186 : StackLang.HolProg 64 :=
.seq rawBody344_144 rawBody344_185

def rawBody344_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody344_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody344_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody344_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 20#64)

def rawBody344_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody344_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def rawBody344_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_196 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody344_197 : StackLang.HolProg 64 :=
.seq rawBody344_195 rawBody344_196

def rawBody344_198 : StackLang.HolProg 64 :=
.seq rawBody344_194 rawBody344_197

def rawBody344_199 : StackLang.HolProg 64 :=
.seq rawBody344_193 rawBody344_198

def rawBody344_200 : StackLang.HolProg 64 :=
.seq rawBody344_192 rawBody344_199

def rawBody344_201 : StackLang.HolProg 64 :=
.seq rawBody344_191 rawBody344_200

def rawBody344_202 : StackLang.HolProg 64 :=
.seq rawBody344_190 rawBody344_201

def rawBody344_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_204 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody344_202 rawBody344_203

def rawBody344_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody344_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody344_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody344_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody344_209 : StackLang.HolProg 64 :=
.seq rawBody344_207 rawBody344_208

def rawBody344_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 993#64)

def rawBody344_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody344_213 : StackLang.HolProg 64 :=
.seq rawBody344_211 rawBody344_212

def rawBody344_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody344_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody344_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody344_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 344 9

def rawBody344_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody344_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody344_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody344_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody344_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody344_224 : StackLang.HolProg 64 :=
.seq rawBody344_222 rawBody344_223

def rawBody344_225 : StackLang.HolProg 64 :=
.seq rawBody344_221 rawBody344_224

def rawBody344_226 : StackLang.HolProg 64 :=
.seq rawBody344_220 rawBody344_225

def rawBody344_227 : StackLang.HolProg 64 :=
.seq rawBody344_219 rawBody344_226

def rawBody344_228 : StackLang.HolProg 64 :=
.seq rawBody344_218 rawBody344_227

def rawBody344_229 : StackLang.HolProg 64 :=
.seq rawBody344_217 rawBody344_228

def rawBody344_230 : StackLang.HolProg 64 :=
.seq rawBody344_216 rawBody344_229

def rawBody344_231 : StackLang.HolProg 64 :=
.seq rawBody344_215 rawBody344_230

def rawBody344_232 : StackLang.HolProg 64 :=
.seq rawBody344_214 rawBody344_231

def rawBody344_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody344_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody344_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody344_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody344_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody344_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def rawBody344_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def rawBody344_242 : StackLang.HolProg 64 :=
.seq rawBody344_240 rawBody344_241

def rawBody344_243 : StackLang.HolProg 64 :=
.seq rawBody344_239 rawBody344_242

def rawBody344_244 : StackLang.HolProg 64 :=
.seq rawBody344_238 rawBody344_243

def rawBody344_245 : StackLang.HolProg 64 :=
.seq rawBody344_237 rawBody344_244

def rawBody344_246 : StackLang.HolProg 64 :=
.seq rawBody344_236 rawBody344_245

def rawBody344_247 : StackLang.HolProg 64 :=
.seq rawBody344_235 rawBody344_246

def rawBody344_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def rawBody344_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def rawBody344_250 : StackLang.HolProg 64 :=
.seq rawBody344_248 rawBody344_249

def rawBody344_251 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody344_252 : StackLang.HolProg 64 :=
.seq rawBody344_250 rawBody344_251

def rawBody344_253 : StackLang.HolProg 64 :=
.call (some (rawBody344_247, 0, 344, 8)) (Sum.inl 169) (some (rawBody344_252, 344, 9))

def rawBody344_254 : StackLang.HolProg 64 :=
.seq rawBody344_234 rawBody344_253

def rawBody344_255 : StackLang.HolProg 64 :=
.seq rawBody344_233 rawBody344_254

def rawBody344_256 : StackLang.HolProg 64 :=
.seq rawBody344_232 rawBody344_255

def rawBody344_257 : StackLang.HolProg 64 :=
.seq rawBody344_213 rawBody344_256

def rawBody344_258 : StackLang.HolProg 64 :=
.seq rawBody344_210 rawBody344_257

def rawBody344_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody344_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 6#64)

def rawBody344_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody344_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 20#64)

def rawBody344_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody344_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def rawBody344_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_268 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody344_269 : StackLang.HolProg 64 :=
.seq rawBody344_267 rawBody344_268

def rawBody344_270 : StackLang.HolProg 64 :=
.seq rawBody344_266 rawBody344_269

def rawBody344_271 : StackLang.HolProg 64 :=
.seq rawBody344_265 rawBody344_270

def rawBody344_272 : StackLang.HolProg 64 :=
.seq rawBody344_264 rawBody344_271

def rawBody344_273 : StackLang.HolProg 64 :=
.seq rawBody344_263 rawBody344_272

def rawBody344_274 : StackLang.HolProg 64 :=
.seq rawBody344_262 rawBody344_273

def rawBody344_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_276 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody344_274 rawBody344_275

def rawBody344_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody344_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody344_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 120#64)

def rawBody344_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody344_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody344_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody344_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody344_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def rawBody344_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody344_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 8

def rawBody344_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 7

def rawBody344_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody344_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody344_292 : StackLang.HolProg 64 :=
.seq rawBody344_290 rawBody344_291

def rawBody344_293 : StackLang.HolProg 64 :=
.seq rawBody344_289 rawBody344_292

def rawBody344_294 : StackLang.HolProg 64 :=
.seq rawBody344_288 rawBody344_293

def rawBody344_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 994#64)

def rawBody344_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody344_298 : StackLang.HolProg 64 :=
.seq rawBody344_296 rawBody344_297

def rawBody344_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody344_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody344_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody344_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 344 11

def rawBody344_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody344_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody344_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody344_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody344_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody344_309 : StackLang.HolProg 64 :=
.seq rawBody344_307 rawBody344_308

def rawBody344_310 : StackLang.HolProg 64 :=
.seq rawBody344_306 rawBody344_309

def rawBody344_311 : StackLang.HolProg 64 :=
.seq rawBody344_305 rawBody344_310

def rawBody344_312 : StackLang.HolProg 64 :=
.seq rawBody344_304 rawBody344_311

def rawBody344_313 : StackLang.HolProg 64 :=
.seq rawBody344_303 rawBody344_312

def rawBody344_314 : StackLang.HolProg 64 :=
.seq rawBody344_302 rawBody344_313

def rawBody344_315 : StackLang.HolProg 64 :=
.seq rawBody344_301 rawBody344_314

def rawBody344_316 : StackLang.HolProg 64 :=
.seq rawBody344_300 rawBody344_315

def rawBody344_317 : StackLang.HolProg 64 :=
.seq rawBody344_299 rawBody344_316

def rawBody344_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody344_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody344_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody344_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody344_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody344_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody344_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody344_327 : StackLang.HolProg 64 :=
.seq rawBody344_325 rawBody344_326

def rawBody344_328 : StackLang.HolProg 64 :=
.seq rawBody344_324 rawBody344_327

def rawBody344_329 : StackLang.HolProg 64 :=
.seq rawBody344_323 rawBody344_328

def rawBody344_330 : StackLang.HolProg 64 :=
.seq rawBody344_322 rawBody344_329

def rawBody344_331 : StackLang.HolProg 64 :=
.seq rawBody344_321 rawBody344_330

def rawBody344_332 : StackLang.HolProg 64 :=
.seq rawBody344_320 rawBody344_331

def rawBody344_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody344_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody344_335 : StackLang.HolProg 64 :=
.seq rawBody344_333 rawBody344_334

def rawBody344_336 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody344_337 : StackLang.HolProg 64 :=
.seq rawBody344_335 rawBody344_336

def rawBody344_338 : StackLang.HolProg 64 :=
.call (some (rawBody344_332, 0, 344, 10)) (Sum.inl 336) (some (rawBody344_337, 344, 11))

def rawBody344_339 : StackLang.HolProg 64 :=
.seq rawBody344_319 rawBody344_338

def rawBody344_340 : StackLang.HolProg 64 :=
.seq rawBody344_318 rawBody344_339

def rawBody344_341 : StackLang.HolProg 64 :=
.seq rawBody344_317 rawBody344_340

def rawBody344_342 : StackLang.HolProg 64 :=
.seq rawBody344_298 rawBody344_341

def rawBody344_343 : StackLang.HolProg 64 :=
.seq rawBody344_295 rawBody344_342

def rawBody344_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody344_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody344_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody344_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def rawBody344_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def rawBody344_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody344_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 20#64)

def rawBody344_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def rawBody344_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody344_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody344_358 : StackLang.HolProg 64 :=
.seq rawBody344_356 rawBody344_357

def rawBody344_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 995#64)

def rawBody344_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody344_362 : StackLang.HolProg 64 :=
.seq rawBody344_360 rawBody344_361

def rawBody344_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody344_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody344_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody344_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 344 13

def rawBody344_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody344_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody344_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody344_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody344_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody344_373 : StackLang.HolProg 64 :=
.seq rawBody344_371 rawBody344_372

def rawBody344_374 : StackLang.HolProg 64 :=
.seq rawBody344_370 rawBody344_373

def rawBody344_375 : StackLang.HolProg 64 :=
.seq rawBody344_369 rawBody344_374

def rawBody344_376 : StackLang.HolProg 64 :=
.seq rawBody344_368 rawBody344_375

def rawBody344_377 : StackLang.HolProg 64 :=
.seq rawBody344_367 rawBody344_376

def rawBody344_378 : StackLang.HolProg 64 :=
.seq rawBody344_366 rawBody344_377

def rawBody344_379 : StackLang.HolProg 64 :=
.seq rawBody344_365 rawBody344_378

def rawBody344_380 : StackLang.HolProg 64 :=
.seq rawBody344_364 rawBody344_379

def rawBody344_381 : StackLang.HolProg 64 :=
.seq rawBody344_363 rawBody344_380

def rawBody344_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody344_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody344_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody344_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody344_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody344_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody344_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody344_391 : StackLang.HolProg 64 :=
.seq rawBody344_389 rawBody344_390

def rawBody344_392 : StackLang.HolProg 64 :=
.seq rawBody344_388 rawBody344_391

def rawBody344_393 : StackLang.HolProg 64 :=
.seq rawBody344_387 rawBody344_392

def rawBody344_394 : StackLang.HolProg 64 :=
.seq rawBody344_386 rawBody344_393

def rawBody344_395 : StackLang.HolProg 64 :=
.seq rawBody344_385 rawBody344_394

def rawBody344_396 : StackLang.HolProg 64 :=
.seq rawBody344_384 rawBody344_395

def rawBody344_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody344_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody344_399 : StackLang.HolProg 64 :=
.seq rawBody344_397 rawBody344_398

def rawBody344_400 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody344_401 : StackLang.HolProg 64 :=
.seq rawBody344_399 rawBody344_400

def rawBody344_402 : StackLang.HolProg 64 :=
.call (some (rawBody344_396, 0, 344, 12)) (Sum.inl 339) (some (rawBody344_401, 344, 13))

def rawBody344_403 : StackLang.HolProg 64 :=
.seq rawBody344_383 rawBody344_402

def rawBody344_404 : StackLang.HolProg 64 :=
.seq rawBody344_382 rawBody344_403

def rawBody344_405 : StackLang.HolProg 64 :=
.seq rawBody344_381 rawBody344_404

def rawBody344_406 : StackLang.HolProg 64 :=
.seq rawBody344_362 rawBody344_405

def rawBody344_407 : StackLang.HolProg 64 :=
.seq rawBody344_359 rawBody344_406

def rawBody344_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody344_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody344_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody344_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody344_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 12#64)

def rawBody344_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 8#64)

def rawBody344_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 2#64)

def rawBody344_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody344_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody344_419 : StackLang.HolProg 64 :=
.seq rawBody344_417 rawBody344_418

def rawBody344_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 996#64)

def rawBody344_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody344_423 : StackLang.HolProg 64 :=
.seq rawBody344_421 rawBody344_422

def rawBody344_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody344_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody344_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody344_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 344 15

def rawBody344_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody344_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody344_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody344_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody344_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody344_434 : StackLang.HolProg 64 :=
.seq rawBody344_432 rawBody344_433

def rawBody344_435 : StackLang.HolProg 64 :=
.seq rawBody344_431 rawBody344_434

def rawBody344_436 : StackLang.HolProg 64 :=
.seq rawBody344_430 rawBody344_435

def rawBody344_437 : StackLang.HolProg 64 :=
.seq rawBody344_429 rawBody344_436

def rawBody344_438 : StackLang.HolProg 64 :=
.seq rawBody344_428 rawBody344_437

def rawBody344_439 : StackLang.HolProg 64 :=
.seq rawBody344_427 rawBody344_438

def rawBody344_440 : StackLang.HolProg 64 :=
.seq rawBody344_426 rawBody344_439

def rawBody344_441 : StackLang.HolProg 64 :=
.seq rawBody344_425 rawBody344_440

def rawBody344_442 : StackLang.HolProg 64 :=
.seq rawBody344_424 rawBody344_441

def rawBody344_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody344_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody344_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody344_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody344_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody344_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody344_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody344_452 : StackLang.HolProg 64 :=
.seq rawBody344_450 rawBody344_451

def rawBody344_453 : StackLang.HolProg 64 :=
.seq rawBody344_449 rawBody344_452

def rawBody344_454 : StackLang.HolProg 64 :=
.seq rawBody344_448 rawBody344_453

def rawBody344_455 : StackLang.HolProg 64 :=
.seq rawBody344_447 rawBody344_454

def rawBody344_456 : StackLang.HolProg 64 :=
.seq rawBody344_446 rawBody344_455

def rawBody344_457 : StackLang.HolProg 64 :=
.seq rawBody344_445 rawBody344_456

def rawBody344_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody344_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody344_460 : StackLang.HolProg 64 :=
.seq rawBody344_458 rawBody344_459

def rawBody344_461 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody344_462 : StackLang.HolProg 64 :=
.seq rawBody344_460 rawBody344_461

def rawBody344_463 : StackLang.HolProg 64 :=
.call (some (rawBody344_457, 0, 344, 14)) (Sum.inl 337) (some (rawBody344_462, 344, 15))

def rawBody344_464 : StackLang.HolProg 64 :=
.seq rawBody344_444 rawBody344_463

def rawBody344_465 : StackLang.HolProg 64 :=
.seq rawBody344_443 rawBody344_464

def rawBody344_466 : StackLang.HolProg 64 :=
.seq rawBody344_442 rawBody344_465

def rawBody344_467 : StackLang.HolProg 64 :=
.seq rawBody344_423 rawBody344_466

def rawBody344_468 : StackLang.HolProg 64 :=
.seq rawBody344_420 rawBody344_467

def rawBody344_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody344_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def rawBody344_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody344_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody344_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 12#64)

def rawBody344_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def rawBody344_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 3#64)

def rawBody344_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody344_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody344_480 : StackLang.HolProg 64 :=
.seq rawBody344_478 rawBody344_479

def rawBody344_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 997#64)

def rawBody344_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody344_484 : StackLang.HolProg 64 :=
.seq rawBody344_482 rawBody344_483

def rawBody344_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody344_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody344_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody344_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 344 17

def rawBody344_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody344_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody344_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody344_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody344_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody344_495 : StackLang.HolProg 64 :=
.seq rawBody344_493 rawBody344_494

def rawBody344_496 : StackLang.HolProg 64 :=
.seq rawBody344_492 rawBody344_495

def rawBody344_497 : StackLang.HolProg 64 :=
.seq rawBody344_491 rawBody344_496

def rawBody344_498 : StackLang.HolProg 64 :=
.seq rawBody344_490 rawBody344_497

def rawBody344_499 : StackLang.HolProg 64 :=
.seq rawBody344_489 rawBody344_498

def rawBody344_500 : StackLang.HolProg 64 :=
.seq rawBody344_488 rawBody344_499

def rawBody344_501 : StackLang.HolProg 64 :=
.seq rawBody344_487 rawBody344_500

def rawBody344_502 : StackLang.HolProg 64 :=
.seq rawBody344_486 rawBody344_501

def rawBody344_503 : StackLang.HolProg 64 :=
.seq rawBody344_485 rawBody344_502

def rawBody344_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody344_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody344_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody344_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody344_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody344_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody344_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody344_513 : StackLang.HolProg 64 :=
.seq rawBody344_511 rawBody344_512

def rawBody344_514 : StackLang.HolProg 64 :=
.seq rawBody344_510 rawBody344_513

def rawBody344_515 : StackLang.HolProg 64 :=
.seq rawBody344_509 rawBody344_514

def rawBody344_516 : StackLang.HolProg 64 :=
.seq rawBody344_508 rawBody344_515

def rawBody344_517 : StackLang.HolProg 64 :=
.seq rawBody344_507 rawBody344_516

def rawBody344_518 : StackLang.HolProg 64 :=
.seq rawBody344_506 rawBody344_517

def rawBody344_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody344_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody344_521 : StackLang.HolProg 64 :=
.seq rawBody344_519 rawBody344_520

def rawBody344_522 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody344_523 : StackLang.HolProg 64 :=
.seq rawBody344_521 rawBody344_522

def rawBody344_524 : StackLang.HolProg 64 :=
.call (some (rawBody344_518, 0, 344, 16)) (Sum.inl 337) (some (rawBody344_523, 344, 17))

def rawBody344_525 : StackLang.HolProg 64 :=
.seq rawBody344_505 rawBody344_524

def rawBody344_526 : StackLang.HolProg 64 :=
.seq rawBody344_504 rawBody344_525

def rawBody344_527 : StackLang.HolProg 64 :=
.seq rawBody344_503 rawBody344_526

def rawBody344_528 : StackLang.HolProg 64 :=
.seq rawBody344_484 rawBody344_527

def rawBody344_529 : StackLang.HolProg 64 :=
.seq rawBody344_481 rawBody344_528

def rawBody344_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody344_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def rawBody344_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody344_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody344_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def rawBody344_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 4#64)

def rawBody344_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody344_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody344_540 : StackLang.HolProg 64 :=
.seq rawBody344_538 rawBody344_539

def rawBody344_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 998#64)

def rawBody344_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody344_544 : StackLang.HolProg 64 :=
.seq rawBody344_542 rawBody344_543

def rawBody344_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody344_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody344_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody344_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 344 19

def rawBody344_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody344_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody344_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody344_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody344_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody344_555 : StackLang.HolProg 64 :=
.seq rawBody344_553 rawBody344_554

def rawBody344_556 : StackLang.HolProg 64 :=
.seq rawBody344_552 rawBody344_555

def rawBody344_557 : StackLang.HolProg 64 :=
.seq rawBody344_551 rawBody344_556

def rawBody344_558 : StackLang.HolProg 64 :=
.seq rawBody344_550 rawBody344_557

def rawBody344_559 : StackLang.HolProg 64 :=
.seq rawBody344_549 rawBody344_558

def rawBody344_560 : StackLang.HolProg 64 :=
.seq rawBody344_548 rawBody344_559

def rawBody344_561 : StackLang.HolProg 64 :=
.seq rawBody344_547 rawBody344_560

def rawBody344_562 : StackLang.HolProg 64 :=
.seq rawBody344_546 rawBody344_561

def rawBody344_563 : StackLang.HolProg 64 :=
.seq rawBody344_545 rawBody344_562

def rawBody344_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody344_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody344_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody344_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody344_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody344_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody344_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody344_573 : StackLang.HolProg 64 :=
.seq rawBody344_571 rawBody344_572

def rawBody344_574 : StackLang.HolProg 64 :=
.seq rawBody344_570 rawBody344_573

def rawBody344_575 : StackLang.HolProg 64 :=
.seq rawBody344_569 rawBody344_574

def rawBody344_576 : StackLang.HolProg 64 :=
.seq rawBody344_568 rawBody344_575

def rawBody344_577 : StackLang.HolProg 64 :=
.seq rawBody344_567 rawBody344_576

def rawBody344_578 : StackLang.HolProg 64 :=
.seq rawBody344_566 rawBody344_577

def rawBody344_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody344_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody344_581 : StackLang.HolProg 64 :=
.seq rawBody344_579 rawBody344_580

def rawBody344_582 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody344_583 : StackLang.HolProg 64 :=
.seq rawBody344_581 rawBody344_582

def rawBody344_584 : StackLang.HolProg 64 :=
.call (some (rawBody344_578, 0, 344, 18)) (Sum.inl 336) (some (rawBody344_583, 344, 19))

def rawBody344_585 : StackLang.HolProg 64 :=
.seq rawBody344_565 rawBody344_584

def rawBody344_586 : StackLang.HolProg 64 :=
.seq rawBody344_564 rawBody344_585

def rawBody344_587 : StackLang.HolProg 64 :=
.seq rawBody344_563 rawBody344_586

def rawBody344_588 : StackLang.HolProg 64 :=
.seq rawBody344_544 rawBody344_587

def rawBody344_589 : StackLang.HolProg 64 :=
.seq rawBody344_541 rawBody344_588

def rawBody344_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody344_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def rawBody344_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody344_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody344_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def rawBody344_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody344_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody344_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def rawBody344_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 5#64)

def rawBody344_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody344_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 999#64)

def rawBody344_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody344_608 : StackLang.HolProg 64 :=
.seq rawBody344_606 rawBody344_607

def rawBody344_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody344_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody344_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody344_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 344 21

def rawBody344_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody344_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody344_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody344_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody344_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody344_619 : StackLang.HolProg 64 :=
.seq rawBody344_617 rawBody344_618

def rawBody344_620 : StackLang.HolProg 64 :=
.seq rawBody344_616 rawBody344_619

def rawBody344_621 : StackLang.HolProg 64 :=
.seq rawBody344_615 rawBody344_620

def rawBody344_622 : StackLang.HolProg 64 :=
.seq rawBody344_614 rawBody344_621

def rawBody344_623 : StackLang.HolProg 64 :=
.seq rawBody344_613 rawBody344_622

def rawBody344_624 : StackLang.HolProg 64 :=
.seq rawBody344_612 rawBody344_623

def rawBody344_625 : StackLang.HolProg 64 :=
.seq rawBody344_611 rawBody344_624

def rawBody344_626 : StackLang.HolProg 64 :=
.seq rawBody344_610 rawBody344_625

def rawBody344_627 : StackLang.HolProg 64 :=
.seq rawBody344_609 rawBody344_626

def rawBody344_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody344_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody344_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody344_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody344_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody344_635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 9

def rawBody344_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 8

def rawBody344_637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 7

def rawBody344_638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody344_639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody344_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 4

def rawBody344_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 3

def rawBody344_642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 2

def rawBody344_643 : StackLang.HolProg 64 :=
.seq rawBody344_641 rawBody344_642

def rawBody344_644 : StackLang.HolProg 64 :=
.seq rawBody344_640 rawBody344_643

def rawBody344_645 : StackLang.HolProg 64 :=
.seq rawBody344_639 rawBody344_644

def rawBody344_646 : StackLang.HolProg 64 :=
.seq rawBody344_638 rawBody344_645

def rawBody344_647 : StackLang.HolProg 64 :=
.seq rawBody344_637 rawBody344_646

def rawBody344_648 : StackLang.HolProg 64 :=
.seq rawBody344_636 rawBody344_647

def rawBody344_649 : StackLang.HolProg 64 :=
.seq rawBody344_635 rawBody344_648

def rawBody344_650 : StackLang.HolProg 64 :=
.seq rawBody344_634 rawBody344_649

def rawBody344_651 : StackLang.HolProg 64 :=
.seq rawBody344_633 rawBody344_650

def rawBody344_652 : StackLang.HolProg 64 :=
.seq rawBody344_632 rawBody344_651

def rawBody344_653 : StackLang.HolProg 64 :=
.seq rawBody344_631 rawBody344_652

def rawBody344_654 : StackLang.HolProg 64 :=
.seq rawBody344_630 rawBody344_653

def rawBody344_655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 9

def rawBody344_656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 8

def rawBody344_657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 7

def rawBody344_658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody344_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody344_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 4

def rawBody344_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 3

def rawBody344_662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 2

def rawBody344_663 : StackLang.HolProg 64 :=
.seq rawBody344_661 rawBody344_662

def rawBody344_664 : StackLang.HolProg 64 :=
.seq rawBody344_660 rawBody344_663

def rawBody344_665 : StackLang.HolProg 64 :=
.seq rawBody344_659 rawBody344_664

def rawBody344_666 : StackLang.HolProg 64 :=
.seq rawBody344_658 rawBody344_665

def rawBody344_667 : StackLang.HolProg 64 :=
.seq rawBody344_657 rawBody344_666

def rawBody344_668 : StackLang.HolProg 64 :=
.seq rawBody344_656 rawBody344_667

def rawBody344_669 : StackLang.HolProg 64 :=
.seq rawBody344_655 rawBody344_668

def rawBody344_670 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody344_671 : StackLang.HolProg 64 :=
.seq rawBody344_669 rawBody344_670

def rawBody344_672 : StackLang.HolProg 64 :=
.call (some (rawBody344_654, 0, 344, 20)) (Sum.inl 336) (some (rawBody344_671, 344, 21))

def rawBody344_673 : StackLang.HolProg 64 :=
.seq rawBody344_629 rawBody344_672

def rawBody344_674 : StackLang.HolProg 64 :=
.seq rawBody344_628 rawBody344_673

def rawBody344_675 : StackLang.HolProg 64 :=
.seq rawBody344_627 rawBody344_674

def rawBody344_676 : StackLang.HolProg 64 :=
.seq rawBody344_608 rawBody344_675

def rawBody344_677 : StackLang.HolProg 64 :=
.seq rawBody344_605 rawBody344_676

def rawBody344_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody344_679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 88#64)))

def rawBody344_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody344_683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody344_685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def rawBody344_687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody344_689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody344_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 12 9

def rawBody344_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 11 8

def rawBody344_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 7

def rawBody344_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 6

def rawBody344_695 : StackLang.HolProg 64 :=
.seq rawBody344_693 rawBody344_694

def rawBody344_696 : StackLang.HolProg 64 :=
.seq rawBody344_692 rawBody344_695

def rawBody344_697 : StackLang.HolProg 64 :=
.seq rawBody344_691 rawBody344_696

def rawBody344_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody344_699 : StackLang.HolProg 64 :=
.seq rawBody344_697 rawBody344_698

def rawBody344_700 : StackLang.HolProg 64 :=
.seq rawBody344_690 rawBody344_699

def rawBody344_701 : StackLang.HolProg 64 :=
.seq rawBody344_689 rawBody344_700

def rawBody344_702 : StackLang.HolProg 64 :=
.seq rawBody344_688 rawBody344_701

def rawBody344_703 : StackLang.HolProg 64 :=
.seq rawBody344_687 rawBody344_702

def rawBody344_704 : StackLang.HolProg 64 :=
.seq rawBody344_686 rawBody344_703

def rawBody344_705 : StackLang.HolProg 64 :=
.seq rawBody344_685 rawBody344_704

def rawBody344_706 : StackLang.HolProg 64 :=
.seq rawBody344_684 rawBody344_705

def rawBody344_707 : StackLang.HolProg 64 :=
.seq rawBody344_683 rawBody344_706

def rawBody344_708 : StackLang.HolProg 64 :=
.seq rawBody344_682 rawBody344_707

def rawBody344_709 : StackLang.HolProg 64 :=
.seq rawBody344_681 rawBody344_708

def rawBody344_710 : StackLang.HolProg 64 :=
.seq rawBody344_680 rawBody344_709

def rawBody344_711 : StackLang.HolProg 64 :=
.seq rawBody344_679 rawBody344_710

def rawBody344_712 : StackLang.HolProg 64 :=
.seq rawBody344_678 rawBody344_711

def rawBody344_713 : StackLang.HolProg 64 :=
.seq rawBody344_677 rawBody344_712

def rawBody344_714 : StackLang.HolProg 64 :=
.seq rawBody344_604 rawBody344_713

def rawBody344_715 : StackLang.HolProg 64 :=
.seq rawBody344_603 rawBody344_714

def rawBody344_716 : StackLang.HolProg 64 :=
.seq rawBody344_602 rawBody344_715

def rawBody344_717 : StackLang.HolProg 64 :=
.seq rawBody344_601 rawBody344_716

def rawBody344_718 : StackLang.HolProg 64 :=
.seq rawBody344_600 rawBody344_717

def rawBody344_719 : StackLang.HolProg 64 :=
.seq rawBody344_599 rawBody344_718

def rawBody344_720 : StackLang.HolProg 64 :=
.seq rawBody344_598 rawBody344_719

def rawBody344_721 : StackLang.HolProg 64 :=
.seq rawBody344_597 rawBody344_720

def rawBody344_722 : StackLang.HolProg 64 :=
.seq rawBody344_596 rawBody344_721

def rawBody344_723 : StackLang.HolProg 64 :=
.seq rawBody344_595 rawBody344_722

def rawBody344_724 : StackLang.HolProg 64 :=
.seq rawBody344_594 rawBody344_723

def rawBody344_725 : StackLang.HolProg 64 :=
.seq rawBody344_593 rawBody344_724

def rawBody344_726 : StackLang.HolProg 64 :=
.seq rawBody344_592 rawBody344_725

def rawBody344_727 : StackLang.HolProg 64 :=
.seq rawBody344_591 rawBody344_726

def rawBody344_728 : StackLang.HolProg 64 :=
.seq rawBody344_590 rawBody344_727

def rawBody344_729 : StackLang.HolProg 64 :=
.seq rawBody344_589 rawBody344_728

def rawBody344_730 : StackLang.HolProg 64 :=
.seq rawBody344_540 rawBody344_729

def rawBody344_731 : StackLang.HolProg 64 :=
.seq rawBody344_537 rawBody344_730

def rawBody344_732 : StackLang.HolProg 64 :=
.seq rawBody344_536 rawBody344_731

def rawBody344_733 : StackLang.HolProg 64 :=
.seq rawBody344_535 rawBody344_732

def rawBody344_734 : StackLang.HolProg 64 :=
.seq rawBody344_534 rawBody344_733

def rawBody344_735 : StackLang.HolProg 64 :=
.seq rawBody344_533 rawBody344_734

def rawBody344_736 : StackLang.HolProg 64 :=
.seq rawBody344_532 rawBody344_735

def rawBody344_737 : StackLang.HolProg 64 :=
.seq rawBody344_531 rawBody344_736

def rawBody344_738 : StackLang.HolProg 64 :=
.seq rawBody344_530 rawBody344_737

def rawBody344_739 : StackLang.HolProg 64 :=
.seq rawBody344_529 rawBody344_738

def rawBody344_740 : StackLang.HolProg 64 :=
.seq rawBody344_480 rawBody344_739

def rawBody344_741 : StackLang.HolProg 64 :=
.seq rawBody344_477 rawBody344_740

def rawBody344_742 : StackLang.HolProg 64 :=
.seq rawBody344_476 rawBody344_741

def rawBody344_743 : StackLang.HolProg 64 :=
.seq rawBody344_475 rawBody344_742

def rawBody344_744 : StackLang.HolProg 64 :=
.seq rawBody344_474 rawBody344_743

def rawBody344_745 : StackLang.HolProg 64 :=
.seq rawBody344_473 rawBody344_744

def rawBody344_746 : StackLang.HolProg 64 :=
.seq rawBody344_472 rawBody344_745

def rawBody344_747 : StackLang.HolProg 64 :=
.seq rawBody344_471 rawBody344_746

def rawBody344_748 : StackLang.HolProg 64 :=
.seq rawBody344_470 rawBody344_747

def rawBody344_749 : StackLang.HolProg 64 :=
.seq rawBody344_469 rawBody344_748

def rawBody344_750 : StackLang.HolProg 64 :=
.seq rawBody344_468 rawBody344_749

def rawBody344_751 : StackLang.HolProg 64 :=
.seq rawBody344_419 rawBody344_750

def rawBody344_752 : StackLang.HolProg 64 :=
.seq rawBody344_416 rawBody344_751

def rawBody344_753 : StackLang.HolProg 64 :=
.seq rawBody344_415 rawBody344_752

def rawBody344_754 : StackLang.HolProg 64 :=
.seq rawBody344_414 rawBody344_753

def rawBody344_755 : StackLang.HolProg 64 :=
.seq rawBody344_413 rawBody344_754

def rawBody344_756 : StackLang.HolProg 64 :=
.seq rawBody344_412 rawBody344_755

def rawBody344_757 : StackLang.HolProg 64 :=
.seq rawBody344_411 rawBody344_756

def rawBody344_758 : StackLang.HolProg 64 :=
.seq rawBody344_410 rawBody344_757

def rawBody344_759 : StackLang.HolProg 64 :=
.seq rawBody344_409 rawBody344_758

def rawBody344_760 : StackLang.HolProg 64 :=
.seq rawBody344_408 rawBody344_759

def rawBody344_761 : StackLang.HolProg 64 :=
.seq rawBody344_407 rawBody344_760

def rawBody344_762 : StackLang.HolProg 64 :=
.seq rawBody344_358 rawBody344_761

def rawBody344_763 : StackLang.HolProg 64 :=
.seq rawBody344_355 rawBody344_762

def rawBody344_764 : StackLang.HolProg 64 :=
.seq rawBody344_354 rawBody344_763

def rawBody344_765 : StackLang.HolProg 64 :=
.seq rawBody344_353 rawBody344_764

def rawBody344_766 : StackLang.HolProg 64 :=
.seq rawBody344_352 rawBody344_765

def rawBody344_767 : StackLang.HolProg 64 :=
.seq rawBody344_351 rawBody344_766

def rawBody344_768 : StackLang.HolProg 64 :=
.seq rawBody344_350 rawBody344_767

def rawBody344_769 : StackLang.HolProg 64 :=
.seq rawBody344_349 rawBody344_768

def rawBody344_770 : StackLang.HolProg 64 :=
.seq rawBody344_348 rawBody344_769

def rawBody344_771 : StackLang.HolProg 64 :=
.seq rawBody344_347 rawBody344_770

def rawBody344_772 : StackLang.HolProg 64 :=
.seq rawBody344_346 rawBody344_771

def rawBody344_773 : StackLang.HolProg 64 :=
.seq rawBody344_345 rawBody344_772

def rawBody344_774 : StackLang.HolProg 64 :=
.seq rawBody344_344 rawBody344_773

def rawBody344_775 : StackLang.HolProg 64 :=
.seq rawBody344_343 rawBody344_774

def rawBody344_776 : StackLang.HolProg 64 :=
.seq rawBody344_294 rawBody344_775

def rawBody344_777 : StackLang.HolProg 64 :=
.seq rawBody344_287 rawBody344_776

def rawBody344_778 : StackLang.HolProg 64 :=
.seq rawBody344_286 rawBody344_777

def rawBody344_779 : StackLang.HolProg 64 :=
.seq rawBody344_285 rawBody344_778

def rawBody344_780 : StackLang.HolProg 64 :=
.seq rawBody344_284 rawBody344_779

def rawBody344_781 : StackLang.HolProg 64 :=
.seq rawBody344_283 rawBody344_780

def rawBody344_782 : StackLang.HolProg 64 :=
.seq rawBody344_282 rawBody344_781

def rawBody344_783 : StackLang.HolProg 64 :=
.seq rawBody344_281 rawBody344_782

def rawBody344_784 : StackLang.HolProg 64 :=
.seq rawBody344_280 rawBody344_783

def rawBody344_785 : StackLang.HolProg 64 :=
.seq rawBody344_279 rawBody344_784

def rawBody344_786 : StackLang.HolProg 64 :=
.seq rawBody344_278 rawBody344_785

def rawBody344_787 : StackLang.HolProg 64 :=
.seq rawBody344_277 rawBody344_786

def rawBody344_788 : StackLang.HolProg 64 :=
.seq rawBody344_276 rawBody344_787

def rawBody344_789 : StackLang.HolProg 64 :=
.seq rawBody344_261 rawBody344_788

def rawBody344_790 : StackLang.HolProg 64 :=
.seq rawBody344_260 rawBody344_789

def rawBody344_791 : StackLang.HolProg 64 :=
.seq rawBody344_259 rawBody344_790

def rawBody344_792 : StackLang.HolProg 64 :=
.seq rawBody344_258 rawBody344_791

def rawBody344_793 : StackLang.HolProg 64 :=
.seq rawBody344_209 rawBody344_792

def rawBody344_794 : StackLang.HolProg 64 :=
.seq rawBody344_206 rawBody344_793

def rawBody344_795 : StackLang.HolProg 64 :=
.seq rawBody344_205 rawBody344_794

def rawBody344_796 : StackLang.HolProg 64 :=
.seq rawBody344_204 rawBody344_795

def rawBody344_797 : StackLang.HolProg 64 :=
.seq rawBody344_189 rawBody344_796

def rawBody344_798 : StackLang.HolProg 64 :=
.seq rawBody344_188 rawBody344_797

def rawBody344_799 : StackLang.HolProg 64 :=
.seq rawBody344_187 rawBody344_798

def rawBody344_800 : StackLang.HolProg 64 :=
.seq rawBody344_186 rawBody344_799

def rawBody344_801 : StackLang.HolProg 64 :=
.seq rawBody344_143 rawBody344_800

def rawBody344_802 : StackLang.HolProg 64 :=
.seq rawBody344_122 rawBody344_801

def rawBody344_803 : StackLang.HolProg 64 :=
.seq rawBody344_121 rawBody344_802

def rawBody344_804 : StackLang.HolProg 64 :=
.seq rawBody344_118 rawBody344_803

def rawBody344_805 : StackLang.HolProg 64 :=
.seq rawBody344_117 rawBody344_804

def rawBody344_806 : StackLang.HolProg 64 :=
.seq rawBody344_116 rawBody344_805

def rawBody344_807 : StackLang.HolProg 64 :=
.seq rawBody344_115 rawBody344_806

def rawBody344_808 : StackLang.HolProg 64 :=
.seq rawBody344_114 rawBody344_807

def rawBody344_809 : StackLang.HolProg 64 :=
.seq rawBody344_113 rawBody344_808

def rawBody344_810 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody344_811 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody344_812 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody344_813 : StackLang.HolProg 64 :=
.seq rawBody344_811 rawBody344_812

def rawBody344_814 : StackLang.HolProg 64 :=
.seq rawBody344_810 rawBody344_813

def rawBody344_815 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) rawBody344_809 rawBody344_814

def rawBody344_816 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody344_817 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 9

def rawBody344_818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 8

def rawBody344_819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def rawBody344_820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 6

def rawBody344_821 : StackLang.HolProg 64 :=
.seq rawBody344_819 rawBody344_820

def rawBody344_822 : StackLang.HolProg 64 :=
.seq rawBody344_818 rawBody344_821

def rawBody344_823 : StackLang.HolProg 64 :=
.seq rawBody344_817 rawBody344_822

def rawBody344_824 : StackLang.HolProg 64 :=
.seq rawBody344_816 rawBody344_823

def rawBody344_825 : StackLang.HolProg 64 :=
.seq rawBody344_815 rawBody344_824

def rawBody344_826 : StackLang.HolProg 64 :=
.seq rawBody344_112 rawBody344_825

def rawBody344_827 : StackLang.HolProg 64 :=
.loop rawBody344_826

def rawBody344_828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody344_829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 8

def rawBody344_830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody344_831 : StackLang.HolProg 64 :=
.seq rawBody344_829 rawBody344_830

def rawBody344_832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def rawBody344_833 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def rawBody344_834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def rawBody344_835 : StackLang.HolProg 64 :=
.seq rawBody344_833 rawBody344_834

def rawBody344_836 : StackLang.HolProg 64 :=
.seq rawBody344_832 rawBody344_835

def rawBody344_837 : StackLang.HolProg 64 :=
.seq rawBody344_831 rawBody344_836

def rawBody344_838 : StackLang.HolProg 64 :=
.seq rawBody344_828 rawBody344_837

def rawBody344_839 : StackLang.HolProg 64 :=
.seq rawBody344_827 rawBody344_838

def rawBody344_840 : StackLang.HolProg 64 :=
.seq rawBody344_111 rawBody344_839

def rawBody344_841 : StackLang.HolProg 64 :=
.seq rawBody344_110 rawBody344_840

def rawBody344_842 : StackLang.HolProg 64 :=
.seq rawBody344_109 rawBody344_841

def rawBody344_843 : StackLang.HolProg 64 :=
.seq rawBody344_108 rawBody344_842

def rawBody344_844 : StackLang.HolProg 64 :=
.seq rawBody344_107 rawBody344_843

def rawBody344_845 : StackLang.HolProg 64 :=
.seq rawBody344_58 rawBody344_844

def rawBody344_846 : StackLang.HolProg 64 :=
.seq rawBody344_53 rawBody344_845

def rawBody344_847 : StackLang.HolProg 64 :=
.seq rawBody344_52 rawBody344_846

def rawBody344_848 : StackLang.HolProg 64 :=
.seq rawBody344_51 rawBody344_847

def rawBody344_849 : StackLang.HolProg 64 :=
.seq rawBody344_50 rawBody344_848

def rawBody344_850 : StackLang.HolProg 64 :=
.seq rawBody344_49 rawBody344_849

def rawBody344_851 : StackLang.HolProg 64 :=
.seq rawBody344_48 rawBody344_850

def rawBody344_852 : StackLang.HolProg 64 :=
.seq rawBody344_5 rawBody344_851

def rawBody344_853 : StackLang.HolProg 64 :=
.seq rawBody344_0 rawBody344_852

def raw344 : StackLang.HolProg 64 := rawBody344_853
theorem raw344_eq : StackRawCall.compTop RawInfo.rawInfo (function344 (.list [])).1 = raw344 := by
  kernel_rfl
#print axioms raw344_eq
end InitECandidate.Proofs.BackendStages
