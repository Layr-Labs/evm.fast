import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function710
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody710_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 8

def rawBody710_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def rawBody710_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody710_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3152#64)

def rawBody710_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody710_5 : StackLang.HolProg 64 :=
.seq rawBody710_3 rawBody710_4

def rawBody710_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody710_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody710_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody710_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 710 3

def rawBody710_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody710_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody710_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody710_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody710_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody710_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody710_16 : StackLang.HolProg 64 :=
.seq rawBody710_14 rawBody710_15

def rawBody710_17 : StackLang.HolProg 64 :=
.seq rawBody710_13 rawBody710_16

def rawBody710_18 : StackLang.HolProg 64 :=
.seq rawBody710_12 rawBody710_17

def rawBody710_19 : StackLang.HolProg 64 :=
.seq rawBody710_11 rawBody710_18

def rawBody710_20 : StackLang.HolProg 64 :=
.seq rawBody710_10 rawBody710_19

def rawBody710_21 : StackLang.HolProg 64 :=
.seq rawBody710_9 rawBody710_20

def rawBody710_22 : StackLang.HolProg 64 :=
.seq rawBody710_8 rawBody710_21

def rawBody710_23 : StackLang.HolProg 64 :=
.seq rawBody710_7 rawBody710_22

def rawBody710_24 : StackLang.HolProg 64 :=
.seq rawBody710_6 rawBody710_23

def rawBody710_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody710_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody710_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody710_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody710_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody710_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody710_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody710_32 : StackLang.HolProg 64 :=
.seq rawBody710_30 rawBody710_31

def rawBody710_33 : StackLang.HolProg 64 :=
.seq rawBody710_29 rawBody710_32

def rawBody710_34 : StackLang.HolProg 64 :=
.seq rawBody710_28 rawBody710_33

def rawBody710_35 : StackLang.HolProg 64 :=
.seq rawBody710_27 rawBody710_34

def rawBody710_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody710_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody710_38 : StackLang.HolProg 64 :=
.seq rawBody710_36 rawBody710_37

def rawBody710_39 : StackLang.HolProg 64 :=
.call (some (rawBody710_35, 0, 710, 2)) (Sum.inl 708) (some (rawBody710_38, 710, 3))

def rawBody710_40 : StackLang.HolProg 64 :=
.seq rawBody710_26 rawBody710_39

def rawBody710_41 : StackLang.HolProg 64 :=
.seq rawBody710_25 rawBody710_40

def rawBody710_42 : StackLang.HolProg 64 :=
.seq rawBody710_24 rawBody710_41

def rawBody710_43 : StackLang.HolProg 64 :=
.seq rawBody710_5 rawBody710_42

def rawBody710_44 : StackLang.HolProg 64 :=
.seq rawBody710_2 rawBody710_43

def rawBody710_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody710_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody710_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1873798617647539866#64)

def rawBody710_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 5412103778470702295#64)

def rawBody710_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 7239337960414712511#64)

def rawBody710_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 7435674573564081700#64)

def rawBody710_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 2210141511517208575#64)

def rawBody710_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13402431016077863595#64)

def rawBody710_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 6

def rawBody710_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 5

def rawBody710_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def rawBody710_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def rawBody710_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody710_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody710_59 : StackLang.HolProg 64 :=
.seq rawBody710_57 rawBody710_58

def rawBody710_60 : StackLang.HolProg 64 :=
.seq rawBody710_56 rawBody710_59

def rawBody710_61 : StackLang.HolProg 64 :=
.seq rawBody710_55 rawBody710_60

def rawBody710_62 : StackLang.HolProg 64 :=
.seq rawBody710_54 rawBody710_61

def rawBody710_63 : StackLang.HolProg 64 :=
.seq rawBody710_53 rawBody710_62

def rawBody710_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody710_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3153#64)

def rawBody710_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody710_67 : StackLang.HolProg 64 :=
.seq rawBody710_65 rawBody710_66

def rawBody710_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody710_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody710_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody710_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 710 5

