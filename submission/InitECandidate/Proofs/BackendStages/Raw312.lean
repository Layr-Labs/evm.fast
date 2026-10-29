import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function312
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody312_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def rawBody312_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def rawBody312_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 8

def rawBody312_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def rawBody312_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 6

def rawBody312_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def rawBody312_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def rawBody312_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def rawBody312_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody312_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 1

def rawBody312_10 : StackLang.HolProg 64 :=
.seq rawBody312_8 rawBody312_9

def rawBody312_11 : StackLang.HolProg 64 :=
.seq rawBody312_7 rawBody312_10

def rawBody312_12 : StackLang.HolProg 64 :=
.seq rawBody312_6 rawBody312_11

def rawBody312_13 : StackLang.HolProg 64 :=
.seq rawBody312_5 rawBody312_12

def rawBody312_14 : StackLang.HolProg 64 :=
.seq rawBody312_4 rawBody312_13

def rawBody312_15 : StackLang.HolProg 64 :=
.seq rawBody312_3 rawBody312_14

def rawBody312_16 : StackLang.HolProg 64 :=
.seq rawBody312_2 rawBody312_15

def rawBody312_17 : StackLang.HolProg 64 :=
.seq rawBody312_1 rawBody312_16

def rawBody312_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 860#64)

def rawBody312_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody312_21 : StackLang.HolProg 64 :=
.seq rawBody312_19 rawBody312_20

def rawBody312_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody312_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody312_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody312_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 312 3

def rawBody312_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody312_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody312_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody312_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody312_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody312_32 : StackLang.HolProg 64 :=
.seq rawBody312_30 rawBody312_31

def rawBody312_33 : StackLang.HolProg 64 :=
.seq rawBody312_29 rawBody312_32

def rawBody312_34 : StackLang.HolProg 64 :=
.seq rawBody312_28 rawBody312_33

def rawBody312_35 : StackLang.HolProg 64 :=
.seq rawBody312_27 rawBody312_34

def rawBody312_36 : StackLang.HolProg 64 :=
.seq rawBody312_26 rawBody312_35

def rawBody312_37 : StackLang.HolProg 64 :=
.seq rawBody312_25 rawBody312_36

def rawBody312_38 : StackLang.HolProg 64 :=
.seq rawBody312_24 rawBody312_37

def rawBody312_39 : StackLang.HolProg 64 :=
.seq rawBody312_23 rawBody312_38

def rawBody312_40 : StackLang.HolProg 64 :=
.seq rawBody312_22 rawBody312_39

def rawBody312_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody312_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody312_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody312_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody312_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody312_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def rawBody312_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def rawBody312_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody312_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody312_52 : StackLang.HolProg 64 :=
.seq rawBody312_50 rawBody312_51

def rawBody312_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody312_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody312_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody312_56 : StackLang.HolProg 64 :=
.seq rawBody312_54 rawBody312_55

def rawBody312_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody312_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody312_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody312_60 : StackLang.HolProg 64 :=
.seq rawBody312_58 rawBody312_59

def rawBody312_61 : StackLang.HolProg 64 :=
.seq rawBody312_57 rawBody312_60

def rawBody312_62 : StackLang.HolProg 64 :=
.seq rawBody312_56 rawBody312_61

def rawBody312_63 : StackLang.HolProg 64 :=
.seq rawBody312_53 rawBody312_62

def rawBody312_64 : StackLang.HolProg 64 :=
.seq rawBody312_52 rawBody312_63

def rawBody312_65 : StackLang.HolProg 64 :=
.seq rawBody312_49 rawBody312_64

def rawBody312_66 : StackLang.HolProg 64 :=
.seq rawBody312_48 rawBody312_65

def rawBody312_67 : StackLang.HolProg 64 :=
.seq rawBody312_47 rawBody312_66

def rawBody312_68 : StackLang.HolProg 64 :=
.seq rawBody312_46 rawBody312_67

