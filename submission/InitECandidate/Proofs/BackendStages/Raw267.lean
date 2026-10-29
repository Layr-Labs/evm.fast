import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function267
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody267_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody267_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody267_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody267_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def rawBody267_4 : StackLang.HolProg 64 :=
.seq rawBody267_2 rawBody267_3

def rawBody267_5 : StackLang.HolProg 64 :=
.seq rawBody267_1 rawBody267_4

def rawBody267_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 645#64)

def rawBody267_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody267_9 : StackLang.HolProg 64 :=
.seq rawBody267_7 rawBody267_8

def rawBody267_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody267_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody267_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody267_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 267 3

def rawBody267_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody267_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody267_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody267_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody267_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody267_20 : StackLang.HolProg 64 :=
.seq rawBody267_18 rawBody267_19

def rawBody267_21 : StackLang.HolProg 64 :=
.seq rawBody267_17 rawBody267_20

def rawBody267_22 : StackLang.HolProg 64 :=
.seq rawBody267_16 rawBody267_21

def rawBody267_23 : StackLang.HolProg 64 :=
.seq rawBody267_15 rawBody267_22

def rawBody267_24 : StackLang.HolProg 64 :=
.seq rawBody267_14 rawBody267_23

def rawBody267_25 : StackLang.HolProg 64 :=
.seq rawBody267_13 rawBody267_24

def rawBody267_26 : StackLang.HolProg 64 :=
.seq rawBody267_12 rawBody267_25

def rawBody267_27 : StackLang.HolProg 64 :=
.seq rawBody267_11 rawBody267_26

def rawBody267_28 : StackLang.HolProg 64 :=
.seq rawBody267_10 rawBody267_27

def rawBody267_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody267_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody267_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody267_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody267_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody267_36 : StackLang.HolProg 64 :=
.seq rawBody267_34 rawBody267_35

def rawBody267_37 : StackLang.HolProg 64 :=
.seq rawBody267_33 rawBody267_36

def rawBody267_38 : StackLang.HolProg 64 :=
.seq rawBody267_32 rawBody267_37

def rawBody267_39 : StackLang.HolProg 64 :=
.seq rawBody267_31 rawBody267_38

def rawBody267_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody267_42 : StackLang.HolProg 64 :=
.seq rawBody267_40 rawBody267_41

def rawBody267_43 : StackLang.HolProg 64 :=
.call (some (rawBody267_39, 0, 267, 2)) (Sum.inl 69) (some (rawBody267_42, 267, 3))

def rawBody267_44 : StackLang.HolProg 64 :=
.seq rawBody267_30 rawBody267_43

def rawBody267_45 : StackLang.HolProg 64 :=
.seq rawBody267_29 rawBody267_44

def rawBody267_46 : StackLang.HolProg 64 :=
.seq rawBody267_28 rawBody267_45

def rawBody267_47 : StackLang.HolProg 64 :=
.seq rawBody267_9 rawBody267_46

def rawBody267_48 : StackLang.HolProg 64 :=
.seq rawBody267_6 rawBody267_47

def rawBody267_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody267_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def rawBody267_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody267_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 646#64)

def rawBody267_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody267_55 : StackLang.HolProg 64 :=
.seq rawBody267_53 rawBody267_54

def rawBody267_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody267_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody267_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody267_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 267 5

def rawBody267_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody267_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody267_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody267_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody267_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody267_66 : StackLang.HolProg 64 :=
.seq rawBody267_64 rawBody267_65

def rawBody267_67 : StackLang.HolProg 64 :=
.seq rawBody267_63 rawBody267_66

def rawBody267_68 : StackLang.HolProg 64 :=
.seq rawBody267_62 rawBody267_67

def rawBody267_69 : StackLang.HolProg 64 :=
.seq rawBody267_61 rawBody267_68

def rawBody267_70 : StackLang.HolProg 64 :=
.seq rawBody267_60 rawBody267_69

def rawBody267_71 : StackLang.HolProg 64 :=
.seq rawBody267_59 rawBody267_70

def rawBody267_72 : StackLang.HolProg 64 :=
.seq rawBody267_58 rawBody267_71