def rawBody710_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody710_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody710_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody710_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody710_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody710_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody710_78 : StackLang.HolProg 64 :=
.seq rawBody710_76 rawBody710_77

def rawBody710_79 : StackLang.HolProg 64 :=
.seq rawBody710_75 rawBody710_78

def rawBody710_80 : StackLang.HolProg 64 :=
.seq rawBody710_74 rawBody710_79

def rawBody710_81 : StackLang.HolProg 64 :=
.seq rawBody710_73 rawBody710_80

def rawBody710_82 : StackLang.HolProg 64 :=
.seq rawBody710_72 rawBody710_81

def rawBody710_83 : StackLang.HolProg 64 :=
.seq rawBody710_71 rawBody710_82

def rawBody710_84 : StackLang.HolProg 64 :=
.seq rawBody710_70 rawBody710_83

def rawBody710_85 : StackLang.HolProg 64 :=
.seq rawBody710_69 rawBody710_84

def rawBody710_86 : StackLang.HolProg 64 :=
.seq rawBody710_68 rawBody710_85

def rawBody710_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody710_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody710_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody710_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody710_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody710_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody710_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 14 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody710_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody710_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 13 6

def rawBody710_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 5

def rawBody710_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 4

def rawBody710_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def rawBody710_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 2

def rawBody710_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 1

def rawBody710_101 : StackLang.HolProg 64 :=
.seq rawBody710_99 rawBody710_100

def rawBody710_102 : StackLang.HolProg 64 :=
.seq rawBody710_98 rawBody710_101

def rawBody710_103 : StackLang.HolProg 64 :=
.seq rawBody710_97 rawBody710_102

def rawBody710_104 : StackLang.HolProg 64 :=
.seq rawBody710_96 rawBody710_103

def rawBody710_105 : StackLang.HolProg 64 :=
.seq rawBody710_95 rawBody710_104

def rawBody710_106 : StackLang.HolProg 64 :=
.seq rawBody710_94 rawBody710_105

def rawBody710_107 : StackLang.HolProg 64 :=
.seq rawBody710_93 rawBody710_106

def rawBody710_108 : StackLang.HolProg 64 :=
.seq rawBody710_92 rawBody710_107

def rawBody710_109 : StackLang.HolProg 64 :=
.seq rawBody710_91 rawBody710_108

def rawBody710_110 : StackLang.HolProg 64 :=
.seq rawBody710_90 rawBody710_109

def rawBody710_111 : StackLang.HolProg 64 :=
.seq rawBody710_89 rawBody710_110

def rawBody710_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody710_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 13 6

def rawBody710_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 5

def rawBody710_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 4

def rawBody710_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def rawBody710_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 2

def rawBody710_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 1

def rawBody710_119 : StackLang.HolProg 64 :=
.seq rawBody710_117 rawBody710_118

def rawBody710_120 : StackLang.HolProg 64 :=
.seq rawBody710_116 rawBody710_119

def rawBody710_121 : StackLang.HolProg 64 :=
.seq rawBody710_115 rawBody710_120

def rawBody710_122 : StackLang.HolProg 64 :=
.seq rawBody710_114 rawBody710_121

def rawBody710_123 : StackLang.HolProg 64 :=
.seq rawBody710_113 rawBody710_122

def rawBody710_124 : StackLang.HolProg 64 :=
.seq rawBody710_112 rawBody710_123

def rawBody710_125 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody710_126 : StackLang.HolProg 64 :=
.seq rawBody710_124 rawBody710_125

def rawBody710_127 : StackLang.HolProg 64 :=
.call (some (rawBody710_111, 0, 710, 4)) (Sum.inl 709) (some (rawBody710_126, 710, 5))

def rawBody710_128 : StackLang.HolProg 64 :=
.seq rawBody710_88 rawBody710_127

def rawBody710_129 : StackLang.HolProg 64 :=
.seq rawBody710_87 rawBody710_128

def rawBody710_130 : StackLang.HolProg 64 :=
.seq rawBody710_86 rawBody710_129