def rawBody312_69 : StackLang.HolProg 64 :=
.seq rawBody312_45 rawBody312_68

def rawBody312_70 : StackLang.HolProg 64 :=
.seq rawBody312_44 rawBody312_69

def rawBody312_71 : StackLang.HolProg 64 :=
.seq rawBody312_43 rawBody312_70

def rawBody312_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def rawBody312_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def rawBody312_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody312_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody312_76 : StackLang.HolProg 64 :=
.seq rawBody312_74 rawBody312_75

def rawBody312_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody312_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody312_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody312_80 : StackLang.HolProg 64 :=
.seq rawBody312_78 rawBody312_79

def rawBody312_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody312_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody312_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody312_84 : StackLang.HolProg 64 :=
.seq rawBody312_82 rawBody312_83

def rawBody312_85 : StackLang.HolProg 64 :=
.seq rawBody312_81 rawBody312_84

def rawBody312_86 : StackLang.HolProg 64 :=
.seq rawBody312_80 rawBody312_85

def rawBody312_87 : StackLang.HolProg 64 :=
.seq rawBody312_77 rawBody312_86

def rawBody312_88 : StackLang.HolProg 64 :=
.seq rawBody312_76 rawBody312_87

def rawBody312_89 : StackLang.HolProg 64 :=
.seq rawBody312_73 rawBody312_88

def rawBody312_90 : StackLang.HolProg 64 :=
.seq rawBody312_72 rawBody312_89

def rawBody312_91 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody312_92 : StackLang.HolProg 64 :=
.seq rawBody312_90 rawBody312_91

def rawBody312_93 : StackLang.HolProg 64 :=
.call (some (rawBody312_71, 0, 312, 2)) (Sum.inl 298) (some (rawBody312_92, 312, 3))

def rawBody312_94 : StackLang.HolProg 64 :=
.seq rawBody312_42 rawBody312_93

def rawBody312_95 : StackLang.HolProg 64 :=
.seq rawBody312_41 rawBody312_94

def rawBody312_96 : StackLang.HolProg 64 :=
.seq rawBody312_40 rawBody312_95

def rawBody312_97 : StackLang.HolProg 64 :=
.seq rawBody312_21 rawBody312_96

def rawBody312_98 : StackLang.HolProg 64 :=
.seq rawBody312_18 rawBody312_97

def rawBody312_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody312_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody312_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody312_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def rawBody312_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody312_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 168#64)))

def rawBody312_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody312_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def rawBody312_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def rawBody312_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody312_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody312_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody312_116 : StackLang.HolProg 64 :=
.seq rawBody312_114 rawBody312_115

def rawBody312_117 : StackLang.HolProg 64 :=
.seq rawBody312_113 rawBody312_116

def rawBody312_118 : StackLang.HolProg 64 :=
.seq rawBody312_112 rawBody312_117

def rawBody312_119 : StackLang.HolProg 64 :=
.seq rawBody312_111 rawBody312_118

def rawBody312_120 : StackLang.HolProg 64 :=
.seq rawBody312_110 rawBody312_119

def rawBody312_121 : StackLang.HolProg 64 :=
.seq rawBody312_109 rawBody312_120

def rawBody312_122 : StackLang.HolProg 64 :=
.seq rawBody312_108 rawBody312_121

def rawBody312_123 : StackLang.HolProg 64 :=
.seq rawBody312_107 rawBody312_122

def rawBody312_124 : StackLang.HolProg 64 :=
.seq rawBody312_106 rawBody312_123

def rawBody312_125 : StackLang.HolProg 64 :=
.seq rawBody312_105 rawBody312_124

def rawBody312_126 : StackLang.HolProg 64 :=
.seq rawBody312_104 rawBody312_125

def rawBody312_127 : StackLang.HolProg 64 :=
.seq rawBody312_103 rawBody312_126

