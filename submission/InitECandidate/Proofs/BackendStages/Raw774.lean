import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function774
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody774_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 14

def rawBody774_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 9

def rawBody774_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody774_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 11

def rawBody774_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody774_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 7

def rawBody774_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody774_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 12

def rawBody774_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def rawBody774_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 8

def rawBody774_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def rawBody774_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 10

def rawBody774_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def rawBody774_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 13

def rawBody774_14 : StackLang.HolProg 64 :=
.seq rawBody774_12 rawBody774_13

def rawBody774_15 : StackLang.HolProg 64 :=
.seq rawBody774_11 rawBody774_14

def rawBody774_16 : StackLang.HolProg 64 :=
.seq rawBody774_10 rawBody774_15

def rawBody774_17 : StackLang.HolProg 64 :=
.seq rawBody774_9 rawBody774_16

def rawBody774_18 : StackLang.HolProg 64 :=
.seq rawBody774_8 rawBody774_17

def rawBody774_19 : StackLang.HolProg 64 :=
.seq rawBody774_7 rawBody774_18

def rawBody774_20 : StackLang.HolProg 64 :=
.seq rawBody774_6 rawBody774_19

def rawBody774_21 : StackLang.HolProg 64 :=
.seq rawBody774_5 rawBody774_20

def rawBody774_22 : StackLang.HolProg 64 :=
.seq rawBody774_4 rawBody774_21

def rawBody774_23 : StackLang.HolProg 64 :=
.seq rawBody774_3 rawBody774_22

def rawBody774_24 : StackLang.HolProg 64 :=
.seq rawBody774_2 rawBody774_23

def rawBody774_25 : StackLang.HolProg 64 :=
.seq rawBody774_1 rawBody774_24

def rawBody774_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody774_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3524#64)

def rawBody774_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody774_29 : StackLang.HolProg 64 :=
.seq rawBody774_27 rawBody774_28

def rawBody774_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody774_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody774_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody774_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 774 3

def rawBody774_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody774_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody774_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody774_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody774_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody774_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody774_40 : StackLang.HolProg 64 :=
.seq rawBody774_38 rawBody774_39

def rawBody774_41 : StackLang.HolProg 64 :=
.seq rawBody774_37 rawBody774_40

def rawBody774_42 : StackLang.HolProg 64 :=
.seq rawBody774_36 rawBody774_41

def rawBody774_43 : StackLang.HolProg 64 :=
.seq rawBody774_35 rawBody774_42

def rawBody774_44 : StackLang.HolProg 64 :=
.seq rawBody774_34 rawBody774_43

def rawBody774_45 : StackLang.HolProg 64 :=
.seq rawBody774_33 rawBody774_44

def rawBody774_46 : StackLang.HolProg 64 :=
.seq rawBody774_32 rawBody774_45

def rawBody774_47 : StackLang.HolProg 64 :=
.seq rawBody774_31 rawBody774_46

def rawBody774_48 : StackLang.HolProg 64 :=
.seq rawBody774_30 rawBody774_47

def rawBody774_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody774_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody774_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody774_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody774_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody774_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody774_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody774_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 12

def rawBody774_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def rawBody774_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 10

def rawBody774_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 9

def rawBody774_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 8

def rawBody774_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def rawBody774_62 : StackLang.HolProg 64 :=
.seq rawBody774_60 rawBody774_61

def rawBody774_63 : StackLang.HolProg 64 :=
.seq rawBody774_59 rawBody774_62

def rawBody774_64 : StackLang.HolProg 64 :=
.seq rawBody774_58 rawBody774_63

def rawBody774_65 : StackLang.HolProg 64 :=
.seq rawBody774_57 rawBody774_64

def rawBody774_66 : StackLang.HolProg 64 :=
.seq rawBody774_56 rawBody774_65

def rawBody774_67 : StackLang.HolProg 64 :=
.seq rawBody774_55 rawBody774_66

