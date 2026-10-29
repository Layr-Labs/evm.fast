import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw846
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody846_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 9

def AllocBody846_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody846_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 80#64)

def AllocBody846_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def AllocBody846_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def AllocBody846_5 : StackLang.HolProg 64 :=
.seq AllocBody846_3 AllocBody846_4

def AllocBody846_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4233#64)

def AllocBody846_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody846_9 : StackLang.HolProg 64 :=
.seq AllocBody846_7 AllocBody846_8

def AllocBody846_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody846_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody846_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody846_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 846 3

def AllocBody846_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody846_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody846_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody846_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody846_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody846_20 : StackLang.HolProg 64 :=
.seq AllocBody846_18 AllocBody846_19

def AllocBody846_21 : StackLang.HolProg 64 :=
.seq AllocBody846_17 AllocBody846_20

def AllocBody846_22 : StackLang.HolProg 64 :=
.seq AllocBody846_16 AllocBody846_21

def AllocBody846_23 : StackLang.HolProg 64 :=
.seq AllocBody846_15 AllocBody846_22

def AllocBody846_24 : StackLang.HolProg 64 :=
.seq AllocBody846_14 AllocBody846_23

def AllocBody846_25 : StackLang.HolProg 64 :=
.seq AllocBody846_13 AllocBody846_24

def AllocBody846_26 : StackLang.HolProg 64 :=
.seq AllocBody846_12 AllocBody846_25

def AllocBody846_27 : StackLang.HolProg 64 :=
.seq AllocBody846_11 AllocBody846_26

def AllocBody846_28 : StackLang.HolProg 64 :=
.seq AllocBody846_10 AllocBody846_27

def AllocBody846_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody846_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody846_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody846_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody846_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody846_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def AllocBody846_37 : StackLang.HolProg 64 :=
.seq AllocBody846_35 AllocBody846_36

def AllocBody846_38 : StackLang.HolProg 64 :=
.seq AllocBody846_34 AllocBody846_37

def AllocBody846_39 : StackLang.HolProg 64 :=
.seq AllocBody846_33 AllocBody846_38

def AllocBody846_40 : StackLang.HolProg 64 :=
.seq AllocBody846_32 AllocBody846_39

def AllocBody846_41 : StackLang.HolProg 64 :=
.seq AllocBody846_31 AllocBody846_40

def AllocBody846_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def AllocBody846_43 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody846_44 : StackLang.HolProg 64 :=
.seq AllocBody846_42 AllocBody846_43

def AllocBody846_45 : StackLang.HolProg 64 :=
.call (some (AllocBody846_41, 0, 846, 2)) (Sum.inl 68) (some (AllocBody846_44, 846, 3))

def AllocBody846_46 : StackLang.HolProg 64 :=
.seq AllocBody846_30 AllocBody846_45

def AllocBody846_47 : StackLang.HolProg 64 :=
.seq AllocBody846_29 AllocBody846_46

def AllocBody846_48 : StackLang.HolProg 64 :=
.seq AllocBody846_28 AllocBody846_47

def AllocBody846_49 : StackLang.HolProg 64 :=
.seq AllocBody846_9 AllocBody846_48

def AllocBody846_50 : StackLang.HolProg 64 :=
.seq AllocBody846_6 AllocBody846_49

def AllocBody846_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody846_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody846_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody846_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody846_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody846_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def AllocBody846_57 : StackLang.HolProg 64 :=
.seq AllocBody846_55 AllocBody846_56

def AllocBody846_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 5#64)

def AllocBody846_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody846_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody846_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody846_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody846_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def AllocBody846_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody846_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 192#64)

def AllocBody846_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody846_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody846_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 76#64)

def AllocBody846_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_74 : StackLang.HolProg 64 :=
.seq AllocBody846_72 AllocBody846_73

def AllocBody846_75 : StackLang.HolProg 64 :=
.seq AllocBody846_71 AllocBody846_74

