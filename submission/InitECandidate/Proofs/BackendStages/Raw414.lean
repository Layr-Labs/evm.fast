import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function414
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody414_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody414_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody414_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody414_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody414_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody414_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def rawBody414_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def rawBody414_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody414_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody414_9 : StackLang.HolProg 64 :=
.seq rawBody414_7 rawBody414_8

def rawBody414_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody414_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1234#64)

def rawBody414_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody414_13 : StackLang.HolProg 64 :=
.seq rawBody414_11 rawBody414_12

def rawBody414_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody414_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody414_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody414_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 414 3

def rawBody414_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody414_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody414_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody414_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody414_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody414_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody414_24 : StackLang.HolProg 64 :=
.seq rawBody414_22 rawBody414_23

def rawBody414_25 : StackLang.HolProg 64 :=
.seq rawBody414_21 rawBody414_24

def rawBody414_26 : StackLang.HolProg 64 :=
.seq rawBody414_20 rawBody414_25

def rawBody414_27 : StackLang.HolProg 64 :=
.seq rawBody414_19 rawBody414_26

def rawBody414_28 : StackLang.HolProg 64 :=
.seq rawBody414_18 rawBody414_27

def rawBody414_29 : StackLang.HolProg 64 :=
.seq rawBody414_17 rawBody414_28

def rawBody414_30 : StackLang.HolProg 64 :=
.seq rawBody414_16 rawBody414_29

def rawBody414_31 : StackLang.HolProg 64 :=
.seq rawBody414_15 rawBody414_30

def rawBody414_32 : StackLang.HolProg 64 :=
.seq rawBody414_14 rawBody414_31

def rawBody414_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody414_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody414_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody414_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody414_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody414_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody414_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody414_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody414_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody414_42 : StackLang.HolProg 64 :=
.seq rawBody414_40 rawBody414_41

def rawBody414_43 : StackLang.HolProg 64 :=
.seq rawBody414_39 rawBody414_42

def rawBody414_44 : StackLang.HolProg 64 :=
.seq rawBody414_38 rawBody414_43

def rawBody414_45 : StackLang.HolProg 64 :=
.seq rawBody414_37 rawBody414_44

def rawBody414_46 : StackLang.HolProg 64 :=
.seq rawBody414_36 rawBody414_45

def rawBody414_47 : StackLang.HolProg 64 :=
.seq rawBody414_35 rawBody414_46

def rawBody414_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody414_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody414_50 : StackLang.HolProg 64 :=
.seq rawBody414_48 rawBody414_49

def rawBody414_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody414_52 : StackLang.HolProg 64 :=
.seq rawBody414_50 rawBody414_51

def rawBody414_53 : StackLang.HolProg 64 :=
.call (some (rawBody414_47, 0, 414, 2)) (Sum.inl 186) (some (rawBody414_52, 414, 3))

def rawBody414_54 : StackLang.HolProg 64 :=
.seq rawBody414_34 rawBody414_53

def rawBody414_55 : StackLang.HolProg 64 :=
.seq rawBody414_33 rawBody414_54

def rawBody414_56 : StackLang.HolProg 64 :=
.seq rawBody414_32 rawBody414_55

def rawBody414_57 : StackLang.HolProg 64 :=
.seq rawBody414_13 rawBody414_56

def rawBody414_58 : StackLang.HolProg 64 :=
.seq rawBody414_10 rawBody414_57

def rawBody414_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody414_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody414_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody414_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody414_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody414_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody414_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def rawBody414_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody414_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody414_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody414_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody414_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody414_71 : StackLang.HolProg 64 :=
.seq rawBody414_69 rawBody414_70

def rawBody414_72 : StackLang.HolProg 64 :=
.seq rawBody414_68 rawBody414_71

def rawBody414_73 : StackLang.HolProg 64 :=
.seq rawBody414_67 rawBody414_72

