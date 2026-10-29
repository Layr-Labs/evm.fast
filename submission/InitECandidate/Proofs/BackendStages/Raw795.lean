import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function795
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody795_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 20

def rawBody795_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 19

def rawBody795_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 18

def rawBody795_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 16

def rawBody795_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 12 17

def rawBody795_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 13

def rawBody795_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 15

def rawBody795_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 10

def rawBody795_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 8

def rawBody795_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 14

def rawBody795_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 6

def rawBody795_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def rawBody795_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 11 12

def rawBody795_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 11

def rawBody795_14 : StackLang.HolProg 64 :=
.seq rawBody795_12 rawBody795_13

def rawBody795_15 : StackLang.HolProg 64 :=
.seq rawBody795_11 rawBody795_14

def rawBody795_16 : StackLang.HolProg 64 :=
.seq rawBody795_10 rawBody795_15

def rawBody795_17 : StackLang.HolProg 64 :=
.seq rawBody795_9 rawBody795_16

def rawBody795_18 : StackLang.HolProg 64 :=
.seq rawBody795_8 rawBody795_17

def rawBody795_19 : StackLang.HolProg 64 :=
.seq rawBody795_7 rawBody795_18

def rawBody795_20 : StackLang.HolProg 64 :=
.seq rawBody795_6 rawBody795_19

def rawBody795_21 : StackLang.HolProg 64 :=
.seq rawBody795_5 rawBody795_20

def rawBody795_22 : StackLang.HolProg 64 :=
.seq rawBody795_4 rawBody795_21

def rawBody795_23 : StackLang.HolProg 64 :=
.seq rawBody795_3 rawBody795_22

def rawBody795_24 : StackLang.HolProg 64 :=
.seq rawBody795_2 rawBody795_23

def rawBody795_25 : StackLang.HolProg 64 :=
.seq rawBody795_1 rawBody795_24

def rawBody795_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3781#64)

def rawBody795_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody795_29 : StackLang.HolProg 64 :=
.seq rawBody795_27 rawBody795_28

def rawBody795_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody795_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody795_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody795_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 795 3

def rawBody795_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody795_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody795_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody795_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody795_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody795_40 : StackLang.HolProg 64 :=
.seq rawBody795_38 rawBody795_39

def rawBody795_41 : StackLang.HolProg 64 :=
.seq rawBody795_37 rawBody795_40

def rawBody795_42 : StackLang.HolProg 64 :=
.seq rawBody795_36 rawBody795_41

def rawBody795_43 : StackLang.HolProg 64 :=
.seq rawBody795_35 rawBody795_42

def rawBody795_44 : StackLang.HolProg 64 :=
.seq rawBody795_34 rawBody795_43

def rawBody795_45 : StackLang.HolProg 64 :=
.seq rawBody795_33 rawBody795_44

def rawBody795_46 : StackLang.HolProg 64 :=
.seq rawBody795_32 rawBody795_45

def rawBody795_47 : StackLang.HolProg 64 :=
.seq rawBody795_31 rawBody795_46

def rawBody795_48 : StackLang.HolProg 64 :=
.seq rawBody795_30 rawBody795_47

def rawBody795_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody795_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody795_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody795_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody795_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody795_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 18

def rawBody795_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 17

def rawBody795_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 15

def rawBody795_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 14

def rawBody795_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 12

def rawBody795_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 11

def rawBody795_62 : StackLang.HolProg 64 :=
.seq rawBody795_60 rawBody795_61

def rawBody795_63 : StackLang.HolProg 64 :=
.seq rawBody795_59 rawBody795_62

def rawBody795_64 : StackLang.HolProg 64 :=
.seq rawBody795_58 rawBody795_63

def rawBody795_65 : StackLang.HolProg 64 :=
.seq rawBody795_57 rawBody795_64

def rawBody795_66 : StackLang.HolProg 64 :=
.seq rawBody795_56 rawBody795_65

def rawBody795_67 : StackLang.HolProg 64 :=
.seq rawBody795_55 rawBody795_66

def rawBody795_68 : StackLang.HolProg 64 :=
.seq rawBody795_54 rawBody795_67

def rawBody795_69 : StackLang.HolProg 64 :=
.seq rawBody795_53 rawBody795_68

def rawBody795_70 : StackLang.HolProg 64 :=
.seq rawBody795_52 rawBody795_69

def rawBody795_71 : StackLang.HolProg 64 :=
.seq rawBody795_51 rawBody795_70

def rawBody795_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 18

def rawBody795_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 17

def rawBody795_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 15

def rawBody795_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 14

def rawBody795_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 12

def rawBody795_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 11

def rawBody795_78 : StackLang.HolProg 64 :=
.seq rawBody795_76 rawBody795_77

def rawBody795_79 : StackLang.HolProg 64 :=
.seq rawBody795_75 rawBody795_78

def rawBody795_80 : StackLang.HolProg 64 :=
.seq rawBody795_74 rawBody795_79

def rawBody795_81 : StackLang.HolProg 64 :=
.seq rawBody795_73 rawBody795_80

def rawBody795_82 : StackLang.HolProg 64 :=
.seq rawBody795_72 rawBody795_81

def rawBody795_83 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody795_84 : StackLang.HolProg 64 :=
.seq rawBody795_82 rawBody795_83

def rawBody795_85 : StackLang.HolProg 64 :=
.call (some (rawBody795_71, 0, 795, 2)) (Sum.inl 714) (some (rawBody795_84, 795, 3))

def rawBody795_86 : StackLang.HolProg 64 :=
.seq rawBody795_50 rawBody795_85

def rawBody795_87 : StackLang.HolProg 64 :=
.seq rawBody795_49 rawBody795_86

def rawBody795_88 : StackLang.HolProg 64 :=
.seq rawBody795_48 rawBody795_87

def rawBody795_89 : StackLang.HolProg 64 :=
.seq rawBody795_29 rawBody795_88

def rawBody795_90 : StackLang.HolProg 64 :=
.seq rawBody795_26 rawBody795_89

def rawBody795_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody795_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def rawBody795_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody795_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody795_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 15

def rawBody795_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody795_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 9

def rawBody795_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody795_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 5

def rawBody795_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody795_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 17

def rawBody795_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def rawBody795_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 18

def rawBody795_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 14

def rawBody795_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 12

def rawBody795_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 12 11

def rawBody795_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 7

def rawBody795_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 3

def rawBody795_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 11 2

def rawBody795_110 : StackLang.HolProg 64 :=
.seq rawBody795_108 rawBody795_109

def rawBody795_111 : StackLang.HolProg 64 :=
.seq rawBody795_107 rawBody795_110

def rawBody795_112 : StackLang.HolProg 64 :=
.seq rawBody795_106 rawBody795_111

def rawBody795_113 : StackLang.HolProg 64 :=
.seq rawBody795_105 rawBody795_112

def rawBody795_114 : StackLang.HolProg 64 :=
.seq rawBody795_104 rawBody795_113

def rawBody795_115 : StackLang.HolProg 64 :=
.seq rawBody795_103 rawBody795_114

def rawBody795_116 : StackLang.HolProg 64 :=
.seq rawBody795_102 rawBody795_115

def rawBody795_117 : StackLang.HolProg 64 :=
.seq rawBody795_101 rawBody795_116

