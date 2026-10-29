import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw607
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody607_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody607_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody607_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 120#64))

def AllocBody607_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 128#64))

def AllocBody607_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody607_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody607_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody607_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 239#64)

def AllocBody607_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody607_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 11#64)

def AllocBody607_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody607_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody607_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_18 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody607_19 : StackLang.HolProg 64 :=
.seq AllocBody607_17 AllocBody607_18

def AllocBody607_20 : StackLang.HolProg 64 :=
.seq AllocBody607_16 AllocBody607_19

def AllocBody607_21 : StackLang.HolProg 64 :=
.seq AllocBody607_15 AllocBody607_20

def AllocBody607_22 : StackLang.HolProg 64 :=
.seq AllocBody607_14 AllocBody607_21

def AllocBody607_23 : StackLang.HolProg 64 :=
.seq AllocBody607_13 AllocBody607_22

def AllocBody607_24 : StackLang.HolProg 64 :=
.seq AllocBody607_12 AllocBody607_23

def AllocBody607_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) AllocBody607_24 AllocBody607_25

def AllocBody607_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody607_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody607_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody607_30 : StackLang.HolProg 64 :=
.seq AllocBody607_28 AllocBody607_29

def AllocBody607_31 : StackLang.HolProg 64 :=
.seq AllocBody607_27 AllocBody607_30

def AllocBody607_32 : StackLang.HolProg 64 :=
.seq AllocBody607_26 AllocBody607_31

def AllocBody607_33 : StackLang.HolProg 64 :=
.seq AllocBody607_11 AllocBody607_32

def AllocBody607_34 : StackLang.HolProg 64 :=
.seq AllocBody607_10 AllocBody607_33

def AllocBody607_35 : StackLang.HolProg 64 :=
.seq AllocBody607_9 AllocBody607_34

def AllocBody607_36 : StackLang.HolProg 64 :=
.seq AllocBody607_8 AllocBody607_35

def AllocBody607_37 : StackLang.HolProg 64 :=
.seq AllocBody607_7 AllocBody607_36

def AllocBody607_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody607_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody607_40 : StackLang.HolProg 64 :=
.seq AllocBody607_38 AllocBody607_39

def AllocBody607_41 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody607_37 AllocBody607_40

def AllocBody607_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody607_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 65536#64)

def AllocBody607_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody607_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def AllocBody607_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody607_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody607_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody607_52 : StackLang.HolProg 64 :=
.seq AllocBody607_50 AllocBody607_51

def AllocBody607_53 : StackLang.HolProg 64 :=
.seq AllocBody607_49 AllocBody607_52

def AllocBody607_54 : StackLang.HolProg 64 :=
.seq AllocBody607_48 AllocBody607_53

def AllocBody607_55 : StackLang.HolProg 64 :=
.seq AllocBody607_47 AllocBody607_54

def AllocBody607_56 : StackLang.HolProg 64 :=
.seq AllocBody607_46 AllocBody607_55

def AllocBody607_57 : StackLang.HolProg 64 :=
.seq AllocBody607_45 AllocBody607_56

def AllocBody607_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_59 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody607_57 AllocBody607_58

def AllocBody607_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody607_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody607_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody607_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody607_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody607_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody607_66 : StackLang.HolProg 64 :=
.seq AllocBody607_64 AllocBody607_65

def AllocBody607_67 : StackLang.HolProg 64 :=
.seq AllocBody607_63 AllocBody607_66

def AllocBody607_68 : StackLang.HolProg 64 :=
.seq AllocBody607_62 AllocBody607_67

def AllocBody607_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2329#64)

def AllocBody607_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody607_72 : StackLang.HolProg 64 :=
.seq AllocBody607_70 AllocBody607_71

def AllocBody607_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody607_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody607_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody607_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 607 3

def AllocBody607_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody607_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody607_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody607_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody607_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody607_83 : StackLang.HolProg 64 :=
.seq AllocBody607_81 AllocBody607_82

