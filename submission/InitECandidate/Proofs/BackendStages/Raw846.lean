import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function846
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody846_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 9

def rawBody846_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody846_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 80#64)

def rawBody846_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def rawBody846_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def rawBody846_5 : StackLang.HolProg 64 :=
.seq rawBody846_3 rawBody846_4

def rawBody846_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4233#64)

def rawBody846_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody846_9 : StackLang.HolProg 64 :=
.seq rawBody846_7 rawBody846_8

def rawBody846_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody846_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody846_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody846_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 846 3

def rawBody846_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody846_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody846_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody846_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody846_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody846_20 : StackLang.HolProg 64 :=
.seq rawBody846_18 rawBody846_19

def rawBody846_21 : StackLang.HolProg 64 :=
.seq rawBody846_17 rawBody846_20

def rawBody846_22 : StackLang.HolProg 64 :=
.seq rawBody846_16 rawBody846_21

def rawBody846_23 : StackLang.HolProg 64 :=
.seq rawBody846_15 rawBody846_22

def rawBody846_24 : StackLang.HolProg 64 :=
.seq rawBody846_14 rawBody846_23

def rawBody846_25 : StackLang.HolProg 64 :=
.seq rawBody846_13 rawBody846_24

def rawBody846_26 : StackLang.HolProg 64 :=
.seq rawBody846_12 rawBody846_25

def rawBody846_27 : StackLang.HolProg 64 :=
.seq rawBody846_11 rawBody846_26

def rawBody846_28 : StackLang.HolProg 64 :=
.seq rawBody846_10 rawBody846_27

def rawBody846_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody846_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody846_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody846_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody846_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody846_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def rawBody846_37 : StackLang.HolProg 64 :=
.seq rawBody846_35 rawBody846_36

def rawBody846_38 : StackLang.HolProg 64 :=
.seq rawBody846_34 rawBody846_37

def rawBody846_39 : StackLang.HolProg 64 :=
.seq rawBody846_33 rawBody846_38

def rawBody846_40 : StackLang.HolProg 64 :=
.seq rawBody846_32 rawBody846_39

def rawBody846_41 : StackLang.HolProg 64 :=
.seq rawBody846_31 rawBody846_40

def rawBody846_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def rawBody846_43 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody846_44 : StackLang.HolProg 64 :=
.seq rawBody846_42 rawBody846_43

def rawBody846_45 : StackLang.HolProg 64 :=
.call (some (rawBody846_41, 0, 846, 2)) (Sum.inl 68) (some (rawBody846_44, 846, 3))

def rawBody846_46 : StackLang.HolProg 64 :=
.seq rawBody846_30 rawBody846_45

def rawBody846_47 : StackLang.HolProg 64 :=
.seq rawBody846_29 rawBody846_46

def rawBody846_48 : StackLang.HolProg 64 :=
.seq rawBody846_28 rawBody846_47

def rawBody846_49 : StackLang.HolProg 64 :=
.seq rawBody846_9 rawBody846_48

def rawBody846_50 : StackLang.HolProg 64 :=
.seq rawBody846_6 rawBody846_49

def rawBody846_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody846_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def rawBody846_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody846_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody846_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody846_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def rawBody846_57 : StackLang.HolProg 64 :=
.seq rawBody846_55 rawBody846_56

def rawBody846_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 5#64)

def rawBody846_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody846_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody846_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody846_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody846_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def rawBody846_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody846_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 192#64)

def rawBody846_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody846_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody846_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 76#64)

def rawBody846_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_74 : StackLang.HolProg 64 :=
.seq rawBody846_72 rawBody846_73

def rawBody846_75 : StackLang.HolProg 64 :=
.seq rawBody846_71 rawBody846_74

def rawBody846_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody846_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_78 : StackLang.HolProg 64 :=
.seq rawBody846_76 rawBody846_77

def rawBody846_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody846_75 rawBody846_78

def rawBody846_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody846_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def rawBody846_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody846_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 116#64)

def rawBody846_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_86 : StackLang.HolProg 64 :=
.seq rawBody846_84 rawBody846_85

def rawBody846_87 : StackLang.HolProg 64 :=
.seq rawBody846_83 rawBody846_86

def rawBody846_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody846_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_90 : StackLang.HolProg 64 :=
.seq rawBody846_88 rawBody846_89

