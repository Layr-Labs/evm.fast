import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw312
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody312_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def AllocBody312_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody312_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 8

def AllocBody312_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def AllocBody312_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 6

def AllocBody312_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def AllocBody312_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody312_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody312_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody312_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 1

def AllocBody312_10 : StackLang.HolProg 64 :=
.seq AllocBody312_8 AllocBody312_9

def AllocBody312_11 : StackLang.HolProg 64 :=
.seq AllocBody312_7 AllocBody312_10

def AllocBody312_12 : StackLang.HolProg 64 :=
.seq AllocBody312_6 AllocBody312_11

def AllocBody312_13 : StackLang.HolProg 64 :=
.seq AllocBody312_5 AllocBody312_12

def AllocBody312_14 : StackLang.HolProg 64 :=
.seq AllocBody312_4 AllocBody312_13

def AllocBody312_15 : StackLang.HolProg 64 :=
.seq AllocBody312_3 AllocBody312_14

def AllocBody312_16 : StackLang.HolProg 64 :=
.seq AllocBody312_2 AllocBody312_15

def AllocBody312_17 : StackLang.HolProg 64 :=
.seq AllocBody312_1 AllocBody312_16

def AllocBody312_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 860#64)

def AllocBody312_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody312_21 : StackLang.HolProg 64 :=
.seq AllocBody312_19 AllocBody312_20

def AllocBody312_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody312_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody312_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody312_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 312 3

def AllocBody312_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody312_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody312_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody312_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody312_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody312_32 : StackLang.HolProg 64 :=
.seq AllocBody312_30 AllocBody312_31

def AllocBody312_33 : StackLang.HolProg 64 :=
.seq AllocBody312_29 AllocBody312_32

def AllocBody312_34 : StackLang.HolProg 64 :=
.seq AllocBody312_28 AllocBody312_33

def AllocBody312_35 : StackLang.HolProg 64 :=
.seq AllocBody312_27 AllocBody312_34

def AllocBody312_36 : StackLang.HolProg 64 :=
.seq AllocBody312_26 AllocBody312_35

def AllocBody312_37 : StackLang.HolProg 64 :=
.seq AllocBody312_25 AllocBody312_36

def AllocBody312_38 : StackLang.HolProg 64 :=
.seq AllocBody312_24 AllocBody312_37

def AllocBody312_39 : StackLang.HolProg 64 :=
.seq AllocBody312_23 AllocBody312_38

def AllocBody312_40 : StackLang.HolProg 64 :=
.seq AllocBody312_22 AllocBody312_39

def AllocBody312_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody312_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody312_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody312_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody312_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody312_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody312_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody312_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody312_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody312_52 : StackLang.HolProg 64 :=
.seq AllocBody312_50 AllocBody312_51

def AllocBody312_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody312_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody312_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody312_56 : StackLang.HolProg 64 :=
.seq AllocBody312_54 AllocBody312_55

def AllocBody312_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody312_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody312_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody312_60 : StackLang.HolProg 64 :=
.seq AllocBody312_58 AllocBody312_59

def AllocBody312_61 : StackLang.HolProg 64 :=
.seq AllocBody312_57 AllocBody312_60

def AllocBody312_62 : StackLang.HolProg 64 :=
.seq AllocBody312_56 AllocBody312_61

def AllocBody312_63 : StackLang.HolProg 64 :=
.seq AllocBody312_53 AllocBody312_62

def AllocBody312_64 : StackLang.HolProg 64 :=
.seq AllocBody312_52 AllocBody312_63

def AllocBody312_65 : StackLang.HolProg 64 :=
.seq AllocBody312_49 AllocBody312_64

def AllocBody312_66 : StackLang.HolProg 64 :=
.seq AllocBody312_48 AllocBody312_65

def AllocBody312_67 : StackLang.HolProg 64 :=
.seq AllocBody312_47 AllocBody312_66

def AllocBody312_68 : StackLang.HolProg 64 :=
.seq AllocBody312_46 AllocBody312_67

def AllocBody312_69 : StackLang.HolProg 64 :=
.seq AllocBody312_45 AllocBody312_68