def AllocBody607_84 : StackLang.HolProg 64 :=
.seq AllocBody607_80 AllocBody607_83

def AllocBody607_85 : StackLang.HolProg 64 :=
.seq AllocBody607_79 AllocBody607_84

def AllocBody607_86 : StackLang.HolProg 64 :=
.seq AllocBody607_78 AllocBody607_85

def AllocBody607_87 : StackLang.HolProg 64 :=
.seq AllocBody607_77 AllocBody607_86

def AllocBody607_88 : StackLang.HolProg 64 :=
.seq AllocBody607_76 AllocBody607_87

def AllocBody607_89 : StackLang.HolProg 64 :=
.seq AllocBody607_75 AllocBody607_88

def AllocBody607_90 : StackLang.HolProg 64 :=
.seq AllocBody607_74 AllocBody607_89

def AllocBody607_91 : StackLang.HolProg 64 :=
.seq AllocBody607_73 AllocBody607_90

def AllocBody607_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody607_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody607_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody607_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody607_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody607_99 : StackLang.HolProg 64 :=
.seq AllocBody607_97 AllocBody607_98

def AllocBody607_100 : StackLang.HolProg 64 :=
.seq AllocBody607_96 AllocBody607_99

def AllocBody607_101 : StackLang.HolProg 64 :=
.seq AllocBody607_95 AllocBody607_100

def AllocBody607_102 : StackLang.HolProg 64 :=
.seq AllocBody607_94 AllocBody607_101

def AllocBody607_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_104 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody607_105 : StackLang.HolProg 64 :=
.seq AllocBody607_103 AllocBody607_104

def AllocBody607_106 : StackLang.HolProg 64 :=
.call (some (AllocBody607_102, 0, 607, 2)) (Sum.inl 465) (some (AllocBody607_105, 607, 3))

def AllocBody607_107 : StackLang.HolProg 64 :=
.seq AllocBody607_93 AllocBody607_106

def AllocBody607_108 : StackLang.HolProg 64 :=
.seq AllocBody607_92 AllocBody607_107

def AllocBody607_109 : StackLang.HolProg 64 :=
.seq AllocBody607_91 AllocBody607_108

def AllocBody607_110 : StackLang.HolProg 64 :=
.seq AllocBody607_72 AllocBody607_109

def AllocBody607_111 : StackLang.HolProg 64 :=
.seq AllocBody607_69 AllocBody607_110

def AllocBody607_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody607_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 6#64)

def AllocBody607_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody607_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody607_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2330#64)

def AllocBody607_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody607_121 : StackLang.HolProg 64 :=
.seq AllocBody607_119 AllocBody607_120

def AllocBody607_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody607_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody607_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody607_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 607 5

def AllocBody607_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody607_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody607_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody607_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody607_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody607_132 : StackLang.HolProg 64 :=
.seq AllocBody607_130 AllocBody607_131

def AllocBody607_133 : StackLang.HolProg 64 :=
.seq AllocBody607_129 AllocBody607_132

def AllocBody607_134 : StackLang.HolProg 64 :=
.seq AllocBody607_128 AllocBody607_133

def AllocBody607_135 : StackLang.HolProg 64 :=
.seq AllocBody607_127 AllocBody607_134

def AllocBody607_136 : StackLang.HolProg 64 :=
.seq AllocBody607_126 AllocBody607_135

def AllocBody607_137 : StackLang.HolProg 64 :=
.seq AllocBody607_125 AllocBody607_136

def AllocBody607_138 : StackLang.HolProg 64 :=
.seq AllocBody607_124 AllocBody607_137

def AllocBody607_139 : StackLang.HolProg 64 :=
.seq AllocBody607_123 AllocBody607_138

def AllocBody607_140 : StackLang.HolProg 64 :=
.seq AllocBody607_122 AllocBody607_139

def AllocBody607_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody607_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody607_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody607_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody607_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody607_148 : StackLang.HolProg 64 :=
.seq AllocBody607_146 AllocBody607_147

