import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function202
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody202_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody202_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody202_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody202_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 252#64)

def rawBody202_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody202_5 : StackLang.HolProg 64 :=
.seq rawBody202_3 rawBody202_4

def rawBody202_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody202_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody202_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody202_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 202 3

def rawBody202_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody202_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody202_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody202_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody202_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody202_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody202_16 : StackLang.HolProg 64 :=
.seq rawBody202_14 rawBody202_15

def rawBody202_17 : StackLang.HolProg 64 :=
.seq rawBody202_13 rawBody202_16

def rawBody202_18 : StackLang.HolProg 64 :=
.seq rawBody202_12 rawBody202_17

def rawBody202_19 : StackLang.HolProg 64 :=
.seq rawBody202_11 rawBody202_18

def rawBody202_20 : StackLang.HolProg 64 :=
.seq rawBody202_10 rawBody202_19

def rawBody202_21 : StackLang.HolProg 64 :=
.seq rawBody202_9 rawBody202_20

def rawBody202_22 : StackLang.HolProg 64 :=
.seq rawBody202_8 rawBody202_21

def rawBody202_23 : StackLang.HolProg 64 :=
.seq rawBody202_7 rawBody202_22

def rawBody202_24 : StackLang.HolProg 64 :=
.seq rawBody202_6 rawBody202_23

def rawBody202_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody202_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody202_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody202_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody202_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody202_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody202_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody202_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody202_33 : StackLang.HolProg 64 :=
.seq rawBody202_31 rawBody202_32

def rawBody202_34 : StackLang.HolProg 64 :=
.seq rawBody202_30 rawBody202_33

def rawBody202_35 : StackLang.HolProg 64 :=
.seq rawBody202_29 rawBody202_34

def rawBody202_36 : StackLang.HolProg 64 :=
.seq rawBody202_28 rawBody202_35

def rawBody202_37 : StackLang.HolProg 64 :=
.seq rawBody202_27 rawBody202_36

def rawBody202_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody202_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody202_40 : StackLang.HolProg 64 :=
.seq rawBody202_38 rawBody202_39

def rawBody202_41 : StackLang.HolProg 64 :=
.call (some (rawBody202_37, 0, 202, 2)) (Sum.inl 115) (some (rawBody202_40, 202, 3))

def rawBody202_42 : StackLang.HolProg 64 :=
.seq rawBody202_26 rawBody202_41

def rawBody202_43 : StackLang.HolProg 64 :=
.seq rawBody202_25 rawBody202_42

def rawBody202_44 : StackLang.HolProg 64 :=
.seq rawBody202_24 rawBody202_43

def rawBody202_45 : StackLang.HolProg 64 :=
.seq rawBody202_5 rawBody202_44

def rawBody202_46 : StackLang.HolProg 64 :=
.seq rawBody202_2 rawBody202_45

def rawBody202_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody202_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody202_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1#64)

def rawBody202_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody202_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody202_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def rawBody202_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def rawBody202_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def rawBody202_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583343#64)

def rawBody202_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody202_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody202_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody202_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def rawBody202_60 : StackLang.HolProg 64 :=
.seq rawBody202_58 rawBody202_59

def rawBody202_61 : StackLang.HolProg 64 :=
.seq rawBody202_57 rawBody202_60

def rawBody202_62 : StackLang.HolProg 64 :=
.seq rawBody202_56 rawBody202_61

def rawBody202_63 : StackLang.HolProg 64 :=
.seq rawBody202_55 rawBody202_62

def rawBody202_64 : StackLang.HolProg 64 :=
.seq rawBody202_54 rawBody202_63

def rawBody202_65 : StackLang.HolProg 64 :=
.seq rawBody202_53 rawBody202_64

def rawBody202_66 : StackLang.HolProg 64 :=
.seq rawBody202_52 rawBody202_65

def rawBody202_67 : StackLang.HolProg 64 :=
.seq rawBody202_51 rawBody202_66

def rawBody202_68 : StackLang.HolProg 64 :=
.seq rawBody202_50 rawBody202_67

def rawBody202_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody202_70 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) rawBody202_68 rawBody202_69

def rawBody202_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody202_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody202_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody202_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def rawBody202_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def rawBody202_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def rawBody202_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583343#64)