def rawBody710_131 : StackLang.HolProg 64 :=
.seq rawBody710_67 rawBody710_130

def rawBody710_132 : StackLang.HolProg 64 :=
.seq rawBody710_64 rawBody710_131

def rawBody710_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody710_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody710_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody710_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody710_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 14
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 14)))

def rawBody710_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def rawBody710_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody710_140 : StackLang.HolProg 64 :=
.seq rawBody710_138 rawBody710_139

def rawBody710_141 : StackLang.HolProg 64 :=
.seq rawBody710_137 rawBody710_140

def rawBody710_142 : StackLang.HolProg 64 :=
.seq rawBody710_136 rawBody710_141

def rawBody710_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody710_144 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody710_142 rawBody710_143

def rawBody710_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody710_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody710_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody710_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody710_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def rawBody710_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def rawBody710_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def rawBody710_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def rawBody710_153 : StackLang.HolProg 64 :=
.seq rawBody710_151 rawBody710_152

def rawBody710_154 : StackLang.HolProg 64 :=
.seq rawBody710_150 rawBody710_153

def rawBody710_155 : StackLang.HolProg 64 :=
.seq rawBody710_149 rawBody710_154

def rawBody710_156 : StackLang.HolProg 64 :=
.seq rawBody710_148 rawBody710_155

def rawBody710_157 : StackLang.HolProg 64 :=
.seq rawBody710_147 rawBody710_156

def rawBody710_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def rawBody710_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody710_160 : StackLang.HolProg 64 :=
.seq rawBody710_158 rawBody710_159

def rawBody710_161 : StackLang.HolProg 64 :=
.seq rawBody710_157 rawBody710_160

def rawBody710_162 : StackLang.HolProg 64 :=
.seq rawBody710_146 rawBody710_161

def rawBody710_163 : StackLang.HolProg 64 :=
.seq rawBody710_145 rawBody710_162

def rawBody710_164 : StackLang.HolProg 64 :=
.seq rawBody710_144 rawBody710_163

def rawBody710_165 : StackLang.HolProg 64 :=
.seq rawBody710_135 rawBody710_164

def rawBody710_166 : StackLang.HolProg 64 :=
.seq rawBody710_134 rawBody710_165

def rawBody710_167 : StackLang.HolProg 64 :=
.seq rawBody710_133 rawBody710_166

def rawBody710_168 : StackLang.HolProg 64 :=
.seq rawBody710_132 rawBody710_167

def rawBody710_169 : StackLang.HolProg 64 :=
.seq rawBody710_63 rawBody710_168

def rawBody710_170 : StackLang.HolProg 64 :=
.seq rawBody710_52 rawBody710_169

def rawBody710_171 : StackLang.HolProg 64 :=
.seq rawBody710_51 rawBody710_170

def rawBody710_172 : StackLang.HolProg 64 :=
.seq rawBody710_50 rawBody710_171

def rawBody710_173 : StackLang.HolProg 64 :=
.seq rawBody710_49 rawBody710_172

def rawBody710_174 : StackLang.HolProg 64 :=
.seq rawBody710_48 rawBody710_173

def rawBody710_175 : StackLang.HolProg 64 :=
.seq rawBody710_47 rawBody710_174

def rawBody710_176 : StackLang.HolProg 64 :=
.seq rawBody710_46 rawBody710_175

def rawBody710_177 : StackLang.HolProg 64 :=
.seq rawBody710_45 rawBody710_176

def rawBody710_178 : StackLang.HolProg 64 :=
.seq rawBody710_44 rawBody710_177

def rawBody710_179 : StackLang.HolProg 64 :=
.seq rawBody710_1 rawBody710_178

def rawBody710_180 : StackLang.HolProg 64 :=
.seq rawBody710_0 rawBody710_179

def raw710 : StackLang.HolProg 64 := rawBody710_180
theorem raw710_eq : StackRawCall.compTop RawInfo.rawInfo (function710 (.list [])).1 = raw710 := by
  kernel_rfl
#print axioms raw710_eq
end InitECandidate.Proofs.BackendStages