def rawBody312_128 : StackLang.HolProg 64 :=
.seq rawBody312_102 rawBody312_127

def rawBody312_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody312_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody312_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody312_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody312_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody312_136 : StackLang.HolProg 64 :=
.seq rawBody312_134 rawBody312_135

def rawBody312_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody312_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody312_139 : StackLang.HolProg 64 :=
.seq rawBody312_137 rawBody312_138

def rawBody312_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def rawBody312_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody312_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody312_143 : StackLang.HolProg 64 :=
.seq rawBody312_141 rawBody312_142

def rawBody312_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 5

def rawBody312_145 : StackLang.HolProg 64 :=
.seq rawBody312_143 rawBody312_144

def rawBody312_146 : StackLang.HolProg 64 :=
.seq rawBody312_140 rawBody312_145

def rawBody312_147 : StackLang.HolProg 64 :=
.seq rawBody312_139 rawBody312_146

def rawBody312_148 : StackLang.HolProg 64 :=
.seq rawBody312_136 rawBody312_147

def rawBody312_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 861#64)

def rawBody312_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody312_152 : StackLang.HolProg 64 :=
.seq rawBody312_150 rawBody312_151

def rawBody312_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody312_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody312_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody312_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 312 5

def rawBody312_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody312_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody312_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody312_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody312_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody312_163 : StackLang.HolProg 64 :=
.seq rawBody312_161 rawBody312_162

def rawBody312_164 : StackLang.HolProg 64 :=
.seq rawBody312_160 rawBody312_163

def rawBody312_165 : StackLang.HolProg 64 :=
.seq rawBody312_159 rawBody312_164

def rawBody312_166 : StackLang.HolProg 64 :=
.seq rawBody312_158 rawBody312_165

def rawBody312_167 : StackLang.HolProg 64 :=
.seq rawBody312_157 rawBody312_166

def rawBody312_168 : StackLang.HolProg 64 :=
.seq rawBody312_156 rawBody312_167

def rawBody312_169 : StackLang.HolProg 64 :=
.seq rawBody312_155 rawBody312_168

def rawBody312_170 : StackLang.HolProg 64 :=
.seq rawBody312_154 rawBody312_169

def rawBody312_171 : StackLang.HolProg 64 :=
.seq rawBody312_153 rawBody312_170

def rawBody312_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody312_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody312_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody312_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody312_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody312_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def rawBody312_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def rawBody312_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody312_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody312_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def rawBody312_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody312_185 : StackLang.HolProg 64 :=
.seq rawBody312_183 rawBody312_184

def rawBody312_186 : StackLang.HolProg 64 :=
.seq rawBody312_182 rawBody312_185

def rawBody312_187 : StackLang.HolProg 64 :=
.seq rawBody312_181 rawBody312_186

def rawBody312_188 : StackLang.HolProg 64 :=
.seq rawBody312_180 rawBody312_187

def rawBody312_189 : StackLang.HolProg 64 :=
.seq rawBody312_179 rawBody312_188

def rawBody312_190 : StackLang.HolProg 64 :=
.seq rawBody312_178 rawBody312_189

def rawBody312_191 : StackLang.HolProg 64 :=
.seq rawBody312_177 rawBody312_190

def rawBody312_192 : StackLang.HolProg 64 :=
.seq rawBody312_176 rawBody312_191

def rawBody312_193 : StackLang.HolProg 64 :=
.seq rawBody312_175 rawBody312_192

def rawBody312_194 : StackLang.HolProg 64 :=
.seq rawBody312_174 rawBody312_193

def rawBody312_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def rawBody312_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def rawBody312_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody312_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody312_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def rawBody312_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody312_201 : StackLang.HolProg 64 :=
.seq rawBody312_199 rawBody312_200

def rawBody312_202 : StackLang.HolProg 64 :=
.seq rawBody312_198 rawBody312_201

