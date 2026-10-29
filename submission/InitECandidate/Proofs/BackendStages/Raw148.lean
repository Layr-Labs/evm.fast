import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function148
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody148_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def rawBody148_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def rawBody148_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 8

def rawBody148_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def rawBody148_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def rawBody148_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 5

def rawBody148_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def rawBody148_7 : StackLang.HolProg 64 :=
.seq rawBody148_5 rawBody148_6

def rawBody148_8 : StackLang.HolProg 64 :=
.seq rawBody148_4 rawBody148_7

def rawBody148_9 : StackLang.HolProg 64 :=
.seq rawBody148_3 rawBody148_8

def rawBody148_10 : StackLang.HolProg 64 :=
.seq rawBody148_2 rawBody148_9

def rawBody148_11 : StackLang.HolProg 64 :=
.seq rawBody148_1 rawBody148_10

def rawBody148_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody148_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 124#64)

def rawBody148_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody148_15 : StackLang.HolProg 64 :=
.seq rawBody148_13 rawBody148_14

def rawBody148_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody148_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody148_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody148_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 148 3

def rawBody148_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody148_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody148_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody148_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody148_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody148_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody148_26 : StackLang.HolProg 64 :=
.seq rawBody148_24 rawBody148_25

def rawBody148_27 : StackLang.HolProg 64 :=
.seq rawBody148_23 rawBody148_26

def rawBody148_28 : StackLang.HolProg 64 :=
.seq rawBody148_22 rawBody148_27

def rawBody148_29 : StackLang.HolProg 64 :=
.seq rawBody148_21 rawBody148_28

def rawBody148_30 : StackLang.HolProg 64 :=
.seq rawBody148_20 rawBody148_29

def rawBody148_31 : StackLang.HolProg 64 :=
.seq rawBody148_19 rawBody148_30

def rawBody148_32 : StackLang.HolProg 64 :=
.seq rawBody148_18 rawBody148_31

def rawBody148_33 : StackLang.HolProg 64 :=
.seq rawBody148_17 rawBody148_32

def rawBody148_34 : StackLang.HolProg 64 :=
.seq rawBody148_16 rawBody148_33

def rawBody148_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody148_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody148_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody148_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody148_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody148_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody148_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody148_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 8

def rawBody148_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def rawBody148_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody148_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody148_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def rawBody148_47 : StackLang.HolProg 64 :=
.seq rawBody148_45 rawBody148_46

def rawBody148_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody148_49 : StackLang.HolProg 64 :=
.seq rawBody148_47 rawBody148_48

def rawBody148_50 : StackLang.HolProg 64 :=
.seq rawBody148_44 rawBody148_49

def rawBody148_51 : StackLang.HolProg 64 :=
.seq rawBody148_43 rawBody148_50

def rawBody148_52 : StackLang.HolProg 64 :=
.seq rawBody148_42 rawBody148_51

def rawBody148_53 : StackLang.HolProg 64 :=
.seq rawBody148_41 rawBody148_52

def rawBody148_54 : StackLang.HolProg 64 :=
.seq rawBody148_40 rawBody148_53

def rawBody148_55 : StackLang.HolProg 64 :=
.seq rawBody148_39 rawBody148_54

def rawBody148_56 : StackLang.HolProg 64 :=
.seq rawBody148_38 rawBody148_55

def rawBody148_57 : StackLang.HolProg 64 :=
.seq rawBody148_37 rawBody148_56

def rawBody148_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 8

def rawBody148_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def rawBody148_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody148_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody148_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def rawBody148_63 : StackLang.HolProg 64 :=
.seq rawBody148_61 rawBody148_62

def rawBody148_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody148_65 : StackLang.HolProg 64 :=
.seq rawBody148_63 rawBody148_64

def rawBody148_66 : StackLang.HolProg 64 :=
.seq rawBody148_60 rawBody148_65

def rawBody148_67 : StackLang.HolProg 64 :=
.seq rawBody148_59 rawBody148_66

def rawBody148_68 : StackLang.HolProg 64 :=
.seq rawBody148_58 rawBody148_67

