import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function431
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody431_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody431_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody431_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def rawBody431_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody431_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def rawBody431_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody431_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody431_7 : StackLang.HolProg 64 :=
.seq rawBody431_5 rawBody431_6

def rawBody431_8 : StackLang.HolProg 64 :=
.seq rawBody431_4 rawBody431_7

def rawBody431_9 : StackLang.HolProg 64 :=
.seq rawBody431_3 rawBody431_8

def rawBody431_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1293#64)

def rawBody431_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody431_13 : StackLang.HolProg 64 :=
.seq rawBody431_11 rawBody431_12

def rawBody431_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody431_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody431_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody431_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 431 3

def rawBody431_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody431_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody431_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody431_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody431_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody431_24 : StackLang.HolProg 64 :=
.seq rawBody431_22 rawBody431_23

def rawBody431_25 : StackLang.HolProg 64 :=
.seq rawBody431_21 rawBody431_24

def rawBody431_26 : StackLang.HolProg 64 :=
.seq rawBody431_20 rawBody431_25

def rawBody431_27 : StackLang.HolProg 64 :=
.seq rawBody431_19 rawBody431_26

def rawBody431_28 : StackLang.HolProg 64 :=
.seq rawBody431_18 rawBody431_27

def rawBody431_29 : StackLang.HolProg 64 :=
.seq rawBody431_17 rawBody431_28

def rawBody431_30 : StackLang.HolProg 64 :=
.seq rawBody431_16 rawBody431_29

def rawBody431_31 : StackLang.HolProg 64 :=
.seq rawBody431_15 rawBody431_30

def rawBody431_32 : StackLang.HolProg 64 :=
.seq rawBody431_14 rawBody431_31

def rawBody431_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody431_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody431_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody431_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody431_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody431_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody431_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody431_42 : StackLang.HolProg 64 :=
.seq rawBody431_40 rawBody431_41

def rawBody431_43 : StackLang.HolProg 64 :=
.seq rawBody431_39 rawBody431_42

def rawBody431_44 : StackLang.HolProg 64 :=
.seq rawBody431_38 rawBody431_43

def rawBody431_45 : StackLang.HolProg 64 :=
.seq rawBody431_37 rawBody431_44

def rawBody431_46 : StackLang.HolProg 64 :=
.seq rawBody431_36 rawBody431_45

def rawBody431_47 : StackLang.HolProg 64 :=
.seq rawBody431_35 rawBody431_46

def rawBody431_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody431_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody431_50 : StackLang.HolProg 64 :=
.seq rawBody431_48 rawBody431_49

def rawBody431_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody431_52 : StackLang.HolProg 64 :=
.seq rawBody431_50 rawBody431_51

def rawBody431_53 : StackLang.HolProg 64 :=
.call (some (rawBody431_47, 0, 431, 2)) (Sum.inl 68) (some (rawBody431_52, 431, 3))

def rawBody431_54 : StackLang.HolProg 64 :=
.seq rawBody431_34 rawBody431_53

def rawBody431_55 : StackLang.HolProg 64 :=
.seq rawBody431_33 rawBody431_54

def rawBody431_56 : StackLang.HolProg 64 :=
.seq rawBody431_32 rawBody431_55

def rawBody431_57 : StackLang.HolProg 64 :=
.seq rawBody431_13 rawBody431_56

def rawBody431_58 : StackLang.HolProg 64 :=
.seq rawBody431_10 rawBody431_57

def rawBody431_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody431_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody431_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody431_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody431_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody431_64 : StackLang.HolProg 64 :=
.seq rawBody431_62 rawBody431_63

def rawBody431_65 : StackLang.HolProg 64 :=
.seq rawBody431_61 rawBody431_64

def rawBody431_66 : StackLang.HolProg 64 :=
.seq rawBody431_60 rawBody431_65

def rawBody431_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1294#64)

def rawBody431_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody431_70 : StackLang.HolProg 64 :=
.seq rawBody431_68 rawBody431_69