def AllocBody607_149 : StackLang.HolProg 64 :=
.seq AllocBody607_145 AllocBody607_148

def AllocBody607_150 : StackLang.HolProg 64 :=
.seq AllocBody607_144 AllocBody607_149

def AllocBody607_151 : StackLang.HolProg 64 :=
.seq AllocBody607_143 AllocBody607_150

def AllocBody607_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody607_153 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody607_154 : StackLang.HolProg 64 :=
.seq AllocBody607_152 AllocBody607_153

def AllocBody607_155 : StackLang.HolProg 64 :=
.call (some (AllocBody607_151, 0, 607, 4)) (Sum.inl 470) (some (AllocBody607_154, 607, 5))

def AllocBody607_156 : StackLang.HolProg 64 :=
.seq AllocBody607_142 AllocBody607_155

def AllocBody607_157 : StackLang.HolProg 64 :=
.seq AllocBody607_141 AllocBody607_156

def AllocBody607_158 : StackLang.HolProg 64 :=
.seq AllocBody607_140 AllocBody607_157

def AllocBody607_159 : StackLang.HolProg 64 :=
.seq AllocBody607_121 AllocBody607_158

def AllocBody607_160 : StackLang.HolProg 64 :=
.seq AllocBody607_118 AllocBody607_159

def AllocBody607_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody607_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1530#64)

def AllocBody607_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody607_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody607_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody607_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody607_168 : StackLang.HolProg 64 :=
.seq AllocBody607_166 AllocBody607_167

def AllocBody607_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2331#64)

def AllocBody607_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody607_172 : StackLang.HolProg 64 :=
.seq AllocBody607_170 AllocBody607_171

def AllocBody607_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody607_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody607_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody607_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 607 7

def AllocBody607_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody607_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody607_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody607_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody607_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody607_183 : StackLang.HolProg 64 :=
.seq AllocBody607_181 AllocBody607_182

def AllocBody607_184 : StackLang.HolProg 64 :=
.seq AllocBody607_180 AllocBody607_183

def AllocBody607_185 : StackLang.HolProg 64 :=
.seq AllocBody607_179 AllocBody607_184

def AllocBody607_186 : StackLang.HolProg 64 :=
.seq AllocBody607_178 AllocBody607_185

def AllocBody607_187 : StackLang.HolProg 64 :=
.seq AllocBody607_177 AllocBody607_186

def AllocBody607_188 : StackLang.HolProg 64 :=
.seq AllocBody607_176 AllocBody607_187

def AllocBody607_189 : StackLang.HolProg 64 :=
.seq AllocBody607_175 AllocBody607_188

def AllocBody607_190 : StackLang.HolProg 64 :=
.seq AllocBody607_174 AllocBody607_189

def AllocBody607_191 : StackLang.HolProg 64 :=
.seq AllocBody607_173 AllocBody607_190

def AllocBody607_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody607_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody607_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody607_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody607_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody607_199 : StackLang.HolProg 64 :=
.seq AllocBody607_197 AllocBody607_198

def AllocBody607_200 : StackLang.HolProg 64 :=
.seq AllocBody607_196 AllocBody607_199

def AllocBody607_201 : StackLang.HolProg 64 :=
.seq AllocBody607_195 AllocBody607_200

def AllocBody607_202 : StackLang.HolProg 64 :=
.seq AllocBody607_194 AllocBody607_201

def AllocBody607_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody607_204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody607_205 : StackLang.HolProg 64 :=
.seq AllocBody607_203 AllocBody607_204

def AllocBody607_206 : StackLang.HolProg 64 :=
.call (some (AllocBody607_202, 0, 607, 6)) (Sum.inl 471) (some (AllocBody607_205, 607, 7))

def AllocBody607_207 : StackLang.HolProg 64 :=
.seq AllocBody607_193 AllocBody607_206

def AllocBody607_208 : StackLang.HolProg 64 :=
.seq AllocBody607_192 AllocBody607_207