def rawBody312_203 : StackLang.HolProg 64 :=
.seq rawBody312_197 rawBody312_202

def rawBody312_204 : StackLang.HolProg 64 :=
.seq rawBody312_196 rawBody312_203

def rawBody312_205 : StackLang.HolProg 64 :=
.seq rawBody312_195 rawBody312_204

def rawBody312_206 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody312_207 : StackLang.HolProg 64 :=
.seq rawBody312_205 rawBody312_206

def rawBody312_208 : StackLang.HolProg 64 :=
.call (some (rawBody312_194, 0, 312, 4)) (Sum.inl 296) (some (rawBody312_207, 312, 5))

def rawBody312_209 : StackLang.HolProg 64 :=
.seq rawBody312_173 rawBody312_208

def rawBody312_210 : StackLang.HolProg 64 :=
.seq rawBody312_172 rawBody312_209

def rawBody312_211 : StackLang.HolProg 64 :=
.seq rawBody312_171 rawBody312_210

def rawBody312_212 : StackLang.HolProg 64 :=
.seq rawBody312_152 rawBody312_211

def rawBody312_213 : StackLang.HolProg 64 :=
.seq rawBody312_149 rawBody312_212

def rawBody312_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody312_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def rawBody312_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody312_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody312_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody312_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody312_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def rawBody312_225 : StackLang.HolProg 64 :=
.seq rawBody312_223 rawBody312_224

def rawBody312_226 : StackLang.HolProg 64 :=
.seq rawBody312_222 rawBody312_225

def rawBody312_227 : StackLang.HolProg 64 :=
.seq rawBody312_221 rawBody312_226

def rawBody312_228 : StackLang.HolProg 64 :=
.seq rawBody312_220 rawBody312_227

def rawBody312_229 : StackLang.HolProg 64 :=
.seq rawBody312_219 rawBody312_228

def rawBody312_230 : StackLang.HolProg 64 :=
.seq rawBody312_218 rawBody312_229

def rawBody312_231 : StackLang.HolProg 64 :=
.seq rawBody312_217 rawBody312_230

def rawBody312_232 : StackLang.HolProg 64 :=
.seq rawBody312_216 rawBody312_231

def rawBody312_233 : StackLang.HolProg 64 :=
.seq rawBody312_215 rawBody312_232

def rawBody312_234 : StackLang.HolProg 64 :=
.seq rawBody312_214 rawBody312_233

def rawBody312_235 : StackLang.HolProg 64 :=
.seq rawBody312_213 rawBody312_234

def rawBody312_236 : StackLang.HolProg 64 :=
.seq rawBody312_148 rawBody312_235

def rawBody312_237 : StackLang.HolProg 64 :=
.seq rawBody312_133 rawBody312_236

def rawBody312_238 : StackLang.HolProg 64 :=
.seq rawBody312_132 rawBody312_237

def rawBody312_239 : StackLang.HolProg 64 :=
.seq rawBody312_131 rawBody312_238

def rawBody312_240 : StackLang.HolProg 64 :=
.seq rawBody312_130 rawBody312_239

def rawBody312_241 : StackLang.HolProg 64 :=
.seq rawBody312_129 rawBody312_240

def rawBody312_242 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody312_128 rawBody312_241

def rawBody312_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody312_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody312_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody312_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def rawBody312_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def rawBody312_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody312_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 168#64)))

def rawBody312_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody312_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody312_256 : StackLang.HolProg 64 :=
.seq rawBody312_254 rawBody312_255

def rawBody312_257 : StackLang.HolProg 64 :=
.seq rawBody312_253 rawBody312_256

def rawBody312_258 : StackLang.HolProg 64 :=
.seq rawBody312_252 rawBody312_257

def rawBody312_259 : StackLang.HolProg 64 :=
.seq rawBody312_251 rawBody312_258

