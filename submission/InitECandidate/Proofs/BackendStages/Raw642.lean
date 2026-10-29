import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function642
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody642_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody642_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody642_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody642_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2619#64)

def rawBody642_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody642_5 : StackLang.HolProg 64 :=
.seq rawBody642_3 rawBody642_4

def rawBody642_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody642_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody642_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody642_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 642 3

def rawBody642_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody642_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody642_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody642_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody642_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody642_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody642_16 : StackLang.HolProg 64 :=
.seq rawBody642_14 rawBody642_15

def rawBody642_17 : StackLang.HolProg 64 :=
.seq rawBody642_13 rawBody642_16

def rawBody642_18 : StackLang.HolProg 64 :=
.seq rawBody642_12 rawBody642_17

def rawBody642_19 : StackLang.HolProg 64 :=
.seq rawBody642_11 rawBody642_18

def rawBody642_20 : StackLang.HolProg 64 :=
.seq rawBody642_10 rawBody642_19

def rawBody642_21 : StackLang.HolProg 64 :=
.seq rawBody642_9 rawBody642_20

def rawBody642_22 : StackLang.HolProg 64 :=
.seq rawBody642_8 rawBody642_21

def rawBody642_23 : StackLang.HolProg 64 :=
.seq rawBody642_7 rawBody642_22

def rawBody642_24 : StackLang.HolProg 64 :=
.seq rawBody642_6 rawBody642_23

def rawBody642_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody642_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody642_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody642_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody642_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody642_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody642_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody642_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody642_33 : StackLang.HolProg 64 :=
.seq rawBody642_31 rawBody642_32

def rawBody642_34 : StackLang.HolProg 64 :=
.seq rawBody642_30 rawBody642_33

def rawBody642_35 : StackLang.HolProg 64 :=
.seq rawBody642_29 rawBody642_34

def rawBody642_36 : StackLang.HolProg 64 :=
.seq rawBody642_28 rawBody642_35

def rawBody642_37 : StackLang.HolProg 64 :=
.seq rawBody642_27 rawBody642_36

def rawBody642_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody642_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody642_40 : StackLang.HolProg 64 :=
.seq rawBody642_38 rawBody642_39

def rawBody642_41 : StackLang.HolProg 64 :=
.call (some (rawBody642_37, 0, 642, 2)) (Sum.inl 115) (some (rawBody642_40, 642, 3))

def rawBody642_42 : StackLang.HolProg 64 :=
.seq rawBody642_26 rawBody642_41

def rawBody642_43 : StackLang.HolProg 64 :=
.seq rawBody642_25 rawBody642_42

def rawBody642_44 : StackLang.HolProg 64 :=
.seq rawBody642_24 rawBody642_43

def rawBody642_45 : StackLang.HolProg 64 :=
.seq rawBody642_5 rawBody642_44

def rawBody642_46 : StackLang.HolProg 64 :=
.seq rawBody642_2 rawBody642_45

def rawBody642_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody642_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody642_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1#64)

def rawBody642_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody642_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody642_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744069414584321#64)

def rawBody642_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def rawBody642_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def rawBody642_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744073709551615#64)

def rawBody642_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody642_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody642_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody642_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def rawBody642_60 : StackLang.HolProg 64 :=
.seq rawBody642_58 rawBody642_59

def rawBody642_61 : StackLang.HolProg 64 :=
.seq rawBody642_57 rawBody642_60

def rawBody642_62 : StackLang.HolProg 64 :=
.seq rawBody642_56 rawBody642_61

def rawBody642_63 : StackLang.HolProg 64 :=
.seq rawBody642_55 rawBody642_62

def rawBody642_64 : StackLang.HolProg 64 :=
.seq rawBody642_54 rawBody642_63

def rawBody642_65 : StackLang.HolProg 64 :=
.seq rawBody642_53 rawBody642_64

def rawBody642_66 : StackLang.HolProg 64 :=
.seq rawBody642_52 rawBody642_65

def rawBody642_67 : StackLang.HolProg 64 :=
.seq rawBody642_51 rawBody642_66

def rawBody642_68 : StackLang.HolProg 64 :=
.seq rawBody642_50 rawBody642_67

def rawBody642_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody642_70 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) rawBody642_68 rawBody642_69

def rawBody642_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody642_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody642_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody642_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744069414584321#64)