def rawBody795_118 : StackLang.HolProg 64 :=
.seq rawBody795_100 rawBody795_117

def rawBody795_119 : StackLang.HolProg 64 :=
.seq rawBody795_99 rawBody795_118

def rawBody795_120 : StackLang.HolProg 64 :=
.seq rawBody795_98 rawBody795_119

def rawBody795_121 : StackLang.HolProg 64 :=
.seq rawBody795_97 rawBody795_120

def rawBody795_122 : StackLang.HolProg 64 :=
.seq rawBody795_96 rawBody795_121

def rawBody795_123 : StackLang.HolProg 64 :=
.seq rawBody795_95 rawBody795_122

def rawBody795_124 : StackLang.HolProg 64 :=
.seq rawBody795_94 rawBody795_123

def rawBody795_125 : StackLang.HolProg 64 :=
.seq rawBody795_93 rawBody795_124

def rawBody795_126 : StackLang.HolProg 64 :=
.seq rawBody795_92 rawBody795_125

def rawBody795_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3782#64)

def rawBody795_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody795_130 : StackLang.HolProg 64 :=
.seq rawBody795_128 rawBody795_129

def rawBody795_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody795_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody795_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody795_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 795 5

def rawBody795_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody795_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody795_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody795_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody795_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody795_141 : StackLang.HolProg 64 :=
.seq rawBody795_139 rawBody795_140

def rawBody795_142 : StackLang.HolProg 64 :=
.seq rawBody795_138 rawBody795_141

def rawBody795_143 : StackLang.HolProg 64 :=
.seq rawBody795_137 rawBody795_142

def rawBody795_144 : StackLang.HolProg 64 :=
.seq rawBody795_136 rawBody795_143

def rawBody795_145 : StackLang.HolProg 64 :=
.seq rawBody795_135 rawBody795_144

def rawBody795_146 : StackLang.HolProg 64 :=
.seq rawBody795_134 rawBody795_145

def rawBody795_147 : StackLang.HolProg 64 :=
.seq rawBody795_133 rawBody795_146

def rawBody795_148 : StackLang.HolProg 64 :=
.seq rawBody795_132 rawBody795_147

def rawBody795_149 : StackLang.HolProg 64 :=
.seq rawBody795_131 rawBody795_148

def rawBody795_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody795_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody795_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody795_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody795_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody795_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody795_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody795_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody795_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody795_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody795_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 17

def rawBody795_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 15

def rawBody795_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def rawBody795_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 9

def rawBody795_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def rawBody795_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody795_168 : StackLang.HolProg 64 :=
.seq rawBody795_166 rawBody795_167

def rawBody795_169 : StackLang.HolProg 64 :=
.seq rawBody795_165 rawBody795_168

def rawBody795_170 : StackLang.HolProg 64 :=
.seq rawBody795_164 rawBody795_169

def rawBody795_171 : StackLang.HolProg 64 :=
.seq rawBody795_163 rawBody795_170

def rawBody795_172 : StackLang.HolProg 64 :=
.seq rawBody795_162 rawBody795_171

def rawBody795_173 : StackLang.HolProg 64 :=
.seq rawBody795_161 rawBody795_172

def rawBody795_174 : StackLang.HolProg 64 :=
.seq rawBody795_160 rawBody795_173

def rawBody795_175 : StackLang.HolProg 64 :=
.seq rawBody795_159 rawBody795_174

def rawBody795_176 : StackLang.HolProg 64 :=
.seq rawBody795_158 rawBody795_175

def rawBody795_177 : StackLang.HolProg 64 :=
.seq rawBody795_157 rawBody795_176

def rawBody795_178 : StackLang.HolProg 64 :=
.seq rawBody795_156 rawBody795_177

def rawBody795_179 : StackLang.HolProg 64 :=
.seq rawBody795_155 rawBody795_178

def rawBody795_180 : StackLang.HolProg 64 :=
.seq rawBody795_154 rawBody795_179

def rawBody795_181 : StackLang.HolProg 64 :=
.seq rawBody795_153 rawBody795_180

def rawBody795_182 : StackLang.HolProg 64 :=
.seq rawBody795_152 rawBody795_181

def rawBody795_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 17

def rawBody795_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 15

def rawBody795_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def rawBody795_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 9

def rawBody795_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def rawBody795_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody795_189 : StackLang.HolProg 64 :=
.seq rawBody795_187 rawBody795_188

def rawBody795_190 : StackLang.HolProg 64 :=
.seq rawBody795_186 rawBody795_189

def rawBody795_191 : StackLang.HolProg 64 :=
.seq rawBody795_185 rawBody795_190

def rawBody795_192 : StackLang.HolProg 64 :=
.seq rawBody795_184 rawBody795_191

def rawBody795_193 : StackLang.HolProg 64 :=
.seq rawBody795_183 rawBody795_192

def rawBody795_194 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody795_195 : StackLang.HolProg 64 :=
.seq rawBody795_193 rawBody795_194

def rawBody795_196 : StackLang.HolProg 64 :=
.call (some (rawBody795_182, 0, 795, 4)) (Sum.inl 715) (some (rawBody795_195, 795, 5))

def rawBody795_197 : StackLang.HolProg 64 :=
.seq rawBody795_151 rawBody795_196

def rawBody795_198 : StackLang.HolProg 64 :=
.seq rawBody795_150 rawBody795_197

def rawBody795_199 : StackLang.HolProg 64 :=
.seq rawBody795_149 rawBody795_198

def rawBody795_200 : StackLang.HolProg 64 :=
.seq rawBody795_130 rawBody795_199

def rawBody795_201 : StackLang.HolProg 64 :=
.seq rawBody795_127 rawBody795_200

def rawBody795_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody795_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody795_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 17

def rawBody795_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 15

def rawBody795_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 11

def rawBody795_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 9

def rawBody795_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 5

def rawBody795_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody795_210 : StackLang.HolProg 64 :=
.seq rawBody795_208 rawBody795_209

def rawBody795_211 : StackLang.HolProg 64 :=
.seq rawBody795_207 rawBody795_210

def rawBody795_212 : StackLang.HolProg 64 :=
.seq rawBody795_206 rawBody795_211

def rawBody795_213 : StackLang.HolProg 64 :=
.seq rawBody795_205 rawBody795_212

def rawBody795_214 : StackLang.HolProg 64 :=
.seq rawBody795_204 rawBody795_213

def rawBody795_215 : StackLang.HolProg 64 :=
.seq rawBody795_203 rawBody795_214

def rawBody795_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3783#64)

def rawBody795_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody795_219 : StackLang.HolProg 64 :=
.seq rawBody795_217 rawBody795_218

def rawBody795_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody795_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody795_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody795_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 795 7

def rawBody795_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody795_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody795_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody795_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody795_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody795_230 : StackLang.HolProg 64 :=
.seq rawBody795_228 rawBody795_229

def rawBody795_231 : StackLang.HolProg 64 :=
.seq rawBody795_227 rawBody795_230

def rawBody795_232 : StackLang.HolProg 64 :=
.seq rawBody795_226 rawBody795_231

def rawBody795_233 : StackLang.HolProg 64 :=
.seq rawBody795_225 rawBody795_232