def rawBody431_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody431_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody431_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody431_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 431 5

def rawBody431_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody431_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody431_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody431_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody431_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody431_81 : StackLang.HolProg 64 :=
.seq rawBody431_79 rawBody431_80

def rawBody431_82 : StackLang.HolProg 64 :=
.seq rawBody431_78 rawBody431_81

def rawBody431_83 : StackLang.HolProg 64 :=
.seq rawBody431_77 rawBody431_82

def rawBody431_84 : StackLang.HolProg 64 :=
.seq rawBody431_76 rawBody431_83

def rawBody431_85 : StackLang.HolProg 64 :=
.seq rawBody431_75 rawBody431_84

def rawBody431_86 : StackLang.HolProg 64 :=
.seq rawBody431_74 rawBody431_85

def rawBody431_87 : StackLang.HolProg 64 :=
.seq rawBody431_73 rawBody431_86

def rawBody431_88 : StackLang.HolProg 64 :=
.seq rawBody431_72 rawBody431_87

def rawBody431_89 : StackLang.HolProg 64 :=
.seq rawBody431_71 rawBody431_88

def rawBody431_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody431_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody431_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody431_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody431_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody431_97 : StackLang.HolProg 64 :=
.seq rawBody431_95 rawBody431_96

def rawBody431_98 : StackLang.HolProg 64 :=
.seq rawBody431_94 rawBody431_97

def rawBody431_99 : StackLang.HolProg 64 :=
.seq rawBody431_93 rawBody431_98

def rawBody431_100 : StackLang.HolProg 64 :=
.seq rawBody431_92 rawBody431_99

def rawBody431_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody431_102 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody431_103 : StackLang.HolProg 64 :=
.seq rawBody431_101 rawBody431_102

def rawBody431_104 : StackLang.HolProg 64 :=
.call (some (rawBody431_100, 0, 431, 4)) (Sum.inl 158) (some (rawBody431_103, 431, 5))

def rawBody431_105 : StackLang.HolProg 64 :=
.seq rawBody431_91 rawBody431_104

def rawBody431_106 : StackLang.HolProg 64 :=
.seq rawBody431_90 rawBody431_105

def rawBody431_107 : StackLang.HolProg 64 :=
.seq rawBody431_89 rawBody431_106

def rawBody431_108 : StackLang.HolProg 64 :=
.seq rawBody431_70 rawBody431_107

def rawBody431_109 : StackLang.HolProg 64 :=
.seq rawBody431_67 rawBody431_108

def rawBody431_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody431_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody431_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody431_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody431_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody431_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551480#64))

def rawBody431_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def rawBody431_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody431_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1295#64)

def rawBody431_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody431_121 : StackLang.HolProg 64 :=
.seq rawBody431_119 rawBody431_120

def rawBody431_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody431_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody431_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody431_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 431 7

def rawBody431_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody431_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody431_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody431_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody431_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody431_132 : StackLang.HolProg 64 :=
.seq rawBody431_130 rawBody431_131

def rawBody431_133 : StackLang.HolProg 64 :=
.seq rawBody431_129 rawBody431_132

def rawBody431_134 : StackLang.HolProg 64 :=
.seq rawBody431_128 rawBody431_133

def rawBody431_135 : StackLang.HolProg 64 :=
.seq rawBody431_127 rawBody431_134

def rawBody431_136 : StackLang.HolProg 64 :=
.seq rawBody431_126 rawBody431_135

def rawBody431_137 : StackLang.HolProg 64 :=
.seq rawBody431_125 rawBody431_136

def rawBody431_138 : StackLang.HolProg 64 :=
.seq rawBody431_124 rawBody431_137

def rawBody431_139 : StackLang.HolProg 64 :=
.seq rawBody431_123 rawBody431_138

def rawBody431_140 : StackLang.HolProg 64 :=
.seq rawBody431_122 rawBody431_139