def AllocBody846_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody846_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_78 : StackLang.HolProg 64 :=
.seq AllocBody846_76 AllocBody846_77

def AllocBody846_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody846_75 AllocBody846_78

def AllocBody846_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody846_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody846_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody846_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 116#64)

def AllocBody846_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_86 : StackLang.HolProg 64 :=
.seq AllocBody846_84 AllocBody846_85

def AllocBody846_87 : StackLang.HolProg 64 :=
.seq AllocBody846_83 AllocBody846_86

def AllocBody846_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody846_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_90 : StackLang.HolProg 64 :=
.seq AllocBody846_88 AllocBody846_89

def AllocBody846_91 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody846_87 AllocBody846_90

def AllocBody846_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody846_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody846_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody846_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 184#64)

def AllocBody846_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_98 : StackLang.HolProg 64 :=
.seq AllocBody846_96 AllocBody846_97

def AllocBody846_99 : StackLang.HolProg 64 :=
.seq AllocBody846_95 AllocBody846_98

def AllocBody846_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody846_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_102 : StackLang.HolProg 64 :=
.seq AllocBody846_100 AllocBody846_101

def AllocBody846_103 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody846_99 AllocBody846_102

def AllocBody846_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody846_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def AllocBody846_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody846_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 68#64)

def AllocBody846_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_110 : StackLang.HolProg 64 :=
.seq AllocBody846_108 AllocBody846_109

def AllocBody846_111 : StackLang.HolProg 64 :=
.seq AllocBody846_107 AllocBody846_110

def AllocBody846_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody846_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_114 : StackLang.HolProg 64 :=
.seq AllocBody846_112 AllocBody846_113

def AllocBody846_115 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody846_111 AllocBody846_114

def AllocBody846_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody846_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody846_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody846_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def AllocBody846_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody846_122 : StackLang.HolProg 64 :=
.seq AllocBody846_120 AllocBody846_121

def AllocBody846_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody846_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody846_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody846_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody846_128 : StackLang.HolProg 64 :=
.seq AllocBody846_126 AllocBody846_127

def AllocBody846_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody846_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody846_131 : StackLang.HolProg 64 :=
.seq AllocBody846_129 AllocBody846_130

def AllocBody846_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 6

def AllocBody846_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody846_134 : StackLang.HolProg 64 :=
.seq AllocBody846_132 AllocBody846_133

def AllocBody846_135 : StackLang.HolProg 64 :=
.seq AllocBody846_131 AllocBody846_134

def AllocBody846_136 : StackLang.HolProg 64 :=
.seq AllocBody846_128 AllocBody846_135

def AllocBody846_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4234#64)

def AllocBody846_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody846_140 : StackLang.HolProg 64 :=
.seq AllocBody846_138 AllocBody846_139

def AllocBody846_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody846_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody846_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody846_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 846 5

def AllocBody846_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody846_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody846_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody846_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody846_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody846_151 : StackLang.HolProg 64 :=
.seq AllocBody846_149 AllocBody846_150

def AllocBody846_152 : StackLang.HolProg 64 :=
.seq AllocBody846_148 AllocBody846_151

def AllocBody846_153 : StackLang.HolProg 64 :=
.seq AllocBody846_147 AllocBody846_152

def AllocBody846_154 : StackLang.HolProg 64 :=
.seq AllocBody846_146 AllocBody846_153

def AllocBody846_155 : StackLang.HolProg 64 :=
.seq AllocBody846_145 AllocBody846_154

def AllocBody846_156 : StackLang.HolProg 64 :=
.seq AllocBody846_144 AllocBody846_155

def AllocBody846_157 : StackLang.HolProg 64 :=
.seq AllocBody846_143 AllocBody846_156

def AllocBody846_158 : StackLang.HolProg 64 :=
.seq AllocBody846_142 AllocBody846_157

def AllocBody846_159 : StackLang.HolProg 64 :=
.seq AllocBody846_141 AllocBody846_158