def rawBody795_234 : StackLang.HolProg 64 :=
.seq rawBody795_224 rawBody795_233

def rawBody795_235 : StackLang.HolProg 64 :=
.seq rawBody795_223 rawBody795_234

def rawBody795_236 : StackLang.HolProg 64 :=
.seq rawBody795_222 rawBody795_235

def rawBody795_237 : StackLang.HolProg 64 :=
.seq rawBody795_221 rawBody795_236

def rawBody795_238 : StackLang.HolProg 64 :=
.seq rawBody795_220 rawBody795_237

def rawBody795_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody795_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody795_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody795_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody795_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody795_246 : StackLang.HolProg 64 :=
.seq rawBody795_244 rawBody795_245

def rawBody795_247 : StackLang.HolProg 64 :=
.seq rawBody795_243 rawBody795_246

def rawBody795_248 : StackLang.HolProg 64 :=
.seq rawBody795_242 rawBody795_247

def rawBody795_249 : StackLang.HolProg 64 :=
.seq rawBody795_241 rawBody795_248

def rawBody795_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_251 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody795_252 : StackLang.HolProg 64 :=
.seq rawBody795_250 rawBody795_251

def rawBody795_253 : StackLang.HolProg 64 :=
.call (some (rawBody795_249, 0, 795, 6)) (Sum.inl 714) (some (rawBody795_252, 795, 7))

def rawBody795_254 : StackLang.HolProg 64 :=
.seq rawBody795_240 rawBody795_253

def rawBody795_255 : StackLang.HolProg 64 :=
.seq rawBody795_239 rawBody795_254

def rawBody795_256 : StackLang.HolProg 64 :=
.seq rawBody795_238 rawBody795_255

def rawBody795_257 : StackLang.HolProg 64 :=
.seq rawBody795_219 rawBody795_256

def rawBody795_258 : StackLang.HolProg 64 :=
.seq rawBody795_216 rawBody795_257

def rawBody795_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody795_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody795_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody795_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody795_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody795_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551224#64))

def rawBody795_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1480#64)))

def rawBody795_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 6#64)

def rawBody795_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3784#64)

def rawBody795_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody795_271 : StackLang.HolProg 64 :=
.seq rawBody795_269 rawBody795_270

def rawBody795_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody795_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody795_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody795_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 795 9

def rawBody795_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody795_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody795_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody795_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody795_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody795_282 : StackLang.HolProg 64 :=
.seq rawBody795_280 rawBody795_281

def rawBody795_283 : StackLang.HolProg 64 :=
.seq rawBody795_279 rawBody795_282

def rawBody795_284 : StackLang.HolProg 64 :=
.seq rawBody795_278 rawBody795_283

def rawBody795_285 : StackLang.HolProg 64 :=
.seq rawBody795_277 rawBody795_284

def rawBody795_286 : StackLang.HolProg 64 :=
.seq rawBody795_276 rawBody795_285

def rawBody795_287 : StackLang.HolProg 64 :=
.seq rawBody795_275 rawBody795_286

def rawBody795_288 : StackLang.HolProg 64 :=
.seq rawBody795_274 rawBody795_287

def rawBody795_289 : StackLang.HolProg 64 :=
.seq rawBody795_273 rawBody795_288

def rawBody795_290 : StackLang.HolProg 64 :=
.seq rawBody795_272 rawBody795_289

def rawBody795_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody795_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody795_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody795_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody795_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody795_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody795_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody795_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody795_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody795_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody795_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 17

def rawBody795_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 16

def rawBody795_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 17

def rawBody795_306 : StackLang.HolProg 64 :=
.seq rawBody795_304 rawBody795_305

def rawBody795_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 15

def rawBody795_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 14

def rawBody795_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 16

def rawBody795_310 : StackLang.HolProg 64 :=
.seq rawBody795_308 rawBody795_309

def rawBody795_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 13

def rawBody795_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 15

def rawBody795_313 : StackLang.HolProg 64 :=
.seq rawBody795_311 rawBody795_312

def rawBody795_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def rawBody795_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def rawBody795_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def rawBody795_317 : StackLang.HolProg 64 :=
.seq rawBody795_315 rawBody795_316

def rawBody795_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 9

def rawBody795_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def rawBody795_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def rawBody795_321 : StackLang.HolProg 64 :=
.seq rawBody795_319 rawBody795_320

def rawBody795_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody795_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def rawBody795_324 : StackLang.HolProg 64 :=
.seq rawBody795_322 rawBody795_323

def rawBody795_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody795_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody795_327 : StackLang.HolProg 64 :=
.seq rawBody795_325 rawBody795_326

def rawBody795_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def rawBody795_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody795_330 : StackLang.HolProg 64 :=
.seq rawBody795_328 rawBody795_329

def rawBody795_331 : StackLang.HolProg 64 :=
.seq rawBody795_327 rawBody795_330

def rawBody795_332 : StackLang.HolProg 64 :=
.seq rawBody795_324 rawBody795_331

def rawBody795_333 : StackLang.HolProg 64 :=
.seq rawBody795_321 rawBody795_332

def rawBody795_334 : StackLang.HolProg 64 :=
.seq rawBody795_318 rawBody795_333

def rawBody795_335 : StackLang.HolProg 64 :=
.seq rawBody795_317 rawBody795_334

def rawBody795_336 : StackLang.HolProg 64 :=
.seq rawBody795_314 rawBody795_335

def rawBody795_337 : StackLang.HolProg 64 :=
.seq rawBody795_313 rawBody795_336

def rawBody795_338 : StackLang.HolProg 64 :=
.seq rawBody795_310 rawBody795_337

def rawBody795_339 : StackLang.HolProg 64 :=
.seq rawBody795_307 rawBody795_338

def rawBody795_340 : StackLang.HolProg 64 :=
.seq rawBody795_306 rawBody795_339

def rawBody795_341 : StackLang.HolProg 64 :=
.seq rawBody795_303 rawBody795_340

def rawBody795_342 : StackLang.HolProg 64 :=
.seq rawBody795_302 rawBody795_341

def rawBody795_343 : StackLang.HolProg 64 :=
.seq rawBody795_301 rawBody795_342

def rawBody795_344 : StackLang.HolProg 64 :=
.seq rawBody795_300 rawBody795_343

def rawBody795_345 : StackLang.HolProg 64 :=
.seq rawBody795_299 rawBody795_344

def rawBody795_346 : StackLang.HolProg 64 :=
.seq rawBody795_298 rawBody795_345

def rawBody795_347 : StackLang.HolProg 64 :=
.seq rawBody795_297 rawBody795_346

def rawBody795_348 : StackLang.HolProg 64 :=
.seq rawBody795_296 rawBody795_347

def rawBody795_349 : StackLang.HolProg 64 :=
.seq rawBody795_295 rawBody795_348

def rawBody795_350 : StackLang.HolProg 64 :=
.seq rawBody795_294 rawBody795_349

def rawBody795_351 : StackLang.HolProg 64 :=
.seq rawBody795_293 rawBody795_350

def rawBody795_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 17

def rawBody795_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 16

def rawBody795_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 17

def rawBody795_355 : StackLang.HolProg 64 :=
.seq rawBody795_353 rawBody795_354