def rawBody431_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody431_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody431_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody431_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody431_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody431_148 : StackLang.HolProg 64 :=
.seq rawBody431_146 rawBody431_147

def rawBody431_149 : StackLang.HolProg 64 :=
.seq rawBody431_145 rawBody431_148

def rawBody431_150 : StackLang.HolProg 64 :=
.seq rawBody431_144 rawBody431_149

def rawBody431_151 : StackLang.HolProg 64 :=
.seq rawBody431_143 rawBody431_150

def rawBody431_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_153 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody431_154 : StackLang.HolProg 64 :=
.seq rawBody431_152 rawBody431_153

def rawBody431_155 : StackLang.HolProg 64 :=
.call (some (rawBody431_151, 0, 431, 6)) (Sum.inl 79) (some (rawBody431_154, 431, 7))

def rawBody431_156 : StackLang.HolProg 64 :=
.seq rawBody431_142 rawBody431_155

def rawBody431_157 : StackLang.HolProg 64 :=
.seq rawBody431_141 rawBody431_156

def rawBody431_158 : StackLang.HolProg 64 :=
.seq rawBody431_140 rawBody431_157

def rawBody431_159 : StackLang.HolProg 64 :=
.seq rawBody431_121 rawBody431_158

def rawBody431_160 : StackLang.HolProg 64 :=
.seq rawBody431_118 rawBody431_159

def rawBody431_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody431_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody431_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody431_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 16#64)

def rawBody431_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1296#64)

def rawBody431_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody431_170 : StackLang.HolProg 64 :=
.seq rawBody431_168 rawBody431_169

def rawBody431_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody431_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody431_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody431_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 431 9

def rawBody431_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody431_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody431_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody431_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody431_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody431_181 : StackLang.HolProg 64 :=
.seq rawBody431_179 rawBody431_180

def rawBody431_182 : StackLang.HolProg 64 :=
.seq rawBody431_178 rawBody431_181

def rawBody431_183 : StackLang.HolProg 64 :=
.seq rawBody431_177 rawBody431_182

def rawBody431_184 : StackLang.HolProg 64 :=
.seq rawBody431_176 rawBody431_183

def rawBody431_185 : StackLang.HolProg 64 :=
.seq rawBody431_175 rawBody431_184

def rawBody431_186 : StackLang.HolProg 64 :=
.seq rawBody431_174 rawBody431_185

def rawBody431_187 : StackLang.HolProg 64 :=
.seq rawBody431_173 rawBody431_186

def rawBody431_188 : StackLang.HolProg 64 :=
.seq rawBody431_172 rawBody431_187

def rawBody431_189 : StackLang.HolProg 64 :=
.seq rawBody431_171 rawBody431_188

def rawBody431_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody431_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody431_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody431_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody431_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody431_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody431_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody431_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody431_200 : StackLang.HolProg 64 :=
.seq rawBody431_198 rawBody431_199

def rawBody431_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody431_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody431_203 : StackLang.HolProg 64 :=
.seq rawBody431_201 rawBody431_202

def rawBody431_204 : StackLang.HolProg 64 :=
.seq rawBody431_200 rawBody431_203

def rawBody431_205 : StackLang.HolProg 64 :=
.seq rawBody431_197 rawBody431_204

def rawBody431_206 : StackLang.HolProg 64 :=
.seq rawBody431_196 rawBody431_205

def rawBody431_207 : StackLang.HolProg 64 :=
.seq rawBody431_195 rawBody431_206

def rawBody431_208 : StackLang.HolProg 64 :=
.seq rawBody431_194 rawBody431_207

def rawBody431_209 : StackLang.HolProg 64 :=
.seq rawBody431_193 rawBody431_208

def rawBody431_210 : StackLang.HolProg 64 :=
.seq rawBody431_192 rawBody431_209

def rawBody431_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody431_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody431_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody431_214 : StackLang.HolProg 64 :=
.seq rawBody431_212 rawBody431_213