def rawBody642_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def rawBody642_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def rawBody642_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744073709551615#64)

def rawBody642_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody642_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody642_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody642_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody642_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody642_83 : StackLang.HolProg 64 :=
.seq rawBody642_81 rawBody642_82

def rawBody642_84 : StackLang.HolProg 64 :=
.seq rawBody642_80 rawBody642_83

def rawBody642_85 : StackLang.HolProg 64 :=
.seq rawBody642_79 rawBody642_84

def rawBody642_86 : StackLang.HolProg 64 :=
.seq rawBody642_78 rawBody642_85

def rawBody642_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody642_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2620#64)

def rawBody642_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody642_90 : StackLang.HolProg 64 :=
.seq rawBody642_88 rawBody642_89

def rawBody642_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody642_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody642_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody642_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 642 5

def rawBody642_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody642_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody642_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody642_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody642_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody642_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody642_101 : StackLang.HolProg 64 :=
.seq rawBody642_99 rawBody642_100

def rawBody642_102 : StackLang.HolProg 64 :=
.seq rawBody642_98 rawBody642_101

def rawBody642_103 : StackLang.HolProg 64 :=
.seq rawBody642_97 rawBody642_102

def rawBody642_104 : StackLang.HolProg 64 :=
.seq rawBody642_96 rawBody642_103

def rawBody642_105 : StackLang.HolProg 64 :=
.seq rawBody642_95 rawBody642_104

def rawBody642_106 : StackLang.HolProg 64 :=
.seq rawBody642_94 rawBody642_105

def rawBody642_107 : StackLang.HolProg 64 :=
.seq rawBody642_93 rawBody642_106

def rawBody642_108 : StackLang.HolProg 64 :=
.seq rawBody642_92 rawBody642_107

def rawBody642_109 : StackLang.HolProg 64 :=
.seq rawBody642_91 rawBody642_108

def rawBody642_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody642_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody642_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody642_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody642_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody642_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody642_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody642_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody642_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody642_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody642_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody642_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody642_122 : StackLang.HolProg 64 :=
.seq rawBody642_120 rawBody642_121

def rawBody642_123 : StackLang.HolProg 64 :=
.seq rawBody642_119 rawBody642_122

def rawBody642_124 : StackLang.HolProg 64 :=
.seq rawBody642_118 rawBody642_123

def rawBody642_125 : StackLang.HolProg 64 :=
.seq rawBody642_117 rawBody642_124

def rawBody642_126 : StackLang.HolProg 64 :=
.seq rawBody642_116 rawBody642_125

def rawBody642_127 : StackLang.HolProg 64 :=
.seq rawBody642_115 rawBody642_126

def rawBody642_128 : StackLang.HolProg 64 :=
.seq rawBody642_114 rawBody642_127

def rawBody642_129 : StackLang.HolProg 64 :=
.seq rawBody642_113 rawBody642_128

def rawBody642_130 : StackLang.HolProg 64 :=
.seq rawBody642_112 rawBody642_129

def rawBody642_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody642_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody642_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody642_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody642_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody642_136 : StackLang.HolProg 64 :=
.seq rawBody642_134 rawBody642_135

def rawBody642_137 : StackLang.HolProg 64 :=
.seq rawBody642_133 rawBody642_136

def rawBody642_138 : StackLang.HolProg 64 :=
.seq rawBody642_132 rawBody642_137

def rawBody642_139 : StackLang.HolProg 64 :=
.seq rawBody642_131 rawBody642_138

def rawBody642_140 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody642_141 : StackLang.HolProg 64 :=
.seq rawBody642_139 rawBody642_140

def rawBody642_142 : StackLang.HolProg 64 :=
.call (some (rawBody642_130, 0, 642, 4)) (Sum.inl 106) (some (rawBody642_141, 642, 5))

def rawBody642_143 : StackLang.HolProg 64 :=
.seq rawBody642_111 rawBody642_142

def rawBody642_144 : StackLang.HolProg 64 :=
.seq rawBody642_110 rawBody642_143

def rawBody642_145 : StackLang.HolProg 64 :=
.seq rawBody642_109 rawBody642_144

def rawBody642_146 : StackLang.HolProg 64 :=
.seq rawBody642_90 rawBody642_145