def rawBody795_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 15

def rawBody795_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 14

def rawBody795_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 16

def rawBody795_359 : StackLang.HolProg 64 :=
.seq rawBody795_357 rawBody795_358

def rawBody795_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 13

def rawBody795_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 15

def rawBody795_362 : StackLang.HolProg 64 :=
.seq rawBody795_360 rawBody795_361

def rawBody795_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def rawBody795_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def rawBody795_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def rawBody795_366 : StackLang.HolProg 64 :=
.seq rawBody795_364 rawBody795_365

def rawBody795_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 9

def rawBody795_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def rawBody795_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def rawBody795_370 : StackLang.HolProg 64 :=
.seq rawBody795_368 rawBody795_369

def rawBody795_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody795_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def rawBody795_373 : StackLang.HolProg 64 :=
.seq rawBody795_371 rawBody795_372

def rawBody795_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody795_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody795_376 : StackLang.HolProg 64 :=
.seq rawBody795_374 rawBody795_375

def rawBody795_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def rawBody795_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody795_379 : StackLang.HolProg 64 :=
.seq rawBody795_377 rawBody795_378

def rawBody795_380 : StackLang.HolProg 64 :=
.seq rawBody795_376 rawBody795_379

def rawBody795_381 : StackLang.HolProg 64 :=
.seq rawBody795_373 rawBody795_380

def rawBody795_382 : StackLang.HolProg 64 :=
.seq rawBody795_370 rawBody795_381

def rawBody795_383 : StackLang.HolProg 64 :=
.seq rawBody795_367 rawBody795_382

def rawBody795_384 : StackLang.HolProg 64 :=
.seq rawBody795_366 rawBody795_383

def rawBody795_385 : StackLang.HolProg 64 :=
.seq rawBody795_363 rawBody795_384

def rawBody795_386 : StackLang.HolProg 64 :=
.seq rawBody795_362 rawBody795_385

def rawBody795_387 : StackLang.HolProg 64 :=
.seq rawBody795_359 rawBody795_386

def rawBody795_388 : StackLang.HolProg 64 :=
.seq rawBody795_356 rawBody795_387

def rawBody795_389 : StackLang.HolProg 64 :=
.seq rawBody795_355 rawBody795_388

def rawBody795_390 : StackLang.HolProg 64 :=
.seq rawBody795_352 rawBody795_389

def rawBody795_391 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody795_392 : StackLang.HolProg 64 :=
.seq rawBody795_390 rawBody795_391

def rawBody795_393 : StackLang.HolProg 64 :=
.call (some (rawBody795_351, 0, 795, 8)) (Sum.inl 722) (some (rawBody795_392, 795, 9))

def rawBody795_394 : StackLang.HolProg 64 :=
.seq rawBody795_292 rawBody795_393

def rawBody795_395 : StackLang.HolProg 64 :=
.seq rawBody795_291 rawBody795_394

def rawBody795_396 : StackLang.HolProg 64 :=
.seq rawBody795_290 rawBody795_395

def rawBody795_397 : StackLang.HolProg 64 :=
.seq rawBody795_271 rawBody795_396

def rawBody795_398 : StackLang.HolProg 64 :=
.seq rawBody795_268 rawBody795_397

def rawBody795_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody795_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody795_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3785#64)

def rawBody795_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody795_404 : StackLang.HolProg 64 :=
.seq rawBody795_402 rawBody795_403

def rawBody795_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody795_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody795_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody795_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 795 11

def rawBody795_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody795_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody795_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody795_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody795_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody795_415 : StackLang.HolProg 64 :=
.seq rawBody795_413 rawBody795_414

def rawBody795_416 : StackLang.HolProg 64 :=
.seq rawBody795_412 rawBody795_415

def rawBody795_417 : StackLang.HolProg 64 :=
.seq rawBody795_411 rawBody795_416

def rawBody795_418 : StackLang.HolProg 64 :=
.seq rawBody795_410 rawBody795_417

def rawBody795_419 : StackLang.HolProg 64 :=
.seq rawBody795_409 rawBody795_418

def rawBody795_420 : StackLang.HolProg 64 :=
.seq rawBody795_408 rawBody795_419

def rawBody795_421 : StackLang.HolProg 64 :=
.seq rawBody795_407 rawBody795_420

def rawBody795_422 : StackLang.HolProg 64 :=
.seq rawBody795_406 rawBody795_421

def rawBody795_423 : StackLang.HolProg 64 :=
.seq rawBody795_405 rawBody795_422

def rawBody795_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody795_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody795_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody795_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody795_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody795_431 : StackLang.HolProg 64 :=
.seq rawBody795_429 rawBody795_430

def rawBody795_432 : StackLang.HolProg 64 :=
.seq rawBody795_428 rawBody795_431

def rawBody795_433 : StackLang.HolProg 64 :=
.seq rawBody795_427 rawBody795_432

def rawBody795_434 : StackLang.HolProg 64 :=
.seq rawBody795_426 rawBody795_433

def rawBody795_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_436 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody795_437 : StackLang.HolProg 64 :=
.seq rawBody795_435 rawBody795_436

def rawBody795_438 : StackLang.HolProg 64 :=
.call (some (rawBody795_434, 0, 795, 10)) (Sum.inl 714) (some (rawBody795_437, 795, 11))

def rawBody795_439 : StackLang.HolProg 64 :=
.seq rawBody795_425 rawBody795_438

def rawBody795_440 : StackLang.HolProg 64 :=
.seq rawBody795_424 rawBody795_439

def rawBody795_441 : StackLang.HolProg 64 :=
.seq rawBody795_423 rawBody795_440

def rawBody795_442 : StackLang.HolProg 64 :=
.seq rawBody795_404 rawBody795_441

def rawBody795_443 : StackLang.HolProg 64 :=
.seq rawBody795_401 rawBody795_442

def rawBody795_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody795_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody795_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 14

def rawBody795_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 13

def rawBody795_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 10

def rawBody795_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 6

def rawBody795_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 5

def rawBody795_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def rawBody795_452 : StackLang.HolProg 64 :=
.seq rawBody795_450 rawBody795_451

def rawBody795_453 : StackLang.HolProg 64 :=
.seq rawBody795_449 rawBody795_452

def rawBody795_454 : StackLang.HolProg 64 :=
.seq rawBody795_448 rawBody795_453

def rawBody795_455 : StackLang.HolProg 64 :=
.seq rawBody795_447 rawBody795_454

def rawBody795_456 : StackLang.HolProg 64 :=
.seq rawBody795_446 rawBody795_455

def rawBody795_457 : StackLang.HolProg 64 :=
.seq rawBody795_445 rawBody795_456

def rawBody795_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3786#64)

def rawBody795_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody795_461 : StackLang.HolProg 64 :=
.seq rawBody795_459 rawBody795_460

def rawBody795_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody795_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody795_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody795_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 795 13

def rawBody795_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody795_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody795_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody795_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody795_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody795_472 : StackLang.HolProg 64 :=
.seq rawBody795_470 rawBody795_471

def rawBody795_473 : StackLang.HolProg 64 :=
.seq rawBody795_469 rawBody795_472

def rawBody795_474 : StackLang.HolProg 64 :=
.seq rawBody795_468 rawBody795_473