def rawBody431_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody431_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody431_217 : StackLang.HolProg 64 :=
.seq rawBody431_215 rawBody431_216

def rawBody431_218 : StackLang.HolProg 64 :=
.seq rawBody431_214 rawBody431_217

def rawBody431_219 : StackLang.HolProg 64 :=
.seq rawBody431_211 rawBody431_218

def rawBody431_220 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody431_221 : StackLang.HolProg 64 :=
.seq rawBody431_219 rawBody431_220

def rawBody431_222 : StackLang.HolProg 64 :=
.call (some (rawBody431_210, 0, 431, 8)) (Sum.inl 68) (some (rawBody431_221, 431, 9))

def rawBody431_223 : StackLang.HolProg 64 :=
.seq rawBody431_191 rawBody431_222

def rawBody431_224 : StackLang.HolProg 64 :=
.seq rawBody431_190 rawBody431_223

def rawBody431_225 : StackLang.HolProg 64 :=
.seq rawBody431_189 rawBody431_224

def rawBody431_226 : StackLang.HolProg 64 :=
.seq rawBody431_170 rawBody431_225

def rawBody431_227 : StackLang.HolProg 64 :=
.seq rawBody431_167 rawBody431_226

def rawBody431_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody431_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody431_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody431_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody431_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody431_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody431_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody431_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551432#64))

def rawBody431_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 48#64))

def rawBody431_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody431_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1297#64)

def rawBody431_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody431_244 : StackLang.HolProg 64 :=
.seq rawBody431_242 rawBody431_243

def rawBody431_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody431_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody431_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody431_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 431 11

def rawBody431_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody431_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody431_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody431_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody431_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody431_255 : StackLang.HolProg 64 :=
.seq rawBody431_253 rawBody431_254

def rawBody431_256 : StackLang.HolProg 64 :=
.seq rawBody431_252 rawBody431_255

def rawBody431_257 : StackLang.HolProg 64 :=
.seq rawBody431_251 rawBody431_256

def rawBody431_258 : StackLang.HolProg 64 :=
.seq rawBody431_250 rawBody431_257

def rawBody431_259 : StackLang.HolProg 64 :=
.seq rawBody431_249 rawBody431_258

def rawBody431_260 : StackLang.HolProg 64 :=
.seq rawBody431_248 rawBody431_259

def rawBody431_261 : StackLang.HolProg 64 :=
.seq rawBody431_247 rawBody431_260

def rawBody431_262 : StackLang.HolProg 64 :=
.seq rawBody431_246 rawBody431_261

def rawBody431_263 : StackLang.HolProg 64 :=
.seq rawBody431_245 rawBody431_262

def rawBody431_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody431_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody431_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody431_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody431_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody431_271 : StackLang.HolProg 64 :=
.seq rawBody431_269 rawBody431_270

def rawBody431_272 : StackLang.HolProg 64 :=
.seq rawBody431_268 rawBody431_271

def rawBody431_273 : StackLang.HolProg 64 :=
.seq rawBody431_267 rawBody431_272

def rawBody431_274 : StackLang.HolProg 64 :=
.seq rawBody431_266 rawBody431_273

def rawBody431_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody431_276 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody431_277 : StackLang.HolProg 64 :=
.seq rawBody431_275 rawBody431_276

def rawBody431_278 : StackLang.HolProg 64 :=
.call (some (rawBody431_274, 0, 431, 10)) (Sum.inl 388) (some (rawBody431_277, 431, 11))

def rawBody431_279 : StackLang.HolProg 64 :=
.seq rawBody431_265 rawBody431_278

def rawBody431_280 : StackLang.HolProg 64 :=
.seq rawBody431_264 rawBody431_279

def rawBody431_281 : StackLang.HolProg 64 :=
.seq rawBody431_263 rawBody431_280

def rawBody431_282 : StackLang.HolProg 64 :=
.seq rawBody431_244 rawBody431_281