def AllocBody846_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody846_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody846_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody846_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody846_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody846_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def AllocBody846_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody846_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody846_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody846_171 : StackLang.HolProg 64 :=
.seq AllocBody846_169 AllocBody846_170

def AllocBody846_172 : StackLang.HolProg 64 :=
.seq AllocBody846_168 AllocBody846_171

def AllocBody846_173 : StackLang.HolProg 64 :=
.seq AllocBody846_167 AllocBody846_172

def AllocBody846_174 : StackLang.HolProg 64 :=
.seq AllocBody846_166 AllocBody846_173

def AllocBody846_175 : StackLang.HolProg 64 :=
.seq AllocBody846_165 AllocBody846_174

def AllocBody846_176 : StackLang.HolProg 64 :=
.seq AllocBody846_164 AllocBody846_175

def AllocBody846_177 : StackLang.HolProg 64 :=
.seq AllocBody846_163 AllocBody846_176

def AllocBody846_178 : StackLang.HolProg 64 :=
.seq AllocBody846_162 AllocBody846_177

def AllocBody846_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def AllocBody846_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody846_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody846_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody846_183 : StackLang.HolProg 64 :=
.seq AllocBody846_181 AllocBody846_182

def AllocBody846_184 : StackLang.HolProg 64 :=
.seq AllocBody846_180 AllocBody846_183

def AllocBody846_185 : StackLang.HolProg 64 :=
.seq AllocBody846_179 AllocBody846_184

def AllocBody846_186 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody846_187 : StackLang.HolProg 64 :=
.seq AllocBody846_185 AllocBody846_186

def AllocBody846_188 : StackLang.HolProg 64 :=
.call (some (AllocBody846_178, 0, 846, 4)) (Sum.inl 68) (some (AllocBody846_187, 846, 5))

def AllocBody846_189 : StackLang.HolProg 64 :=
.seq AllocBody846_161 AllocBody846_188

def AllocBody846_190 : StackLang.HolProg 64 :=
.seq AllocBody846_160 AllocBody846_189

def AllocBody846_191 : StackLang.HolProg 64 :=
.seq AllocBody846_159 AllocBody846_190

def AllocBody846_192 : StackLang.HolProg 64 :=
.seq AllocBody846_140 AllocBody846_191

def AllocBody846_193 : StackLang.HolProg 64 :=
.seq AllocBody846_137 AllocBody846_192

def AllocBody846_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody846_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody846_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def AllocBody846_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody846_199 : StackLang.HolProg 64 :=
.seq AllocBody846_197 AllocBody846_198

def AllocBody846_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody846_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody846_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody846_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody846_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def AllocBody846_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def AllocBody846_206 : StackLang.HolProg 64 :=
.seq AllocBody846_204 AllocBody846_205

def AllocBody846_207 : StackLang.HolProg 64 :=
.seq AllocBody846_203 AllocBody846_206

def AllocBody846_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4235#64)

def AllocBody846_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody846_211 : StackLang.HolProg 64 :=
.seq AllocBody846_209 AllocBody846_210

def AllocBody846_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody846_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody846_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody846_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 846 7

def AllocBody846_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody846_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody846_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody846_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody846_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody846_222 : StackLang.HolProg 64 :=
.seq AllocBody846_220 AllocBody846_221

def AllocBody846_223 : StackLang.HolProg 64 :=
.seq AllocBody846_219 AllocBody846_222

def AllocBody846_224 : StackLang.HolProg 64 :=
.seq AllocBody846_218 AllocBody846_223

def AllocBody846_225 : StackLang.HolProg 64 :=
.seq AllocBody846_217 AllocBody846_224

def AllocBody846_226 : StackLang.HolProg 64 :=
.seq AllocBody846_216 AllocBody846_225

def AllocBody846_227 : StackLang.HolProg 64 :=
.seq AllocBody846_215 AllocBody846_226