def rawBody774_68 : StackLang.HolProg 64 :=
.seq rawBody774_54 rawBody774_67

def rawBody774_69 : StackLang.HolProg 64 :=
.seq rawBody774_53 rawBody774_68

def rawBody774_70 : StackLang.HolProg 64 :=
.seq rawBody774_52 rawBody774_69

def rawBody774_71 : StackLang.HolProg 64 :=
.seq rawBody774_51 rawBody774_70

def rawBody774_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 12

def rawBody774_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def rawBody774_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 10

def rawBody774_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 9

def rawBody774_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 8

def rawBody774_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def rawBody774_78 : StackLang.HolProg 64 :=
.seq rawBody774_76 rawBody774_77

def rawBody774_79 : StackLang.HolProg 64 :=
.seq rawBody774_75 rawBody774_78

def rawBody774_80 : StackLang.HolProg 64 :=
.seq rawBody774_74 rawBody774_79

def rawBody774_81 : StackLang.HolProg 64 :=
.seq rawBody774_73 rawBody774_80

def rawBody774_82 : StackLang.HolProg 64 :=
.seq rawBody774_72 rawBody774_81

def rawBody774_83 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody774_84 : StackLang.HolProg 64 :=
.seq rawBody774_82 rawBody774_83

def rawBody774_85 : StackLang.HolProg 64 :=
.call (some (rawBody774_71, 0, 774, 2)) (Sum.inl 715) (some (rawBody774_84, 774, 3))

def rawBody774_86 : StackLang.HolProg 64 :=
.seq rawBody774_50 rawBody774_85

def rawBody774_87 : StackLang.HolProg 64 :=
.seq rawBody774_49 rawBody774_86

def rawBody774_88 : StackLang.HolProg 64 :=
.seq rawBody774_48 rawBody774_87

def rawBody774_89 : StackLang.HolProg 64 :=
.seq rawBody774_29 rawBody774_88

def rawBody774_90 : StackLang.HolProg 64 :=
.seq rawBody774_26 rawBody774_89

def rawBody774_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody774_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def rawBody774_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 9

def rawBody774_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody774_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def rawBody774_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody774_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def rawBody774_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody774_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def rawBody774_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody774_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 3

def rawBody774_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def rawBody774_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 12

def rawBody774_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 11

def rawBody774_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 12 10

def rawBody774_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 8

def rawBody774_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 11 6

def rawBody774_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 4

def rawBody774_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 1

def rawBody774_110 : StackLang.HolProg 64 :=
.seq rawBody774_108 rawBody774_109

def rawBody774_111 : StackLang.HolProg 64 :=
.seq rawBody774_107 rawBody774_110

def rawBody774_112 : StackLang.HolProg 64 :=
.seq rawBody774_106 rawBody774_111

def rawBody774_113 : StackLang.HolProg 64 :=
.seq rawBody774_105 rawBody774_112

def rawBody774_114 : StackLang.HolProg 64 :=
.seq rawBody774_104 rawBody774_113

def rawBody774_115 : StackLang.HolProg 64 :=
.seq rawBody774_103 rawBody774_114

def rawBody774_116 : StackLang.HolProg 64 :=
.seq rawBody774_102 rawBody774_115

def rawBody774_117 : StackLang.HolProg 64 :=
.seq rawBody774_101 rawBody774_116

def rawBody774_118 : StackLang.HolProg 64 :=
.seq rawBody774_100 rawBody774_117

def rawBody774_119 : StackLang.HolProg 64 :=
.seq rawBody774_99 rawBody774_118

def rawBody774_120 : StackLang.HolProg 64 :=
.seq rawBody774_98 rawBody774_119

def rawBody774_121 : StackLang.HolProg 64 :=
.seq rawBody774_97 rawBody774_120

def rawBody774_122 : StackLang.HolProg 64 :=
.seq rawBody774_96 rawBody774_121

def rawBody774_123 : StackLang.HolProg 64 :=
.seq rawBody774_95 rawBody774_122

