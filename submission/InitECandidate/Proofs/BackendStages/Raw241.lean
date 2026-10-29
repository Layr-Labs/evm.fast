import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function241
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody241_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody241_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody241_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 31#64)))

def rawBody241_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody241_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody241_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody241_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody241_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody241_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody241_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def rawBody241_10 : StackLang.HolProg 64 :=
.seq rawBody241_8 rawBody241_9

def rawBody241_11 : StackLang.HolProg 64 :=
.seq rawBody241_7 rawBody241_10

def rawBody241_12 : StackLang.HolProg 64 :=
.seq rawBody241_6 rawBody241_11

def rawBody241_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody241_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 467#64)

def rawBody241_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody241_16 : StackLang.HolProg 64 :=
.seq rawBody241_14 rawBody241_15

def rawBody241_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody241_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody241_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody241_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 241 3

def rawBody241_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody241_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody241_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody241_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody241_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody241_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody241_27 : StackLang.HolProg 64 :=
.seq rawBody241_25 rawBody241_26

def rawBody241_28 : StackLang.HolProg 64 :=
.seq rawBody241_24 rawBody241_27

def rawBody241_29 : StackLang.HolProg 64 :=
.seq rawBody241_23 rawBody241_28

def rawBody241_30 : StackLang.HolProg 64 :=
.seq rawBody241_22 rawBody241_29

def rawBody241_31 : StackLang.HolProg 64 :=
.seq rawBody241_21 rawBody241_30

def rawBody241_32 : StackLang.HolProg 64 :=
.seq rawBody241_20 rawBody241_31

def rawBody241_33 : StackLang.HolProg 64 :=
.seq rawBody241_19 rawBody241_32

def rawBody241_34 : StackLang.HolProg 64 :=
.seq rawBody241_18 rawBody241_33

def rawBody241_35 : StackLang.HolProg 64 :=
.seq rawBody241_17 rawBody241_34

def rawBody241_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody241_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody241_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody241_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody241_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody241_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody241_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody241_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody241_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody241_45 : StackLang.HolProg 64 :=
.seq rawBody241_43 rawBody241_44

def rawBody241_46 : StackLang.HolProg 64 :=
.seq rawBody241_42 rawBody241_45

def rawBody241_47 : StackLang.HolProg 64 :=
.seq rawBody241_41 rawBody241_46

def rawBody241_48 : StackLang.HolProg 64 :=
.seq rawBody241_40 rawBody241_47

def rawBody241_49 : StackLang.HolProg 64 :=
.seq rawBody241_39 rawBody241_48

def rawBody241_50 : StackLang.HolProg 64 :=
.seq rawBody241_38 rawBody241_49

def rawBody241_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody241_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody241_53 : StackLang.HolProg 64 :=
.seq rawBody241_51 rawBody241_52

def rawBody241_54 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody241_55 : StackLang.HolProg 64 :=
.seq rawBody241_53 rawBody241_54

def rawBody241_56 : StackLang.HolProg 64 :=
.call (some (rawBody241_50, 0, 241, 2)) (Sum.inl 68) (some (rawBody241_55, 241, 3))

def rawBody241_57 : StackLang.HolProg 64 :=
.seq rawBody241_37 rawBody241_56

def rawBody241_58 : StackLang.HolProg 64 :=
.seq rawBody241_36 rawBody241_57

def rawBody241_59 : StackLang.HolProg 64 :=
.seq rawBody241_35 rawBody241_58

def rawBody241_60 : StackLang.HolProg 64 :=
.seq rawBody241_16 rawBody241_59

def rawBody241_61 : StackLang.HolProg 64 :=
.seq rawBody241_13 rawBody241_60

def rawBody241_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody241_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody241_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody241_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody241_66 : StackLang.HolProg 64 :=
.seq rawBody241_64 rawBody241_65

def rawBody241_67 : StackLang.HolProg 64 :=
.seq rawBody241_63 rawBody241_66

def rawBody241_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody241_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 468#64)

def rawBody241_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody241_71 : StackLang.HolProg 64 :=
.seq rawBody241_69 rawBody241_70

def rawBody241_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody241_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody241_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody241_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 241 5

def rawBody241_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody241_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody241_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody241_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody241_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody241_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody241_82 : StackLang.HolProg 64 :=
.seq rawBody241_80 rawBody241_81

def rawBody241_83 : StackLang.HolProg 64 :=
.seq rawBody241_79 rawBody241_82