def rawBody431_283 : StackLang.HolProg 64 :=
.seq rawBody431_241 rawBody431_282

def rawBody431_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody431_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_286 : StackLang.HolProg 64 :=
.seq rawBody431_284 rawBody431_285

def rawBody431_287 : StackLang.HolProg 64 :=
.seq rawBody431_283 rawBody431_286

def rawBody431_288 : StackLang.HolProg 64 :=
.seq rawBody431_240 rawBody431_287

def rawBody431_289 : StackLang.HolProg 64 :=
.seq rawBody431_239 rawBody431_288

def rawBody431_290 : StackLang.HolProg 64 :=
.seq rawBody431_238 rawBody431_289

def rawBody431_291 : StackLang.HolProg 64 :=
.seq rawBody431_237 rawBody431_290

def rawBody431_292 : StackLang.HolProg 64 :=
.seq rawBody431_236 rawBody431_291

def rawBody431_293 : StackLang.HolProg 64 :=
.seq rawBody431_235 rawBody431_292

def rawBody431_294 : StackLang.HolProg 64 :=
.seq rawBody431_234 rawBody431_293

def rawBody431_295 : StackLang.HolProg 64 :=
.seq rawBody431_233 rawBody431_294

def rawBody431_296 : StackLang.HolProg 64 :=
.seq rawBody431_232 rawBody431_295

def rawBody431_297 : StackLang.HolProg 64 :=
.seq rawBody431_231 rawBody431_296

def rawBody431_298 : StackLang.HolProg 64 :=
.seq rawBody431_230 rawBody431_297

def rawBody431_299 : StackLang.HolProg 64 :=
.seq rawBody431_229 rawBody431_298

def rawBody431_300 : StackLang.HolProg 64 :=
.seq rawBody431_228 rawBody431_299

def rawBody431_301 : StackLang.HolProg 64 :=
.seq rawBody431_227 rawBody431_300

def rawBody431_302 : StackLang.HolProg 64 :=
.seq rawBody431_166 rawBody431_301

def rawBody431_303 : StackLang.HolProg 64 :=
.seq rawBody431_165 rawBody431_302

def rawBody431_304 : StackLang.HolProg 64 :=
.seq rawBody431_164 rawBody431_303

def rawBody431_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody431_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody431_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody431_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody431_309 : StackLang.HolProg 64 :=
.seq rawBody431_307 rawBody431_308

def rawBody431_310 : StackLang.HolProg 64 :=
.seq rawBody431_306 rawBody431_309

def rawBody431_311 : StackLang.HolProg 64 :=
.seq rawBody431_305 rawBody431_310

def rawBody431_312 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody431_304 rawBody431_311

def rawBody431_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody431_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody431_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody431_316 : StackLang.HolProg 64 :=
.seq rawBody431_314 rawBody431_315

def rawBody431_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1298#64)

def rawBody431_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody431_320 : StackLang.HolProg 64 :=
.seq rawBody431_318 rawBody431_319

def rawBody431_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody431_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody431_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody431_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 431 13

def rawBody431_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody431_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody431_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody431_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody431_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody431_331 : StackLang.HolProg 64 :=
.seq rawBody431_329 rawBody431_330

def rawBody431_332 : StackLang.HolProg 64 :=
.seq rawBody431_328 rawBody431_331

def rawBody431_333 : StackLang.HolProg 64 :=
.seq rawBody431_327 rawBody431_332

def rawBody431_334 : StackLang.HolProg 64 :=
.seq rawBody431_326 rawBody431_333

def rawBody431_335 : StackLang.HolProg 64 :=
.seq rawBody431_325 rawBody431_334

def rawBody431_336 : StackLang.HolProg 64 :=
.seq rawBody431_324 rawBody431_335

def rawBody431_337 : StackLang.HolProg 64 :=
.seq rawBody431_323 rawBody431_336

