import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function189
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody189_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody189_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody189_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def rawBody189_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def rawBody189_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody189_5 : StackLang.HolProg 64 :=
.seq rawBody189_3 rawBody189_4

def rawBody189_6 : StackLang.HolProg 64 :=
.seq rawBody189_2 rawBody189_5

def rawBody189_7 : StackLang.HolProg 64 :=
.seq rawBody189_1 rawBody189_6

def rawBody189_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody189_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 216#64)

def rawBody189_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody189_11 : StackLang.HolProg 64 :=
.seq rawBody189_9 rawBody189_10

def rawBody189_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody189_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody189_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody189_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 189 3

def rawBody189_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody189_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody189_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody189_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody189_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody189_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody189_22 : StackLang.HolProg 64 :=
.seq rawBody189_20 rawBody189_21

def rawBody189_23 : StackLang.HolProg 64 :=
.seq rawBody189_19 rawBody189_22

def rawBody189_24 : StackLang.HolProg 64 :=
.seq rawBody189_18 rawBody189_23

def rawBody189_25 : StackLang.HolProg 64 :=
.seq rawBody189_17 rawBody189_24

def rawBody189_26 : StackLang.HolProg 64 :=
.seq rawBody189_16 rawBody189_25

def rawBody189_27 : StackLang.HolProg 64 :=
.seq rawBody189_15 rawBody189_26

def rawBody189_28 : StackLang.HolProg 64 :=
.seq rawBody189_14 rawBody189_27

def rawBody189_29 : StackLang.HolProg 64 :=
.seq rawBody189_13 rawBody189_28

def rawBody189_30 : StackLang.HolProg 64 :=
.seq rawBody189_12 rawBody189_29

def rawBody189_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody189_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody189_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody189_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody189_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody189_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody189_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody189_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody189_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody189_40 : StackLang.HolProg 64 :=
.seq rawBody189_38 rawBody189_39

def rawBody189_41 : StackLang.HolProg 64 :=
.seq rawBody189_37 rawBody189_40

def rawBody189_42 : StackLang.HolProg 64 :=
.seq rawBody189_36 rawBody189_41

def rawBody189_43 : StackLang.HolProg 64 :=
.seq rawBody189_35 rawBody189_42

def rawBody189_44 : StackLang.HolProg 64 :=
.seq rawBody189_34 rawBody189_43

def rawBody189_45 : StackLang.HolProg 64 :=
.seq rawBody189_33 rawBody189_44

def rawBody189_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody189_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody189_48 : StackLang.HolProg 64 :=
.seq rawBody189_46 rawBody189_47

def rawBody189_49 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody189_50 : StackLang.HolProg 64 :=
.seq rawBody189_48 rawBody189_49

def rawBody189_51 : StackLang.HolProg 64 :=
.call (some (rawBody189_45, 0, 189, 2)) (Sum.inl 188) (some (rawBody189_50, 189, 3))

def rawBody189_52 : StackLang.HolProg 64 :=
.seq rawBody189_32 rawBody189_51

def rawBody189_53 : StackLang.HolProg 64 :=
.seq rawBody189_31 rawBody189_52

def rawBody189_54 : StackLang.HolProg 64 :=
.seq rawBody189_30 rawBody189_53

def rawBody189_55 : StackLang.HolProg 64 :=
.seq rawBody189_11 rawBody189_54

def rawBody189_56 : StackLang.HolProg 64 :=
.seq rawBody189_8 rawBody189_55

def rawBody189_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody189_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody189_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody189_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody189_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def rawBody189_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody189_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody189_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody189_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 32#64))

def rawBody189_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody189_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody189_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody189_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 4

def rawBody189_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody189_71 : StackLang.HolProg 64 :=
.seq rawBody189_69 rawBody189_70

def rawBody189_72 : StackLang.HolProg 64 :=
.seq rawBody189_68 rawBody189_71

def rawBody189_73 : StackLang.HolProg 64 :=
.seq rawBody189_67 rawBody189_72

def rawBody189_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody189_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 217#64)

def rawBody189_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody189_77 : StackLang.HolProg 64 :=
.seq rawBody189_75 rawBody189_76

def rawBody189_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody189_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody189_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody189_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 189 5

def rawBody189_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody189_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody189_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody189_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody189_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody189_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody189_88 : StackLang.HolProg 64 :=
.seq rawBody189_86 rawBody189_87

def rawBody189_89 : StackLang.HolProg 64 :=
.seq rawBody189_85 rawBody189_88

def rawBody189_90 : StackLang.HolProg 64 :=
.seq rawBody189_84 rawBody189_89

def rawBody189_91 : StackLang.HolProg 64 :=
.seq rawBody189_83 rawBody189_90

def rawBody189_92 : StackLang.HolProg 64 :=
.seq rawBody189_82 rawBody189_91