def AllocBody312_70 : StackLang.HolProg 64 :=
.seq AllocBody312_44 AllocBody312_69

def AllocBody312_71 : StackLang.HolProg 64 :=
.seq AllocBody312_43 AllocBody312_70

def AllocBody312_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody312_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody312_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody312_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody312_76 : StackLang.HolProg 64 :=
.seq AllocBody312_74 AllocBody312_75

def AllocBody312_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody312_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody312_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody312_80 : StackLang.HolProg 64 :=
.seq AllocBody312_78 AllocBody312_79

def AllocBody312_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody312_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody312_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody312_84 : StackLang.HolProg 64 :=
.seq AllocBody312_82 AllocBody312_83

def AllocBody312_85 : StackLang.HolProg 64 :=
.seq AllocBody312_81 AllocBody312_84

def AllocBody312_86 : StackLang.HolProg 64 :=
.seq AllocBody312_80 AllocBody312_85

def AllocBody312_87 : StackLang.HolProg 64 :=
.seq AllocBody312_77 AllocBody312_86

def AllocBody312_88 : StackLang.HolProg 64 :=
.seq AllocBody312_76 AllocBody312_87

def AllocBody312_89 : StackLang.HolProg 64 :=
.seq AllocBody312_73 AllocBody312_88

def AllocBody312_90 : StackLang.HolProg 64 :=
.seq AllocBody312_72 AllocBody312_89

def AllocBody312_91 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody312_92 : StackLang.HolProg 64 :=
.seq AllocBody312_90 AllocBody312_91

def AllocBody312_93 : StackLang.HolProg 64 :=
.call (some (AllocBody312_71, 0, 312, 2)) (Sum.inl 298) (some (AllocBody312_92, 312, 3))

def AllocBody312_94 : StackLang.HolProg 64 :=
.seq AllocBody312_42 AllocBody312_93

def AllocBody312_95 : StackLang.HolProg 64 :=
.seq AllocBody312_41 AllocBody312_94

def AllocBody312_96 : StackLang.HolProg 64 :=
.seq AllocBody312_40 AllocBody312_95

def AllocBody312_97 : StackLang.HolProg 64 :=
.seq AllocBody312_21 AllocBody312_96

def AllocBody312_98 : StackLang.HolProg 64 :=
.seq AllocBody312_18 AllocBody312_97

def AllocBody312_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody312_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody312_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody312_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def AllocBody312_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody312_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 168#64)))

def AllocBody312_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody312_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def AllocBody312_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def AllocBody312_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody312_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody312_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody312_116 : StackLang.HolProg 64 :=
.seq AllocBody312_114 AllocBody312_115

def AllocBody312_117 : StackLang.HolProg 64 :=
.seq AllocBody312_113 AllocBody312_116

def AllocBody312_118 : StackLang.HolProg 64 :=
.seq AllocBody312_112 AllocBody312_117

def AllocBody312_119 : StackLang.HolProg 64 :=
.seq AllocBody312_111 AllocBody312_118

def AllocBody312_120 : StackLang.HolProg 64 :=
.seq AllocBody312_110 AllocBody312_119

def AllocBody312_121 : StackLang.HolProg 64 :=
.seq AllocBody312_109 AllocBody312_120

def AllocBody312_122 : StackLang.HolProg 64 :=
.seq AllocBody312_108 AllocBody312_121

def AllocBody312_123 : StackLang.HolProg 64 :=
.seq AllocBody312_107 AllocBody312_122

def AllocBody312_124 : StackLang.HolProg 64 :=
.seq AllocBody312_106 AllocBody312_123

def AllocBody312_125 : StackLang.HolProg 64 :=
.seq AllocBody312_105 AllocBody312_124

def AllocBody312_126 : StackLang.HolProg 64 :=
.seq AllocBody312_104 AllocBody312_125

def AllocBody312_127 : StackLang.HolProg 64 :=
.seq AllocBody312_103 AllocBody312_126

def AllocBody312_128 : StackLang.HolProg 64 :=
.seq AllocBody312_102 AllocBody312_127