def AllocBody846_228 : StackLang.HolProg 64 :=
.seq AllocBody846_214 AllocBody846_227

def AllocBody846_229 : StackLang.HolProg 64 :=
.seq AllocBody846_213 AllocBody846_228

def AllocBody846_230 : StackLang.HolProg 64 :=
.seq AllocBody846_212 AllocBody846_229

def AllocBody846_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody846_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody846_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody846_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody846_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 8

def AllocBody846_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody846_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 6

def AllocBody846_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody846_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody846_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody846_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody846_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody846_245 : StackLang.HolProg 64 :=
.seq AllocBody846_243 AllocBody846_244

def AllocBody846_246 : StackLang.HolProg 64 :=
.seq AllocBody846_242 AllocBody846_245

def AllocBody846_247 : StackLang.HolProg 64 :=
.seq AllocBody846_241 AllocBody846_246

def AllocBody846_248 : StackLang.HolProg 64 :=
.seq AllocBody846_240 AllocBody846_247

def AllocBody846_249 : StackLang.HolProg 64 :=
.seq AllocBody846_239 AllocBody846_248

def AllocBody846_250 : StackLang.HolProg 64 :=
.seq AllocBody846_238 AllocBody846_249

def AllocBody846_251 : StackLang.HolProg 64 :=
.seq AllocBody846_237 AllocBody846_250

def AllocBody846_252 : StackLang.HolProg 64 :=
.seq AllocBody846_236 AllocBody846_251

def AllocBody846_253 : StackLang.HolProg 64 :=
.seq AllocBody846_235 AllocBody846_252

def AllocBody846_254 : StackLang.HolProg 64 :=
.seq AllocBody846_234 AllocBody846_253

def AllocBody846_255 : StackLang.HolProg 64 :=
.seq AllocBody846_233 AllocBody846_254

def AllocBody846_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 8

def AllocBody846_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody846_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 6

def AllocBody846_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody846_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody846_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody846_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody846_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody846_264 : StackLang.HolProg 64 :=
.seq AllocBody846_262 AllocBody846_263

def AllocBody846_265 : StackLang.HolProg 64 :=
.seq AllocBody846_261 AllocBody846_264

def AllocBody846_266 : StackLang.HolProg 64 :=
.seq AllocBody846_260 AllocBody846_265

def AllocBody846_267 : StackLang.HolProg 64 :=
.seq AllocBody846_259 AllocBody846_266

def AllocBody846_268 : StackLang.HolProg 64 :=
.seq AllocBody846_258 AllocBody846_267

def AllocBody846_269 : StackLang.HolProg 64 :=
.seq AllocBody846_257 AllocBody846_268

def AllocBody846_270 : StackLang.HolProg 64 :=
.seq AllocBody846_256 AllocBody846_269

def AllocBody846_271 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody846_272 : StackLang.HolProg 64 :=
.seq AllocBody846_270 AllocBody846_271

def AllocBody846_273 : StackLang.HolProg 64 :=
.call (some (AllocBody846_255, 0, 846, 6)) (Sum.inl 77) (some (AllocBody846_272, 846, 7))

def AllocBody846_274 : StackLang.HolProg 64 :=
.seq AllocBody846_232 AllocBody846_273

def AllocBody846_275 : StackLang.HolProg 64 :=
.seq AllocBody846_231 AllocBody846_274

def AllocBody846_276 : StackLang.HolProg 64 :=
.seq AllocBody846_230 AllocBody846_275

def AllocBody846_277 : StackLang.HolProg 64 :=
.seq AllocBody846_211 AllocBody846_276

def AllocBody846_278 : StackLang.HolProg 64 :=
.seq AllocBody846_208 AllocBody846_277

def AllocBody846_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody846_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody846_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody846_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody846_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody846_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody846_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody846_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody846_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody846_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_297 : StackLang.HolProg 64 :=
.seq AllocBody846_295 AllocBody846_296