def rawBody148_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody148_70 : StackLang.HolProg 64 :=
.seq rawBody148_68 rawBody148_69

def rawBody148_71 : StackLang.HolProg 64 :=
.call (some (rawBody148_57, 0, 148, 2)) (Sum.inl 139) (some (rawBody148_70, 148, 3))

def rawBody148_72 : StackLang.HolProg 64 :=
.seq rawBody148_36 rawBody148_71

def rawBody148_73 : StackLang.HolProg 64 :=
.seq rawBody148_35 rawBody148_72

def rawBody148_74 : StackLang.HolProg 64 :=
.seq rawBody148_34 rawBody148_73

def rawBody148_75 : StackLang.HolProg 64 :=
.seq rawBody148_15 rawBody148_74

def rawBody148_76 : StackLang.HolProg 64 :=
.seq rawBody148_12 rawBody148_75

def rawBody148_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody148_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def rawBody148_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody148_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody148_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody148_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody148_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody148_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody148_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody148_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody148_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody148_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody148_89 : StackLang.HolProg 64 :=
.seq rawBody148_87 rawBody148_88

def rawBody148_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody148_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def rawBody148_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody148_93 : StackLang.HolProg 64 :=
.seq rawBody148_91 rawBody148_92

def rawBody148_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 8

def rawBody148_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def rawBody148_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 6

def rawBody148_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def rawBody148_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def rawBody148_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody148_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody148_101 : StackLang.HolProg 64 :=
.seq rawBody148_99 rawBody148_100

def rawBody148_102 : StackLang.HolProg 64 :=
.seq rawBody148_98 rawBody148_101

def rawBody148_103 : StackLang.HolProg 64 :=
.seq rawBody148_97 rawBody148_102

def rawBody148_104 : StackLang.HolProg 64 :=
.seq rawBody148_96 rawBody148_103

def rawBody148_105 : StackLang.HolProg 64 :=
.seq rawBody148_95 rawBody148_104

def rawBody148_106 : StackLang.HolProg 64 :=
.seq rawBody148_94 rawBody148_105

def rawBody148_107 : StackLang.HolProg 64 :=
.seq rawBody148_93 rawBody148_106

def rawBody148_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody148_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 125#64)

def rawBody148_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody148_111 : StackLang.HolProg 64 :=
.seq rawBody148_109 rawBody148_110

def rawBody148_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody148_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody148_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody148_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 148 5

def rawBody148_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody148_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody148_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody148_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody148_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody148_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody148_122 : StackLang.HolProg 64 :=
.seq rawBody148_120 rawBody148_121

def rawBody148_123 : StackLang.HolProg 64 :=
.seq rawBody148_119 rawBody148_122

def rawBody148_124 : StackLang.HolProg 64 :=
.seq rawBody148_118 rawBody148_123

def rawBody148_125 : StackLang.HolProg 64 :=
.seq rawBody148_117 rawBody148_124

def rawBody148_126 : StackLang.HolProg 64 :=
.seq rawBody148_116 rawBody148_125

def rawBody148_127 : StackLang.HolProg 64 :=
.seq rawBody148_115 rawBody148_126

def rawBody148_128 : StackLang.HolProg 64 :=
.seq rawBody148_114 rawBody148_127

def rawBody148_129 : StackLang.HolProg 64 :=
.seq rawBody148_113 rawBody148_128

def rawBody148_130 : StackLang.HolProg 64 :=
.seq rawBody148_112 rawBody148_129

def rawBody148_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody148_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody148_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody148_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody148_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody148_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody148_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody148_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 9

def rawBody148_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 8

def rawBody148_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def rawBody148_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def rawBody148_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody148_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def rawBody148_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody148_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 2

def rawBody148_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody148_147 : StackLang.HolProg 64 :=
.seq rawBody148_145 rawBody148_146

def rawBody148_148 : StackLang.HolProg 64 :=
.seq rawBody148_144 rawBody148_147

def rawBody148_149 : StackLang.HolProg 64 :=
.seq rawBody148_143 rawBody148_148

def rawBody148_150 : StackLang.HolProg 64 :=
.seq rawBody148_142 rawBody148_149