def rawBody846_91 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody846_87 rawBody846_90

def rawBody846_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody846_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def rawBody846_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody846_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 184#64)

def rawBody846_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_98 : StackLang.HolProg 64 :=
.seq rawBody846_96 rawBody846_97

def rawBody846_99 : StackLang.HolProg 64 :=
.seq rawBody846_95 rawBody846_98

def rawBody846_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody846_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_102 : StackLang.HolProg 64 :=
.seq rawBody846_100 rawBody846_101

def rawBody846_103 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody846_99 rawBody846_102

def rawBody846_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody846_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def rawBody846_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody846_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 68#64)

def rawBody846_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_110 : StackLang.HolProg 64 :=
.seq rawBody846_108 rawBody846_109

def rawBody846_111 : StackLang.HolProg 64 :=
.seq rawBody846_107 rawBody846_110

def rawBody846_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody846_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_114 : StackLang.HolProg 64 :=
.seq rawBody846_112 rawBody846_113

def rawBody846_115 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody846_111 rawBody846_114

def rawBody846_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody846_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody846_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody846_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def rawBody846_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody846_122 : StackLang.HolProg 64 :=
.seq rawBody846_120 rawBody846_121

def rawBody846_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody846_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody846_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody846_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody846_128 : StackLang.HolProg 64 :=
.seq rawBody846_126 rawBody846_127

def rawBody846_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody846_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody846_131 : StackLang.HolProg 64 :=
.seq rawBody846_129 rawBody846_130

def rawBody846_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 6

def rawBody846_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody846_134 : StackLang.HolProg 64 :=
.seq rawBody846_132 rawBody846_133

def rawBody846_135 : StackLang.HolProg 64 :=
.seq rawBody846_131 rawBody846_134

def rawBody846_136 : StackLang.HolProg 64 :=
.seq rawBody846_128 rawBody846_135

def rawBody846_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4234#64)

def rawBody846_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody846_140 : StackLang.HolProg 64 :=
.seq rawBody846_138 rawBody846_139

def rawBody846_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody846_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody846_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody846_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 846 5

def rawBody846_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody846_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody846_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody846_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody846_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody846_151 : StackLang.HolProg 64 :=
.seq rawBody846_149 rawBody846_150

def rawBody846_152 : StackLang.HolProg 64 :=
.seq rawBody846_148 rawBody846_151

def rawBody846_153 : StackLang.HolProg 64 :=
.seq rawBody846_147 rawBody846_152

def rawBody846_154 : StackLang.HolProg 64 :=
.seq rawBody846_146 rawBody846_153

def rawBody846_155 : StackLang.HolProg 64 :=
.seq rawBody846_145 rawBody846_154

def rawBody846_156 : StackLang.HolProg 64 :=
.seq rawBody846_144 rawBody846_155

def rawBody846_157 : StackLang.HolProg 64 :=
.seq rawBody846_143 rawBody846_156

def rawBody846_158 : StackLang.HolProg 64 :=
.seq rawBody846_142 rawBody846_157

def rawBody846_159 : StackLang.HolProg 64 :=
.seq rawBody846_141 rawBody846_158

def rawBody846_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody846_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody846_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody846_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody846_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody846_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def rawBody846_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody846_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody846_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody846_171 : StackLang.HolProg 64 :=
.seq rawBody846_169 rawBody846_170

def rawBody846_172 : StackLang.HolProg 64 :=
.seq rawBody846_168 rawBody846_171

def rawBody846_173 : StackLang.HolProg 64 :=
.seq rawBody846_167 rawBody846_172

def rawBody846_174 : StackLang.HolProg 64 :=
.seq rawBody846_166 rawBody846_173

def rawBody846_175 : StackLang.HolProg 64 :=
.seq rawBody846_165 rawBody846_174

def rawBody846_176 : StackLang.HolProg 64 :=
.seq rawBody846_164 rawBody846_175

def rawBody846_177 : StackLang.HolProg 64 :=
.seq rawBody846_163 rawBody846_176

def rawBody846_178 : StackLang.HolProg 64 :=
.seq rawBody846_162 rawBody846_177

def rawBody846_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def rawBody846_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody846_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody846_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody846_183 : StackLang.HolProg 64 :=
.seq rawBody846_181 rawBody846_182