def rawBody267_73 : StackLang.HolProg 64 :=
.seq rawBody267_57 rawBody267_72

def rawBody267_74 : StackLang.HolProg 64 :=
.seq rawBody267_56 rawBody267_73

def rawBody267_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody267_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody267_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody267_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody267_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody267_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody267_83 : StackLang.HolProg 64 :=
.seq rawBody267_81 rawBody267_82

def rawBody267_84 : StackLang.HolProg 64 :=
.seq rawBody267_80 rawBody267_83

def rawBody267_85 : StackLang.HolProg 64 :=
.seq rawBody267_79 rawBody267_84

def rawBody267_86 : StackLang.HolProg 64 :=
.seq rawBody267_78 rawBody267_85

def rawBody267_87 : StackLang.HolProg 64 :=
.seq rawBody267_77 rawBody267_86

def rawBody267_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody267_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody267_90 : StackLang.HolProg 64 :=
.seq rawBody267_88 rawBody267_89

def rawBody267_91 : StackLang.HolProg 64 :=
.call (some (rawBody267_87, 0, 267, 4)) (Sum.inl 68) (some (rawBody267_90, 267, 5))

def rawBody267_92 : StackLang.HolProg 64 :=
.seq rawBody267_76 rawBody267_91

def rawBody267_93 : StackLang.HolProg 64 :=
.seq rawBody267_75 rawBody267_92

def rawBody267_94 : StackLang.HolProg 64 :=
.seq rawBody267_74 rawBody267_93

def rawBody267_95 : StackLang.HolProg 64 :=
.seq rawBody267_55 rawBody267_94

def rawBody267_96 : StackLang.HolProg 64 :=
.seq rawBody267_52 rawBody267_95

def rawBody267_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody267_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody267_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody267_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody267_102 : StackLang.HolProg 64 :=
.seq rawBody267_100 rawBody267_101

def rawBody267_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 647#64)

def rawBody267_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody267_106 : StackLang.HolProg 64 :=
.seq rawBody267_104 rawBody267_105

def rawBody267_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody267_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody267_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody267_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 267 7

def rawBody267_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody267_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody267_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody267_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody267_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody267_117 : StackLang.HolProg 64 :=
.seq rawBody267_115 rawBody267_116

def rawBody267_118 : StackLang.HolProg 64 :=
.seq rawBody267_114 rawBody267_117

def rawBody267_119 : StackLang.HolProg 64 :=
.seq rawBody267_113 rawBody267_118

def rawBody267_120 : StackLang.HolProg 64 :=
.seq rawBody267_112 rawBody267_119

def rawBody267_121 : StackLang.HolProg 64 :=
.seq rawBody267_111 rawBody267_120

def rawBody267_122 : StackLang.HolProg 64 :=
.seq rawBody267_110 rawBody267_121

def rawBody267_123 : StackLang.HolProg 64 :=
.seq rawBody267_109 rawBody267_122

def rawBody267_124 : StackLang.HolProg 64 :=
.seq rawBody267_108 rawBody267_123

def rawBody267_125 : StackLang.HolProg 64 :=
.seq rawBody267_107 rawBody267_124

def rawBody267_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody267_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody267_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody267_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody267_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody267_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody267_134 : StackLang.HolProg 64 :=
.seq rawBody267_132 rawBody267_133

def rawBody267_135 : StackLang.HolProg 64 :=
.seq rawBody267_131 rawBody267_134

def rawBody267_136 : StackLang.HolProg 64 :=
.seq rawBody267_130 rawBody267_135

def rawBody267_137 : StackLang.HolProg 64 :=
.seq rawBody267_129 rawBody267_136

def rawBody267_138 : StackLang.HolProg 64 :=
.seq rawBody267_128 rawBody267_137

def rawBody267_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody267_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody267_141 : StackLang.HolProg 64 :=
.seq rawBody267_139 rawBody267_140

def rawBody267_142 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody267_143 : StackLang.HolProg 64 :=
.seq rawBody267_141 rawBody267_142

def rawBody267_144 : StackLang.HolProg 64 :=
.call (some (rawBody267_138, 0, 267, 6)) (Sum.inl 259) (some (rawBody267_143, 267, 7))