def rawBody774_124 : StackLang.HolProg 64 :=
.seq rawBody774_94 rawBody774_123

def rawBody774_125 : StackLang.HolProg 64 :=
.seq rawBody774_93 rawBody774_124

def rawBody774_126 : StackLang.HolProg 64 :=
.seq rawBody774_92 rawBody774_125

def rawBody774_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody774_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3525#64)

def rawBody774_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody774_130 : StackLang.HolProg 64 :=
.seq rawBody774_128 rawBody774_129

def rawBody774_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody774_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody774_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody774_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 774 5

def rawBody774_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody774_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody774_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody774_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody774_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody774_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody774_141 : StackLang.HolProg 64 :=
.seq rawBody774_139 rawBody774_140

def rawBody774_142 : StackLang.HolProg 64 :=
.seq rawBody774_138 rawBody774_141

def rawBody774_143 : StackLang.HolProg 64 :=
.seq rawBody774_137 rawBody774_142

def rawBody774_144 : StackLang.HolProg 64 :=
.seq rawBody774_136 rawBody774_143

def rawBody774_145 : StackLang.HolProg 64 :=
.seq rawBody774_135 rawBody774_144

def rawBody774_146 : StackLang.HolProg 64 :=
.seq rawBody774_134 rawBody774_145

def rawBody774_147 : StackLang.HolProg 64 :=
.seq rawBody774_133 rawBody774_146

def rawBody774_148 : StackLang.HolProg 64 :=
.seq rawBody774_132 rawBody774_147

def rawBody774_149 : StackLang.HolProg 64 :=
.seq rawBody774_131 rawBody774_148

def rawBody774_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody774_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody774_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody774_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody774_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody774_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody774_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody774_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 12

def rawBody774_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 11

def rawBody774_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def rawBody774_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 12

def rawBody774_161 : StackLang.HolProg 64 :=
.seq rawBody774_159 rawBody774_160

def rawBody774_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def rawBody774_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def rawBody774_164 : StackLang.HolProg 64 :=
.seq rawBody774_162 rawBody774_163

def rawBody774_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 8

def rawBody774_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody774_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def rawBody774_168 : StackLang.HolProg 64 :=
.seq rawBody774_166 rawBody774_167

def rawBody774_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody774_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody774_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def rawBody774_172 : StackLang.HolProg 64 :=
.seq rawBody774_170 rawBody774_171

def rawBody774_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 4

def rawBody774_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody774_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def rawBody774_176 : StackLang.HolProg 64 :=
.seq rawBody774_174 rawBody774_175

def rawBody774_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody774_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody774_179 : StackLang.HolProg 64 :=
.seq rawBody774_177 rawBody774_178

def rawBody774_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 1

def rawBody774_181 : StackLang.HolProg 64 :=
.seq rawBody774_179 rawBody774_180

def rawBody774_182 : StackLang.HolProg 64 :=
.seq rawBody774_176 rawBody774_181

def rawBody774_183 : StackLang.HolProg 64 :=
.seq rawBody774_173 rawBody774_182

def rawBody774_184 : StackLang.HolProg 64 :=
.seq rawBody774_172 rawBody774_183

def rawBody774_185 : StackLang.HolProg 64 :=
.seq rawBody774_169 rawBody774_184

def rawBody774_186 : StackLang.HolProg 64 :=
.seq rawBody774_168 rawBody774_185

def rawBody774_187 : StackLang.HolProg 64 :=
.seq rawBody774_165 rawBody774_186

def rawBody774_188 : StackLang.HolProg 64 :=
.seq rawBody774_164 rawBody774_187

def rawBody774_189 : StackLang.HolProg 64 :=
.seq rawBody774_161 rawBody774_188

def rawBody774_190 : StackLang.HolProg 64 :=
.seq rawBody774_158 rawBody774_189

def rawBody774_191 : StackLang.HolProg 64 :=
.seq rawBody774_157 rawBody774_190