def AllocBody846_298 : StackLang.HolProg 64 :=
.seq AllocBody846_294 AllocBody846_297

def AllocBody846_299 : StackLang.HolProg 64 :=
.seq AllocBody846_293 AllocBody846_298

def AllocBody846_300 : StackLang.HolProg 64 :=
.seq AllocBody846_292 AllocBody846_299

def AllocBody846_301 : StackLang.HolProg 64 :=
.seq AllocBody846_291 AllocBody846_300

def AllocBody846_302 : StackLang.HolProg 64 :=
.seq AllocBody846_290 AllocBody846_301

def AllocBody846_303 : StackLang.HolProg 64 :=
.seq AllocBody846_289 AllocBody846_302

def AllocBody846_304 : StackLang.HolProg 64 :=
.seq AllocBody846_288 AllocBody846_303

def AllocBody846_305 : StackLang.HolProg 64 :=
.seq AllocBody846_287 AllocBody846_304

def AllocBody846_306 : StackLang.HolProg 64 :=
.seq AllocBody846_286 AllocBody846_305

def AllocBody846_307 : StackLang.HolProg 64 :=
.seq AllocBody846_285 AllocBody846_306

def AllocBody846_308 : StackLang.HolProg 64 :=
.seq AllocBody846_284 AllocBody846_307

def AllocBody846_309 : StackLang.HolProg 64 :=
.seq AllocBody846_283 AllocBody846_308

def AllocBody846_310 : StackLang.HolProg 64 :=
.seq AllocBody846_282 AllocBody846_309

def AllocBody846_311 : StackLang.HolProg 64 :=
.seq AllocBody846_281 AllocBody846_310

def AllocBody846_312 : StackLang.HolProg 64 :=
.seq AllocBody846_280 AllocBody846_311

def AllocBody846_313 : StackLang.HolProg 64 :=
.seq AllocBody846_279 AllocBody846_312

def AllocBody846_314 : StackLang.HolProg 64 :=
.seq AllocBody846_278 AllocBody846_313

def AllocBody846_315 : StackLang.HolProg 64 :=
.seq AllocBody846_207 AllocBody846_314

def AllocBody846_316 : StackLang.HolProg 64 :=
.seq AllocBody846_202 AllocBody846_315

def AllocBody846_317 : StackLang.HolProg 64 :=
.seq AllocBody846_201 AllocBody846_316

def AllocBody846_318 : StackLang.HolProg 64 :=
.seq AllocBody846_200 AllocBody846_317

def AllocBody846_319 : StackLang.HolProg 64 :=
.seq AllocBody846_199 AllocBody846_318

def AllocBody846_320 : StackLang.HolProg 64 :=
.seq AllocBody846_196 AllocBody846_319

def AllocBody846_321 : StackLang.HolProg 64 :=
.seq AllocBody846_195 AllocBody846_320

def AllocBody846_322 : StackLang.HolProg 64 :=
.seq AllocBody846_194 AllocBody846_321

def AllocBody846_323 : StackLang.HolProg 64 :=
.seq AllocBody846_193 AllocBody846_322

def AllocBody846_324 : StackLang.HolProg 64 :=
.seq AllocBody846_136 AllocBody846_323

def AllocBody846_325 : StackLang.HolProg 64 :=
.seq AllocBody846_125 AllocBody846_324

def AllocBody846_326 : StackLang.HolProg 64 :=
.seq AllocBody846_124 AllocBody846_325

def AllocBody846_327 : StackLang.HolProg 64 :=
.seq AllocBody846_123 AllocBody846_326

def AllocBody846_328 : StackLang.HolProg 64 :=
.seq AllocBody846_122 AllocBody846_327

def AllocBody846_329 : StackLang.HolProg 64 :=
.seq AllocBody846_119 AllocBody846_328

def AllocBody846_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody846_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 8

def AllocBody846_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody846_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody846_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 7

def AllocBody846_335 : StackLang.HolProg 64 :=
.seq AllocBody846_333 AllocBody846_334