def rawBody267_145 : StackLang.HolProg 64 :=
.seq rawBody267_127 rawBody267_144

def rawBody267_146 : StackLang.HolProg 64 :=
.seq rawBody267_126 rawBody267_145

def rawBody267_147 : StackLang.HolProg 64 :=
.seq rawBody267_125 rawBody267_146

def rawBody267_148 : StackLang.HolProg 64 :=
.seq rawBody267_106 rawBody267_147

def rawBody267_149 : StackLang.HolProg 64 :=
.seq rawBody267_103 rawBody267_148

def rawBody267_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody267_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def rawBody267_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def rawBody267_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody267_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody267_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody267_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody267_159 : StackLang.HolProg 64 :=
.seq rawBody267_157 rawBody267_158

def rawBody267_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 648#64)

def rawBody267_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody267_163 : StackLang.HolProg 64 :=
.seq rawBody267_161 rawBody267_162

def rawBody267_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody267_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody267_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody267_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 267 9

def rawBody267_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody267_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody267_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody267_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody267_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody267_174 : StackLang.HolProg 64 :=
.seq rawBody267_172 rawBody267_173

def rawBody267_175 : StackLang.HolProg 64 :=
.seq rawBody267_171 rawBody267_174

def rawBody267_176 : StackLang.HolProg 64 :=
.seq rawBody267_170 rawBody267_175

def rawBody267_177 : StackLang.HolProg 64 :=
.seq rawBody267_169 rawBody267_176

def rawBody267_178 : StackLang.HolProg 64 :=
.seq rawBody267_168 rawBody267_177

def rawBody267_179 : StackLang.HolProg 64 :=
.seq rawBody267_167 rawBody267_178

def rawBody267_180 : StackLang.HolProg 64 :=
.seq rawBody267_166 rawBody267_179

def rawBody267_181 : StackLang.HolProg 64 :=
.seq rawBody267_165 rawBody267_180

def rawBody267_182 : StackLang.HolProg 64 :=
.seq rawBody267_164 rawBody267_181

def rawBody267_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody267_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody267_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody267_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody267_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody267_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody267_191 : StackLang.HolProg 64 :=
.seq rawBody267_189 rawBody267_190

def rawBody267_192 : StackLang.HolProg 64 :=
.seq rawBody267_188 rawBody267_191

def rawBody267_193 : StackLang.HolProg 64 :=
.seq rawBody267_187 rawBody267_192

def rawBody267_194 : StackLang.HolProg 64 :=
.seq rawBody267_186 rawBody267_193

def rawBody267_195 : StackLang.HolProg 64 :=
.seq rawBody267_185 rawBody267_194

def rawBody267_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody267_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody267_198 : StackLang.HolProg 64 :=
.seq rawBody267_196 rawBody267_197

def rawBody267_199 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody267_200 : StackLang.HolProg 64 :=
.seq rawBody267_198 rawBody267_199

def rawBody267_201 : StackLang.HolProg 64 :=
.call (some (rawBody267_195, 0, 267, 8)) (Sum.inl 238) (some (rawBody267_200, 267, 9))

def rawBody267_202 : StackLang.HolProg 64 :=
.seq rawBody267_184 rawBody267_201

def rawBody267_203 : StackLang.HolProg 64 :=
.seq rawBody267_183 rawBody267_202

def rawBody267_204 : StackLang.HolProg 64 :=
.seq rawBody267_182 rawBody267_203

def rawBody267_205 : StackLang.HolProg 64 :=
.seq rawBody267_163 rawBody267_204

def rawBody267_206 : StackLang.HolProg 64 :=
.seq rawBody267_160 rawBody267_205

def rawBody267_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody267_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def rawBody267_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def rawBody267_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def rawBody267_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody267_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def rawBody267_215 : StackLang.HolProg 64 :=
.seq rawBody267_213 rawBody267_214

def rawBody267_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 649#64)

def rawBody267_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody267_219 : StackLang.HolProg 64 :=
.seq rawBody267_217 rawBody267_218

def rawBody267_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody267_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody267_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody267_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 267 11