def rawBody846_184 : StackLang.HolProg 64 :=
.seq rawBody846_180 rawBody846_183

def rawBody846_185 : StackLang.HolProg 64 :=
.seq rawBody846_179 rawBody846_184

def rawBody846_186 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody846_187 : StackLang.HolProg 64 :=
.seq rawBody846_185 rawBody846_186

def rawBody846_188 : StackLang.HolProg 64 :=
.call (some (rawBody846_178, 0, 846, 4)) (Sum.inl 68) (some (rawBody846_187, 846, 5))

def rawBody846_189 : StackLang.HolProg 64 :=
.seq rawBody846_161 rawBody846_188

def rawBody846_190 : StackLang.HolProg 64 :=
.seq rawBody846_160 rawBody846_189

def rawBody846_191 : StackLang.HolProg 64 :=
.seq rawBody846_159 rawBody846_190

def rawBody846_192 : StackLang.HolProg 64 :=
.seq rawBody846_140 rawBody846_191

def rawBody846_193 : StackLang.HolProg 64 :=
.seq rawBody846_137 rawBody846_192

def rawBody846_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody846_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody846_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def rawBody846_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody846_199 : StackLang.HolProg 64 :=
.seq rawBody846_197 rawBody846_198

def rawBody846_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody846_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody846_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody846_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody846_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def rawBody846_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def rawBody846_206 : StackLang.HolProg 64 :=
.seq rawBody846_204 rawBody846_205

def rawBody846_207 : StackLang.HolProg 64 :=
.seq rawBody846_203 rawBody846_206

def rawBody846_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4235#64)

def rawBody846_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody846_211 : StackLang.HolProg 64 :=
.seq rawBody846_209 rawBody846_210

def rawBody846_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody846_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody846_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody846_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 846 7

def rawBody846_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody846_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody846_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody846_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody846_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody846_222 : StackLang.HolProg 64 :=
.seq rawBody846_220 rawBody846_221

def rawBody846_223 : StackLang.HolProg 64 :=
.seq rawBody846_219 rawBody846_222

def rawBody846_224 : StackLang.HolProg 64 :=
.seq rawBody846_218 rawBody846_223

def rawBody846_225 : StackLang.HolProg 64 :=
.seq rawBody846_217 rawBody846_224

def rawBody846_226 : StackLang.HolProg 64 :=
.seq rawBody846_216 rawBody846_225

def rawBody846_227 : StackLang.HolProg 64 :=
.seq rawBody846_215 rawBody846_226

def rawBody846_228 : StackLang.HolProg 64 :=
.seq rawBody846_214 rawBody846_227

def rawBody846_229 : StackLang.HolProg 64 :=
.seq rawBody846_213 rawBody846_228

def rawBody846_230 : StackLang.HolProg 64 :=
.seq rawBody846_212 rawBody846_229

def rawBody846_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody846_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody846_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody846_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody846_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 8

def rawBody846_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def rawBody846_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 6

def rawBody846_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody846_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody846_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def rawBody846_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody846_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody846_245 : StackLang.HolProg 64 :=
.seq rawBody846_243 rawBody846_244

def rawBody846_246 : StackLang.HolProg 64 :=
.seq rawBody846_242 rawBody846_245

def rawBody846_247 : StackLang.HolProg 64 :=
.seq rawBody846_241 rawBody846_246

def rawBody846_248 : StackLang.HolProg 64 :=
.seq rawBody846_240 rawBody846_247

def rawBody846_249 : StackLang.HolProg 64 :=
.seq rawBody846_239 rawBody846_248

def rawBody846_250 : StackLang.HolProg 64 :=
.seq rawBody846_238 rawBody846_249

def rawBody846_251 : StackLang.HolProg 64 :=
.seq rawBody846_237 rawBody846_250

def rawBody846_252 : StackLang.HolProg 64 :=
.seq rawBody846_236 rawBody846_251

def rawBody846_253 : StackLang.HolProg 64 :=
.seq rawBody846_235 rawBody846_252

def rawBody846_254 : StackLang.HolProg 64 :=
.seq rawBody846_234 rawBody846_253

def rawBody846_255 : StackLang.HolProg 64 :=
.seq rawBody846_233 rawBody846_254

def rawBody846_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 8

def rawBody846_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def rawBody846_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 6