def rawBody148_151 : StackLang.HolProg 64 :=
.seq rawBody148_141 rawBody148_150

def rawBody148_152 : StackLang.HolProg 64 :=
.seq rawBody148_140 rawBody148_151

def rawBody148_153 : StackLang.HolProg 64 :=
.seq rawBody148_139 rawBody148_152

def rawBody148_154 : StackLang.HolProg 64 :=
.seq rawBody148_138 rawBody148_153

def rawBody148_155 : StackLang.HolProg 64 :=
.seq rawBody148_137 rawBody148_154

def rawBody148_156 : StackLang.HolProg 64 :=
.seq rawBody148_136 rawBody148_155

def rawBody148_157 : StackLang.HolProg 64 :=
.seq rawBody148_135 rawBody148_156

def rawBody148_158 : StackLang.HolProg 64 :=
.seq rawBody148_134 rawBody148_157

def rawBody148_159 : StackLang.HolProg 64 :=
.seq rawBody148_133 rawBody148_158

def rawBody148_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 9

def rawBody148_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 8

def rawBody148_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def rawBody148_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def rawBody148_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody148_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def rawBody148_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody148_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 2

def rawBody148_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody148_169 : StackLang.HolProg 64 :=
.seq rawBody148_167 rawBody148_168

def rawBody148_170 : StackLang.HolProg 64 :=
.seq rawBody148_166 rawBody148_169

def rawBody148_171 : StackLang.HolProg 64 :=
.seq rawBody148_165 rawBody148_170

def rawBody148_172 : StackLang.HolProg 64 :=
.seq rawBody148_164 rawBody148_171

def rawBody148_173 : StackLang.HolProg 64 :=
.seq rawBody148_163 rawBody148_172

def rawBody148_174 : StackLang.HolProg 64 :=
.seq rawBody148_162 rawBody148_173

def rawBody148_175 : StackLang.HolProg 64 :=
.seq rawBody148_161 rawBody148_174

def rawBody148_176 : StackLang.HolProg 64 :=
.seq rawBody148_160 rawBody148_175

def rawBody148_177 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody148_178 : StackLang.HolProg 64 :=
.seq rawBody148_176 rawBody148_177

def rawBody148_179 : StackLang.HolProg 64 :=
.call (some (rawBody148_159, 0, 148, 4)) (Sum.inl 103) (some (rawBody148_178, 148, 5))

def rawBody148_180 : StackLang.HolProg 64 :=
.seq rawBody148_132 rawBody148_179

def rawBody148_181 : StackLang.HolProg 64 :=
.seq rawBody148_131 rawBody148_180

def rawBody148_182 : StackLang.HolProg 64 :=
.seq rawBody148_130 rawBody148_181

def rawBody148_183 : StackLang.HolProg 64 :=
.seq rawBody148_111 rawBody148_182

def rawBody148_184 : StackLang.HolProg 64 :=
.seq rawBody148_108 rawBody148_183

def rawBody148_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody148_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody148_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody148_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody148_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def rawBody148_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody148_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody148_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody148_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 255#64)))

def rawBody148_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def rawBody148_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody148_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody148_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 9

def rawBody148_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 8

def rawBody148_199 : StackLang.HolProg 64 :=
.seq rawBody148_197 rawBody148_198

def rawBody148_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody148_201 : StackLang.HolProg 64 :=
.seq rawBody148_199 rawBody148_200

def rawBody148_202 : StackLang.HolProg 64 :=
.seq rawBody148_196 rawBody148_201

def rawBody148_203 : StackLang.HolProg 64 :=
.seq rawBody148_195 rawBody148_202

def rawBody148_204 : StackLang.HolProg 64 :=
.seq rawBody148_194 rawBody148_203

def rawBody148_205 : StackLang.HolProg 64 :=
.seq rawBody148_193 rawBody148_204

def rawBody148_206 : StackLang.HolProg 64 :=
.seq rawBody148_192 rawBody148_205

def rawBody148_207 : StackLang.HolProg 64 :=
.seq rawBody148_191 rawBody148_206

def rawBody148_208 : StackLang.HolProg 64 :=
.seq rawBody148_190 rawBody148_207