def rawBody414_74 : StackLang.HolProg 64 :=
.seq rawBody414_66 rawBody414_73

def rawBody414_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody414_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody414_74 rawBody414_75

def rawBody414_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody414_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody414_79 : StackLang.HolProg 64 :=
.seq rawBody414_77 rawBody414_78

def rawBody414_80 : StackLang.HolProg 64 :=
.seq rawBody414_76 rawBody414_79

def rawBody414_81 : StackLang.HolProg 64 :=
.seq rawBody414_65 rawBody414_80

def rawBody414_82 : StackLang.HolProg 64 :=
.seq rawBody414_64 rawBody414_81

def rawBody414_83 : StackLang.HolProg 64 :=
.seq rawBody414_63 rawBody414_82

def rawBody414_84 : StackLang.HolProg 64 :=
.seq rawBody414_62 rawBody414_83

def rawBody414_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody414_86 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody414_84 rawBody414_85

def rawBody414_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody414_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody414_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody414_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody414_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551440#64))

def rawBody414_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def rawBody414_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody414_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody414_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody414_96 : StackLang.HolProg 64 :=
.seq rawBody414_94 rawBody414_95

def rawBody414_97 : StackLang.HolProg 64 :=
.seq rawBody414_93 rawBody414_96

def rawBody414_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody414_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1235#64)

def rawBody414_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody414_101 : StackLang.HolProg 64 :=
.seq rawBody414_99 rawBody414_100

def rawBody414_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody414_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody414_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody414_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 414 5

def rawBody414_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody414_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody414_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody414_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody414_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody414_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody414_112 : StackLang.HolProg 64 :=
.seq rawBody414_110 rawBody414_111

def rawBody414_113 : StackLang.HolProg 64 :=
.seq rawBody414_109 rawBody414_112

def rawBody414_114 : StackLang.HolProg 64 :=
.seq rawBody414_108 rawBody414_113

def rawBody414_115 : StackLang.HolProg 64 :=
.seq rawBody414_107 rawBody414_114

def rawBody414_116 : StackLang.HolProg 64 :=
.seq rawBody414_106 rawBody414_115

def rawBody414_117 : StackLang.HolProg 64 :=
.seq rawBody414_105 rawBody414_116

def rawBody414_118 : StackLang.HolProg 64 :=
.seq rawBody414_104 rawBody414_117

def rawBody414_119 : StackLang.HolProg 64 :=
.seq rawBody414_103 rawBody414_118

def rawBody414_120 : StackLang.HolProg 64 :=
.seq rawBody414_102 rawBody414_119

def rawBody414_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody414_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody414_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody414_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody414_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody414_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody414_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody414_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody414_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody414_130 : StackLang.HolProg 64 :=
.seq rawBody414_128 rawBody414_129

def rawBody414_131 : StackLang.HolProg 64 :=
.seq rawBody414_127 rawBody414_130

def rawBody414_132 : StackLang.HolProg 64 :=
.seq rawBody414_126 rawBody414_131

def rawBody414_133 : StackLang.HolProg 64 :=
.seq rawBody414_125 rawBody414_132

def rawBody414_134 : StackLang.HolProg 64 :=
.seq rawBody414_124 rawBody414_133

def rawBody414_135 : StackLang.HolProg 64 :=
.seq rawBody414_123 rawBody414_134

def rawBody414_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody414_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody414_138 : StackLang.HolProg 64 :=
.seq rawBody414_136 rawBody414_137

def rawBody414_139 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody414_140 : StackLang.HolProg 64 :=
.seq rawBody414_138 rawBody414_139

def rawBody414_141 : StackLang.HolProg 64 :=
.call (some (rawBody414_135, 0, 414, 4)) (Sum.inl 186) (some (rawBody414_140, 414, 5))

def rawBody414_142 : StackLang.HolProg 64 :=
.seq rawBody414_122 rawBody414_141