def rawBody774_192 : StackLang.HolProg 64 :=
.seq rawBody774_156 rawBody774_191

def rawBody774_193 : StackLang.HolProg 64 :=
.seq rawBody774_155 rawBody774_192

def rawBody774_194 : StackLang.HolProg 64 :=
.seq rawBody774_154 rawBody774_193

def rawBody774_195 : StackLang.HolProg 64 :=
.seq rawBody774_153 rawBody774_194

def rawBody774_196 : StackLang.HolProg 64 :=
.seq rawBody774_152 rawBody774_195

def rawBody774_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 12

def rawBody774_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 11

def rawBody774_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def rawBody774_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 12

def rawBody774_201 : StackLang.HolProg 64 :=
.seq rawBody774_199 rawBody774_200

def rawBody774_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def rawBody774_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def rawBody774_204 : StackLang.HolProg 64 :=
.seq rawBody774_202 rawBody774_203

def rawBody774_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 8

def rawBody774_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody774_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def rawBody774_208 : StackLang.HolProg 64 :=
.seq rawBody774_206 rawBody774_207

def rawBody774_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody774_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody774_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def rawBody774_212 : StackLang.HolProg 64 :=
.seq rawBody774_210 rawBody774_211

def rawBody774_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 4

def rawBody774_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody774_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def rawBody774_216 : StackLang.HolProg 64 :=
.seq rawBody774_214 rawBody774_215

def rawBody774_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody774_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody774_219 : StackLang.HolProg 64 :=
.seq rawBody774_217 rawBody774_218

def rawBody774_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 1

def rawBody774_221 : StackLang.HolProg 64 :=
.seq rawBody774_219 rawBody774_220

def rawBody774_222 : StackLang.HolProg 64 :=
.seq rawBody774_216 rawBody774_221

def rawBody774_223 : StackLang.HolProg 64 :=
.seq rawBody774_213 rawBody774_222

def rawBody774_224 : StackLang.HolProg 64 :=
.seq rawBody774_212 rawBody774_223

def rawBody774_225 : StackLang.HolProg 64 :=
.seq rawBody774_209 rawBody774_224

def rawBody774_226 : StackLang.HolProg 64 :=
.seq rawBody774_208 rawBody774_225

def rawBody774_227 : StackLang.HolProg 64 :=
.seq rawBody774_205 rawBody774_226

def rawBody774_228 : StackLang.HolProg 64 :=
.seq rawBody774_204 rawBody774_227

def rawBody774_229 : StackLang.HolProg 64 :=
.seq rawBody774_201 rawBody774_228

def rawBody774_230 : StackLang.HolProg 64 :=
.seq rawBody774_198 rawBody774_229

def rawBody774_231 : StackLang.HolProg 64 :=
.seq rawBody774_197 rawBody774_230

def rawBody774_232 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody774_233 : StackLang.HolProg 64 :=
.seq rawBody774_231 rawBody774_232

def rawBody774_234 : StackLang.HolProg 64 :=
.call (some (rawBody774_196, 0, 774, 4)) (Sum.inl 715) (some (rawBody774_233, 774, 5))

def rawBody774_235 : StackLang.HolProg 64 :=
.seq rawBody774_151 rawBody774_234

def rawBody774_236 : StackLang.HolProg 64 :=
.seq rawBody774_150 rawBody774_235

def rawBody774_237 : StackLang.HolProg 64 :=
.seq rawBody774_149 rawBody774_236

def rawBody774_238 : StackLang.HolProg 64 :=
.seq rawBody774_130 rawBody774_237

def rawBody774_239 : StackLang.HolProg 64 :=
.seq rawBody774_127 rawBody774_238

def rawBody774_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody774_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody774_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody774_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3526#64)

def rawBody774_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody774_245 : StackLang.HolProg 64 :=
.seq rawBody774_243 rawBody774_244

def rawBody774_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody774_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody774_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody774_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 774 7