def rawBody846_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody846_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody846_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def rawBody846_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody846_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody846_264 : StackLang.HolProg 64 :=
.seq rawBody846_262 rawBody846_263

def rawBody846_265 : StackLang.HolProg 64 :=
.seq rawBody846_261 rawBody846_264

def rawBody846_266 : StackLang.HolProg 64 :=
.seq rawBody846_260 rawBody846_265

def rawBody846_267 : StackLang.HolProg 64 :=
.seq rawBody846_259 rawBody846_266

def rawBody846_268 : StackLang.HolProg 64 :=
.seq rawBody846_258 rawBody846_267

def rawBody846_269 : StackLang.HolProg 64 :=
.seq rawBody846_257 rawBody846_268

def rawBody846_270 : StackLang.HolProg 64 :=
.seq rawBody846_256 rawBody846_269

def rawBody846_271 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody846_272 : StackLang.HolProg 64 :=
.seq rawBody846_270 rawBody846_271

def rawBody846_273 : StackLang.HolProg 64 :=
.call (some (rawBody846_255, 0, 846, 6)) (Sum.inl 77) (some (rawBody846_272, 846, 7))

def rawBody846_274 : StackLang.HolProg 64 :=
.seq rawBody846_232 rawBody846_273

def rawBody846_275 : StackLang.HolProg 64 :=
.seq rawBody846_231 rawBody846_274

def rawBody846_276 : StackLang.HolProg 64 :=
.seq rawBody846_230 rawBody846_275

def rawBody846_277 : StackLang.HolProg 64 :=
.seq rawBody846_211 rawBody846_276

def rawBody846_278 : StackLang.HolProg 64 :=
.seq rawBody846_208 rawBody846_277

def rawBody846_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody846_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody846_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody846_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody846_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody846_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody846_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody846_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody846_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody846_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_297 : StackLang.HolProg 64 :=
.seq rawBody846_295 rawBody846_296

def rawBody846_298 : StackLang.HolProg 64 :=
.seq rawBody846_294 rawBody846_297

def rawBody846_299 : StackLang.HolProg 64 :=
.seq rawBody846_293 rawBody846_298

def rawBody846_300 : StackLang.HolProg 64 :=
.seq rawBody846_292 rawBody846_299

def rawBody846_301 : StackLang.HolProg 64 :=
.seq rawBody846_291 rawBody846_300

def rawBody846_302 : StackLang.HolProg 64 :=
.seq rawBody846_290 rawBody846_301

def rawBody846_303 : StackLang.HolProg 64 :=
.seq rawBody846_289 rawBody846_302

def rawBody846_304 : StackLang.HolProg 64 :=
.seq rawBody846_288 rawBody846_303

def rawBody846_305 : StackLang.HolProg 64 :=
.seq rawBody846_287 rawBody846_304

def rawBody846_306 : StackLang.HolProg 64 :=
.seq rawBody846_286 rawBody846_305

def rawBody846_307 : StackLang.HolProg 64 :=
.seq rawBody846_285 rawBody846_306

def rawBody846_308 : StackLang.HolProg 64 :=
.seq rawBody846_284 rawBody846_307

def rawBody846_309 : StackLang.HolProg 64 :=
.seq rawBody846_283 rawBody846_308

def rawBody846_310 : StackLang.HolProg 64 :=
.seq rawBody846_282 rawBody846_309

def rawBody846_311 : StackLang.HolProg 64 :=
.seq rawBody846_281 rawBody846_310

def rawBody846_312 : StackLang.HolProg 64 :=
.seq rawBody846_280 rawBody846_311

def rawBody846_313 : StackLang.HolProg 64 :=
.seq rawBody846_279 rawBody846_312

def rawBody846_314 : StackLang.HolProg 64 :=
.seq rawBody846_278 rawBody846_313

def rawBody846_315 : StackLang.HolProg 64 :=
.seq rawBody846_207 rawBody846_314

def rawBody846_316 : StackLang.HolProg 64 :=
.seq rawBody846_202 rawBody846_315

def rawBody846_317 : StackLang.HolProg 64 :=
.seq rawBody846_201 rawBody846_316

def rawBody846_318 : StackLang.HolProg 64 :=
.seq rawBody846_200 rawBody846_317

def rawBody846_319 : StackLang.HolProg 64 :=
.seq rawBody846_199 rawBody846_318