def rawBody431_338 : StackLang.HolProg 64 :=
.seq rawBody431_322 rawBody431_337

def rawBody431_339 : StackLang.HolProg 64 :=
.seq rawBody431_321 rawBody431_338

def rawBody431_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody431_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody431_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody431_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody431_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody431_347 : StackLang.HolProg 64 :=
.seq rawBody431_345 rawBody431_346

def rawBody431_348 : StackLang.HolProg 64 :=
.seq rawBody431_344 rawBody431_347

def rawBody431_349 : StackLang.HolProg 64 :=
.seq rawBody431_343 rawBody431_348

def rawBody431_350 : StackLang.HolProg 64 :=
.seq rawBody431_342 rawBody431_349

def rawBody431_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_352 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody431_353 : StackLang.HolProg 64 :=
.seq rawBody431_351 rawBody431_352

def rawBody431_354 : StackLang.HolProg 64 :=
.call (some (rawBody431_350, 0, 431, 12)) (Sum.inl 407) (some (rawBody431_353, 431, 13))

def rawBody431_355 : StackLang.HolProg 64 :=
.seq rawBody431_341 rawBody431_354

def rawBody431_356 : StackLang.HolProg 64 :=
.seq rawBody431_340 rawBody431_355

def rawBody431_357 : StackLang.HolProg 64 :=
.seq rawBody431_339 rawBody431_356

def rawBody431_358 : StackLang.HolProg 64 :=
.seq rawBody431_320 rawBody431_357

def rawBody431_359 : StackLang.HolProg 64 :=
.seq rawBody431_317 rawBody431_358

def rawBody431_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody431_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody431_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1299#64)

def rawBody431_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody431_365 : StackLang.HolProg 64 :=
.seq rawBody431_363 rawBody431_364

def rawBody431_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody431_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody431_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody431_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 431 15

def rawBody431_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody431_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody431_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody431_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody431_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody431_376 : StackLang.HolProg 64 :=
.seq rawBody431_374 rawBody431_375

def rawBody431_377 : StackLang.HolProg 64 :=
.seq rawBody431_373 rawBody431_376

def rawBody431_378 : StackLang.HolProg 64 :=
.seq rawBody431_372 rawBody431_377

def rawBody431_379 : StackLang.HolProg 64 :=
.seq rawBody431_371 rawBody431_378

def rawBody431_380 : StackLang.HolProg 64 :=
.seq rawBody431_370 rawBody431_379

def rawBody431_381 : StackLang.HolProg 64 :=
.seq rawBody431_369 rawBody431_380

def rawBody431_382 : StackLang.HolProg 64 :=
.seq rawBody431_368 rawBody431_381

def rawBody431_383 : StackLang.HolProg 64 :=
.seq rawBody431_367 rawBody431_382

def rawBody431_384 : StackLang.HolProg 64 :=
.seq rawBody431_366 rawBody431_383

def rawBody431_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody431_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody431_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody431_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody431_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody431_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody431_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody431_394 : StackLang.HolProg 64 :=
.seq rawBody431_392 rawBody431_393

def rawBody431_395 : StackLang.HolProg 64 :=
.seq rawBody431_391 rawBody431_394

def rawBody431_396 : StackLang.HolProg 64 :=
.seq rawBody431_390 rawBody431_395

def rawBody431_397 : StackLang.HolProg 64 :=
.seq rawBody431_389 rawBody431_396

def rawBody431_398 : StackLang.HolProg 64 :=
.seq rawBody431_388 rawBody431_397

def rawBody431_399 : StackLang.HolProg 64 :=
.seq rawBody431_387 rawBody431_398

def rawBody431_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody431_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody431_402 : StackLang.HolProg 64 :=
.seq rawBody431_400 rawBody431_401

def rawBody431_403 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody431_404 : StackLang.HolProg 64 :=
.seq rawBody431_402 rawBody431_403