def rawBody774_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody774_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody774_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody774_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody774_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody774_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody774_256 : StackLang.HolProg 64 :=
.seq rawBody774_254 rawBody774_255

def rawBody774_257 : StackLang.HolProg 64 :=
.seq rawBody774_253 rawBody774_256

def rawBody774_258 : StackLang.HolProg 64 :=
.seq rawBody774_252 rawBody774_257

def rawBody774_259 : StackLang.HolProg 64 :=
.seq rawBody774_251 rawBody774_258

def rawBody774_260 : StackLang.HolProg 64 :=
.seq rawBody774_250 rawBody774_259

def rawBody774_261 : StackLang.HolProg 64 :=
.seq rawBody774_249 rawBody774_260

def rawBody774_262 : StackLang.HolProg 64 :=
.seq rawBody774_248 rawBody774_261

def rawBody774_263 : StackLang.HolProg 64 :=
.seq rawBody774_247 rawBody774_262

def rawBody774_264 : StackLang.HolProg 64 :=
.seq rawBody774_246 rawBody774_263

def rawBody774_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody774_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody774_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody774_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody774_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody774_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody774_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody774_272 : StackLang.HolProg 64 :=
.seq rawBody774_270 rawBody774_271

def rawBody774_273 : StackLang.HolProg 64 :=
.seq rawBody774_269 rawBody774_272

def rawBody774_274 : StackLang.HolProg 64 :=
.seq rawBody774_268 rawBody774_273

def rawBody774_275 : StackLang.HolProg 64 :=
.seq rawBody774_267 rawBody774_274

def rawBody774_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody774_277 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody774_278 : StackLang.HolProg 64 :=
.seq rawBody774_276 rawBody774_277

def rawBody774_279 : StackLang.HolProg 64 :=
.call (some (rawBody774_275, 0, 774, 6)) (Sum.inl 714) (some (rawBody774_278, 774, 7))

def rawBody774_280 : StackLang.HolProg 64 :=
.seq rawBody774_266 rawBody774_279

def rawBody774_281 : StackLang.HolProg 64 :=
.seq rawBody774_265 rawBody774_280

def rawBody774_282 : StackLang.HolProg 64 :=
.seq rawBody774_264 rawBody774_281

def rawBody774_283 : StackLang.HolProg 64 :=
.seq rawBody774_245 rawBody774_282

def rawBody774_284 : StackLang.HolProg 64 :=
.seq rawBody774_242 rawBody774_283

def rawBody774_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody774_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody774_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody774_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody774_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551224#64))

def rawBody774_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 240#64))

def rawBody774_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody774_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 248#64))

def rawBody774_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody774_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 256#64))

def rawBody774_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody774_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 264#64))

def rawBody774_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody774_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 272#64))

def rawBody774_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody774_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 280#64))

def rawBody774_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def rawBody774_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody774_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3527#64)

def rawBody774_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody774_305 : StackLang.HolProg 64 :=
.seq rawBody774_303 rawBody774_304

def rawBody774_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody774_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody774_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody774_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 774 9

def rawBody774_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody774_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody774_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody774_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody774_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody774_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody774_316 : StackLang.HolProg 64 :=
.seq rawBody774_314 rawBody774_315

def rawBody774_317 : StackLang.HolProg 64 :=
.seq rawBody774_313 rawBody774_316

def rawBody774_318 : StackLang.HolProg 64 :=
.seq rawBody774_312 rawBody774_317

def rawBody774_319 : StackLang.HolProg 64 :=
.seq rawBody774_311 rawBody774_318

def rawBody774_320 : StackLang.HolProg 64 :=
.seq rawBody774_310 rawBody774_319

def rawBody774_321 : StackLang.HolProg 64 :=
.seq rawBody774_309 rawBody774_320

def rawBody774_322 : StackLang.HolProg 64 :=
.seq rawBody774_308 rawBody774_321