def rawBody189_93 : StackLang.HolProg 64 :=
.seq rawBody189_81 rawBody189_92

def rawBody189_94 : StackLang.HolProg 64 :=
.seq rawBody189_80 rawBody189_93

def rawBody189_95 : StackLang.HolProg 64 :=
.seq rawBody189_79 rawBody189_94

def rawBody189_96 : StackLang.HolProg 64 :=
.seq rawBody189_78 rawBody189_95

def rawBody189_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody189_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody189_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody189_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody189_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody189_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody189_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody189_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody189_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody189_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody189_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody189_108 : StackLang.HolProg 64 :=
.seq rawBody189_106 rawBody189_107

def rawBody189_109 : StackLang.HolProg 64 :=
.seq rawBody189_105 rawBody189_108

def rawBody189_110 : StackLang.HolProg 64 :=
.seq rawBody189_104 rawBody189_109

def rawBody189_111 : StackLang.HolProg 64 :=
.seq rawBody189_103 rawBody189_110

def rawBody189_112 : StackLang.HolProg 64 :=
.seq rawBody189_102 rawBody189_111

def rawBody189_113 : StackLang.HolProg 64 :=
.seq rawBody189_101 rawBody189_112

def rawBody189_114 : StackLang.HolProg 64 :=
.seq rawBody189_100 rawBody189_113

def rawBody189_115 : StackLang.HolProg 64 :=
.seq rawBody189_99 rawBody189_114

def rawBody189_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody189_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody189_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody189_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody189_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody189_121 : StackLang.HolProg 64 :=
.seq rawBody189_119 rawBody189_120

def rawBody189_122 : StackLang.HolProg 64 :=
.seq rawBody189_118 rawBody189_121

def rawBody189_123 : StackLang.HolProg 64 :=
.seq rawBody189_117 rawBody189_122

def rawBody189_124 : StackLang.HolProg 64 :=
.seq rawBody189_116 rawBody189_123

def rawBody189_125 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody189_126 : StackLang.HolProg 64 :=
.seq rawBody189_124 rawBody189_125

def rawBody189_127 : StackLang.HolProg 64 :=
.call (some (rawBody189_115, 0, 189, 4)) (Sum.inl 77) (some (rawBody189_126, 189, 5))

def rawBody189_128 : StackLang.HolProg 64 :=
.seq rawBody189_98 rawBody189_127

def rawBody189_129 : StackLang.HolProg 64 :=
.seq rawBody189_97 rawBody189_128

def rawBody189_130 : StackLang.HolProg 64 :=
.seq rawBody189_96 rawBody189_129

def rawBody189_131 : StackLang.HolProg 64 :=
.seq rawBody189_77 rawBody189_130

def rawBody189_132 : StackLang.HolProg 64 :=
.seq rawBody189_74 rawBody189_131

def rawBody189_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody189_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody189_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 40#64))

def rawBody189_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody189_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody189_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody189_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody189_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody189_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody189_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody189_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody189_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody189_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody189_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def rawBody189_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody189_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def rawBody189_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody189_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody189_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody189_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def rawBody189_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody189_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def rawBody189_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody189_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody189_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody189_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody189_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody189_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody189_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody189_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 48#64))

def rawBody189_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody189_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody189_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody189_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody189_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def rawBody189_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody189_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody189_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody189_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody189_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody189_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody189_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def rawBody189_175 : StackLang.HolProg 64 :=
.seq rawBody189_173 rawBody189_174

def rawBody189_176 : StackLang.HolProg 64 :=
.seq rawBody189_172 rawBody189_175

def rawBody189_177 : StackLang.HolProg 64 :=
.seq rawBody189_171 rawBody189_176

def rawBody189_178 : StackLang.HolProg 64 :=
.seq rawBody189_170 rawBody189_177

def rawBody189_179 : StackLang.HolProg 64 :=
.seq rawBody189_169 rawBody189_178

def rawBody189_180 : StackLang.HolProg 64 :=
.seq rawBody189_168 rawBody189_179

def rawBody189_181 : StackLang.HolProg 64 :=
.seq rawBody189_167 rawBody189_180

def rawBody189_182 : StackLang.HolProg 64 :=
.seq rawBody189_166 rawBody189_181

def rawBody189_183 : StackLang.HolProg 64 :=
.seq rawBody189_165 rawBody189_182

def rawBody189_184 : StackLang.HolProg 64 :=
.seq rawBody189_164 rawBody189_183

def rawBody189_185 : StackLang.HolProg 64 :=
.seq rawBody189_163 rawBody189_184

def rawBody189_186 : StackLang.HolProg 64 :=
.seq rawBody189_162 rawBody189_185

def rawBody189_187 : StackLang.HolProg 64 :=
.seq rawBody189_161 rawBody189_186

def rawBody189_188 : StackLang.HolProg 64 :=
.seq rawBody189_160 rawBody189_187