def rawBody431_405 : StackLang.HolProg 64 :=
.call (some (rawBody431_399, 0, 431, 14)) (Sum.inl 395) (some (rawBody431_404, 431, 15))

def rawBody431_406 : StackLang.HolProg 64 :=
.seq rawBody431_386 rawBody431_405

def rawBody431_407 : StackLang.HolProg 64 :=
.seq rawBody431_385 rawBody431_406

def rawBody431_408 : StackLang.HolProg 64 :=
.seq rawBody431_384 rawBody431_407

def rawBody431_409 : StackLang.HolProg 64 :=
.seq rawBody431_365 rawBody431_408

def rawBody431_410 : StackLang.HolProg 64 :=
.seq rawBody431_362 rawBody431_409

def rawBody431_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody431_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def rawBody431_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody431_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody431_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1300#64)

def rawBody431_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody431_420 : StackLang.HolProg 64 :=
.seq rawBody431_418 rawBody431_419

def rawBody431_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody431_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody431_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody431_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 431 17

def rawBody431_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody431_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody431_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody431_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody431_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody431_431 : StackLang.HolProg 64 :=
.seq rawBody431_429 rawBody431_430

def rawBody431_432 : StackLang.HolProg 64 :=
.seq rawBody431_428 rawBody431_431

def rawBody431_433 : StackLang.HolProg 64 :=
.seq rawBody431_427 rawBody431_432

def rawBody431_434 : StackLang.HolProg 64 :=
.seq rawBody431_426 rawBody431_433

def rawBody431_435 : StackLang.HolProg 64 :=
.seq rawBody431_425 rawBody431_434

def rawBody431_436 : StackLang.HolProg 64 :=
.seq rawBody431_424 rawBody431_435

def rawBody431_437 : StackLang.HolProg 64 :=
.seq rawBody431_423 rawBody431_436

def rawBody431_438 : StackLang.HolProg 64 :=
.seq rawBody431_422 rawBody431_437

def rawBody431_439 : StackLang.HolProg 64 :=
.seq rawBody431_421 rawBody431_438

def rawBody431_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody431_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody431_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody431_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody431_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody431_447 : StackLang.HolProg 64 :=
.seq rawBody431_445 rawBody431_446

def rawBody431_448 : StackLang.HolProg 64 :=
.seq rawBody431_444 rawBody431_447

def rawBody431_449 : StackLang.HolProg 64 :=
.seq rawBody431_443 rawBody431_448

def rawBody431_450 : StackLang.HolProg 64 :=
.seq rawBody431_442 rawBody431_449

def rawBody431_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody431_452 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody431_453 : StackLang.HolProg 64 :=
.seq rawBody431_451 rawBody431_452

def rawBody431_454 : StackLang.HolProg 64 :=
.call (some (rawBody431_450, 0, 431, 16)) (Sum.inl 423) (some (rawBody431_453, 431, 17))

def rawBody431_455 : StackLang.HolProg 64 :=
.seq rawBody431_441 rawBody431_454

def rawBody431_456 : StackLang.HolProg 64 :=
.seq rawBody431_440 rawBody431_455

def rawBody431_457 : StackLang.HolProg 64 :=
.seq rawBody431_439 rawBody431_456

def rawBody431_458 : StackLang.HolProg 64 :=
.seq rawBody431_420 rawBody431_457

def rawBody431_459 : StackLang.HolProg 64 :=
.seq rawBody431_417 rawBody431_458

def rawBody431_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody431_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody431_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody431_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody431_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody431_465 : StackLang.HolProg 64 :=
.seq rawBody431_463 rawBody431_464

def rawBody431_466 : StackLang.HolProg 64 :=
.seq rawBody431_462 rawBody431_465

def rawBody431_467 : StackLang.HolProg 64 :=
.seq rawBody431_461 rawBody431_466

def rawBody431_468 : StackLang.HolProg 64 :=
.seq rawBody431_460 rawBody431_467

def rawBody431_469 : StackLang.HolProg 64 :=
.seq rawBody431_459 rawBody431_468