def rawBody148_209 : StackLang.HolProg 64 :=
.seq rawBody148_189 rawBody148_208

def rawBody148_210 : StackLang.HolProg 64 :=
.seq rawBody148_188 rawBody148_209

def rawBody148_211 : StackLang.HolProg 64 :=
.seq rawBody148_187 rawBody148_210

def rawBody148_212 : StackLang.HolProg 64 :=
.seq rawBody148_186 rawBody148_211

def rawBody148_213 : StackLang.HolProg 64 :=
.seq rawBody148_185 rawBody148_212

def rawBody148_214 : StackLang.HolProg 64 :=
.seq rawBody148_184 rawBody148_213

def rawBody148_215 : StackLang.HolProg 64 :=
.seq rawBody148_107 rawBody148_214

def rawBody148_216 : StackLang.HolProg 64 :=
.seq rawBody148_90 rawBody148_215

def rawBody148_217 : StackLang.HolProg 64 :=
.seq rawBody148_89 rawBody148_216

def rawBody148_218 : StackLang.HolProg 64 :=
.seq rawBody148_86 rawBody148_217

def rawBody148_219 : StackLang.HolProg 64 :=
.seq rawBody148_85 rawBody148_218

def rawBody148_220 : StackLang.HolProg 64 :=
.seq rawBody148_84 rawBody148_219

def rawBody148_221 : StackLang.HolProg 64 :=
.seq rawBody148_83 rawBody148_220

def rawBody148_222 : StackLang.HolProg 64 :=
.seq rawBody148_82 rawBody148_221

def rawBody148_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody148_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody148_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody148_226 : StackLang.HolProg 64 :=
.seq rawBody148_224 rawBody148_225

def rawBody148_227 : StackLang.HolProg 64 :=
.seq rawBody148_223 rawBody148_226

def rawBody148_228 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody148_222 rawBody148_227

def rawBody148_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody148_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 9

def rawBody148_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 8

def rawBody148_232 : StackLang.HolProg 64 :=
.seq rawBody148_230 rawBody148_231

def rawBody148_233 : StackLang.HolProg 64 :=
.seq rawBody148_229 rawBody148_232

def rawBody148_234 : StackLang.HolProg 64 :=
.seq rawBody148_228 rawBody148_233

def rawBody148_235 : StackLang.HolProg 64 :=
.seq rawBody148_81 rawBody148_234

def rawBody148_236 : StackLang.HolProg 64 :=
.loop rawBody148_235

def rawBody148_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody148_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody148_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def rawBody148_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def rawBody148_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def rawBody148_242 : StackLang.HolProg 64 :=
.seq rawBody148_240 rawBody148_241

def rawBody148_243 : StackLang.HolProg 64 :=
.seq rawBody148_239 rawBody148_242

def rawBody148_244 : StackLang.HolProg 64 :=
.seq rawBody148_238 rawBody148_243

def rawBody148_245 : StackLang.HolProg 64 :=
.seq rawBody148_237 rawBody148_244

def rawBody148_246 : StackLang.HolProg 64 :=
.seq rawBody148_236 rawBody148_245

def rawBody148_247 : StackLang.HolProg 64 :=
.seq rawBody148_80 rawBody148_246

def rawBody148_248 : StackLang.HolProg 64 :=
.seq rawBody148_79 rawBody148_247

def rawBody148_249 : StackLang.HolProg 64 :=
.seq rawBody148_78 rawBody148_248

def rawBody148_250 : StackLang.HolProg 64 :=
.seq rawBody148_77 rawBody148_249

def rawBody148_251 : StackLang.HolProg 64 :=
.seq rawBody148_76 rawBody148_250

def rawBody148_252 : StackLang.HolProg 64 :=
.seq rawBody148_11 rawBody148_251

def rawBody148_253 : StackLang.HolProg 64 :=
.seq rawBody148_0 rawBody148_252

def raw148 : StackLang.HolProg 64 := rawBody148_253
theorem raw148_eq : StackRawCall.compTop RawInfo.rawInfo (function148 (.list [])).1 = raw148 := by
  kernel_rfl
#print axioms raw148_eq
end InitECandidate.Proofs.BackendStages