def rawBody795_475 : StackLang.HolProg 64 :=
.seq rawBody795_467 rawBody795_474

def rawBody795_476 : StackLang.HolProg 64 :=
.seq rawBody795_466 rawBody795_475

def rawBody795_477 : StackLang.HolProg 64 :=
.seq rawBody795_465 rawBody795_476

def rawBody795_478 : StackLang.HolProg 64 :=
.seq rawBody795_464 rawBody795_477

def rawBody795_479 : StackLang.HolProg 64 :=
.seq rawBody795_463 rawBody795_478

def rawBody795_480 : StackLang.HolProg 64 :=
.seq rawBody795_462 rawBody795_479

def rawBody795_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody795_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody795_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody795_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody795_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody795_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 18

def rawBody795_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 17

def rawBody795_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 18

def rawBody795_491 : StackLang.HolProg 64 :=
.seq rawBody795_489 rawBody795_490

def rawBody795_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 16

def rawBody795_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 15

def rawBody795_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 17

def rawBody795_495 : StackLang.HolProg 64 :=
.seq rawBody795_493 rawBody795_494

def rawBody795_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 14

def rawBody795_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 16

def rawBody795_498 : StackLang.HolProg 64 :=
.seq rawBody795_496 rawBody795_497

def rawBody795_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 13

def rawBody795_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 15

def rawBody795_501 : StackLang.HolProg 64 :=
.seq rawBody795_499 rawBody795_500

def rawBody795_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 12

def rawBody795_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 11

def rawBody795_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 14

def rawBody795_505 : StackLang.HolProg 64 :=
.seq rawBody795_503 rawBody795_504

def rawBody795_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def rawBody795_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 13

def rawBody795_508 : StackLang.HolProg 64 :=
.seq rawBody795_506 rawBody795_507

def rawBody795_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def rawBody795_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 12

def rawBody795_511 : StackLang.HolProg 64 :=
.seq rawBody795_509 rawBody795_510

def rawBody795_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 8

def rawBody795_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody795_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def rawBody795_515 : StackLang.HolProg 64 :=
.seq rawBody795_513 rawBody795_514

def rawBody795_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody795_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def rawBody795_518 : StackLang.HolProg 64 :=
.seq rawBody795_516 rawBody795_517

def rawBody795_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody795_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def rawBody795_521 : StackLang.HolProg 64 :=
.seq rawBody795_519 rawBody795_520

def rawBody795_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody795_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def rawBody795_524 : StackLang.HolProg 64 :=
.seq rawBody795_522 rawBody795_523

def rawBody795_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 3

def rawBody795_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 2

def rawBody795_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody795_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody795_529 : StackLang.HolProg 64 :=
.seq rawBody795_527 rawBody795_528

def rawBody795_530 : StackLang.HolProg 64 :=
.seq rawBody795_526 rawBody795_529

def rawBody795_531 : StackLang.HolProg 64 :=
.seq rawBody795_525 rawBody795_530

def rawBody795_532 : StackLang.HolProg 64 :=
.seq rawBody795_524 rawBody795_531

def rawBody795_533 : StackLang.HolProg 64 :=
.seq rawBody795_521 rawBody795_532

def rawBody795_534 : StackLang.HolProg 64 :=
.seq rawBody795_518 rawBody795_533

def rawBody795_535 : StackLang.HolProg 64 :=
.seq rawBody795_515 rawBody795_534

def rawBody795_536 : StackLang.HolProg 64 :=
.seq rawBody795_512 rawBody795_535

def rawBody795_537 : StackLang.HolProg 64 :=
.seq rawBody795_511 rawBody795_536

def rawBody795_538 : StackLang.HolProg 64 :=
.seq rawBody795_508 rawBody795_537

def rawBody795_539 : StackLang.HolProg 64 :=
.seq rawBody795_505 rawBody795_538

def rawBody795_540 : StackLang.HolProg 64 :=
.seq rawBody795_502 rawBody795_539

def rawBody795_541 : StackLang.HolProg 64 :=
.seq rawBody795_501 rawBody795_540

def rawBody795_542 : StackLang.HolProg 64 :=
.seq rawBody795_498 rawBody795_541

def rawBody795_543 : StackLang.HolProg 64 :=
.seq rawBody795_495 rawBody795_542

def rawBody795_544 : StackLang.HolProg 64 :=
.seq rawBody795_492 rawBody795_543

def rawBody795_545 : StackLang.HolProg 64 :=
.seq rawBody795_491 rawBody795_544

def rawBody795_546 : StackLang.HolProg 64 :=
.seq rawBody795_488 rawBody795_545

def rawBody795_547 : StackLang.HolProg 64 :=
.seq rawBody795_487 rawBody795_546

def rawBody795_548 : StackLang.HolProg 64 :=
.seq rawBody795_486 rawBody795_547

def rawBody795_549 : StackLang.HolProg 64 :=
.seq rawBody795_485 rawBody795_548

def rawBody795_550 : StackLang.HolProg 64 :=
.seq rawBody795_484 rawBody795_549

def rawBody795_551 : StackLang.HolProg 64 :=
.seq rawBody795_483 rawBody795_550

def rawBody795_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 18

def rawBody795_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 17

def rawBody795_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 18

def rawBody795_555 : StackLang.HolProg 64 :=
.seq rawBody795_553 rawBody795_554

def rawBody795_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 16

def rawBody795_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 15

def rawBody795_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 17

def rawBody795_559 : StackLang.HolProg 64 :=
.seq rawBody795_557 rawBody795_558

def rawBody795_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 14

def rawBody795_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 16

def rawBody795_562 : StackLang.HolProg 64 :=
.seq rawBody795_560 rawBody795_561

def rawBody795_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 13

def rawBody795_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 15

def rawBody795_565 : StackLang.HolProg 64 :=
.seq rawBody795_563 rawBody795_564

def rawBody795_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 12

def rawBody795_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 11

def rawBody795_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 14

def rawBody795_569 : StackLang.HolProg 64 :=
.seq rawBody795_567 rawBody795_568

def rawBody795_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def rawBody795_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 13

def rawBody795_572 : StackLang.HolProg 64 :=
.seq rawBody795_570 rawBody795_571

def rawBody795_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def rawBody795_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 12

def rawBody795_575 : StackLang.HolProg 64 :=
.seq rawBody795_573 rawBody795_574

def rawBody795_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 8

def rawBody795_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody795_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def rawBody795_579 : StackLang.HolProg 64 :=
.seq rawBody795_577 rawBody795_578

def rawBody795_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody795_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def rawBody795_582 : StackLang.HolProg 64 :=
.seq rawBody795_580 rawBody795_581

def rawBody795_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody795_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def rawBody795_585 : StackLang.HolProg 64 :=
.seq rawBody795_583 rawBody795_584

def rawBody795_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody795_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def rawBody795_588 : StackLang.HolProg 64 :=
.seq rawBody795_586 rawBody795_587

def rawBody795_589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 3

def rawBody795_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 2

def rawBody795_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody795_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody795_593 : StackLang.HolProg 64 :=
.seq rawBody795_591 rawBody795_592

def rawBody795_594 : StackLang.HolProg 64 :=
.seq rawBody795_590 rawBody795_593