def AllocBody607_209 : StackLang.HolProg 64 :=
.seq AllocBody607_191 AllocBody607_208

def AllocBody607_210 : StackLang.HolProg 64 :=
.seq AllocBody607_172 AllocBody607_209

def AllocBody607_211 : StackLang.HolProg 64 :=
.seq AllocBody607_169 AllocBody607_210

def AllocBody607_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody607_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody607_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody607_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2332#64)

def AllocBody607_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody607_219 : StackLang.HolProg 64 :=
.seq AllocBody607_217 AllocBody607_218

def AllocBody607_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody607_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody607_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody607_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 607 9

def AllocBody607_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody607_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody607_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody607_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody607_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody607_230 : StackLang.HolProg 64 :=
.seq AllocBody607_228 AllocBody607_229

def AllocBody607_231 : StackLang.HolProg 64 :=
.seq AllocBody607_227 AllocBody607_230

def AllocBody607_232 : StackLang.HolProg 64 :=
.seq AllocBody607_226 AllocBody607_231

def AllocBody607_233 : StackLang.HolProg 64 :=
.seq AllocBody607_225 AllocBody607_232

def AllocBody607_234 : StackLang.HolProg 64 :=
.seq AllocBody607_224 AllocBody607_233

def AllocBody607_235 : StackLang.HolProg 64 :=
.seq AllocBody607_223 AllocBody607_234

def AllocBody607_236 : StackLang.HolProg 64 :=
.seq AllocBody607_222 AllocBody607_235

def AllocBody607_237 : StackLang.HolProg 64 :=
.seq AllocBody607_221 AllocBody607_236

def AllocBody607_238 : StackLang.HolProg 64 :=
.seq AllocBody607_220 AllocBody607_237

def AllocBody607_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody607_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody607_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody607_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody607_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody607_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody607_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody607_248 : StackLang.HolProg 64 :=
.seq AllocBody607_246 AllocBody607_247

def AllocBody607_249 : StackLang.HolProg 64 :=
.seq AllocBody607_245 AllocBody607_248

def AllocBody607_250 : StackLang.HolProg 64 :=
.seq AllocBody607_244 AllocBody607_249

def AllocBody607_251 : StackLang.HolProg 64 :=
.seq AllocBody607_243 AllocBody607_250

def AllocBody607_252 : StackLang.HolProg 64 :=
.seq AllocBody607_242 AllocBody607_251

def AllocBody607_253 : StackLang.HolProg 64 :=
.seq AllocBody607_241 AllocBody607_252

def AllocBody607_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody607_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody607_256 : StackLang.HolProg 64 :=
.seq AllocBody607_254 AllocBody607_255

def AllocBody607_257 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody607_258 : StackLang.HolProg 64 :=
.seq AllocBody607_256 AllocBody607_257

def AllocBody607_259 : StackLang.HolProg 64 :=
.call (some (AllocBody607_253, 0, 607, 8)) (Sum.inl 68) (some (AllocBody607_258, 607, 9))

def AllocBody607_260 : StackLang.HolProg 64 :=
.seq AllocBody607_240 AllocBody607_259

def AllocBody607_261 : StackLang.HolProg 64 :=
.seq AllocBody607_239 AllocBody607_260

def AllocBody607_262 : StackLang.HolProg 64 :=
.seq AllocBody607_238 AllocBody607_261

def AllocBody607_263 : StackLang.HolProg 64 :=
.seq AllocBody607_219 AllocBody607_262

def AllocBody607_264 : StackLang.HolProg 64 :=
.seq AllocBody607_216 AllocBody607_263

def AllocBody607_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody607_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody607_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody607_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody607_269 : StackLang.HolProg 64 :=
.seq AllocBody607_267 AllocBody607_268

def AllocBody607_270 : StackLang.HolProg 64 :=
.seq AllocBody607_266 AllocBody607_269

def AllocBody607_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2333#64)