def rawBody267_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody267_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody267_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody267_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody267_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody267_230 : StackLang.HolProg 64 :=
.seq rawBody267_228 rawBody267_229

def rawBody267_231 : StackLang.HolProg 64 :=
.seq rawBody267_227 rawBody267_230

def rawBody267_232 : StackLang.HolProg 64 :=
.seq rawBody267_226 rawBody267_231

def rawBody267_233 : StackLang.HolProg 64 :=
.seq rawBody267_225 rawBody267_232

def rawBody267_234 : StackLang.HolProg 64 :=
.seq rawBody267_224 rawBody267_233

def rawBody267_235 : StackLang.HolProg 64 :=
.seq rawBody267_223 rawBody267_234

def rawBody267_236 : StackLang.HolProg 64 :=
.seq rawBody267_222 rawBody267_235

def rawBody267_237 : StackLang.HolProg 64 :=
.seq rawBody267_221 rawBody267_236

def rawBody267_238 : StackLang.HolProg 64 :=
.seq rawBody267_220 rawBody267_237

def rawBody267_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody267_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody267_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody267_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody267_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody267_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody267_247 : StackLang.HolProg 64 :=
.seq rawBody267_245 rawBody267_246

def rawBody267_248 : StackLang.HolProg 64 :=
.seq rawBody267_244 rawBody267_247

def rawBody267_249 : StackLang.HolProg 64 :=
.seq rawBody267_243 rawBody267_248

def rawBody267_250 : StackLang.HolProg 64 :=
.seq rawBody267_242 rawBody267_249

def rawBody267_251 : StackLang.HolProg 64 :=
.seq rawBody267_241 rawBody267_250

def rawBody267_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody267_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody267_254 : StackLang.HolProg 64 :=
.seq rawBody267_252 rawBody267_253

def rawBody267_255 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody267_256 : StackLang.HolProg 64 :=
.seq rawBody267_254 rawBody267_255

def rawBody267_257 : StackLang.HolProg 64 :=
.call (some (rawBody267_251, 0, 267, 10)) (Sum.inl 77) (some (rawBody267_256, 267, 11))

def rawBody267_258 : StackLang.HolProg 64 :=
.seq rawBody267_240 rawBody267_257

def rawBody267_259 : StackLang.HolProg 64 :=
.seq rawBody267_239 rawBody267_258

def rawBody267_260 : StackLang.HolProg 64 :=
.seq rawBody267_238 rawBody267_259

def rawBody267_261 : StackLang.HolProg 64 :=
.seq rawBody267_219 rawBody267_260

def rawBody267_262 : StackLang.HolProg 64 :=
.seq rawBody267_216 rawBody267_261

def rawBody267_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody267_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 32#64))

def rawBody267_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def rawBody267_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody267_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 650#64)

def rawBody267_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody267_272 : StackLang.HolProg 64 :=
.seq rawBody267_270 rawBody267_271

def rawBody267_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody267_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody267_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody267_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 267 13

def rawBody267_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody267_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody267_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody267_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody267_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody267_283 : StackLang.HolProg 64 :=
.seq rawBody267_281 rawBody267_282

def rawBody267_284 : StackLang.HolProg 64 :=
.seq rawBody267_280 rawBody267_283

def rawBody267_285 : StackLang.HolProg 64 :=
.seq rawBody267_279 rawBody267_284

def rawBody267_286 : StackLang.HolProg 64 :=
.seq rawBody267_278 rawBody267_285

def rawBody267_287 : StackLang.HolProg 64 :=
.seq rawBody267_277 rawBody267_286

def rawBody267_288 : StackLang.HolProg 64 :=
.seq rawBody267_276 rawBody267_287

def rawBody267_289 : StackLang.HolProg 64 :=
.seq rawBody267_275 rawBody267_288

def rawBody267_290 : StackLang.HolProg 64 :=
.seq rawBody267_274 rawBody267_289

def rawBody267_291 : StackLang.HolProg 64 :=
.seq rawBody267_273 rawBody267_290

def rawBody267_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody267_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody267_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody267_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody267_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody267_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody267_300 : StackLang.HolProg 64 :=
.seq rawBody267_298 rawBody267_299