def rawBody202_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody202_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody202_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody202_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody202_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody202_83 : StackLang.HolProg 64 :=
.seq rawBody202_81 rawBody202_82

def rawBody202_84 : StackLang.HolProg 64 :=
.seq rawBody202_80 rawBody202_83

def rawBody202_85 : StackLang.HolProg 64 :=
.seq rawBody202_79 rawBody202_84

def rawBody202_86 : StackLang.HolProg 64 :=
.seq rawBody202_78 rawBody202_85

def rawBody202_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody202_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 253#64)

def rawBody202_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody202_90 : StackLang.HolProg 64 :=
.seq rawBody202_88 rawBody202_89

def rawBody202_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody202_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody202_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody202_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 202 5

def rawBody202_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody202_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody202_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody202_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody202_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody202_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody202_101 : StackLang.HolProg 64 :=
.seq rawBody202_99 rawBody202_100

def rawBody202_102 : StackLang.HolProg 64 :=
.seq rawBody202_98 rawBody202_101

def rawBody202_103 : StackLang.HolProg 64 :=
.seq rawBody202_97 rawBody202_102

def rawBody202_104 : StackLang.HolProg 64 :=
.seq rawBody202_96 rawBody202_103

def rawBody202_105 : StackLang.HolProg 64 :=
.seq rawBody202_95 rawBody202_104

def rawBody202_106 : StackLang.HolProg 64 :=
.seq rawBody202_94 rawBody202_105

def rawBody202_107 : StackLang.HolProg 64 :=
.seq rawBody202_93 rawBody202_106

def rawBody202_108 : StackLang.HolProg 64 :=
.seq rawBody202_92 rawBody202_107

def rawBody202_109 : StackLang.HolProg 64 :=
.seq rawBody202_91 rawBody202_108

def rawBody202_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody202_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody202_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody202_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody202_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody202_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody202_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody202_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody202_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody202_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody202_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody202_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody202_122 : StackLang.HolProg 64 :=
.seq rawBody202_120 rawBody202_121

def rawBody202_123 : StackLang.HolProg 64 :=
.seq rawBody202_119 rawBody202_122

def rawBody202_124 : StackLang.HolProg 64 :=
.seq rawBody202_118 rawBody202_123

def rawBody202_125 : StackLang.HolProg 64 :=
.seq rawBody202_117 rawBody202_124

def rawBody202_126 : StackLang.HolProg 64 :=
.seq rawBody202_116 rawBody202_125

def rawBody202_127 : StackLang.HolProg 64 :=
.seq rawBody202_115 rawBody202_126

def rawBody202_128 : StackLang.HolProg 64 :=
.seq rawBody202_114 rawBody202_127

def rawBody202_129 : StackLang.HolProg 64 :=
.seq rawBody202_113 rawBody202_128

def rawBody202_130 : StackLang.HolProg 64 :=
.seq rawBody202_112 rawBody202_129

def rawBody202_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody202_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody202_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody202_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody202_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody202_136 : StackLang.HolProg 64 :=
.seq rawBody202_134 rawBody202_135

def rawBody202_137 : StackLang.HolProg 64 :=
.seq rawBody202_133 rawBody202_136

def rawBody202_138 : StackLang.HolProg 64 :=
.seq rawBody202_132 rawBody202_137

def rawBody202_139 : StackLang.HolProg 64 :=
.seq rawBody202_131 rawBody202_138

def rawBody202_140 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody202_141 : StackLang.HolProg 64 :=
.seq rawBody202_139 rawBody202_140

def rawBody202_142 : StackLang.HolProg 64 :=
.call (some (rawBody202_130, 0, 202, 4)) (Sum.inl 106) (some (rawBody202_141, 202, 5))

def rawBody202_143 : StackLang.HolProg 64 :=
.seq rawBody202_111 rawBody202_142

def rawBody202_144 : StackLang.HolProg 64 :=
.seq rawBody202_110 rawBody202_143

def rawBody202_145 : StackLang.HolProg 64 :=
.seq rawBody202_109 rawBody202_144

def rawBody202_146 : StackLang.HolProg 64 :=
.seq rawBody202_90 rawBody202_145

def rawBody202_147 : StackLang.HolProg 64 :=
.seq rawBody202_87 rawBody202_146