def rawBody846_320 : StackLang.HolProg 64 :=
.seq rawBody846_196 rawBody846_319

def rawBody846_321 : StackLang.HolProg 64 :=
.seq rawBody846_195 rawBody846_320

def rawBody846_322 : StackLang.HolProg 64 :=
.seq rawBody846_194 rawBody846_321

def rawBody846_323 : StackLang.HolProg 64 :=
.seq rawBody846_193 rawBody846_322

def rawBody846_324 : StackLang.HolProg 64 :=
.seq rawBody846_136 rawBody846_323

def rawBody846_325 : StackLang.HolProg 64 :=
.seq rawBody846_125 rawBody846_324

def rawBody846_326 : StackLang.HolProg 64 :=
.seq rawBody846_124 rawBody846_325

def rawBody846_327 : StackLang.HolProg 64 :=
.seq rawBody846_123 rawBody846_326

def rawBody846_328 : StackLang.HolProg 64 :=
.seq rawBody846_122 rawBody846_327

def rawBody846_329 : StackLang.HolProg 64 :=
.seq rawBody846_119 rawBody846_328

def rawBody846_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody846_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 8

def rawBody846_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody846_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody846_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 7

def rawBody846_335 : StackLang.HolProg 64 :=
.seq rawBody846_333 rawBody846_334

def rawBody846_336 : StackLang.HolProg 64 :=
.seq rawBody846_332 rawBody846_335

def rawBody846_337 : StackLang.HolProg 64 :=
.seq rawBody846_331 rawBody846_336

def rawBody846_338 : StackLang.HolProg 64 :=
.seq rawBody846_330 rawBody846_337

def rawBody846_339 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody846_329 rawBody846_338

def rawBody846_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody846_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody846_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody846_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 8

def rawBody846_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody846_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 7

def rawBody846_346 : StackLang.HolProg 64 :=
.seq rawBody846_344 rawBody846_345

def rawBody846_347 : StackLang.HolProg 64 :=
.seq rawBody846_343 rawBody846_346

def rawBody846_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody846_349 : StackLang.HolProg 64 :=
.seq rawBody846_347 rawBody846_348

def rawBody846_350 : StackLang.HolProg 64 :=
.seq rawBody846_342 rawBody846_349

def rawBody846_351 : StackLang.HolProg 64 :=
.seq rawBody846_341 rawBody846_350

def rawBody846_352 : StackLang.HolProg 64 :=
.seq rawBody846_340 rawBody846_351

def rawBody846_353 : StackLang.HolProg 64 :=
.seq rawBody846_339 rawBody846_352

def rawBody846_354 : StackLang.HolProg 64 :=
.seq rawBody846_118 rawBody846_353

def rawBody846_355 : StackLang.HolProg 64 :=
.seq rawBody846_117 rawBody846_354

def rawBody846_356 : StackLang.HolProg 64 :=
.seq rawBody846_116 rawBody846_355

def rawBody846_357 : StackLang.HolProg 64 :=
.seq rawBody846_115 rawBody846_356

def rawBody846_358 : StackLang.HolProg 64 :=
.seq rawBody846_106 rawBody846_357

def rawBody846_359 : StackLang.HolProg 64 :=
.seq rawBody846_105 rawBody846_358

def rawBody846_360 : StackLang.HolProg 64 :=
.seq rawBody846_104 rawBody846_359

def rawBody846_361 : StackLang.HolProg 64 :=
.seq rawBody846_103 rawBody846_360

def rawBody846_362 : StackLang.HolProg 64 :=
.seq rawBody846_94 rawBody846_361

def rawBody846_363 : StackLang.HolProg 64 :=
.seq rawBody846_93 rawBody846_362

def rawBody846_364 : StackLang.HolProg 64 :=
.seq rawBody846_92 rawBody846_363

def rawBody846_365 : StackLang.HolProg 64 :=
.seq rawBody846_91 rawBody846_364

def rawBody846_366 : StackLang.HolProg 64 :=
.seq rawBody846_82 rawBody846_365

def rawBody846_367 : StackLang.HolProg 64 :=
.seq rawBody846_81 rawBody846_366

def rawBody846_368 : StackLang.HolProg 64 :=
.seq rawBody846_80 rawBody846_367

def rawBody846_369 : StackLang.HolProg 64 :=
.seq rawBody846_79 rawBody846_368