def AllocBody607_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody607_274 : StackLang.HolProg 64 :=
.seq AllocBody607_272 AllocBody607_273

def AllocBody607_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody607_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody607_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody607_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 607 11

def AllocBody607_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody607_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody607_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody607_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody607_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody607_285 : StackLang.HolProg 64 :=
.seq AllocBody607_283 AllocBody607_284

def AllocBody607_286 : StackLang.HolProg 64 :=
.seq AllocBody607_282 AllocBody607_285

def AllocBody607_287 : StackLang.HolProg 64 :=
.seq AllocBody607_281 AllocBody607_286

def AllocBody607_288 : StackLang.HolProg 64 :=
.seq AllocBody607_280 AllocBody607_287

def AllocBody607_289 : StackLang.HolProg 64 :=
.seq AllocBody607_279 AllocBody607_288

def AllocBody607_290 : StackLang.HolProg 64 :=
.seq AllocBody607_278 AllocBody607_289

def AllocBody607_291 : StackLang.HolProg 64 :=
.seq AllocBody607_277 AllocBody607_290

def AllocBody607_292 : StackLang.HolProg 64 :=
.seq AllocBody607_276 AllocBody607_291

def AllocBody607_293 : StackLang.HolProg 64 :=
.seq AllocBody607_275 AllocBody607_292

def AllocBody607_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody607_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody607_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody607_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody607_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody607_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody607_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody607_303 : StackLang.HolProg 64 :=
.seq AllocBody607_301 AllocBody607_302

def AllocBody607_304 : StackLang.HolProg 64 :=
.seq AllocBody607_300 AllocBody607_303

def AllocBody607_305 : StackLang.HolProg 64 :=
.seq AllocBody607_299 AllocBody607_304

def AllocBody607_306 : StackLang.HolProg 64 :=
.seq AllocBody607_298 AllocBody607_305

def AllocBody607_307 : StackLang.HolProg 64 :=
.seq AllocBody607_297 AllocBody607_306

def AllocBody607_308 : StackLang.HolProg 64 :=
.seq AllocBody607_296 AllocBody607_307

def AllocBody607_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody607_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody607_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody607_312 : StackLang.HolProg 64 :=
.seq AllocBody607_310 AllocBody607_311

def AllocBody607_313 : StackLang.HolProg 64 :=
.seq AllocBody607_309 AllocBody607_312

def AllocBody607_314 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody607_315 : StackLang.HolProg 64 :=
.seq AllocBody607_313 AllocBody607_314

def AllocBody607_316 : StackLang.HolProg 64 :=
.call (some (AllocBody607_308, 0, 607, 10)) (Sum.inl 77) (some (AllocBody607_315, 607, 11))

def AllocBody607_317 : StackLang.HolProg 64 :=
.seq AllocBody607_295 AllocBody607_316

def AllocBody607_318 : StackLang.HolProg 64 :=
.seq AllocBody607_294 AllocBody607_317

def AllocBody607_319 : StackLang.HolProg 64 :=
.seq AllocBody607_293 AllocBody607_318

def AllocBody607_320 : StackLang.HolProg 64 :=
.seq AllocBody607_274 AllocBody607_319

def AllocBody607_321 : StackLang.HolProg 64 :=
.seq AllocBody607_271 AllocBody607_320

def AllocBody607_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody607_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def AllocBody607_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2334#64)

def AllocBody607_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody607_329 : StackLang.HolProg 64 :=
.seq AllocBody607_327 AllocBody607_328

def AllocBody607_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody607_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody607_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody607_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 607 13

def AllocBody607_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody607_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody607_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody607_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody607_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody607_340 : StackLang.HolProg 64 :=
.seq AllocBody607_338 AllocBody607_339

def AllocBody607_341 : StackLang.HolProg 64 :=
.seq AllocBody607_337 AllocBody607_340

def AllocBody607_342 : StackLang.HolProg 64 :=
.seq AllocBody607_336 AllocBody607_341

def AllocBody607_343 : StackLang.HolProg 64 :=
.seq AllocBody607_335 AllocBody607_342