def rawBody202_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody202_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody202_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody202_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody202_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody202_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def rawBody202_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def rawBody202_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def rawBody202_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583343#64)

def rawBody202_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody202_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody202_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody202_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def rawBody202_161 : StackLang.HolProg 64 :=
.seq rawBody202_159 rawBody202_160

def rawBody202_162 : StackLang.HolProg 64 :=
.seq rawBody202_158 rawBody202_161

def rawBody202_163 : StackLang.HolProg 64 :=
.seq rawBody202_157 rawBody202_162

def rawBody202_164 : StackLang.HolProg 64 :=
.seq rawBody202_156 rawBody202_163

def rawBody202_165 : StackLang.HolProg 64 :=
.seq rawBody202_155 rawBody202_164

def rawBody202_166 : StackLang.HolProg 64 :=
.seq rawBody202_154 rawBody202_165

def rawBody202_167 : StackLang.HolProg 64 :=
.seq rawBody202_153 rawBody202_166

def rawBody202_168 : StackLang.HolProg 64 :=
.seq rawBody202_152 rawBody202_167

def rawBody202_169 : StackLang.HolProg 64 :=
.seq rawBody202_151 rawBody202_168

def rawBody202_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody202_171 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody202_169 rawBody202_170

def rawBody202_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody202_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody202_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody202_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody202_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody202_177 : StackLang.HolProg 64 :=
.seq rawBody202_175 rawBody202_176

def rawBody202_178 : StackLang.HolProg 64 :=
.seq rawBody202_174 rawBody202_177

def rawBody202_179 : StackLang.HolProg 64 :=
.seq rawBody202_173 rawBody202_178

def rawBody202_180 : StackLang.HolProg 64 :=
.seq rawBody202_172 rawBody202_179

def rawBody202_181 : StackLang.HolProg 64 :=
.seq rawBody202_171 rawBody202_180

def rawBody202_182 : StackLang.HolProg 64 :=
.seq rawBody202_150 rawBody202_181

def rawBody202_183 : StackLang.HolProg 64 :=
.seq rawBody202_149 rawBody202_182

def rawBody202_184 : StackLang.HolProg 64 :=
.seq rawBody202_148 rawBody202_183

def rawBody202_185 : StackLang.HolProg 64 :=
.seq rawBody202_147 rawBody202_184

def rawBody202_186 : StackLang.HolProg 64 :=
.seq rawBody202_86 rawBody202_185

def rawBody202_187 : StackLang.HolProg 64 :=
.seq rawBody202_77 rawBody202_186

def rawBody202_188 : StackLang.HolProg 64 :=
.seq rawBody202_76 rawBody202_187

def rawBody202_189 : StackLang.HolProg 64 :=
.seq rawBody202_75 rawBody202_188

def rawBody202_190 : StackLang.HolProg 64 :=
.seq rawBody202_74 rawBody202_189

def rawBody202_191 : StackLang.HolProg 64 :=
.seq rawBody202_73 rawBody202_190

def rawBody202_192 : StackLang.HolProg 64 :=
.seq rawBody202_72 rawBody202_191

def rawBody202_193 : StackLang.HolProg 64 :=
.seq rawBody202_71 rawBody202_192

def rawBody202_194 : StackLang.HolProg 64 :=
.seq rawBody202_70 rawBody202_193

def rawBody202_195 : StackLang.HolProg 64 :=
.seq rawBody202_49 rawBody202_194

def rawBody202_196 : StackLang.HolProg 64 :=
.seq rawBody202_48 rawBody202_195

def rawBody202_197 : StackLang.HolProg 64 :=
.seq rawBody202_47 rawBody202_196

def rawBody202_198 : StackLang.HolProg 64 :=
.seq rawBody202_46 rawBody202_197

def rawBody202_199 : StackLang.HolProg 64 :=
.seq rawBody202_1 rawBody202_198

def rawBody202_200 : StackLang.HolProg 64 :=
.seq rawBody202_0 rawBody202_199

def raw202 : StackLang.HolProg 64 := rawBody202_200
theorem raw202_eq : StackRawCall.compTop RawInfo.rawInfo (function202 (.list [])).1 = raw202 := by
  kernel_rfl
#print axioms raw202_eq
end InitECandidate.Proofs.BackendStages