def rawBody267_301 : StackLang.HolProg 64 :=
.seq rawBody267_297 rawBody267_300

def rawBody267_302 : StackLang.HolProg 64 :=
.seq rawBody267_296 rawBody267_301

def rawBody267_303 : StackLang.HolProg 64 :=
.seq rawBody267_295 rawBody267_302

def rawBody267_304 : StackLang.HolProg 64 :=
.seq rawBody267_294 rawBody267_303

def rawBody267_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody267_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody267_307 : StackLang.HolProg 64 :=
.seq rawBody267_305 rawBody267_306

def rawBody267_308 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody267_309 : StackLang.HolProg 64 :=
.seq rawBody267_307 rawBody267_308

def rawBody267_310 : StackLang.HolProg 64 :=
.call (some (rawBody267_304, 0, 267, 12)) (Sum.inl 266) (some (rawBody267_309, 267, 13))

def rawBody267_311 : StackLang.HolProg 64 :=
.seq rawBody267_293 rawBody267_310

def rawBody267_312 : StackLang.HolProg 64 :=
.seq rawBody267_292 rawBody267_311

def rawBody267_313 : StackLang.HolProg 64 :=
.seq rawBody267_291 rawBody267_312

def rawBody267_314 : StackLang.HolProg 64 :=
.seq rawBody267_272 rawBody267_313

def rawBody267_315 : StackLang.HolProg 64 :=
.seq rawBody267_269 rawBody267_314

def rawBody267_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody267_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody267_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 4#64)

def rawBody267_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 4#64)

def rawBody267_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 651#64)

def rawBody267_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody267_324 : StackLang.HolProg 64 :=
.seq rawBody267_322 rawBody267_323

def rawBody267_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody267_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody267_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody267_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 267 15

def rawBody267_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody267_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody267_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody267_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody267_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody267_335 : StackLang.HolProg 64 :=
.seq rawBody267_333 rawBody267_334

def rawBody267_336 : StackLang.HolProg 64 :=
.seq rawBody267_332 rawBody267_335

def rawBody267_337 : StackLang.HolProg 64 :=
.seq rawBody267_331 rawBody267_336

def rawBody267_338 : StackLang.HolProg 64 :=
.seq rawBody267_330 rawBody267_337

def rawBody267_339 : StackLang.HolProg 64 :=
.seq rawBody267_329 rawBody267_338

def rawBody267_340 : StackLang.HolProg 64 :=
.seq rawBody267_328 rawBody267_339

def rawBody267_341 : StackLang.HolProg 64 :=
.seq rawBody267_327 rawBody267_340

def rawBody267_342 : StackLang.HolProg 64 :=
.seq rawBody267_326 rawBody267_341

def rawBody267_343 : StackLang.HolProg 64 :=
.seq rawBody267_325 rawBody267_342

def rawBody267_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody267_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody267_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody267_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody267_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody267_351 : StackLang.HolProg 64 :=
.seq rawBody267_349 rawBody267_350

def rawBody267_352 : StackLang.HolProg 64 :=
.seq rawBody267_348 rawBody267_351

def rawBody267_353 : StackLang.HolProg 64 :=
.seq rawBody267_347 rawBody267_352

def rawBody267_354 : StackLang.HolProg 64 :=
.seq rawBody267_346 rawBody267_353

def rawBody267_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody267_356 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody267_357 : StackLang.HolProg 64 :=
.seq rawBody267_355 rawBody267_356

def rawBody267_358 : StackLang.HolProg 64 :=
.call (some (rawBody267_354, 0, 267, 14)) (Sum.inl 235) (some (rawBody267_357, 267, 15))

def rawBody267_359 : StackLang.HolProg 64 :=
.seq rawBody267_345 rawBody267_358

def rawBody267_360 : StackLang.HolProg 64 :=
.seq rawBody267_344 rawBody267_359

def rawBody267_361 : StackLang.HolProg 64 :=
.seq rawBody267_343 rawBody267_360

def rawBody267_362 : StackLang.HolProg 64 :=
.seq rawBody267_324 rawBody267_361

def rawBody267_363 : StackLang.HolProg 64 :=
.seq rawBody267_321 rawBody267_362

def rawBody267_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody267_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody267_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 652#64)