def AllocBody312_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody312_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody312_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody312_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody312_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody312_136 : StackLang.HolProg 64 :=
.seq AllocBody312_134 AllocBody312_135

def AllocBody312_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody312_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody312_139 : StackLang.HolProg 64 :=
.seq AllocBody312_137 AllocBody312_138

def AllocBody312_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def AllocBody312_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody312_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody312_143 : StackLang.HolProg 64 :=
.seq AllocBody312_141 AllocBody312_142

def AllocBody312_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 5

def AllocBody312_145 : StackLang.HolProg 64 :=
.seq AllocBody312_143 AllocBody312_144

def AllocBody312_146 : StackLang.HolProg 64 :=
.seq AllocBody312_140 AllocBody312_145

def AllocBody312_147 : StackLang.HolProg 64 :=
.seq AllocBody312_139 AllocBody312_146

def AllocBody312_148 : StackLang.HolProg 64 :=
.seq AllocBody312_136 AllocBody312_147

def AllocBody312_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 861#64)

def AllocBody312_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody312_152 : StackLang.HolProg 64 :=
.seq AllocBody312_150 AllocBody312_151

def AllocBody312_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody312_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody312_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody312_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 312 5

def AllocBody312_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody312_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody312_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody312_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody312_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody312_163 : StackLang.HolProg 64 :=
.seq AllocBody312_161 AllocBody312_162

def AllocBody312_164 : StackLang.HolProg 64 :=
.seq AllocBody312_160 AllocBody312_163

def AllocBody312_165 : StackLang.HolProg 64 :=
.seq AllocBody312_159 AllocBody312_164

def AllocBody312_166 : StackLang.HolProg 64 :=
.seq AllocBody312_158 AllocBody312_165

def AllocBody312_167 : StackLang.HolProg 64 :=
.seq AllocBody312_157 AllocBody312_166

def AllocBody312_168 : StackLang.HolProg 64 :=
.seq AllocBody312_156 AllocBody312_167

def AllocBody312_169 : StackLang.HolProg 64 :=
.seq AllocBody312_155 AllocBody312_168

def AllocBody312_170 : StackLang.HolProg 64 :=
.seq AllocBody312_154 AllocBody312_169

def AllocBody312_171 : StackLang.HolProg 64 :=
.seq AllocBody312_153 AllocBody312_170

def AllocBody312_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody312_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody312_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody312_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody312_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody312_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def AllocBody312_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody312_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody312_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody312_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def AllocBody312_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody312_185 : StackLang.HolProg 64 :=
.seq AllocBody312_183 AllocBody312_184

def AllocBody312_186 : StackLang.HolProg 64 :=
.seq AllocBody312_182 AllocBody312_185

def AllocBody312_187 : StackLang.HolProg 64 :=
.seq AllocBody312_181 AllocBody312_186

def AllocBody312_188 : StackLang.HolProg 64 :=
.seq AllocBody312_180 AllocBody312_187

def AllocBody312_189 : StackLang.HolProg 64 :=
.seq AllocBody312_179 AllocBody312_188

def AllocBody312_190 : StackLang.HolProg 64 :=
.seq AllocBody312_178 AllocBody312_189

def AllocBody312_191 : StackLang.HolProg 64 :=
.seq AllocBody312_177 AllocBody312_190

def AllocBody312_192 : StackLang.HolProg 64 :=
.seq AllocBody312_176 AllocBody312_191

def AllocBody312_193 : StackLang.HolProg 64 :=
.seq AllocBody312_175 AllocBody312_192

def AllocBody312_194 : StackLang.HolProg 64 :=
.seq AllocBody312_174 AllocBody312_193

def AllocBody312_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def AllocBody312_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody312_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody312_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody312_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def AllocBody312_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody312_201 : StackLang.HolProg 64 :=
.seq AllocBody312_199 AllocBody312_200

def AllocBody312_202 : StackLang.HolProg 64 :=
.seq AllocBody312_198 AllocBody312_201

def AllocBody312_203 : StackLang.HolProg 64 :=
.seq AllocBody312_197 AllocBody312_202