def AllocBody607_344 : StackLang.HolProg 64 :=
.seq AllocBody607_334 AllocBody607_343

def AllocBody607_345 : StackLang.HolProg 64 :=
.seq AllocBody607_333 AllocBody607_344

def AllocBody607_346 : StackLang.HolProg 64 :=
.seq AllocBody607_332 AllocBody607_345

def AllocBody607_347 : StackLang.HolProg 64 :=
.seq AllocBody607_331 AllocBody607_346

def AllocBody607_348 : StackLang.HolProg 64 :=
.seq AllocBody607_330 AllocBody607_347

def AllocBody607_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody607_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody607_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody607_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody607_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody607_356 : StackLang.HolProg 64 :=
.seq AllocBody607_354 AllocBody607_355

def AllocBody607_357 : StackLang.HolProg 64 :=
.seq AllocBody607_353 AllocBody607_356

def AllocBody607_358 : StackLang.HolProg 64 :=
.seq AllocBody607_352 AllocBody607_357

def AllocBody607_359 : StackLang.HolProg 64 :=
.seq AllocBody607_351 AllocBody607_358

def AllocBody607_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody607_361 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody607_362 : StackLang.HolProg 64 :=
.seq AllocBody607_360 AllocBody607_361

def AllocBody607_363 : StackLang.HolProg 64 :=
.call (some (AllocBody607_359, 0, 607, 12)) (Sum.inl 431) (some (AllocBody607_362, 607, 13))

def AllocBody607_364 : StackLang.HolProg 64 :=
.seq AllocBody607_350 AllocBody607_363

def AllocBody607_365 : StackLang.HolProg 64 :=
.seq AllocBody607_349 AllocBody607_364

def AllocBody607_366 : StackLang.HolProg 64 :=
.seq AllocBody607_348 AllocBody607_365

def AllocBody607_367 : StackLang.HolProg 64 :=
.seq AllocBody607_329 AllocBody607_366

def AllocBody607_368 : StackLang.HolProg 64 :=
.seq AllocBody607_326 AllocBody607_367

def AllocBody607_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody607_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody607_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody607_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody607_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody607_374 : StackLang.HolProg 64 :=
.seq AllocBody607_372 AllocBody607_373

def AllocBody607_375 : StackLang.HolProg 64 :=
.seq AllocBody607_371 AllocBody607_374

def AllocBody607_376 : StackLang.HolProg 64 :=
.seq AllocBody607_370 AllocBody607_375

def AllocBody607_377 : StackLang.HolProg 64 :=
.seq AllocBody607_369 AllocBody607_376

def AllocBody607_378 : StackLang.HolProg 64 :=
.seq AllocBody607_368 AllocBody607_377

def AllocBody607_379 : StackLang.HolProg 64 :=
.seq AllocBody607_325 AllocBody607_378

def AllocBody607_380 : StackLang.HolProg 64 :=
.seq AllocBody607_324 AllocBody607_379

def AllocBody607_381 : StackLang.HolProg 64 :=
.seq AllocBody607_323 AllocBody607_380

def AllocBody607_382 : StackLang.HolProg 64 :=
.seq AllocBody607_322 AllocBody607_381

def AllocBody607_383 : StackLang.HolProg 64 :=
.seq AllocBody607_321 AllocBody607_382

def AllocBody607_384 : StackLang.HolProg 64 :=
.seq AllocBody607_270 AllocBody607_383

def AllocBody607_385 : StackLang.HolProg 64 :=
.seq AllocBody607_265 AllocBody607_384

def AllocBody607_386 : StackLang.HolProg 64 :=
.seq AllocBody607_264 AllocBody607_385

def AllocBody607_387 : StackLang.HolProg 64 :=
.seq AllocBody607_215 AllocBody607_386

def AllocBody607_388 : StackLang.HolProg 64 :=
.seq AllocBody607_214 AllocBody607_387

def AllocBody607_389 : StackLang.HolProg 64 :=
.seq AllocBody607_213 AllocBody607_388