def rawBody774_323 : StackLang.HolProg 64 :=
.seq rawBody774_307 rawBody774_322

def rawBody774_324 : StackLang.HolProg 64 :=
.seq rawBody774_306 rawBody774_323

def rawBody774_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody774_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody774_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody774_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody774_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody774_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody774_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody774_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody774_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody774_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody774_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody774_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody774_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def rawBody774_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 13 12

def rawBody774_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 11

def rawBody774_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 10

def rawBody774_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 9

def rawBody774_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 8

def rawBody774_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def rawBody774_344 : StackLang.HolProg 64 :=
.seq rawBody774_342 rawBody774_343

def rawBody774_345 : StackLang.HolProg 64 :=
.seq rawBody774_341 rawBody774_344

def rawBody774_346 : StackLang.HolProg 64 :=
.seq rawBody774_340 rawBody774_345

def rawBody774_347 : StackLang.HolProg 64 :=
.seq rawBody774_339 rawBody774_346

def rawBody774_348 : StackLang.HolProg 64 :=
.seq rawBody774_338 rawBody774_347

def rawBody774_349 : StackLang.HolProg 64 :=
.seq rawBody774_337 rawBody774_348

def rawBody774_350 : StackLang.HolProg 64 :=
.seq rawBody774_336 rawBody774_349

def rawBody774_351 : StackLang.HolProg 64 :=
.seq rawBody774_335 rawBody774_350

def rawBody774_352 : StackLang.HolProg 64 :=
.seq rawBody774_334 rawBody774_351

def rawBody774_353 : StackLang.HolProg 64 :=
.seq rawBody774_333 rawBody774_352

def rawBody774_354 : StackLang.HolProg 64 :=
.seq rawBody774_332 rawBody774_353

def rawBody774_355 : StackLang.HolProg 64 :=
.seq rawBody774_331 rawBody774_354

def rawBody774_356 : StackLang.HolProg 64 :=
.seq rawBody774_330 rawBody774_355

def rawBody774_357 : StackLang.HolProg 64 :=
.seq rawBody774_329 rawBody774_356

def rawBody774_358 : StackLang.HolProg 64 :=
.seq rawBody774_328 rawBody774_357

def rawBody774_359 : StackLang.HolProg 64 :=
.seq rawBody774_327 rawBody774_358

def rawBody774_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def rawBody774_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 13 12

def rawBody774_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 11

def rawBody774_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 10

def rawBody774_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 9

def rawBody774_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 8

def rawBody774_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def rawBody774_367 : StackLang.HolProg 64 :=
.seq rawBody774_365 rawBody774_366

def rawBody774_368 : StackLang.HolProg 64 :=
.seq rawBody774_364 rawBody774_367

def rawBody774_369 : StackLang.HolProg 64 :=
.seq rawBody774_363 rawBody774_368

def rawBody774_370 : StackLang.HolProg 64 :=
.seq rawBody774_362 rawBody774_369

def rawBody774_371 : StackLang.HolProg 64 :=
.seq rawBody774_361 rawBody774_370

def rawBody774_372 : StackLang.HolProg 64 :=
.seq rawBody774_360 rawBody774_371

def rawBody774_373 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody774_374 : StackLang.HolProg 64 :=
.seq rawBody774_372 rawBody774_373

def rawBody774_375 : StackLang.HolProg 64 :=
.call (some (rawBody774_359, 0, 774, 8)) (Sum.inl 710) (some (rawBody774_374, 774, 9))

def rawBody774_376 : StackLang.HolProg 64 :=
.seq rawBody774_326 rawBody774_375

def rawBody774_377 : StackLang.HolProg 64 :=
.seq rawBody774_325 rawBody774_376

def rawBody774_378 : StackLang.HolProg 64 :=
.seq rawBody774_324 rawBody774_377

def rawBody774_379 : StackLang.HolProg 64 :=
.seq rawBody774_305 rawBody774_378