def AllocBody312_204 : StackLang.HolProg 64 :=
.seq AllocBody312_196 AllocBody312_203

def AllocBody312_205 : StackLang.HolProg 64 :=
.seq AllocBody312_195 AllocBody312_204

def AllocBody312_206 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody312_207 : StackLang.HolProg 64 :=
.seq AllocBody312_205 AllocBody312_206

def AllocBody312_208 : StackLang.HolProg 64 :=
.call (some (AllocBody312_194, 0, 312, 4)) (Sum.inl 296) (some (AllocBody312_207, 312, 5))

def AllocBody312_209 : StackLang.HolProg 64 :=
.seq AllocBody312_173 AllocBody312_208

def AllocBody312_210 : StackLang.HolProg 64 :=
.seq AllocBody312_172 AllocBody312_209

def AllocBody312_211 : StackLang.HolProg 64 :=
.seq AllocBody312_171 AllocBody312_210

def AllocBody312_212 : StackLang.HolProg 64 :=
.seq AllocBody312_152 AllocBody312_211

def AllocBody312_213 : StackLang.HolProg 64 :=
.seq AllocBody312_149 AllocBody312_212

def AllocBody312_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody312_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody312_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody312_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody312_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody312_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody312_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def AllocBody312_225 : StackLang.HolProg 64 :=
.seq AllocBody312_223 AllocBody312_224

def AllocBody312_226 : StackLang.HolProg 64 :=
.seq AllocBody312_222 AllocBody312_225

def AllocBody312_227 : StackLang.HolProg 64 :=
.seq AllocBody312_221 AllocBody312_226

def AllocBody312_228 : StackLang.HolProg 64 :=
.seq AllocBody312_220 AllocBody312_227

def AllocBody312_229 : StackLang.HolProg 64 :=
.seq AllocBody312_219 AllocBody312_228

def AllocBody312_230 : StackLang.HolProg 64 :=
.seq AllocBody312_218 AllocBody312_229

def AllocBody312_231 : StackLang.HolProg 64 :=
.seq AllocBody312_217 AllocBody312_230

def AllocBody312_232 : StackLang.HolProg 64 :=
.seq AllocBody312_216 AllocBody312_231

def AllocBody312_233 : StackLang.HolProg 64 :=
.seq AllocBody312_215 AllocBody312_232

def AllocBody312_234 : StackLang.HolProg 64 :=
.seq AllocBody312_214 AllocBody312_233

def AllocBody312_235 : StackLang.HolProg 64 :=
.seq AllocBody312_213 AllocBody312_234

def AllocBody312_236 : StackLang.HolProg 64 :=
.seq AllocBody312_148 AllocBody312_235

def AllocBody312_237 : StackLang.HolProg 64 :=
.seq AllocBody312_133 AllocBody312_236

def AllocBody312_238 : StackLang.HolProg 64 :=
.seq AllocBody312_132 AllocBody312_237

def AllocBody312_239 : StackLang.HolProg 64 :=
.seq AllocBody312_131 AllocBody312_238

def AllocBody312_240 : StackLang.HolProg 64 :=
.seq AllocBody312_130 AllocBody312_239

def AllocBody312_241 : StackLang.HolProg 64 :=
.seq AllocBody312_129 AllocBody312_240

def AllocBody312_242 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody312_128 AllocBody312_241

def AllocBody312_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody312_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody312_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody312_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def AllocBody312_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def AllocBody312_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody312_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 168#64)))

def AllocBody312_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody312_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody312_256 : StackLang.HolProg 64 :=
.seq AllocBody312_254 AllocBody312_255

def AllocBody312_257 : StackLang.HolProg 64 :=
.seq AllocBody312_253 AllocBody312_256

def AllocBody312_258 : StackLang.HolProg 64 :=
.seq AllocBody312_252 AllocBody312_257

def AllocBody312_259 : StackLang.HolProg 64 :=
.seq AllocBody312_251 AllocBody312_258

def AllocBody312_260 : StackLang.HolProg 64 :=
.seq AllocBody312_250 AllocBody312_259