def rawBody267_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody267_369 : StackLang.HolProg 64 :=
.seq rawBody267_367 rawBody267_368

def rawBody267_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody267_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody267_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody267_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 267 17

def rawBody267_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody267_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody267_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody267_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody267_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody267_380 : StackLang.HolProg 64 :=
.seq rawBody267_378 rawBody267_379

def rawBody267_381 : StackLang.HolProg 64 :=
.seq rawBody267_377 rawBody267_380

def rawBody267_382 : StackLang.HolProg 64 :=
.seq rawBody267_376 rawBody267_381

def rawBody267_383 : StackLang.HolProg 64 :=
.seq rawBody267_375 rawBody267_382

def rawBody267_384 : StackLang.HolProg 64 :=
.seq rawBody267_374 rawBody267_383

def rawBody267_385 : StackLang.HolProg 64 :=
.seq rawBody267_373 rawBody267_384

def rawBody267_386 : StackLang.HolProg 64 :=
.seq rawBody267_372 rawBody267_385

def rawBody267_387 : StackLang.HolProg 64 :=
.seq rawBody267_371 rawBody267_386

def rawBody267_388 : StackLang.HolProg 64 :=
.seq rawBody267_370 rawBody267_387

def rawBody267_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody267_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody267_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody267_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody267_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody267_396 : StackLang.HolProg 64 :=
.seq rawBody267_394 rawBody267_395

def rawBody267_397 : StackLang.HolProg 64 :=
.seq rawBody267_393 rawBody267_396

def rawBody267_398 : StackLang.HolProg 64 :=
.seq rawBody267_392 rawBody267_397

def rawBody267_399 : StackLang.HolProg 64 :=
.seq rawBody267_391 rawBody267_398

def rawBody267_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody267_401 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody267_402 : StackLang.HolProg 64 :=
.seq rawBody267_400 rawBody267_401

def rawBody267_403 : StackLang.HolProg 64 :=
.call (some (rawBody267_399, 0, 267, 16)) (Sum.inl 70) (some (rawBody267_402, 267, 17))

def rawBody267_404 : StackLang.HolProg 64 :=
.seq rawBody267_390 rawBody267_403

def rawBody267_405 : StackLang.HolProg 64 :=
.seq rawBody267_389 rawBody267_404

def rawBody267_406 : StackLang.HolProg 64 :=
.seq rawBody267_388 rawBody267_405

def rawBody267_407 : StackLang.HolProg 64 :=
.seq rawBody267_369 rawBody267_406

def rawBody267_408 : StackLang.HolProg 64 :=
.seq rawBody267_366 rawBody267_407

def rawBody267_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody267_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody267_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody267_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody267_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody267_414 : StackLang.HolProg 64 :=
.seq rawBody267_412 rawBody267_413

def rawBody267_415 : StackLang.HolProg 64 :=
.seq rawBody267_411 rawBody267_414

def rawBody267_416 : StackLang.HolProg 64 :=
.seq rawBody267_410 rawBody267_415

def rawBody267_417 : StackLang.HolProg 64 :=
.seq rawBody267_409 rawBody267_416

def rawBody267_418 : StackLang.HolProg 64 :=
.seq rawBody267_408 rawBody267_417

def rawBody267_419 : StackLang.HolProg 64 :=
.seq rawBody267_365 rawBody267_418

def rawBody267_420 : StackLang.HolProg 64 :=
.seq rawBody267_364 rawBody267_419

def rawBody267_421 : StackLang.HolProg 64 :=
.seq rawBody267_363 rawBody267_420

def rawBody267_422 : StackLang.HolProg 64 :=
.seq rawBody267_320 rawBody267_421

def rawBody267_423 : StackLang.HolProg 64 :=
.seq rawBody267_319 rawBody267_422

def rawBody267_424 : StackLang.HolProg 64 :=
.seq rawBody267_318 rawBody267_423

def rawBody267_425 : StackLang.HolProg 64 :=
.seq rawBody267_317 rawBody267_424

def rawBody267_426 : StackLang.HolProg 64 :=
.seq rawBody267_316 rawBody267_425

def rawBody267_427 : StackLang.HolProg 64 :=
.seq rawBody267_315 rawBody267_426