def rawBody414_143 : StackLang.HolProg 64 :=
.seq rawBody414_121 rawBody414_142

def rawBody414_144 : StackLang.HolProg 64 :=
.seq rawBody414_120 rawBody414_143

def rawBody414_145 : StackLang.HolProg 64 :=
.seq rawBody414_101 rawBody414_144

def rawBody414_146 : StackLang.HolProg 64 :=
.seq rawBody414_98 rawBody414_145

def rawBody414_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody414_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody414_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody414_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody414_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def rawBody414_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody414_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def rawBody414_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody414_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody414_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody414_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody414_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody414_159 : StackLang.HolProg 64 :=
.seq rawBody414_157 rawBody414_158

def rawBody414_160 : StackLang.HolProg 64 :=
.seq rawBody414_156 rawBody414_159

def rawBody414_161 : StackLang.HolProg 64 :=
.seq rawBody414_155 rawBody414_160

def rawBody414_162 : StackLang.HolProg 64 :=
.seq rawBody414_154 rawBody414_161

def rawBody414_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody414_164 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody414_162 rawBody414_163

def rawBody414_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody414_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody414_167 : StackLang.HolProg 64 :=
.seq rawBody414_165 rawBody414_166

def rawBody414_168 : StackLang.HolProg 64 :=
.seq rawBody414_164 rawBody414_167

def rawBody414_169 : StackLang.HolProg 64 :=
.seq rawBody414_153 rawBody414_168

def rawBody414_170 : StackLang.HolProg 64 :=
.seq rawBody414_152 rawBody414_169

def rawBody414_171 : StackLang.HolProg 64 :=
.seq rawBody414_151 rawBody414_170

def rawBody414_172 : StackLang.HolProg 64 :=
.seq rawBody414_150 rawBody414_171

def rawBody414_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody414_174 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody414_172 rawBody414_173

def rawBody414_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody414_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody414_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody414_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody414_179 : StackLang.HolProg 64 :=
.seq rawBody414_177 rawBody414_178

def rawBody414_180 : StackLang.HolProg 64 :=
.seq rawBody414_176 rawBody414_179

def rawBody414_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody414_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1236#64)

def rawBody414_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody414_184 : StackLang.HolProg 64 :=
.seq rawBody414_182 rawBody414_183

def rawBody414_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody414_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody414_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody414_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 414 7

def rawBody414_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody414_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody414_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody414_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody414_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody414_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody414_195 : StackLang.HolProg 64 :=
.seq rawBody414_193 rawBody414_194

def rawBody414_196 : StackLang.HolProg 64 :=
.seq rawBody414_192 rawBody414_195

def rawBody414_197 : StackLang.HolProg 64 :=
.seq rawBody414_191 rawBody414_196

def rawBody414_198 : StackLang.HolProg 64 :=
.seq rawBody414_190 rawBody414_197

def rawBody414_199 : StackLang.HolProg 64 :=
.seq rawBody414_189 rawBody414_198

def rawBody414_200 : StackLang.HolProg 64 :=
.seq rawBody414_188 rawBody414_199

def rawBody414_201 : StackLang.HolProg 64 :=
.seq rawBody414_187 rawBody414_200

def rawBody414_202 : StackLang.HolProg 64 :=
.seq rawBody414_186 rawBody414_201

def rawBody414_203 : StackLang.HolProg 64 :=
.seq rawBody414_185 rawBody414_202

def rawBody414_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody414_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody414_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody414_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody414_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody414_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody414_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody414_211 : StackLang.HolProg 64 :=
.seq rawBody414_209 rawBody414_210

def rawBody414_212 : StackLang.HolProg 64 :=
.seq rawBody414_208 rawBody414_211

def rawBody414_213 : StackLang.HolProg 64 :=
.seq rawBody414_207 rawBody414_212

def rawBody414_214 : StackLang.HolProg 64 :=
.seq rawBody414_206 rawBody414_213