def rawBody846_370 : StackLang.HolProg 64 :=
.seq rawBody846_70 rawBody846_369

def rawBody846_371 : StackLang.HolProg 64 :=
.seq rawBody846_69 rawBody846_370

def rawBody846_372 : StackLang.HolProg 64 :=
.seq rawBody846_68 rawBody846_371

def rawBody846_373 : StackLang.HolProg 64 :=
.seq rawBody846_67 rawBody846_372

def rawBody846_374 : StackLang.HolProg 64 :=
.seq rawBody846_66 rawBody846_373

def rawBody846_375 : StackLang.HolProg 64 :=
.seq rawBody846_65 rawBody846_374

def rawBody846_376 : StackLang.HolProg 64 :=
.seq rawBody846_64 rawBody846_375

def rawBody846_377 : StackLang.HolProg 64 :=
.seq rawBody846_63 rawBody846_376

def rawBody846_378 : StackLang.HolProg 64 :=
.seq rawBody846_62 rawBody846_377

def rawBody846_379 : StackLang.HolProg 64 :=
.seq rawBody846_61 rawBody846_378

def rawBody846_380 : StackLang.HolProg 64 :=
.seq rawBody846_60 rawBody846_379

def rawBody846_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody846_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody846_383 : StackLang.HolProg 64 :=
.seq rawBody846_381 rawBody846_382

def rawBody846_384 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody846_380 rawBody846_383

def rawBody846_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody846_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def rawBody846_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def rawBody846_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def rawBody846_389 : StackLang.HolProg 64 :=
.seq rawBody846_387 rawBody846_388

def rawBody846_390 : StackLang.HolProg 64 :=
.seq rawBody846_386 rawBody846_389

def rawBody846_391 : StackLang.HolProg 64 :=
.seq rawBody846_385 rawBody846_390

def rawBody846_392 : StackLang.HolProg 64 :=
.seq rawBody846_384 rawBody846_391

def rawBody846_393 : StackLang.HolProg 64 :=
.seq rawBody846_59 rawBody846_392

def rawBody846_394 : StackLang.HolProg 64 :=
.seq rawBody846_58 rawBody846_393

def rawBody846_395 : StackLang.HolProg 64 :=
.loop rawBody846_394

def rawBody846_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody846_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 7

def rawBody846_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def rawBody846_399 : StackLang.HolProg 64 :=
.seq rawBody846_397 rawBody846_398

def rawBody846_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def rawBody846_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 9

def rawBody846_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def rawBody846_403 : StackLang.HolProg 64 :=
.seq rawBody846_401 rawBody846_402

def rawBody846_404 : StackLang.HolProg 64 :=
.seq rawBody846_400 rawBody846_403

def rawBody846_405 : StackLang.HolProg 64 :=
.seq rawBody846_399 rawBody846_404

def rawBody846_406 : StackLang.HolProg 64 :=
.seq rawBody846_396 rawBody846_405

def rawBody846_407 : StackLang.HolProg 64 :=
.seq rawBody846_395 rawBody846_406

def rawBody846_408 : StackLang.HolProg 64 :=
.seq rawBody846_57 rawBody846_407

def rawBody846_409 : StackLang.HolProg 64 :=
.seq rawBody846_54 rawBody846_408

def rawBody846_410 : StackLang.HolProg 64 :=
.seq rawBody846_53 rawBody846_409

def rawBody846_411 : StackLang.HolProg 64 :=
.seq rawBody846_52 rawBody846_410

def rawBody846_412 : StackLang.HolProg 64 :=
.seq rawBody846_51 rawBody846_411

def rawBody846_413 : StackLang.HolProg 64 :=
.seq rawBody846_50 rawBody846_412

def rawBody846_414 : StackLang.HolProg 64 :=
.seq rawBody846_5 rawBody846_413

def rawBody846_415 : StackLang.HolProg 64 :=
.seq rawBody846_2 rawBody846_414

def rawBody846_416 : StackLang.HolProg 64 :=
.seq rawBody846_1 rawBody846_415

def rawBody846_417 : StackLang.HolProg 64 :=
.seq rawBody846_0 rawBody846_416

def raw846 : StackLang.HolProg 64 := rawBody846_417
theorem raw846_eq : StackRawCall.compTop RawInfo.rawInfo (function846 (.list [])).1 = raw846 := by
  kernel_rfl
#print axioms raw846_eq
end InitECandidate.Proofs.BackendStages