def rawBody795_595 : StackLang.HolProg 64 :=
.seq rawBody795_589 rawBody795_594

def rawBody795_596 : StackLang.HolProg 64 :=
.seq rawBody795_588 rawBody795_595

def rawBody795_597 : StackLang.HolProg 64 :=
.seq rawBody795_585 rawBody795_596

def rawBody795_598 : StackLang.HolProg 64 :=
.seq rawBody795_582 rawBody795_597

def rawBody795_599 : StackLang.HolProg 64 :=
.seq rawBody795_579 rawBody795_598

def rawBody795_600 : StackLang.HolProg 64 :=
.seq rawBody795_576 rawBody795_599

def rawBody795_601 : StackLang.HolProg 64 :=
.seq rawBody795_575 rawBody795_600

def rawBody795_602 : StackLang.HolProg 64 :=
.seq rawBody795_572 rawBody795_601

def rawBody795_603 : StackLang.HolProg 64 :=
.seq rawBody795_569 rawBody795_602

def rawBody795_604 : StackLang.HolProg 64 :=
.seq rawBody795_566 rawBody795_603

def rawBody795_605 : StackLang.HolProg 64 :=
.seq rawBody795_565 rawBody795_604

def rawBody795_606 : StackLang.HolProg 64 :=
.seq rawBody795_562 rawBody795_605

def rawBody795_607 : StackLang.HolProg 64 :=
.seq rawBody795_559 rawBody795_606

def rawBody795_608 : StackLang.HolProg 64 :=
.seq rawBody795_556 rawBody795_607

def rawBody795_609 : StackLang.HolProg 64 :=
.seq rawBody795_555 rawBody795_608

def rawBody795_610 : StackLang.HolProg 64 :=
.seq rawBody795_552 rawBody795_609

def rawBody795_611 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody795_612 : StackLang.HolProg 64 :=
.seq rawBody795_610 rawBody795_611

def rawBody795_613 : StackLang.HolProg 64 :=
.call (some (rawBody795_551, 0, 795, 12)) (Sum.inl 715) (some (rawBody795_612, 795, 13))

def rawBody795_614 : StackLang.HolProg 64 :=
.seq rawBody795_482 rawBody795_613

def rawBody795_615 : StackLang.HolProg 64 :=
.seq rawBody795_481 rawBody795_614

def rawBody795_616 : StackLang.HolProg 64 :=
.seq rawBody795_480 rawBody795_615

def rawBody795_617 : StackLang.HolProg 64 :=
.seq rawBody795_461 rawBody795_616

def rawBody795_618 : StackLang.HolProg 64 :=
.seq rawBody795_458 rawBody795_617

def rawBody795_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody795_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody795_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3787#64)

def rawBody795_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody795_624 : StackLang.HolProg 64 :=
.seq rawBody795_622 rawBody795_623

def rawBody795_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody795_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody795_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody795_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 795 15

def rawBody795_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody795_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody795_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody795_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody795_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody795_635 : StackLang.HolProg 64 :=
.seq rawBody795_633 rawBody795_634

def rawBody795_636 : StackLang.HolProg 64 :=
.seq rawBody795_632 rawBody795_635

def rawBody795_637 : StackLang.HolProg 64 :=
.seq rawBody795_631 rawBody795_636

def rawBody795_638 : StackLang.HolProg 64 :=
.seq rawBody795_630 rawBody795_637

def rawBody795_639 : StackLang.HolProg 64 :=
.seq rawBody795_629 rawBody795_638

def rawBody795_640 : StackLang.HolProg 64 :=
.seq rawBody795_628 rawBody795_639

def rawBody795_641 : StackLang.HolProg 64 :=
.seq rawBody795_627 rawBody795_640

def rawBody795_642 : StackLang.HolProg 64 :=
.seq rawBody795_626 rawBody795_641

def rawBody795_643 : StackLang.HolProg 64 :=
.seq rawBody795_625 rawBody795_642

def rawBody795_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody795_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody795_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody795_649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody795_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody795_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 18

def rawBody795_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 17

def rawBody795_653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 16

def rawBody795_654 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 18

def rawBody795_655 : StackLang.HolProg 64 :=
.seq rawBody795_653 rawBody795_654

def rawBody795_656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 15

def rawBody795_657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 17

def rawBody795_658 : StackLang.HolProg 64 :=
.seq rawBody795_656 rawBody795_657

def rawBody795_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 14

def rawBody795_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 13

def rawBody795_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 16

def rawBody795_662 : StackLang.HolProg 64 :=
.seq rawBody795_660 rawBody795_661

def rawBody795_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 12

def rawBody795_664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 11

def rawBody795_665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def rawBody795_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 15

def rawBody795_667 : StackLang.HolProg 64 :=
.seq rawBody795_665 rawBody795_666

def rawBody795_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def rawBody795_669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 14

def rawBody795_670 : StackLang.HolProg 64 :=
.seq rawBody795_668 rawBody795_669

def rawBody795_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 8

def rawBody795_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody795_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 13

def rawBody795_674 : StackLang.HolProg 64 :=
.seq rawBody795_672 rawBody795_673

def rawBody795_675 : StackLang.HolProg 64 :=
.seq rawBody795_671 rawBody795_674

def rawBody795_676 : StackLang.HolProg 64 :=
.seq rawBody795_670 rawBody795_675

def rawBody795_677 : StackLang.HolProg 64 :=
.seq rawBody795_667 rawBody795_676

def rawBody795_678 : StackLang.HolProg 64 :=
.seq rawBody795_664 rawBody795_677

def rawBody795_679 : StackLang.HolProg 64 :=
.seq rawBody795_663 rawBody795_678

def rawBody795_680 : StackLang.HolProg 64 :=
.seq rawBody795_662 rawBody795_679

def rawBody795_681 : StackLang.HolProg 64 :=
.seq rawBody795_659 rawBody795_680

def rawBody795_682 : StackLang.HolProg 64 :=
.seq rawBody795_658 rawBody795_681

def rawBody795_683 : StackLang.HolProg 64 :=
.seq rawBody795_655 rawBody795_682

def rawBody795_684 : StackLang.HolProg 64 :=
.seq rawBody795_652 rawBody795_683

def rawBody795_685 : StackLang.HolProg 64 :=
.seq rawBody795_651 rawBody795_684

def rawBody795_686 : StackLang.HolProg 64 :=
.seq rawBody795_650 rawBody795_685

def rawBody795_687 : StackLang.HolProg 64 :=
.seq rawBody795_649 rawBody795_686

def rawBody795_688 : StackLang.HolProg 64 :=
.seq rawBody795_648 rawBody795_687

def rawBody795_689 : StackLang.HolProg 64 :=
.seq rawBody795_647 rawBody795_688

def rawBody795_690 : StackLang.HolProg 64 :=
.seq rawBody795_646 rawBody795_689

def rawBody795_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 18

def rawBody795_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 17

def rawBody795_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 16

def rawBody795_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 18

def rawBody795_695 : StackLang.HolProg 64 :=
.seq rawBody795_693 rawBody795_694

def rawBody795_696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 15

def rawBody795_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 17

def rawBody795_698 : StackLang.HolProg 64 :=
.seq rawBody795_696 rawBody795_697

def rawBody795_699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 14