def rawBody774_380 : StackLang.HolProg 64 :=
.seq rawBody774_302 rawBody774_379

def rawBody774_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody774_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def rawBody774_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody774_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 14

def rawBody774_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 706

def rawBody774_386 : StackLang.HolProg 64 :=
.seq rawBody774_384 rawBody774_385

def rawBody774_387 : StackLang.HolProg 64 :=
.seq rawBody774_383 rawBody774_386

def rawBody774_388 : StackLang.HolProg 64 :=
.seq rawBody774_382 rawBody774_387

def rawBody774_389 : StackLang.HolProg 64 :=
.seq rawBody774_381 rawBody774_388

def rawBody774_390 : StackLang.HolProg 64 :=
.seq rawBody774_380 rawBody774_389

def rawBody774_391 : StackLang.HolProg 64 :=
.seq rawBody774_301 rawBody774_390

def rawBody774_392 : StackLang.HolProg 64 :=
.seq rawBody774_300 rawBody774_391

def rawBody774_393 : StackLang.HolProg 64 :=
.seq rawBody774_299 rawBody774_392

def rawBody774_394 : StackLang.HolProg 64 :=
.seq rawBody774_298 rawBody774_393

def rawBody774_395 : StackLang.HolProg 64 :=
.seq rawBody774_297 rawBody774_394

def rawBody774_396 : StackLang.HolProg 64 :=
.seq rawBody774_296 rawBody774_395

def rawBody774_397 : StackLang.HolProg 64 :=
.seq rawBody774_295 rawBody774_396

def rawBody774_398 : StackLang.HolProg 64 :=
.seq rawBody774_294 rawBody774_397

def rawBody774_399 : StackLang.HolProg 64 :=
.seq rawBody774_293 rawBody774_398

def rawBody774_400 : StackLang.HolProg 64 :=
.seq rawBody774_292 rawBody774_399

def rawBody774_401 : StackLang.HolProg 64 :=
.seq rawBody774_291 rawBody774_400

def rawBody774_402 : StackLang.HolProg 64 :=
.seq rawBody774_290 rawBody774_401

def rawBody774_403 : StackLang.HolProg 64 :=
.seq rawBody774_289 rawBody774_402

def rawBody774_404 : StackLang.HolProg 64 :=
.seq rawBody774_288 rawBody774_403

def rawBody774_405 : StackLang.HolProg 64 :=
.seq rawBody774_287 rawBody774_404

def rawBody774_406 : StackLang.HolProg 64 :=
.seq rawBody774_286 rawBody774_405

def rawBody774_407 : StackLang.HolProg 64 :=
.seq rawBody774_285 rawBody774_406

def rawBody774_408 : StackLang.HolProg 64 :=
.seq rawBody774_284 rawBody774_407

def rawBody774_409 : StackLang.HolProg 64 :=
.seq rawBody774_241 rawBody774_408

def rawBody774_410 : StackLang.HolProg 64 :=
.seq rawBody774_240 rawBody774_409

def rawBody774_411 : StackLang.HolProg 64 :=
.seq rawBody774_239 rawBody774_410

def rawBody774_412 : StackLang.HolProg 64 :=
.seq rawBody774_126 rawBody774_411

def rawBody774_413 : StackLang.HolProg 64 :=
.seq rawBody774_91 rawBody774_412

def rawBody774_414 : StackLang.HolProg 64 :=
.seq rawBody774_90 rawBody774_413

def rawBody774_415 : StackLang.HolProg 64 :=
.seq rawBody774_25 rawBody774_414

def rawBody774_416 : StackLang.HolProg 64 :=
.seq rawBody774_0 rawBody774_415

def raw774 : StackLang.HolProg 64 := rawBody774_416
theorem raw774_eq : StackRawCall.compTop RawInfo.rawInfo (function774 (.list [])).1 = raw774 := by
  kernel_rfl
#print axioms raw774_eq
end InitECandidate.Proofs.BackendStages