def AllocBody312_261 : StackLang.HolProg 64 :=
.seq AllocBody312_249 AllocBody312_260

def AllocBody312_262 : StackLang.HolProg 64 :=
.seq AllocBody312_248 AllocBody312_261

def AllocBody312_263 : StackLang.HolProg 64 :=
.seq AllocBody312_247 AllocBody312_262

def AllocBody312_264 : StackLang.HolProg 64 :=
.seq AllocBody312_246 AllocBody312_263

def AllocBody312_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody312_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody312_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody312_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 7

def AllocBody312_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 862#64)

def AllocBody312_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody312_274 : StackLang.HolProg 64 :=
.seq AllocBody312_272 AllocBody312_273

def AllocBody312_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody312_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody312_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody312_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 312 7

def AllocBody312_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody312_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody312_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody312_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody312_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody312_285 : StackLang.HolProg 64 :=
.seq AllocBody312_283 AllocBody312_284

def AllocBody312_286 : StackLang.HolProg 64 :=
.seq AllocBody312_282 AllocBody312_285

def AllocBody312_287 : StackLang.HolProg 64 :=
.seq AllocBody312_281 AllocBody312_286

def AllocBody312_288 : StackLang.HolProg 64 :=
.seq AllocBody312_280 AllocBody312_287

def AllocBody312_289 : StackLang.HolProg 64 :=
.seq AllocBody312_279 AllocBody312_288

def AllocBody312_290 : StackLang.HolProg 64 :=
.seq AllocBody312_278 AllocBody312_289

def AllocBody312_291 : StackLang.HolProg 64 :=
.seq AllocBody312_277 AllocBody312_290

def AllocBody312_292 : StackLang.HolProg 64 :=
.seq AllocBody312_276 AllocBody312_291

def AllocBody312_293 : StackLang.HolProg 64 :=
.seq AllocBody312_275 AllocBody312_292

def AllocBody312_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody312_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody312_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody312_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody312_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody312_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody312_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def AllocBody312_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody312_304 : StackLang.HolProg 64 :=
.seq AllocBody312_302 AllocBody312_303

def AllocBody312_305 : StackLang.HolProg 64 :=
.seq AllocBody312_301 AllocBody312_304

def AllocBody312_306 : StackLang.HolProg 64 :=
.seq AllocBody312_300 AllocBody312_305

def AllocBody312_307 : StackLang.HolProg 64 :=
.seq AllocBody312_299 AllocBody312_306

def AllocBody312_308 : StackLang.HolProg 64 :=
.seq AllocBody312_298 AllocBody312_307

def AllocBody312_309 : StackLang.HolProg 64 :=
.seq AllocBody312_297 AllocBody312_308

def AllocBody312_310 : StackLang.HolProg 64 :=
.seq AllocBody312_296 AllocBody312_309

def AllocBody312_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody312_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def AllocBody312_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody312_314 : StackLang.HolProg 64 :=
.seq AllocBody312_312 AllocBody312_313

def AllocBody312_315 : StackLang.HolProg 64 :=
.seq AllocBody312_311 AllocBody312_314

def AllocBody312_316 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody312_317 : StackLang.HolProg 64 :=
.seq AllocBody312_315 AllocBody312_316

def AllocBody312_318 : StackLang.HolProg 64 :=
.call (some (AllocBody312_310, 0, 312, 6)) (Sum.inl 296) (some (AllocBody312_317, 312, 7))

def AllocBody312_319 : StackLang.HolProg 64 :=
.seq AllocBody312_295 AllocBody312_318

def AllocBody312_320 : StackLang.HolProg 64 :=
.seq AllocBody312_294 AllocBody312_319

def AllocBody312_321 : StackLang.HolProg 64 :=
.seq AllocBody312_293 AllocBody312_320

def AllocBody312_322 : StackLang.HolProg 64 :=
.seq AllocBody312_274 AllocBody312_321

def AllocBody312_323 : StackLang.HolProg 64 :=
.seq AllocBody312_271 AllocBody312_322