def rawBody795_700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 13

def rawBody795_701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 16

def rawBody795_702 : StackLang.HolProg 64 :=
.seq rawBody795_700 rawBody795_701

def rawBody795_703 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 12

def rawBody795_704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 11

def rawBody795_705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def rawBody795_706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 15

def rawBody795_707 : StackLang.HolProg 64 :=
.seq rawBody795_705 rawBody795_706

def rawBody795_708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def rawBody795_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 14

def rawBody795_710 : StackLang.HolProg 64 :=
.seq rawBody795_708 rawBody795_709

def rawBody795_711 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 8

def rawBody795_712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody795_713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 13

def rawBody795_714 : StackLang.HolProg 64 :=
.seq rawBody795_712 rawBody795_713

def rawBody795_715 : StackLang.HolProg 64 :=
.seq rawBody795_711 rawBody795_714

def rawBody795_716 : StackLang.HolProg 64 :=
.seq rawBody795_710 rawBody795_715

def rawBody795_717 : StackLang.HolProg 64 :=
.seq rawBody795_707 rawBody795_716

def rawBody795_718 : StackLang.HolProg 64 :=
.seq rawBody795_704 rawBody795_717

def rawBody795_719 : StackLang.HolProg 64 :=
.seq rawBody795_703 rawBody795_718

def rawBody795_720 : StackLang.HolProg 64 :=
.seq rawBody795_702 rawBody795_719

def rawBody795_721 : StackLang.HolProg 64 :=
.seq rawBody795_699 rawBody795_720

def rawBody795_722 : StackLang.HolProg 64 :=
.seq rawBody795_698 rawBody795_721

def rawBody795_723 : StackLang.HolProg 64 :=
.seq rawBody795_695 rawBody795_722

def rawBody795_724 : StackLang.HolProg 64 :=
.seq rawBody795_692 rawBody795_723

def rawBody795_725 : StackLang.HolProg 64 :=
.seq rawBody795_691 rawBody795_724

def rawBody795_726 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody795_727 : StackLang.HolProg 64 :=
.seq rawBody795_725 rawBody795_726

def rawBody795_728 : StackLang.HolProg 64 :=
.call (some (rawBody795_690, 0, 795, 14)) (Sum.inl 714) (some (rawBody795_727, 795, 15))

def rawBody795_729 : StackLang.HolProg 64 :=
.seq rawBody795_645 rawBody795_728

def rawBody795_730 : StackLang.HolProg 64 :=
.seq rawBody795_644 rawBody795_729

def rawBody795_731 : StackLang.HolProg 64 :=
.seq rawBody795_643 rawBody795_730

def rawBody795_732 : StackLang.HolProg 64 :=
.seq rawBody795_624 rawBody795_731

def rawBody795_733 : StackLang.HolProg 64 :=
.seq rawBody795_621 rawBody795_732

def rawBody795_734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody795_735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody795_736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3788#64)

def rawBody795_738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody795_739 : StackLang.HolProg 64 :=
.seq rawBody795_737 rawBody795_738

def rawBody795_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody795_741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody795_742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody795_743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 795 17

def rawBody795_744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody795_745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody795_746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody795_747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody795_749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody795_750 : StackLang.HolProg 64 :=
.seq rawBody795_748 rawBody795_749

def rawBody795_751 : StackLang.HolProg 64 :=
.seq rawBody795_747 rawBody795_750

def rawBody795_752 : StackLang.HolProg 64 :=
.seq rawBody795_746 rawBody795_751

def rawBody795_753 : StackLang.HolProg 64 :=
.seq rawBody795_745 rawBody795_752

def rawBody795_754 : StackLang.HolProg 64 :=
.seq rawBody795_744 rawBody795_753

def rawBody795_755 : StackLang.HolProg 64 :=
.seq rawBody795_743 rawBody795_754

def rawBody795_756 : StackLang.HolProg 64 :=
.seq rawBody795_742 rawBody795_755

def rawBody795_757 : StackLang.HolProg 64 :=
.seq rawBody795_741 rawBody795_756

def rawBody795_758 : StackLang.HolProg 64 :=
.seq rawBody795_740 rawBody795_757

def rawBody795_759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody795_760 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_761 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_762 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody795_763 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody795_764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody795_765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody795_766 : StackLang.HolProg 64 :=
.seq rawBody795_764 rawBody795_765

def rawBody795_767 : StackLang.HolProg 64 :=
.seq rawBody795_763 rawBody795_766

def rawBody795_768 : StackLang.HolProg 64 :=
.seq rawBody795_762 rawBody795_767

def rawBody795_769 : StackLang.HolProg 64 :=
.seq rawBody795_761 rawBody795_768

def rawBody795_770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_771 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody795_772 : StackLang.HolProg 64 :=
.seq rawBody795_770 rawBody795_771

def rawBody795_773 : StackLang.HolProg 64 :=
.call (some (rawBody795_769, 0, 795, 16)) (Sum.inl 711) (some (rawBody795_772, 795, 17))

def rawBody795_774 : StackLang.HolProg 64 :=
.seq rawBody795_760 rawBody795_773

def rawBody795_775 : StackLang.HolProg 64 :=
.seq rawBody795_759 rawBody795_774

def rawBody795_776 : StackLang.HolProg 64 :=
.seq rawBody795_758 rawBody795_775

def rawBody795_777 : StackLang.HolProg 64 :=
.seq rawBody795_739 rawBody795_776

def rawBody795_778 : StackLang.HolProg 64 :=
.seq rawBody795_736 rawBody795_777

def rawBody795_779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody795_780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody795_781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3789#64)

def rawBody795_783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody795_784 : StackLang.HolProg 64 :=
.seq rawBody795_782 rawBody795_783

def rawBody795_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody795_786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody795_787 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody795_788 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 795 19

def rawBody795_789 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody795_790 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody795_791 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody795_792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody795_794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody795_795 : StackLang.HolProg 64 :=
.seq rawBody795_793 rawBody795_794

def rawBody795_796 : StackLang.HolProg 64 :=
.seq rawBody795_792 rawBody795_795

def rawBody795_797 : StackLang.HolProg 64 :=
.seq rawBody795_791 rawBody795_796

def rawBody795_798 : StackLang.HolProg 64 :=
.seq rawBody795_790 rawBody795_797

def rawBody795_799 : StackLang.HolProg 64 :=
.seq rawBody795_789 rawBody795_798

def rawBody795_800 : StackLang.HolProg 64 :=
.seq rawBody795_788 rawBody795_799

def rawBody795_801 : StackLang.HolProg 64 :=
.seq rawBody795_787 rawBody795_800

def rawBody795_802 : StackLang.HolProg 64 :=
.seq rawBody795_786 rawBody795_801

def rawBody795_803 : StackLang.HolProg 64 :=
.seq rawBody795_785 rawBody795_802

def rawBody795_804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody795_805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_806 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody795_807 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody795_808 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody795_809 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody795_810 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody795_811 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 19

def rawBody795_812 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 18

def rawBody795_813 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 17

def rawBody795_814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 16

def rawBody795_815 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 15

def rawBody795_816 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 14

def rawBody795_817 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 13

def rawBody795_818 : StackLang.HolProg 64 :=
.seq rawBody795_816 rawBody795_817