def rawBody414_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody414_216 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody414_217 : StackLang.HolProg 64 :=
.seq rawBody414_215 rawBody414_216

def rawBody414_218 : StackLang.HolProg 64 :=
.call (some (rawBody414_214, 0, 414, 6)) (Sum.inl 396) (some (rawBody414_217, 414, 7))

def rawBody414_219 : StackLang.HolProg 64 :=
.seq rawBody414_205 rawBody414_218

def rawBody414_220 : StackLang.HolProg 64 :=
.seq rawBody414_204 rawBody414_219

def rawBody414_221 : StackLang.HolProg 64 :=
.seq rawBody414_203 rawBody414_220

def rawBody414_222 : StackLang.HolProg 64 :=
.seq rawBody414_184 rawBody414_221

def rawBody414_223 : StackLang.HolProg 64 :=
.seq rawBody414_181 rawBody414_222

def rawBody414_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody414_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody414_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody414_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1237#64)

def rawBody414_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody414_229 : StackLang.HolProg 64 :=
.seq rawBody414_227 rawBody414_228

def rawBody414_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody414_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody414_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody414_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 414 9

def rawBody414_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody414_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody414_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody414_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody414_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody414_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody414_240 : StackLang.HolProg 64 :=
.seq rawBody414_238 rawBody414_239

def rawBody414_241 : StackLang.HolProg 64 :=
.seq rawBody414_237 rawBody414_240

def rawBody414_242 : StackLang.HolProg 64 :=
.seq rawBody414_236 rawBody414_241

def rawBody414_243 : StackLang.HolProg 64 :=
.seq rawBody414_235 rawBody414_242

def rawBody414_244 : StackLang.HolProg 64 :=
.seq rawBody414_234 rawBody414_243

def rawBody414_245 : StackLang.HolProg 64 :=
.seq rawBody414_233 rawBody414_244

def rawBody414_246 : StackLang.HolProg 64 :=
.seq rawBody414_232 rawBody414_245

def rawBody414_247 : StackLang.HolProg 64 :=
.seq rawBody414_231 rawBody414_246

def rawBody414_248 : StackLang.HolProg 64 :=
.seq rawBody414_230 rawBody414_247

def rawBody414_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody414_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody414_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody414_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody414_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody414_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody414_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody414_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody414_257 : StackLang.HolProg 64 :=
.seq rawBody414_255 rawBody414_256

def rawBody414_258 : StackLang.HolProg 64 :=
.seq rawBody414_254 rawBody414_257

def rawBody414_259 : StackLang.HolProg 64 :=
.seq rawBody414_253 rawBody414_258

def rawBody414_260 : StackLang.HolProg 64 :=
.seq rawBody414_252 rawBody414_259

def rawBody414_261 : StackLang.HolProg 64 :=
.seq rawBody414_251 rawBody414_260

def rawBody414_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody414_263 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody414_264 : StackLang.HolProg 64 :=
.seq rawBody414_262 rawBody414_263

def rawBody414_265 : StackLang.HolProg 64 :=
.call (some (rawBody414_261, 0, 414, 8)) (Sum.inl 403) (some (rawBody414_264, 414, 9))

def rawBody414_266 : StackLang.HolProg 64 :=
.seq rawBody414_250 rawBody414_265

def rawBody414_267 : StackLang.HolProg 64 :=
.seq rawBody414_249 rawBody414_266

def rawBody414_268 : StackLang.HolProg 64 :=
.seq rawBody414_248 rawBody414_267

def rawBody414_269 : StackLang.HolProg 64 :=
.seq rawBody414_229 rawBody414_268

def rawBody414_270 : StackLang.HolProg 64 :=
.seq rawBody414_226 rawBody414_269

def rawBody414_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody414_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody414_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody414_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody414_275 : StackLang.HolProg 64 :=
.seq rawBody414_273 rawBody414_274