def rawBody189_189 : StackLang.HolProg 64 :=
.seq rawBody189_159 rawBody189_188

def rawBody189_190 : StackLang.HolProg 64 :=
.seq rawBody189_158 rawBody189_189

def rawBody189_191 : StackLang.HolProg 64 :=
.seq rawBody189_157 rawBody189_190

def rawBody189_192 : StackLang.HolProg 64 :=
.seq rawBody189_156 rawBody189_191

def rawBody189_193 : StackLang.HolProg 64 :=
.seq rawBody189_155 rawBody189_192

def rawBody189_194 : StackLang.HolProg 64 :=
.seq rawBody189_154 rawBody189_193

def rawBody189_195 : StackLang.HolProg 64 :=
.seq rawBody189_153 rawBody189_194

def rawBody189_196 : StackLang.HolProg 64 :=
.seq rawBody189_152 rawBody189_195

def rawBody189_197 : StackLang.HolProg 64 :=
.seq rawBody189_151 rawBody189_196

def rawBody189_198 : StackLang.HolProg 64 :=
.seq rawBody189_150 rawBody189_197

def rawBody189_199 : StackLang.HolProg 64 :=
.seq rawBody189_149 rawBody189_198

def rawBody189_200 : StackLang.HolProg 64 :=
.seq rawBody189_148 rawBody189_199

def rawBody189_201 : StackLang.HolProg 64 :=
.seq rawBody189_147 rawBody189_200

def rawBody189_202 : StackLang.HolProg 64 :=
.seq rawBody189_146 rawBody189_201

def rawBody189_203 : StackLang.HolProg 64 :=
.seq rawBody189_145 rawBody189_202

def rawBody189_204 : StackLang.HolProg 64 :=
.seq rawBody189_144 rawBody189_203

def rawBody189_205 : StackLang.HolProg 64 :=
.seq rawBody189_143 rawBody189_204

def rawBody189_206 : StackLang.HolProg 64 :=
.seq rawBody189_142 rawBody189_205

def rawBody189_207 : StackLang.HolProg 64 :=
.seq rawBody189_141 rawBody189_206

def rawBody189_208 : StackLang.HolProg 64 :=
.seq rawBody189_140 rawBody189_207

def rawBody189_209 : StackLang.HolProg 64 :=
.seq rawBody189_139 rawBody189_208

def rawBody189_210 : StackLang.HolProg 64 :=
.seq rawBody189_138 rawBody189_209

def rawBody189_211 : StackLang.HolProg 64 :=
.seq rawBody189_137 rawBody189_210

def rawBody189_212 : StackLang.HolProg 64 :=
.seq rawBody189_136 rawBody189_211

def rawBody189_213 : StackLang.HolProg 64 :=
.seq rawBody189_135 rawBody189_212

def rawBody189_214 : StackLang.HolProg 64 :=
.seq rawBody189_134 rawBody189_213

def rawBody189_215 : StackLang.HolProg 64 :=
.seq rawBody189_133 rawBody189_214

def rawBody189_216 : StackLang.HolProg 64 :=
.seq rawBody189_132 rawBody189_215

def rawBody189_217 : StackLang.HolProg 64 :=
.seq rawBody189_73 rawBody189_216

def rawBody189_218 : StackLang.HolProg 64 :=
.seq rawBody189_66 rawBody189_217

def rawBody189_219 : StackLang.HolProg 64 :=
.seq rawBody189_65 rawBody189_218

def rawBody189_220 : StackLang.HolProg 64 :=
.seq rawBody189_64 rawBody189_219

def rawBody189_221 : StackLang.HolProg 64 :=
.seq rawBody189_63 rawBody189_220

def rawBody189_222 : StackLang.HolProg 64 :=
.seq rawBody189_62 rawBody189_221

def rawBody189_223 : StackLang.HolProg 64 :=
.seq rawBody189_61 rawBody189_222

def rawBody189_224 : StackLang.HolProg 64 :=
.seq rawBody189_60 rawBody189_223

def rawBody189_225 : StackLang.HolProg 64 :=
.seq rawBody189_59 rawBody189_224

def rawBody189_226 : StackLang.HolProg 64 :=
.seq rawBody189_58 rawBody189_225

def rawBody189_227 : StackLang.HolProg 64 :=
.seq rawBody189_57 rawBody189_226

def rawBody189_228 : StackLang.HolProg 64 :=
.seq rawBody189_56 rawBody189_227

def rawBody189_229 : StackLang.HolProg 64 :=
.seq rawBody189_7 rawBody189_228

def rawBody189_230 : StackLang.HolProg 64 :=
.seq rawBody189_0 rawBody189_229

def raw189 : StackLang.HolProg 64 := rawBody189_230
theorem raw189_eq : StackRawCall.compTop RawInfo.rawInfo (function189 (.list [])).1 = raw189 := by
  kernel_rfl
#print axioms raw189_eq
end InitECandidate.Proofs.BackendStages