def AllocBody607_390 : StackLang.HolProg 64 :=
.seq AllocBody607_212 AllocBody607_389

def AllocBody607_391 : StackLang.HolProg 64 :=
.seq AllocBody607_211 AllocBody607_390

def AllocBody607_392 : StackLang.HolProg 64 :=
.seq AllocBody607_168 AllocBody607_391

def AllocBody607_393 : StackLang.HolProg 64 :=
.seq AllocBody607_165 AllocBody607_392

def AllocBody607_394 : StackLang.HolProg 64 :=
.seq AllocBody607_164 AllocBody607_393

def AllocBody607_395 : StackLang.HolProg 64 :=
.seq AllocBody607_163 AllocBody607_394

def AllocBody607_396 : StackLang.HolProg 64 :=
.seq AllocBody607_162 AllocBody607_395

def AllocBody607_397 : StackLang.HolProg 64 :=
.seq AllocBody607_161 AllocBody607_396

def AllocBody607_398 : StackLang.HolProg 64 :=
.seq AllocBody607_160 AllocBody607_397

def AllocBody607_399 : StackLang.HolProg 64 :=
.seq AllocBody607_117 AllocBody607_398

def AllocBody607_400 : StackLang.HolProg 64 :=
.seq AllocBody607_116 AllocBody607_399

def AllocBody607_401 : StackLang.HolProg 64 :=
.seq AllocBody607_115 AllocBody607_400

def AllocBody607_402 : StackLang.HolProg 64 :=
.seq AllocBody607_114 AllocBody607_401

def AllocBody607_403 : StackLang.HolProg 64 :=
.seq AllocBody607_113 AllocBody607_402

def AllocBody607_404 : StackLang.HolProg 64 :=
.seq AllocBody607_112 AllocBody607_403

def AllocBody607_405 : StackLang.HolProg 64 :=
.seq AllocBody607_111 AllocBody607_404

def AllocBody607_406 : StackLang.HolProg 64 :=
.seq AllocBody607_68 AllocBody607_405

def AllocBody607_407 : StackLang.HolProg 64 :=
.seq AllocBody607_61 AllocBody607_406

def AllocBody607_408 : StackLang.HolProg 64 :=
.seq AllocBody607_60 AllocBody607_407

def AllocBody607_409 : StackLang.HolProg 64 :=
.seq AllocBody607_59 AllocBody607_408

def AllocBody607_410 : StackLang.HolProg 64 :=
.seq AllocBody607_44 AllocBody607_409

def AllocBody607_411 : StackLang.HolProg 64 :=
.seq AllocBody607_43 AllocBody607_410

def AllocBody607_412 : StackLang.HolProg 64 :=
.seq AllocBody607_42 AllocBody607_411

def AllocBody607_413 : StackLang.HolProg 64 :=
.seq AllocBody607_41 AllocBody607_412

def AllocBody607_414 : StackLang.HolProg 64 :=
.seq AllocBody607_6 AllocBody607_413

def AllocBody607_415 : StackLang.HolProg 64 :=
.seq AllocBody607_5 AllocBody607_414

def AllocBody607_416 : StackLang.HolProg 64 :=
.seq AllocBody607_4 AllocBody607_415

def AllocBody607_417 : StackLang.HolProg 64 :=
.seq AllocBody607_3 AllocBody607_416

def AllocBody607_418 : StackLang.HolProg 64 :=
.seq AllocBody607_2 AllocBody607_417

def AllocBody607_419 : StackLang.HolProg 64 :=
.seq AllocBody607_1 AllocBody607_418

def AllocBody607_420 : StackLang.HolProg 64 :=
.seq AllocBody607_0 AllocBody607_419

def Alloc607 : Nat × StackLang.HolProg 64 := (607, AllocBody607_420)
theorem Alloc607_eq : StackAlloc.progComp (607, raw607) = Alloc607 := by
  kernel_rfl
#print axioms Alloc607_eq
end InitECandidate.Proofs.BackendStages