def rawBody267_428 : StackLang.HolProg 64 :=
.seq rawBody267_268 rawBody267_427

def rawBody267_429 : StackLang.HolProg 64 :=
.seq rawBody267_267 rawBody267_428

def rawBody267_430 : StackLang.HolProg 64 :=
.seq rawBody267_266 rawBody267_429

def rawBody267_431 : StackLang.HolProg 64 :=
.seq rawBody267_265 rawBody267_430

def rawBody267_432 : StackLang.HolProg 64 :=
.seq rawBody267_264 rawBody267_431

def rawBody267_433 : StackLang.HolProg 64 :=
.seq rawBody267_263 rawBody267_432

def rawBody267_434 : StackLang.HolProg 64 :=
.seq rawBody267_262 rawBody267_433

def rawBody267_435 : StackLang.HolProg 64 :=
.seq rawBody267_215 rawBody267_434

def rawBody267_436 : StackLang.HolProg 64 :=
.seq rawBody267_212 rawBody267_435

def rawBody267_437 : StackLang.HolProg 64 :=
.seq rawBody267_211 rawBody267_436

def rawBody267_438 : StackLang.HolProg 64 :=
.seq rawBody267_210 rawBody267_437

def rawBody267_439 : StackLang.HolProg 64 :=
.seq rawBody267_209 rawBody267_438

def rawBody267_440 : StackLang.HolProg 64 :=
.seq rawBody267_208 rawBody267_439

def rawBody267_441 : StackLang.HolProg 64 :=
.seq rawBody267_207 rawBody267_440

def rawBody267_442 : StackLang.HolProg 64 :=
.seq rawBody267_206 rawBody267_441

def rawBody267_443 : StackLang.HolProg 64 :=
.seq rawBody267_159 rawBody267_442

def rawBody267_444 : StackLang.HolProg 64 :=
.seq rawBody267_156 rawBody267_443

def rawBody267_445 : StackLang.HolProg 64 :=
.seq rawBody267_155 rawBody267_444

def rawBody267_446 : StackLang.HolProg 64 :=
.seq rawBody267_154 rawBody267_445

def rawBody267_447 : StackLang.HolProg 64 :=
.seq rawBody267_153 rawBody267_446

def rawBody267_448 : StackLang.HolProg 64 :=
.seq rawBody267_152 rawBody267_447

def rawBody267_449 : StackLang.HolProg 64 :=
.seq rawBody267_151 rawBody267_448

def rawBody267_450 : StackLang.HolProg 64 :=
.seq rawBody267_150 rawBody267_449

def rawBody267_451 : StackLang.HolProg 64 :=
.seq rawBody267_149 rawBody267_450

def rawBody267_452 : StackLang.HolProg 64 :=
.seq rawBody267_102 rawBody267_451

def rawBody267_453 : StackLang.HolProg 64 :=
.seq rawBody267_99 rawBody267_452

def rawBody267_454 : StackLang.HolProg 64 :=
.seq rawBody267_98 rawBody267_453

def rawBody267_455 : StackLang.HolProg 64 :=
.seq rawBody267_97 rawBody267_454

def rawBody267_456 : StackLang.HolProg 64 :=
.seq rawBody267_96 rawBody267_455

def rawBody267_457 : StackLang.HolProg 64 :=
.seq rawBody267_51 rawBody267_456

def rawBody267_458 : StackLang.HolProg 64 :=
.seq rawBody267_50 rawBody267_457

def rawBody267_459 : StackLang.HolProg 64 :=
.seq rawBody267_49 rawBody267_458

def rawBody267_460 : StackLang.HolProg 64 :=
.seq rawBody267_48 rawBody267_459

def rawBody267_461 : StackLang.HolProg 64 :=
.seq rawBody267_5 rawBody267_460

def rawBody267_462 : StackLang.HolProg 64 :=
.seq rawBody267_0 rawBody267_461

def raw267 : StackLang.HolProg 64 := rawBody267_462
theorem raw267_eq : StackRawCall.compTop RawInfo.rawInfo (function267 (.list [])).1 = raw267 := by
  kernel_rfl
#print axioms raw267_eq
end InitECandidate.Proofs.BackendStages