def AllocBody312_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody312_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody312_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody312_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody312_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody312_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody312_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody312_335 : StackLang.HolProg 64 :=
.seq AllocBody312_333 AllocBody312_334

def AllocBody312_336 : StackLang.HolProg 64 :=
.seq AllocBody312_332 AllocBody312_335

def AllocBody312_337 : StackLang.HolProg 64 :=
.seq AllocBody312_331 AllocBody312_336

def AllocBody312_338 : StackLang.HolProg 64 :=
.seq AllocBody312_330 AllocBody312_337

def AllocBody312_339 : StackLang.HolProg 64 :=
.seq AllocBody312_329 AllocBody312_338

def AllocBody312_340 : StackLang.HolProg 64 :=
.seq AllocBody312_328 AllocBody312_339

def AllocBody312_341 : StackLang.HolProg 64 :=
.seq AllocBody312_327 AllocBody312_340

def AllocBody312_342 : StackLang.HolProg 64 :=
.seq AllocBody312_326 AllocBody312_341

def AllocBody312_343 : StackLang.HolProg 64 :=
.seq AllocBody312_325 AllocBody312_342

def AllocBody312_344 : StackLang.HolProg 64 :=
.seq AllocBody312_324 AllocBody312_343

def AllocBody312_345 : StackLang.HolProg 64 :=
.seq AllocBody312_323 AllocBody312_344

def AllocBody312_346 : StackLang.HolProg 64 :=
.seq AllocBody312_270 AllocBody312_345

def AllocBody312_347 : StackLang.HolProg 64 :=
.seq AllocBody312_269 AllocBody312_346

def AllocBody312_348 : StackLang.HolProg 64 :=
.seq AllocBody312_268 AllocBody312_347

def AllocBody312_349 : StackLang.HolProg 64 :=
.seq AllocBody312_267 AllocBody312_348

def AllocBody312_350 : StackLang.HolProg 64 :=
.seq AllocBody312_266 AllocBody312_349

def AllocBody312_351 : StackLang.HolProg 64 :=
.seq AllocBody312_265 AllocBody312_350

def AllocBody312_352 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody312_264 AllocBody312_351

def AllocBody312_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody312_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody312_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody312_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody312_357 : StackLang.HolProg 64 :=
.seq AllocBody312_355 AllocBody312_356

def AllocBody312_358 : StackLang.HolProg 64 :=
.seq AllocBody312_354 AllocBody312_357

def AllocBody312_359 : StackLang.HolProg 64 :=
.seq AllocBody312_353 AllocBody312_358

def AllocBody312_360 : StackLang.HolProg 64 :=
.seq AllocBody312_352 AllocBody312_359

def AllocBody312_361 : StackLang.HolProg 64 :=
.seq AllocBody312_245 AllocBody312_360

def AllocBody312_362 : StackLang.HolProg 64 :=
.seq AllocBody312_244 AllocBody312_361

def AllocBody312_363 : StackLang.HolProg 64 :=
.seq AllocBody312_243 AllocBody312_362

def AllocBody312_364 : StackLang.HolProg 64 :=
.seq AllocBody312_242 AllocBody312_363

def AllocBody312_365 : StackLang.HolProg 64 :=
.seq AllocBody312_101 AllocBody312_364

def AllocBody312_366 : StackLang.HolProg 64 :=
.seq AllocBody312_100 AllocBody312_365

def AllocBody312_367 : StackLang.HolProg 64 :=
.seq AllocBody312_99 AllocBody312_366

def AllocBody312_368 : StackLang.HolProg 64 :=
.seq AllocBody312_98 AllocBody312_367

def AllocBody312_369 : StackLang.HolProg 64 :=
.seq AllocBody312_17 AllocBody312_368

def AllocBody312_370 : StackLang.HolProg 64 :=
.seq AllocBody312_0 AllocBody312_369

def Alloc312 : Nat × StackLang.HolProg 64 := (312, AllocBody312_370)
theorem Alloc312_eq : StackAlloc.progComp (312, raw312) = Alloc312 := by
  kernel_rfl
#print axioms Alloc312_eq
end InitECandidate.Proofs.BackendStages