def AllocBody846_336 : StackLang.HolProg 64 :=
.seq AllocBody846_332 AllocBody846_335

def AllocBody846_337 : StackLang.HolProg 64 :=
.seq AllocBody846_331 AllocBody846_336

def AllocBody846_338 : StackLang.HolProg 64 :=
.seq AllocBody846_330 AllocBody846_337

def AllocBody846_339 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody846_329 AllocBody846_338

def AllocBody846_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody846_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody846_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody846_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 8

def AllocBody846_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody846_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 7

def AllocBody846_346 : StackLang.HolProg 64 :=
.seq AllocBody846_344 AllocBody846_345

def AllocBody846_347 : StackLang.HolProg 64 :=
.seq AllocBody846_343 AllocBody846_346

def AllocBody846_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody846_349 : StackLang.HolProg 64 :=
.seq AllocBody846_347 AllocBody846_348

def AllocBody846_350 : StackLang.HolProg 64 :=
.seq AllocBody846_342 AllocBody846_349

def AllocBody846_351 : StackLang.HolProg 64 :=
.seq AllocBody846_341 AllocBody846_350

def AllocBody846_352 : StackLang.HolProg 64 :=
.seq AllocBody846_340 AllocBody846_351

def AllocBody846_353 : StackLang.HolProg 64 :=
.seq AllocBody846_339 AllocBody846_352

def AllocBody846_354 : StackLang.HolProg 64 :=
.seq AllocBody846_118 AllocBody846_353

def AllocBody846_355 : StackLang.HolProg 64 :=
.seq AllocBody846_117 AllocBody846_354

def AllocBody846_356 : StackLang.HolProg 64 :=
.seq AllocBody846_116 AllocBody846_355

def AllocBody846_357 : StackLang.HolProg 64 :=
.seq AllocBody846_115 AllocBody846_356

def AllocBody846_358 : StackLang.HolProg 64 :=
.seq AllocBody846_106 AllocBody846_357

def AllocBody846_359 : StackLang.HolProg 64 :=
.seq AllocBody846_105 AllocBody846_358

def AllocBody846_360 : StackLang.HolProg 64 :=
.seq AllocBody846_104 AllocBody846_359

def AllocBody846_361 : StackLang.HolProg 64 :=
.seq AllocBody846_103 AllocBody846_360

def AllocBody846_362 : StackLang.HolProg 64 :=
.seq AllocBody846_94 AllocBody846_361

def AllocBody846_363 : StackLang.HolProg 64 :=
.seq AllocBody846_93 AllocBody846_362

def AllocBody846_364 : StackLang.HolProg 64 :=
.seq AllocBody846_92 AllocBody846_363

def AllocBody846_365 : StackLang.HolProg 64 :=
.seq AllocBody846_91 AllocBody846_364

def AllocBody846_366 : StackLang.HolProg 64 :=
.seq AllocBody846_82 AllocBody846_365

def AllocBody846_367 : StackLang.HolProg 64 :=
.seq AllocBody846_81 AllocBody846_366

def AllocBody846_368 : StackLang.HolProg 64 :=
.seq AllocBody846_80 AllocBody846_367

def AllocBody846_369 : StackLang.HolProg 64 :=
.seq AllocBody846_79 AllocBody846_368

def AllocBody846_370 : StackLang.HolProg 64 :=
.seq AllocBody846_70 AllocBody846_369

def AllocBody846_371 : StackLang.HolProg 64 :=
.seq AllocBody846_69 AllocBody846_370

def AllocBody846_372 : StackLang.HolProg 64 :=
.seq AllocBody846_68 AllocBody846_371

def AllocBody846_373 : StackLang.HolProg 64 :=
.seq AllocBody846_67 AllocBody846_372

def AllocBody846_374 : StackLang.HolProg 64 :=
.seq AllocBody846_66 AllocBody846_373

def AllocBody846_375 : StackLang.HolProg 64 :=
.seq AllocBody846_65 AllocBody846_374