def rawBody414_276 : StackLang.HolProg 64 :=
.seq rawBody414_272 rawBody414_275

def rawBody414_277 : StackLang.HolProg 64 :=
.seq rawBody414_271 rawBody414_276

def rawBody414_278 : StackLang.HolProg 64 :=
.seq rawBody414_270 rawBody414_277

def rawBody414_279 : StackLang.HolProg 64 :=
.seq rawBody414_225 rawBody414_278

def rawBody414_280 : StackLang.HolProg 64 :=
.seq rawBody414_224 rawBody414_279

def rawBody414_281 : StackLang.HolProg 64 :=
.seq rawBody414_223 rawBody414_280

def rawBody414_282 : StackLang.HolProg 64 :=
.seq rawBody414_180 rawBody414_281

def rawBody414_283 : StackLang.HolProg 64 :=
.seq rawBody414_175 rawBody414_282

def rawBody414_284 : StackLang.HolProg 64 :=
.seq rawBody414_174 rawBody414_283

def rawBody414_285 : StackLang.HolProg 64 :=
.seq rawBody414_149 rawBody414_284

def rawBody414_286 : StackLang.HolProg 64 :=
.seq rawBody414_148 rawBody414_285

def rawBody414_287 : StackLang.HolProg 64 :=
.seq rawBody414_147 rawBody414_286

def rawBody414_288 : StackLang.HolProg 64 :=
.seq rawBody414_146 rawBody414_287

def rawBody414_289 : StackLang.HolProg 64 :=
.seq rawBody414_97 rawBody414_288

def rawBody414_290 : StackLang.HolProg 64 :=
.seq rawBody414_92 rawBody414_289

def rawBody414_291 : StackLang.HolProg 64 :=
.seq rawBody414_91 rawBody414_290

def rawBody414_292 : StackLang.HolProg 64 :=
.seq rawBody414_90 rawBody414_291

def rawBody414_293 : StackLang.HolProg 64 :=
.seq rawBody414_89 rawBody414_292

def rawBody414_294 : StackLang.HolProg 64 :=
.seq rawBody414_88 rawBody414_293

def rawBody414_295 : StackLang.HolProg 64 :=
.seq rawBody414_87 rawBody414_294

def rawBody414_296 : StackLang.HolProg 64 :=
.seq rawBody414_86 rawBody414_295

def rawBody414_297 : StackLang.HolProg 64 :=
.seq rawBody414_61 rawBody414_296

def rawBody414_298 : StackLang.HolProg 64 :=
.seq rawBody414_60 rawBody414_297

def rawBody414_299 : StackLang.HolProg 64 :=
.seq rawBody414_59 rawBody414_298

def rawBody414_300 : StackLang.HolProg 64 :=
.seq rawBody414_58 rawBody414_299

def rawBody414_301 : StackLang.HolProg 64 :=
.seq rawBody414_9 rawBody414_300

def rawBody414_302 : StackLang.HolProg 64 :=
.seq rawBody414_6 rawBody414_301

def rawBody414_303 : StackLang.HolProg 64 :=
.seq rawBody414_5 rawBody414_302

def rawBody414_304 : StackLang.HolProg 64 :=
.seq rawBody414_4 rawBody414_303

def rawBody414_305 : StackLang.HolProg 64 :=
.seq rawBody414_3 rawBody414_304

def rawBody414_306 : StackLang.HolProg 64 :=
.seq rawBody414_2 rawBody414_305

def rawBody414_307 : StackLang.HolProg 64 :=
.seq rawBody414_1 rawBody414_306

def rawBody414_308 : StackLang.HolProg 64 :=
.seq rawBody414_0 rawBody414_307

def raw414 : StackLang.HolProg 64 := rawBody414_308
theorem raw414_eq : StackRawCall.compTop RawInfo.rawInfo (function414 (.list [])).1 = raw414 := by
  kernel_rfl
#print axioms raw414_eq
end InitECandidate.Proofs.BackendStages