def rawBody795_819 : StackLang.HolProg 64 :=
.seq rawBody795_815 rawBody795_818

def rawBody795_820 : StackLang.HolProg 64 :=
.seq rawBody795_814 rawBody795_819

def rawBody795_821 : StackLang.HolProg 64 :=
.seq rawBody795_813 rawBody795_820

def rawBody795_822 : StackLang.HolProg 64 :=
.seq rawBody795_812 rawBody795_821

def rawBody795_823 : StackLang.HolProg 64 :=
.seq rawBody795_811 rawBody795_822

def rawBody795_824 : StackLang.HolProg 64 :=
.seq rawBody795_810 rawBody795_823

def rawBody795_825 : StackLang.HolProg 64 :=
.seq rawBody795_809 rawBody795_824

def rawBody795_826 : StackLang.HolProg 64 :=
.seq rawBody795_808 rawBody795_825

def rawBody795_827 : StackLang.HolProg 64 :=
.seq rawBody795_807 rawBody795_826

def rawBody795_828 : StackLang.HolProg 64 :=
.seq rawBody795_806 rawBody795_827

def rawBody795_829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 19

def rawBody795_830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 18

def rawBody795_831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 17

def rawBody795_832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 16

def rawBody795_833 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 15

def rawBody795_834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 14

def rawBody795_835 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 13

def rawBody795_836 : StackLang.HolProg 64 :=
.seq rawBody795_834 rawBody795_835

def rawBody795_837 : StackLang.HolProg 64 :=
.seq rawBody795_833 rawBody795_836

def rawBody795_838 : StackLang.HolProg 64 :=
.seq rawBody795_832 rawBody795_837

def rawBody795_839 : StackLang.HolProg 64 :=
.seq rawBody795_831 rawBody795_838

def rawBody795_840 : StackLang.HolProg 64 :=
.seq rawBody795_830 rawBody795_839

def rawBody795_841 : StackLang.HolProg 64 :=
.seq rawBody795_829 rawBody795_840

def rawBody795_842 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody795_843 : StackLang.HolProg 64 :=
.seq rawBody795_841 rawBody795_842

def rawBody795_844 : StackLang.HolProg 64 :=
.call (some (rawBody795_828, 0, 795, 18)) (Sum.inl 705) (some (rawBody795_843, 795, 19))

def rawBody795_845 : StackLang.HolProg 64 :=
.seq rawBody795_805 rawBody795_844

def rawBody795_846 : StackLang.HolProg 64 :=
.seq rawBody795_804 rawBody795_845

def rawBody795_847 : StackLang.HolProg 64 :=
.seq rawBody795_803 rawBody795_846

def rawBody795_848 : StackLang.HolProg 64 :=
.seq rawBody795_784 rawBody795_847

def rawBody795_849 : StackLang.HolProg 64 :=
.seq rawBody795_781 rawBody795_848

def rawBody795_850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody795_851 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody795_852 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 20

def rawBody795_853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody795_854 : StackLang.HolProg 64 :=
.seq rawBody795_852 rawBody795_853

def rawBody795_855 : StackLang.HolProg 64 :=
.seq rawBody795_851 rawBody795_854

def rawBody795_856 : StackLang.HolProg 64 :=
.seq rawBody795_850 rawBody795_855

def rawBody795_857 : StackLang.HolProg 64 :=
.seq rawBody795_849 rawBody795_856

def rawBody795_858 : StackLang.HolProg 64 :=
.seq rawBody795_780 rawBody795_857

def rawBody795_859 : StackLang.HolProg 64 :=
.seq rawBody795_779 rawBody795_858

def rawBody795_860 : StackLang.HolProg 64 :=
.seq rawBody795_778 rawBody795_859

def rawBody795_861 : StackLang.HolProg 64 :=
.seq rawBody795_735 rawBody795_860

def rawBody795_862 : StackLang.HolProg 64 :=
.seq rawBody795_734 rawBody795_861

def rawBody795_863 : StackLang.HolProg 64 :=
.seq rawBody795_733 rawBody795_862

def rawBody795_864 : StackLang.HolProg 64 :=
.seq rawBody795_620 rawBody795_863

def rawBody795_865 : StackLang.HolProg 64 :=
.seq rawBody795_619 rawBody795_864

def rawBody795_866 : StackLang.HolProg 64 :=
.seq rawBody795_618 rawBody795_865

def rawBody795_867 : StackLang.HolProg 64 :=
.seq rawBody795_457 rawBody795_866

def rawBody795_868 : StackLang.HolProg 64 :=
.seq rawBody795_444 rawBody795_867

def rawBody795_869 : StackLang.HolProg 64 :=
.seq rawBody795_443 rawBody795_868

def rawBody795_870 : StackLang.HolProg 64 :=
.seq rawBody795_400 rawBody795_869

def rawBody795_871 : StackLang.HolProg 64 :=
.seq rawBody795_399 rawBody795_870

def rawBody795_872 : StackLang.HolProg 64 :=
.seq rawBody795_398 rawBody795_871

def rawBody795_873 : StackLang.HolProg 64 :=
.seq rawBody795_267 rawBody795_872

def rawBody795_874 : StackLang.HolProg 64 :=
.seq rawBody795_266 rawBody795_873

def rawBody795_875 : StackLang.HolProg 64 :=
.seq rawBody795_265 rawBody795_874

def rawBody795_876 : StackLang.HolProg 64 :=
.seq rawBody795_264 rawBody795_875

def rawBody795_877 : StackLang.HolProg 64 :=
.seq rawBody795_263 rawBody795_876

def rawBody795_878 : StackLang.HolProg 64 :=
.seq rawBody795_262 rawBody795_877

def rawBody795_879 : StackLang.HolProg 64 :=
.seq rawBody795_261 rawBody795_878

def rawBody795_880 : StackLang.HolProg 64 :=
.seq rawBody795_260 rawBody795_879

def rawBody795_881 : StackLang.HolProg 64 :=
.seq rawBody795_259 rawBody795_880

def rawBody795_882 : StackLang.HolProg 64 :=
.seq rawBody795_258 rawBody795_881

def rawBody795_883 : StackLang.HolProg 64 :=
.seq rawBody795_215 rawBody795_882

def rawBody795_884 : StackLang.HolProg 64 :=
.seq rawBody795_202 rawBody795_883

def rawBody795_885 : StackLang.HolProg 64 :=
.seq rawBody795_201 rawBody795_884

def rawBody795_886 : StackLang.HolProg 64 :=
.seq rawBody795_126 rawBody795_885

def rawBody795_887 : StackLang.HolProg 64 :=
.seq rawBody795_91 rawBody795_886

def rawBody795_888 : StackLang.HolProg 64 :=
.seq rawBody795_90 rawBody795_887

def rawBody795_889 : StackLang.HolProg 64 :=
.seq rawBody795_25 rawBody795_888

def rawBody795_890 : StackLang.HolProg 64 :=
.seq rawBody795_0 rawBody795_889

def raw795 : StackLang.HolProg 64 := rawBody795_890
theorem raw795_eq : StackRawCall.compTop RawInfo.rawInfo (function795 (.list [])).1 = raw795 := by
  kernel_rfl
#print axioms raw795_eq
end InitECandidate.Proofs.BackendStages