def rawBody241_84 : StackLang.HolProg 64 :=
.seq rawBody241_78 rawBody241_83

def rawBody241_85 : StackLang.HolProg 64 :=
.seq rawBody241_77 rawBody241_84

def rawBody241_86 : StackLang.HolProg 64 :=
.seq rawBody241_76 rawBody241_85

def rawBody241_87 : StackLang.HolProg 64 :=
.seq rawBody241_75 rawBody241_86

def rawBody241_88 : StackLang.HolProg 64 :=
.seq rawBody241_74 rawBody241_87

def rawBody241_89 : StackLang.HolProg 64 :=
.seq rawBody241_73 rawBody241_88

def rawBody241_90 : StackLang.HolProg 64 :=
.seq rawBody241_72 rawBody241_89

def rawBody241_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody241_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody241_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody241_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody241_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody241_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody241_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody241_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody241_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody241_100 : StackLang.HolProg 64 :=
.seq rawBody241_98 rawBody241_99

def rawBody241_101 : StackLang.HolProg 64 :=
.seq rawBody241_97 rawBody241_100

def rawBody241_102 : StackLang.HolProg 64 :=
.seq rawBody241_96 rawBody241_101

def rawBody241_103 : StackLang.HolProg 64 :=
.seq rawBody241_95 rawBody241_102

def rawBody241_104 : StackLang.HolProg 64 :=
.seq rawBody241_94 rawBody241_103

def rawBody241_105 : StackLang.HolProg 64 :=
.seq rawBody241_93 rawBody241_104

def rawBody241_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody241_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody241_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody241_109 : StackLang.HolProg 64 :=
.seq rawBody241_107 rawBody241_108

def rawBody241_110 : StackLang.HolProg 64 :=
.seq rawBody241_106 rawBody241_109

def rawBody241_111 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody241_112 : StackLang.HolProg 64 :=
.seq rawBody241_110 rawBody241_111

def rawBody241_113 : StackLang.HolProg 64 :=
.call (some (rawBody241_105, 0, 241, 4)) (Sum.inl 77) (some (rawBody241_112, 241, 5))

def rawBody241_114 : StackLang.HolProg 64 :=
.seq rawBody241_92 rawBody241_113

def rawBody241_115 : StackLang.HolProg 64 :=
.seq rawBody241_91 rawBody241_114

def rawBody241_116 : StackLang.HolProg 64 :=
.seq rawBody241_90 rawBody241_115

def rawBody241_117 : StackLang.HolProg 64 :=
.seq rawBody241_71 rawBody241_116

def rawBody241_118 : StackLang.HolProg 64 :=
.seq rawBody241_68 rawBody241_117

def rawBody241_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody241_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody241_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody241_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody241_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody241_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody241_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody241_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody241_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody241_128 : StackLang.HolProg 64 :=
.seq rawBody241_126 rawBody241_127

def rawBody241_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody241_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 469#64)

def rawBody241_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody241_132 : StackLang.HolProg 64 :=
.seq rawBody241_130 rawBody241_131

def rawBody241_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody241_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody241_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody241_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 241 7

def rawBody241_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody241_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody241_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody241_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody241_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody241_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody241_143 : StackLang.HolProg 64 :=
.seq rawBody241_141 rawBody241_142

def rawBody241_144 : StackLang.HolProg 64 :=
.seq rawBody241_140 rawBody241_143

def rawBody241_145 : StackLang.HolProg 64 :=
.seq rawBody241_139 rawBody241_144

def rawBody241_146 : StackLang.HolProg 64 :=
.seq rawBody241_138 rawBody241_145

def rawBody241_147 : StackLang.HolProg 64 :=
.seq rawBody241_137 rawBody241_146

def rawBody241_148 : StackLang.HolProg 64 :=
.seq rawBody241_136 rawBody241_147

def rawBody241_149 : StackLang.HolProg 64 :=
.seq rawBody241_135 rawBody241_148

def rawBody241_150 : StackLang.HolProg 64 :=
.seq rawBody241_134 rawBody241_149

def rawBody241_151 : StackLang.HolProg 64 :=
.seq rawBody241_133 rawBody241_150

def rawBody241_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody241_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody241_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody241_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody241_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody241_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody241_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody241_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody241_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody241_161 : StackLang.HolProg 64 :=
.seq rawBody241_159 rawBody241_160