def rawBody642_147 : StackLang.HolProg 64 :=
.seq rawBody642_87 rawBody642_146

def rawBody642_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody642_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody642_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody642_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody642_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody642_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744069414584321#64)

def rawBody642_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def rawBody642_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def rawBody642_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744073709551615#64)

def rawBody642_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody642_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody642_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody642_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def rawBody642_161 : StackLang.HolProg 64 :=
.seq rawBody642_159 rawBody642_160

def rawBody642_162 : StackLang.HolProg 64 :=
.seq rawBody642_158 rawBody642_161

def rawBody642_163 : StackLang.HolProg 64 :=
.seq rawBody642_157 rawBody642_162

def rawBody642_164 : StackLang.HolProg 64 :=
.seq rawBody642_156 rawBody642_163

def rawBody642_165 : StackLang.HolProg 64 :=
.seq rawBody642_155 rawBody642_164

def rawBody642_166 : StackLang.HolProg 64 :=
.seq rawBody642_154 rawBody642_165

def rawBody642_167 : StackLang.HolProg 64 :=
.seq rawBody642_153 rawBody642_166

def rawBody642_168 : StackLang.HolProg 64 :=
.seq rawBody642_152 rawBody642_167

def rawBody642_169 : StackLang.HolProg 64 :=
.seq rawBody642_151 rawBody642_168

def rawBody642_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody642_171 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody642_169 rawBody642_170

def rawBody642_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody642_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody642_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody642_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody642_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody642_177 : StackLang.HolProg 64 :=
.seq rawBody642_175 rawBody642_176

def rawBody642_178 : StackLang.HolProg 64 :=
.seq rawBody642_174 rawBody642_177

def rawBody642_179 : StackLang.HolProg 64 :=
.seq rawBody642_173 rawBody642_178

def rawBody642_180 : StackLang.HolProg 64 :=
.seq rawBody642_172 rawBody642_179

def rawBody642_181 : StackLang.HolProg 64 :=
.seq rawBody642_171 rawBody642_180

def rawBody642_182 : StackLang.HolProg 64 :=
.seq rawBody642_150 rawBody642_181

def rawBody642_183 : StackLang.HolProg 64 :=
.seq rawBody642_149 rawBody642_182

def rawBody642_184 : StackLang.HolProg 64 :=
.seq rawBody642_148 rawBody642_183

def rawBody642_185 : StackLang.HolProg 64 :=
.seq rawBody642_147 rawBody642_184

def rawBody642_186 : StackLang.HolProg 64 :=
.seq rawBody642_86 rawBody642_185

def rawBody642_187 : StackLang.HolProg 64 :=
.seq rawBody642_77 rawBody642_186

def rawBody642_188 : StackLang.HolProg 64 :=
.seq rawBody642_76 rawBody642_187

def rawBody642_189 : StackLang.HolProg 64 :=
.seq rawBody642_75 rawBody642_188

def rawBody642_190 : StackLang.HolProg 64 :=
.seq rawBody642_74 rawBody642_189

def rawBody642_191 : StackLang.HolProg 64 :=
.seq rawBody642_73 rawBody642_190

def rawBody642_192 : StackLang.HolProg 64 :=
.seq rawBody642_72 rawBody642_191

def rawBody642_193 : StackLang.HolProg 64 :=
.seq rawBody642_71 rawBody642_192

def rawBody642_194 : StackLang.HolProg 64 :=
.seq rawBody642_70 rawBody642_193

def rawBody642_195 : StackLang.HolProg 64 :=
.seq rawBody642_49 rawBody642_194

def rawBody642_196 : StackLang.HolProg 64 :=
.seq rawBody642_48 rawBody642_195

def rawBody642_197 : StackLang.HolProg 64 :=
.seq rawBody642_47 rawBody642_196

def rawBody642_198 : StackLang.HolProg 64 :=
.seq rawBody642_46 rawBody642_197

def rawBody642_199 : StackLang.HolProg 64 :=
.seq rawBody642_1 rawBody642_198

def rawBody642_200 : StackLang.HolProg 64 :=
.seq rawBody642_0 rawBody642_199

def raw642 : StackLang.HolProg 64 := rawBody642_200
theorem raw642_eq : StackRawCall.compTop RawInfo.rawInfo (function642 (.list [])).1 = raw642 := by
  kernel_rfl
#print axioms raw642_eq
end InitECandidate.Proofs.BackendStages