def rawBody431_470 : StackLang.HolProg 64 :=
.seq rawBody431_416 rawBody431_469

def rawBody431_471 : StackLang.HolProg 64 :=
.seq rawBody431_415 rawBody431_470

def rawBody431_472 : StackLang.HolProg 64 :=
.seq rawBody431_414 rawBody431_471

def rawBody431_473 : StackLang.HolProg 64 :=
.seq rawBody431_413 rawBody431_472

def rawBody431_474 : StackLang.HolProg 64 :=
.seq rawBody431_412 rawBody431_473

def rawBody431_475 : StackLang.HolProg 64 :=
.seq rawBody431_411 rawBody431_474

def rawBody431_476 : StackLang.HolProg 64 :=
.seq rawBody431_410 rawBody431_475

def rawBody431_477 : StackLang.HolProg 64 :=
.seq rawBody431_361 rawBody431_476

def rawBody431_478 : StackLang.HolProg 64 :=
.seq rawBody431_360 rawBody431_477

def rawBody431_479 : StackLang.HolProg 64 :=
.seq rawBody431_359 rawBody431_478

def rawBody431_480 : StackLang.HolProg 64 :=
.seq rawBody431_316 rawBody431_479

def rawBody431_481 : StackLang.HolProg 64 :=
.seq rawBody431_313 rawBody431_480

def rawBody431_482 : StackLang.HolProg 64 :=
.seq rawBody431_312 rawBody431_481

def rawBody431_483 : StackLang.HolProg 64 :=
.seq rawBody431_163 rawBody431_482

def rawBody431_484 : StackLang.HolProg 64 :=
.seq rawBody431_162 rawBody431_483

def rawBody431_485 : StackLang.HolProg 64 :=
.seq rawBody431_161 rawBody431_484

def rawBody431_486 : StackLang.HolProg 64 :=
.seq rawBody431_160 rawBody431_485

def rawBody431_487 : StackLang.HolProg 64 :=
.seq rawBody431_117 rawBody431_486

def rawBody431_488 : StackLang.HolProg 64 :=
.seq rawBody431_116 rawBody431_487

def rawBody431_489 : StackLang.HolProg 64 :=
.seq rawBody431_115 rawBody431_488

def rawBody431_490 : StackLang.HolProg 64 :=
.seq rawBody431_114 rawBody431_489

def rawBody431_491 : StackLang.HolProg 64 :=
.seq rawBody431_113 rawBody431_490

def rawBody431_492 : StackLang.HolProg 64 :=
.seq rawBody431_112 rawBody431_491

def rawBody431_493 : StackLang.HolProg 64 :=
.seq rawBody431_111 rawBody431_492

def rawBody431_494 : StackLang.HolProg 64 :=
.seq rawBody431_110 rawBody431_493

def rawBody431_495 : StackLang.HolProg 64 :=
.seq rawBody431_109 rawBody431_494

def rawBody431_496 : StackLang.HolProg 64 :=
.seq rawBody431_66 rawBody431_495

def rawBody431_497 : StackLang.HolProg 64 :=
.seq rawBody431_59 rawBody431_496

def rawBody431_498 : StackLang.HolProg 64 :=
.seq rawBody431_58 rawBody431_497

def rawBody431_499 : StackLang.HolProg 64 :=
.seq rawBody431_9 rawBody431_498

def rawBody431_500 : StackLang.HolProg 64 :=
.seq rawBody431_2 rawBody431_499

def rawBody431_501 : StackLang.HolProg 64 :=
.seq rawBody431_1 rawBody431_500

def rawBody431_502 : StackLang.HolProg 64 :=
.seq rawBody431_0 rawBody431_501

def raw431 : StackLang.HolProg 64 := rawBody431_502
theorem raw431_eq : StackRawCall.compTop RawInfo.rawInfo (function431 (.list [])).1 = raw431 := by
  kernel_rfl
#print axioms raw431_eq
end InitECandidate.Proofs.BackendStages