def rawBody312_260 : StackLang.HolProg 64 :=
.seq rawBody312_250 rawBody312_259

def rawBody312_261 : StackLang.HolProg 64 :=
.seq rawBody312_249 rawBody312_260

def rawBody312_262 : StackLang.HolProg 64 :=
.seq rawBody312_248 rawBody312_261

def rawBody312_263 : StackLang.HolProg 64 :=
.seq rawBody312_247 rawBody312_262

def rawBody312_264 : StackLang.HolProg 64 :=
.seq rawBody312_246 rawBody312_263

def rawBody312_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody312_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody312_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody312_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 7

def rawBody312_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 862#64)

def rawBody312_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody312_274 : StackLang.HolProg 64 :=
.seq rawBody312_272 rawBody312_273

def rawBody312_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody312_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody312_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody312_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 312 7

def rawBody312_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody312_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody312_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody312_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody312_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody312_285 : StackLang.HolProg 64 :=
.seq rawBody312_283 rawBody312_284

def rawBody312_286 : StackLang.HolProg 64 :=
.seq rawBody312_282 rawBody312_285

def rawBody312_287 : StackLang.HolProg 64 :=
.seq rawBody312_281 rawBody312_286

def rawBody312_288 : StackLang.HolProg 64 :=
.seq rawBody312_280 rawBody312_287

def rawBody312_289 : StackLang.HolProg 64 :=
.seq rawBody312_279 rawBody312_288

def rawBody312_290 : StackLang.HolProg 64 :=
.seq rawBody312_278 rawBody312_289

def rawBody312_291 : StackLang.HolProg 64 :=
.seq rawBody312_277 rawBody312_290

def rawBody312_292 : StackLang.HolProg 64 :=
.seq rawBody312_276 rawBody312_291

def rawBody312_293 : StackLang.HolProg 64 :=
.seq rawBody312_275 rawBody312_292

def rawBody312_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody312_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody312_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody312_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody312_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody312_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody312_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def rawBody312_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def rawBody312_304 : StackLang.HolProg 64 :=
.seq rawBody312_302 rawBody312_303

def rawBody312_305 : StackLang.HolProg 64 :=
.seq rawBody312_301 rawBody312_304

def rawBody312_306 : StackLang.HolProg 64 :=
.seq rawBody312_300 rawBody312_305

def rawBody312_307 : StackLang.HolProg 64 :=
.seq rawBody312_299 rawBody312_306

def rawBody312_308 : StackLang.HolProg 64 :=
.seq rawBody312_298 rawBody312_307

def rawBody312_309 : StackLang.HolProg 64 :=
.seq rawBody312_297 rawBody312_308

def rawBody312_310 : StackLang.HolProg 64 :=
.seq rawBody312_296 rawBody312_309

def rawBody312_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody312_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def rawBody312_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def rawBody312_314 : StackLang.HolProg 64 :=
.seq rawBody312_312 rawBody312_313

def rawBody312_315 : StackLang.HolProg 64 :=
.seq rawBody312_311 rawBody312_314

def rawBody312_316 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody312_317 : StackLang.HolProg 64 :=
.seq rawBody312_315 rawBody312_316

def rawBody312_318 : StackLang.HolProg 64 :=
.call (some (rawBody312_310, 0, 312, 6)) (Sum.inl 296) (some (rawBody312_317, 312, 7))

def rawBody312_319 : StackLang.HolProg 64 :=
.seq rawBody312_295 rawBody312_318

def rawBody312_320 : StackLang.HolProg 64 :=
.seq rawBody312_294 rawBody312_319

def rawBody312_321 : StackLang.HolProg 64 :=
.seq rawBody312_293 rawBody312_320

def rawBody312_322 : StackLang.HolProg 64 :=
.seq rawBody312_274 rawBody312_321

def rawBody312_323 : StackLang.HolProg 64 :=
.seq rawBody312_271 rawBody312_322