def AllocBody846_376 : StackLang.HolProg 64 :=
.seq AllocBody846_64 AllocBody846_375

def AllocBody846_377 : StackLang.HolProg 64 :=
.seq AllocBody846_63 AllocBody846_376

def AllocBody846_378 : StackLang.HolProg 64 :=
.seq AllocBody846_62 AllocBody846_377

def AllocBody846_379 : StackLang.HolProg 64 :=
.seq AllocBody846_61 AllocBody846_378

def AllocBody846_380 : StackLang.HolProg 64 :=
.seq AllocBody846_60 AllocBody846_379

def AllocBody846_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody846_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody846_383 : StackLang.HolProg 64 :=
.seq AllocBody846_381 AllocBody846_382

def AllocBody846_384 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody846_380 AllocBody846_383

def AllocBody846_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody846_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def AllocBody846_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def AllocBody846_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def AllocBody846_389 : StackLang.HolProg 64 :=
.seq AllocBody846_387 AllocBody846_388

def AllocBody846_390 : StackLang.HolProg 64 :=
.seq AllocBody846_386 AllocBody846_389

def AllocBody846_391 : StackLang.HolProg 64 :=
.seq AllocBody846_385 AllocBody846_390

def AllocBody846_392 : StackLang.HolProg 64 :=
.seq AllocBody846_384 AllocBody846_391

def AllocBody846_393 : StackLang.HolProg 64 :=
.seq AllocBody846_59 AllocBody846_392

def AllocBody846_394 : StackLang.HolProg 64 :=
.seq AllocBody846_58 AllocBody846_393

def AllocBody846_395 : StackLang.HolProg 64 :=
.loop AllocBody846_394

def AllocBody846_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody846_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 7

def AllocBody846_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody846_399 : StackLang.HolProg 64 :=
.seq AllocBody846_397 AllocBody846_398

def AllocBody846_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody846_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 9

def AllocBody846_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def AllocBody846_403 : StackLang.HolProg 64 :=
.seq AllocBody846_401 AllocBody846_402

def AllocBody846_404 : StackLang.HolProg 64 :=
.seq AllocBody846_400 AllocBody846_403

def AllocBody846_405 : StackLang.HolProg 64 :=
.seq AllocBody846_399 AllocBody846_404

def AllocBody846_406 : StackLang.HolProg 64 :=
.seq AllocBody846_396 AllocBody846_405

def AllocBody846_407 : StackLang.HolProg 64 :=
.seq AllocBody846_395 AllocBody846_406

def AllocBody846_408 : StackLang.HolProg 64 :=
.seq AllocBody846_57 AllocBody846_407

def AllocBody846_409 : StackLang.HolProg 64 :=
.seq AllocBody846_54 AllocBody846_408

def AllocBody846_410 : StackLang.HolProg 64 :=
.seq AllocBody846_53 AllocBody846_409

def AllocBody846_411 : StackLang.HolProg 64 :=
.seq AllocBody846_52 AllocBody846_410

def AllocBody846_412 : StackLang.HolProg 64 :=
.seq AllocBody846_51 AllocBody846_411

def AllocBody846_413 : StackLang.HolProg 64 :=
.seq AllocBody846_50 AllocBody846_412

def AllocBody846_414 : StackLang.HolProg 64 :=
.seq AllocBody846_5 AllocBody846_413

def AllocBody846_415 : StackLang.HolProg 64 :=
.seq AllocBody846_2 AllocBody846_414

def AllocBody846_416 : StackLang.HolProg 64 :=
.seq AllocBody846_1 AllocBody846_415

def AllocBody846_417 : StackLang.HolProg 64 :=
.seq AllocBody846_0 AllocBody846_416

def Alloc846 : Nat × StackLang.HolProg 64 := (846, AllocBody846_417)
theorem Alloc846_eq : StackAlloc.progComp (846, raw846) = Alloc846 := by
  kernel_rfl
#print axioms Alloc846_eq
end InitECandidate.Proofs.BackendStages