def rawBody241_162 : StackLang.HolProg 64 :=
.seq rawBody241_158 rawBody241_161

def rawBody241_163 : StackLang.HolProg 64 :=
.seq rawBody241_157 rawBody241_162

def rawBody241_164 : StackLang.HolProg 64 :=
.seq rawBody241_156 rawBody241_163

def rawBody241_165 : StackLang.HolProg 64 :=
.seq rawBody241_155 rawBody241_164

def rawBody241_166 : StackLang.HolProg 64 :=
.seq rawBody241_154 rawBody241_165

def rawBody241_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody241_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody241_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody241_170 : StackLang.HolProg 64 :=
.seq rawBody241_168 rawBody241_169

def rawBody241_171 : StackLang.HolProg 64 :=
.seq rawBody241_167 rawBody241_170

def rawBody241_172 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody241_173 : StackLang.HolProg 64 :=
.seq rawBody241_171 rawBody241_172

def rawBody241_174 : StackLang.HolProg 64 :=
.call (some (rawBody241_166, 0, 241, 6)) (Sum.inl 78) (some (rawBody241_173, 241, 7))

def rawBody241_175 : StackLang.HolProg 64 :=
.seq rawBody241_153 rawBody241_174

def rawBody241_176 : StackLang.HolProg 64 :=
.seq rawBody241_152 rawBody241_175

def rawBody241_177 : StackLang.HolProg 64 :=
.seq rawBody241_151 rawBody241_176

def rawBody241_178 : StackLang.HolProg 64 :=
.seq rawBody241_132 rawBody241_177

def rawBody241_179 : StackLang.HolProg 64 :=
.seq rawBody241_129 rawBody241_178

def rawBody241_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody241_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody241_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody241_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody241_184 : StackLang.HolProg 64 :=
.seq rawBody241_182 rawBody241_183

def rawBody241_185 : StackLang.HolProg 64 :=
.seq rawBody241_181 rawBody241_184

def rawBody241_186 : StackLang.HolProg 64 :=
.seq rawBody241_180 rawBody241_185

def rawBody241_187 : StackLang.HolProg 64 :=
.seq rawBody241_179 rawBody241_186

def rawBody241_188 : StackLang.HolProg 64 :=
.seq rawBody241_128 rawBody241_187

def rawBody241_189 : StackLang.HolProg 64 :=
.seq rawBody241_125 rawBody241_188

def rawBody241_190 : StackLang.HolProg 64 :=
.seq rawBody241_124 rawBody241_189

def rawBody241_191 : StackLang.HolProg 64 :=
.seq rawBody241_123 rawBody241_190

def rawBody241_192 : StackLang.HolProg 64 :=
.seq rawBody241_122 rawBody241_191

def rawBody241_193 : StackLang.HolProg 64 :=
.seq rawBody241_121 rawBody241_192

def rawBody241_194 : StackLang.HolProg 64 :=
.seq rawBody241_120 rawBody241_193

def rawBody241_195 : StackLang.HolProg 64 :=
.seq rawBody241_119 rawBody241_194

def rawBody241_196 : StackLang.HolProg 64 :=
.seq rawBody241_118 rawBody241_195

def rawBody241_197 : StackLang.HolProg 64 :=
.seq rawBody241_67 rawBody241_196

def rawBody241_198 : StackLang.HolProg 64 :=
.seq rawBody241_62 rawBody241_197

def rawBody241_199 : StackLang.HolProg 64 :=
.seq rawBody241_61 rawBody241_198

def rawBody241_200 : StackLang.HolProg 64 :=
.seq rawBody241_12 rawBody241_199

def rawBody241_201 : StackLang.HolProg 64 :=
.seq rawBody241_5 rawBody241_200

def rawBody241_202 : StackLang.HolProg 64 :=
.seq rawBody241_4 rawBody241_201

def rawBody241_203 : StackLang.HolProg 64 :=
.seq rawBody241_3 rawBody241_202

def rawBody241_204 : StackLang.HolProg 64 :=
.seq rawBody241_2 rawBody241_203

def rawBody241_205 : StackLang.HolProg 64 :=
.seq rawBody241_1 rawBody241_204

def rawBody241_206 : StackLang.HolProg 64 :=
.seq rawBody241_0 rawBody241_205

def raw241 : StackLang.HolProg 64 := rawBody241_206
theorem raw241_eq : StackRawCall.compTop RawInfo.rawInfo (function241 (.list [])).1 = raw241 := by
  kernel_rfl
#print axioms raw241_eq
end InitECandidate.Proofs.BackendStages