def rawBody312_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody312_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody312_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody312_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody312_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody312_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody312_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody312_335 : StackLang.HolProg 64 :=
.seq rawBody312_333 rawBody312_334

def rawBody312_336 : StackLang.HolProg 64 :=
.seq rawBody312_332 rawBody312_335

def rawBody312_337 : StackLang.HolProg 64 :=
.seq rawBody312_331 rawBody312_336

def rawBody312_338 : StackLang.HolProg 64 :=
.seq rawBody312_330 rawBody312_337

def rawBody312_339 : StackLang.HolProg 64 :=
.seq rawBody312_329 rawBody312_338

def rawBody312_340 : StackLang.HolProg 64 :=
.seq rawBody312_328 rawBody312_339

def rawBody312_341 : StackLang.HolProg 64 :=
.seq rawBody312_327 rawBody312_340

def rawBody312_342 : StackLang.HolProg 64 :=
.seq rawBody312_326 rawBody312_341

def rawBody312_343 : StackLang.HolProg 64 :=
.seq rawBody312_325 rawBody312_342

def rawBody312_344 : StackLang.HolProg 64 :=
.seq rawBody312_324 rawBody312_343

def rawBody312_345 : StackLang.HolProg 64 :=
.seq rawBody312_323 rawBody312_344

def rawBody312_346 : StackLang.HolProg 64 :=
.seq rawBody312_270 rawBody312_345

def rawBody312_347 : StackLang.HolProg 64 :=
.seq rawBody312_269 rawBody312_346

def rawBody312_348 : StackLang.HolProg 64 :=
.seq rawBody312_268 rawBody312_347

def rawBody312_349 : StackLang.HolProg 64 :=
.seq rawBody312_267 rawBody312_348

def rawBody312_350 : StackLang.HolProg 64 :=
.seq rawBody312_266 rawBody312_349

def rawBody312_351 : StackLang.HolProg 64 :=
.seq rawBody312_265 rawBody312_350

def rawBody312_352 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody312_264 rawBody312_351

def rawBody312_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody312_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody312_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def rawBody312_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody312_357 : StackLang.HolProg 64 :=
.seq rawBody312_355 rawBody312_356

def rawBody312_358 : StackLang.HolProg 64 :=
.seq rawBody312_354 rawBody312_357

def rawBody312_359 : StackLang.HolProg 64 :=
.seq rawBody312_353 rawBody312_358

def rawBody312_360 : StackLang.HolProg 64 :=
.seq rawBody312_352 rawBody312_359

def rawBody312_361 : StackLang.HolProg 64 :=
.seq rawBody312_245 rawBody312_360

def rawBody312_362 : StackLang.HolProg 64 :=
.seq rawBody312_244 rawBody312_361

def rawBody312_363 : StackLang.HolProg 64 :=
.seq rawBody312_243 rawBody312_362

def rawBody312_364 : StackLang.HolProg 64 :=
.seq rawBody312_242 rawBody312_363

def rawBody312_365 : StackLang.HolProg 64 :=
.seq rawBody312_101 rawBody312_364

def rawBody312_366 : StackLang.HolProg 64 :=
.seq rawBody312_100 rawBody312_365

def rawBody312_367 : StackLang.HolProg 64 :=
.seq rawBody312_99 rawBody312_366

def rawBody312_368 : StackLang.HolProg 64 :=
.seq rawBody312_98 rawBody312_367

def rawBody312_369 : StackLang.HolProg 64 :=
.seq rawBody312_17 rawBody312_368

def rawBody312_370 : StackLang.HolProg 64 :=
.seq rawBody312_0 rawBody312_369

def raw312 : StackLang.HolProg 64 := rawBody312_370
theorem raw312_eq : StackRawCall.compTop RawInfo.rawInfo (function312 (.list [])).1 = raw312 := by
  kernel_rfl
#print axioms raw312_eq
end InitECandidate.Proofs.BackendStages
