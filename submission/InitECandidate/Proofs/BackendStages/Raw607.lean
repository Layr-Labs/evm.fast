import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function607
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody607_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody607_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody607_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 120#64))

def rawBody607_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 128#64))

def rawBody607_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody607_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody607_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody607_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 239#64)

def rawBody607_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody607_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 11#64)

def rawBody607_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody607_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody607_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_18 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody607_19 : StackLang.HolProg 64 :=
.seq rawBody607_17 rawBody607_18

def rawBody607_20 : StackLang.HolProg 64 :=
.seq rawBody607_16 rawBody607_19

def rawBody607_21 : StackLang.HolProg 64 :=
.seq rawBody607_15 rawBody607_20

def rawBody607_22 : StackLang.HolProg 64 :=
.seq rawBody607_14 rawBody607_21

def rawBody607_23 : StackLang.HolProg 64 :=
.seq rawBody607_13 rawBody607_22

def rawBody607_24 : StackLang.HolProg 64 :=
.seq rawBody607_12 rawBody607_23

def rawBody607_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) rawBody607_24 rawBody607_25

def rawBody607_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody607_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody607_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody607_30 : StackLang.HolProg 64 :=
.seq rawBody607_28 rawBody607_29

def rawBody607_31 : StackLang.HolProg 64 :=
.seq rawBody607_27 rawBody607_30

def rawBody607_32 : StackLang.HolProg 64 :=
.seq rawBody607_26 rawBody607_31

def rawBody607_33 : StackLang.HolProg 64 :=
.seq rawBody607_11 rawBody607_32

def rawBody607_34 : StackLang.HolProg 64 :=
.seq rawBody607_10 rawBody607_33

def rawBody607_35 : StackLang.HolProg 64 :=
.seq rawBody607_9 rawBody607_34

def rawBody607_36 : StackLang.HolProg 64 :=
.seq rawBody607_8 rawBody607_35

def rawBody607_37 : StackLang.HolProg 64 :=
.seq rawBody607_7 rawBody607_36

def rawBody607_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody607_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody607_40 : StackLang.HolProg 64 :=
.seq rawBody607_38 rawBody607_39

def rawBody607_41 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody607_37 rawBody607_40

def rawBody607_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody607_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 65536#64)

def rawBody607_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody607_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def rawBody607_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody607_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody607_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody607_52 : StackLang.HolProg 64 :=
.seq rawBody607_50 rawBody607_51

def rawBody607_53 : StackLang.HolProg 64 :=
.seq rawBody607_49 rawBody607_52

def rawBody607_54 : StackLang.HolProg 64 :=
.seq rawBody607_48 rawBody607_53

def rawBody607_55 : StackLang.HolProg 64 :=
.seq rawBody607_47 rawBody607_54

def rawBody607_56 : StackLang.HolProg 64 :=
.seq rawBody607_46 rawBody607_55

def rawBody607_57 : StackLang.HolProg 64 :=
.seq rawBody607_45 rawBody607_56

def rawBody607_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_59 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody607_57 rawBody607_58

def rawBody607_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody607_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody607_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody607_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody607_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody607_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def rawBody607_66 : StackLang.HolProg 64 :=
.seq rawBody607_64 rawBody607_65

def rawBody607_67 : StackLang.HolProg 64 :=
.seq rawBody607_63 rawBody607_66

def rawBody607_68 : StackLang.HolProg 64 :=
.seq rawBody607_62 rawBody607_67

def rawBody607_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2329#64)

def rawBody607_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody607_72 : StackLang.HolProg 64 :=
.seq rawBody607_70 rawBody607_71

def rawBody607_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody607_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody607_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody607_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 607 3

def rawBody607_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody607_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody607_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody607_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody607_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody607_83 : StackLang.HolProg 64 :=
.seq rawBody607_81 rawBody607_82

def rawBody607_84 : StackLang.HolProg 64 :=
.seq rawBody607_80 rawBody607_83

def rawBody607_85 : StackLang.HolProg 64 :=
.seq rawBody607_79 rawBody607_84

def rawBody607_86 : StackLang.HolProg 64 :=
.seq rawBody607_78 rawBody607_85

def rawBody607_87 : StackLang.HolProg 64 :=
.seq rawBody607_77 rawBody607_86

def rawBody607_88 : StackLang.HolProg 64 :=
.seq rawBody607_76 rawBody607_87

def rawBody607_89 : StackLang.HolProg 64 :=
.seq rawBody607_75 rawBody607_88

def rawBody607_90 : StackLang.HolProg 64 :=
.seq rawBody607_74 rawBody607_89

def rawBody607_91 : StackLang.HolProg 64 :=
.seq rawBody607_73 rawBody607_90

def rawBody607_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody607_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody607_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody607_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody607_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody607_99 : StackLang.HolProg 64 :=
.seq rawBody607_97 rawBody607_98

def rawBody607_100 : StackLang.HolProg 64 :=
.seq rawBody607_96 rawBody607_99

def rawBody607_101 : StackLang.HolProg 64 :=
.seq rawBody607_95 rawBody607_100

def rawBody607_102 : StackLang.HolProg 64 :=
.seq rawBody607_94 rawBody607_101

def rawBody607_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_104 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody607_105 : StackLang.HolProg 64 :=
.seq rawBody607_103 rawBody607_104

def rawBody607_106 : StackLang.HolProg 64 :=
.call (some (rawBody607_102, 0, 607, 2)) (Sum.inl 465) (some (rawBody607_105, 607, 3))

def rawBody607_107 : StackLang.HolProg 64 :=
.seq rawBody607_93 rawBody607_106

def rawBody607_108 : StackLang.HolProg 64 :=
.seq rawBody607_92 rawBody607_107

def rawBody607_109 : StackLang.HolProg 64 :=
.seq rawBody607_91 rawBody607_108

def rawBody607_110 : StackLang.HolProg 64 :=
.seq rawBody607_72 rawBody607_109

def rawBody607_111 : StackLang.HolProg 64 :=
.seq rawBody607_69 rawBody607_110

def rawBody607_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody607_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 6#64)

def rawBody607_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody607_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody607_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2330#64)

def rawBody607_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody607_121 : StackLang.HolProg 64 :=
.seq rawBody607_119 rawBody607_120

def rawBody607_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody607_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody607_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody607_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 607 5

def rawBody607_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody607_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody607_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody607_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody607_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody607_132 : StackLang.HolProg 64 :=
.seq rawBody607_130 rawBody607_131

def rawBody607_133 : StackLang.HolProg 64 :=
.seq rawBody607_129 rawBody607_132

def rawBody607_134 : StackLang.HolProg 64 :=
.seq rawBody607_128 rawBody607_133

def rawBody607_135 : StackLang.HolProg 64 :=
.seq rawBody607_127 rawBody607_134

def rawBody607_136 : StackLang.HolProg 64 :=
.seq rawBody607_126 rawBody607_135

def rawBody607_137 : StackLang.HolProg 64 :=
.seq rawBody607_125 rawBody607_136

def rawBody607_138 : StackLang.HolProg 64 :=
.seq rawBody607_124 rawBody607_137

def rawBody607_139 : StackLang.HolProg 64 :=
.seq rawBody607_123 rawBody607_138

def rawBody607_140 : StackLang.HolProg 64 :=
.seq rawBody607_122 rawBody607_139

def rawBody607_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody607_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody607_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody607_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody607_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody607_148 : StackLang.HolProg 64 :=
.seq rawBody607_146 rawBody607_147

def rawBody607_149 : StackLang.HolProg 64 :=
.seq rawBody607_145 rawBody607_148

def rawBody607_150 : StackLang.HolProg 64 :=
.seq rawBody607_144 rawBody607_149

def rawBody607_151 : StackLang.HolProg 64 :=
.seq rawBody607_143 rawBody607_150

def rawBody607_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody607_153 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody607_154 : StackLang.HolProg 64 :=
.seq rawBody607_152 rawBody607_153

def rawBody607_155 : StackLang.HolProg 64 :=
.call (some (rawBody607_151, 0, 607, 4)) (Sum.inl 470) (some (rawBody607_154, 607, 5))

def rawBody607_156 : StackLang.HolProg 64 :=
.seq rawBody607_142 rawBody607_155

def rawBody607_157 : StackLang.HolProg 64 :=
.seq rawBody607_141 rawBody607_156

def rawBody607_158 : StackLang.HolProg 64 :=
.seq rawBody607_140 rawBody607_157

def rawBody607_159 : StackLang.HolProg 64 :=
.seq rawBody607_121 rawBody607_158

def rawBody607_160 : StackLang.HolProg 64 :=
.seq rawBody607_118 rawBody607_159

def rawBody607_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody607_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1530#64)

def rawBody607_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody607_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody607_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody607_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody607_168 : StackLang.HolProg 64 :=
.seq rawBody607_166 rawBody607_167

def rawBody607_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2331#64)

def rawBody607_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody607_172 : StackLang.HolProg 64 :=
.seq rawBody607_170 rawBody607_171

def rawBody607_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody607_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody607_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody607_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 607 7

def rawBody607_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody607_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody607_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody607_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody607_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody607_183 : StackLang.HolProg 64 :=
.seq rawBody607_181 rawBody607_182

def rawBody607_184 : StackLang.HolProg 64 :=
.seq rawBody607_180 rawBody607_183

def rawBody607_185 : StackLang.HolProg 64 :=
.seq rawBody607_179 rawBody607_184

def rawBody607_186 : StackLang.HolProg 64 :=
.seq rawBody607_178 rawBody607_185

def rawBody607_187 : StackLang.HolProg 64 :=
.seq rawBody607_177 rawBody607_186

def rawBody607_188 : StackLang.HolProg 64 :=
.seq rawBody607_176 rawBody607_187

def rawBody607_189 : StackLang.HolProg 64 :=
.seq rawBody607_175 rawBody607_188

def rawBody607_190 : StackLang.HolProg 64 :=
.seq rawBody607_174 rawBody607_189

def rawBody607_191 : StackLang.HolProg 64 :=
.seq rawBody607_173 rawBody607_190

def rawBody607_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody607_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody607_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody607_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody607_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody607_199 : StackLang.HolProg 64 :=
.seq rawBody607_197 rawBody607_198

def rawBody607_200 : StackLang.HolProg 64 :=
.seq rawBody607_196 rawBody607_199

def rawBody607_201 : StackLang.HolProg 64 :=
.seq rawBody607_195 rawBody607_200

def rawBody607_202 : StackLang.HolProg 64 :=
.seq rawBody607_194 rawBody607_201

def rawBody607_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody607_204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody607_205 : StackLang.HolProg 64 :=
.seq rawBody607_203 rawBody607_204

def rawBody607_206 : StackLang.HolProg 64 :=
.call (some (rawBody607_202, 0, 607, 6)) (Sum.inl 471) (some (rawBody607_205, 607, 7))

def rawBody607_207 : StackLang.HolProg 64 :=
.seq rawBody607_193 rawBody607_206

def rawBody607_208 : StackLang.HolProg 64 :=
.seq rawBody607_192 rawBody607_207

def rawBody607_209 : StackLang.HolProg 64 :=
.seq rawBody607_191 rawBody607_208

def rawBody607_210 : StackLang.HolProg 64 :=
.seq rawBody607_172 rawBody607_209

def rawBody607_211 : StackLang.HolProg 64 :=
.seq rawBody607_169 rawBody607_210

def rawBody607_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody607_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody607_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody607_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2332#64)

def rawBody607_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody607_219 : StackLang.HolProg 64 :=
.seq rawBody607_217 rawBody607_218

def rawBody607_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody607_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody607_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody607_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 607 9

def rawBody607_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody607_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody607_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody607_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody607_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody607_230 : StackLang.HolProg 64 :=
.seq rawBody607_228 rawBody607_229

def rawBody607_231 : StackLang.HolProg 64 :=
.seq rawBody607_227 rawBody607_230

def rawBody607_232 : StackLang.HolProg 64 :=
.seq rawBody607_226 rawBody607_231

def rawBody607_233 : StackLang.HolProg 64 :=
.seq rawBody607_225 rawBody607_232

def rawBody607_234 : StackLang.HolProg 64 :=
.seq rawBody607_224 rawBody607_233

def rawBody607_235 : StackLang.HolProg 64 :=
.seq rawBody607_223 rawBody607_234

def rawBody607_236 : StackLang.HolProg 64 :=
.seq rawBody607_222 rawBody607_235

def rawBody607_237 : StackLang.HolProg 64 :=
.seq rawBody607_221 rawBody607_236

def rawBody607_238 : StackLang.HolProg 64 :=
.seq rawBody607_220 rawBody607_237

def rawBody607_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody607_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody607_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody607_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody607_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody607_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody607_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody607_248 : StackLang.HolProg 64 :=
.seq rawBody607_246 rawBody607_247

def rawBody607_249 : StackLang.HolProg 64 :=
.seq rawBody607_245 rawBody607_248

def rawBody607_250 : StackLang.HolProg 64 :=
.seq rawBody607_244 rawBody607_249

def rawBody607_251 : StackLang.HolProg 64 :=
.seq rawBody607_243 rawBody607_250

def rawBody607_252 : StackLang.HolProg 64 :=
.seq rawBody607_242 rawBody607_251

def rawBody607_253 : StackLang.HolProg 64 :=
.seq rawBody607_241 rawBody607_252

def rawBody607_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody607_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody607_256 : StackLang.HolProg 64 :=
.seq rawBody607_254 rawBody607_255

def rawBody607_257 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody607_258 : StackLang.HolProg 64 :=
.seq rawBody607_256 rawBody607_257

def rawBody607_259 : StackLang.HolProg 64 :=
.call (some (rawBody607_253, 0, 607, 8)) (Sum.inl 68) (some (rawBody607_258, 607, 9))

def rawBody607_260 : StackLang.HolProg 64 :=
.seq rawBody607_240 rawBody607_259

def rawBody607_261 : StackLang.HolProg 64 :=
.seq rawBody607_239 rawBody607_260

def rawBody607_262 : StackLang.HolProg 64 :=
.seq rawBody607_238 rawBody607_261

def rawBody607_263 : StackLang.HolProg 64 :=
.seq rawBody607_219 rawBody607_262

def rawBody607_264 : StackLang.HolProg 64 :=
.seq rawBody607_216 rawBody607_263

def rawBody607_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody607_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody607_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def rawBody607_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody607_269 : StackLang.HolProg 64 :=
.seq rawBody607_267 rawBody607_268

def rawBody607_270 : StackLang.HolProg 64 :=
.seq rawBody607_266 rawBody607_269

def rawBody607_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2333#64)

def rawBody607_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody607_274 : StackLang.HolProg 64 :=
.seq rawBody607_272 rawBody607_273

def rawBody607_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody607_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody607_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody607_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 607 11

def rawBody607_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody607_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody607_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody607_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody607_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody607_285 : StackLang.HolProg 64 :=
.seq rawBody607_283 rawBody607_284

def rawBody607_286 : StackLang.HolProg 64 :=
.seq rawBody607_282 rawBody607_285

def rawBody607_287 : StackLang.HolProg 64 :=
.seq rawBody607_281 rawBody607_286

def rawBody607_288 : StackLang.HolProg 64 :=
.seq rawBody607_280 rawBody607_287

def rawBody607_289 : StackLang.HolProg 64 :=
.seq rawBody607_279 rawBody607_288

def rawBody607_290 : StackLang.HolProg 64 :=
.seq rawBody607_278 rawBody607_289

def rawBody607_291 : StackLang.HolProg 64 :=
.seq rawBody607_277 rawBody607_290

def rawBody607_292 : StackLang.HolProg 64 :=
.seq rawBody607_276 rawBody607_291

def rawBody607_293 : StackLang.HolProg 64 :=
.seq rawBody607_275 rawBody607_292

def rawBody607_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody607_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody607_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody607_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody607_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody607_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody607_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody607_303 : StackLang.HolProg 64 :=
.seq rawBody607_301 rawBody607_302

def rawBody607_304 : StackLang.HolProg 64 :=
.seq rawBody607_300 rawBody607_303

def rawBody607_305 : StackLang.HolProg 64 :=
.seq rawBody607_299 rawBody607_304

def rawBody607_306 : StackLang.HolProg 64 :=
.seq rawBody607_298 rawBody607_305

def rawBody607_307 : StackLang.HolProg 64 :=
.seq rawBody607_297 rawBody607_306

def rawBody607_308 : StackLang.HolProg 64 :=
.seq rawBody607_296 rawBody607_307

def rawBody607_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody607_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody607_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody607_312 : StackLang.HolProg 64 :=
.seq rawBody607_310 rawBody607_311

def rawBody607_313 : StackLang.HolProg 64 :=
.seq rawBody607_309 rawBody607_312

def rawBody607_314 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody607_315 : StackLang.HolProg 64 :=
.seq rawBody607_313 rawBody607_314

def rawBody607_316 : StackLang.HolProg 64 :=
.call (some (rawBody607_308, 0, 607, 10)) (Sum.inl 77) (some (rawBody607_315, 607, 11))

def rawBody607_317 : StackLang.HolProg 64 :=
.seq rawBody607_295 rawBody607_316

def rawBody607_318 : StackLang.HolProg 64 :=
.seq rawBody607_294 rawBody607_317

def rawBody607_319 : StackLang.HolProg 64 :=
.seq rawBody607_293 rawBody607_318

def rawBody607_320 : StackLang.HolProg 64 :=
.seq rawBody607_274 rawBody607_319

def rawBody607_321 : StackLang.HolProg 64 :=
.seq rawBody607_271 rawBody607_320

def rawBody607_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody607_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def rawBody607_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2334#64)

def rawBody607_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody607_329 : StackLang.HolProg 64 :=
.seq rawBody607_327 rawBody607_328

def rawBody607_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody607_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody607_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody607_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 607 13

def rawBody607_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody607_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody607_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody607_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody607_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody607_340 : StackLang.HolProg 64 :=
.seq rawBody607_338 rawBody607_339

def rawBody607_341 : StackLang.HolProg 64 :=
.seq rawBody607_337 rawBody607_340

def rawBody607_342 : StackLang.HolProg 64 :=
.seq rawBody607_336 rawBody607_341

def rawBody607_343 : StackLang.HolProg 64 :=
.seq rawBody607_335 rawBody607_342

def rawBody607_344 : StackLang.HolProg 64 :=
.seq rawBody607_334 rawBody607_343

def rawBody607_345 : StackLang.HolProg 64 :=
.seq rawBody607_333 rawBody607_344

def rawBody607_346 : StackLang.HolProg 64 :=
.seq rawBody607_332 rawBody607_345

def rawBody607_347 : StackLang.HolProg 64 :=
.seq rawBody607_331 rawBody607_346

def rawBody607_348 : StackLang.HolProg 64 :=
.seq rawBody607_330 rawBody607_347

def rawBody607_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody607_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody607_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody607_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody607_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody607_356 : StackLang.HolProg 64 :=
.seq rawBody607_354 rawBody607_355

def rawBody607_357 : StackLang.HolProg 64 :=
.seq rawBody607_353 rawBody607_356

def rawBody607_358 : StackLang.HolProg 64 :=
.seq rawBody607_352 rawBody607_357

def rawBody607_359 : StackLang.HolProg 64 :=
.seq rawBody607_351 rawBody607_358

def rawBody607_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody607_361 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody607_362 : StackLang.HolProg 64 :=
.seq rawBody607_360 rawBody607_361

def rawBody607_363 : StackLang.HolProg 64 :=
.call (some (rawBody607_359, 0, 607, 12)) (Sum.inl 431) (some (rawBody607_362, 607, 13))

def rawBody607_364 : StackLang.HolProg 64 :=
.seq rawBody607_350 rawBody607_363

def rawBody607_365 : StackLang.HolProg 64 :=
.seq rawBody607_349 rawBody607_364

def rawBody607_366 : StackLang.HolProg 64 :=
.seq rawBody607_348 rawBody607_365

def rawBody607_367 : StackLang.HolProg 64 :=
.seq rawBody607_329 rawBody607_366

def rawBody607_368 : StackLang.HolProg 64 :=
.seq rawBody607_326 rawBody607_367

def rawBody607_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody607_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody607_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody607_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody607_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody607_374 : StackLang.HolProg 64 :=
.seq rawBody607_372 rawBody607_373

def rawBody607_375 : StackLang.HolProg 64 :=
.seq rawBody607_371 rawBody607_374

def rawBody607_376 : StackLang.HolProg 64 :=
.seq rawBody607_370 rawBody607_375

def rawBody607_377 : StackLang.HolProg 64 :=
.seq rawBody607_369 rawBody607_376

def rawBody607_378 : StackLang.HolProg 64 :=
.seq rawBody607_368 rawBody607_377

def rawBody607_379 : StackLang.HolProg 64 :=
.seq rawBody607_325 rawBody607_378

def rawBody607_380 : StackLang.HolProg 64 :=
.seq rawBody607_324 rawBody607_379

def rawBody607_381 : StackLang.HolProg 64 :=
.seq rawBody607_323 rawBody607_380

def rawBody607_382 : StackLang.HolProg 64 :=
.seq rawBody607_322 rawBody607_381

def rawBody607_383 : StackLang.HolProg 64 :=
.seq rawBody607_321 rawBody607_382

def rawBody607_384 : StackLang.HolProg 64 :=
.seq rawBody607_270 rawBody607_383

def rawBody607_385 : StackLang.HolProg 64 :=
.seq rawBody607_265 rawBody607_384

def rawBody607_386 : StackLang.HolProg 64 :=
.seq rawBody607_264 rawBody607_385

def rawBody607_387 : StackLang.HolProg 64 :=
.seq rawBody607_215 rawBody607_386

def rawBody607_388 : StackLang.HolProg 64 :=
.seq rawBody607_214 rawBody607_387

def rawBody607_389 : StackLang.HolProg 64 :=
.seq rawBody607_213 rawBody607_388

def rawBody607_390 : StackLang.HolProg 64 :=
.seq rawBody607_212 rawBody607_389

def rawBody607_391 : StackLang.HolProg 64 :=
.seq rawBody607_211 rawBody607_390

def rawBody607_392 : StackLang.HolProg 64 :=
.seq rawBody607_168 rawBody607_391

def rawBody607_393 : StackLang.HolProg 64 :=
.seq rawBody607_165 rawBody607_392

def rawBody607_394 : StackLang.HolProg 64 :=
.seq rawBody607_164 rawBody607_393

def rawBody607_395 : StackLang.HolProg 64 :=
.seq rawBody607_163 rawBody607_394

def rawBody607_396 : StackLang.HolProg 64 :=
.seq rawBody607_162 rawBody607_395

def rawBody607_397 : StackLang.HolProg 64 :=
.seq rawBody607_161 rawBody607_396

def rawBody607_398 : StackLang.HolProg 64 :=
.seq rawBody607_160 rawBody607_397

def rawBody607_399 : StackLang.HolProg 64 :=
.seq rawBody607_117 rawBody607_398

def rawBody607_400 : StackLang.HolProg 64 :=
.seq rawBody607_116 rawBody607_399

def rawBody607_401 : StackLang.HolProg 64 :=
.seq rawBody607_115 rawBody607_400

def rawBody607_402 : StackLang.HolProg 64 :=
.seq rawBody607_114 rawBody607_401

def rawBody607_403 : StackLang.HolProg 64 :=
.seq rawBody607_113 rawBody607_402

def rawBody607_404 : StackLang.HolProg 64 :=
.seq rawBody607_112 rawBody607_403

def rawBody607_405 : StackLang.HolProg 64 :=
.seq rawBody607_111 rawBody607_404

def rawBody607_406 : StackLang.HolProg 64 :=
.seq rawBody607_68 rawBody607_405

def rawBody607_407 : StackLang.HolProg 64 :=
.seq rawBody607_61 rawBody607_406

def rawBody607_408 : StackLang.HolProg 64 :=
.seq rawBody607_60 rawBody607_407

def rawBody607_409 : StackLang.HolProg 64 :=
.seq rawBody607_59 rawBody607_408

def rawBody607_410 : StackLang.HolProg 64 :=
.seq rawBody607_44 rawBody607_409

def rawBody607_411 : StackLang.HolProg 64 :=
.seq rawBody607_43 rawBody607_410

def rawBody607_412 : StackLang.HolProg 64 :=
.seq rawBody607_42 rawBody607_411

def rawBody607_413 : StackLang.HolProg 64 :=
.seq rawBody607_41 rawBody607_412

def rawBody607_414 : StackLang.HolProg 64 :=
.seq rawBody607_6 rawBody607_413

def rawBody607_415 : StackLang.HolProg 64 :=
.seq rawBody607_5 rawBody607_414

def rawBody607_416 : StackLang.HolProg 64 :=
.seq rawBody607_4 rawBody607_415

def rawBody607_417 : StackLang.HolProg 64 :=
.seq rawBody607_3 rawBody607_416

def rawBody607_418 : StackLang.HolProg 64 :=
.seq rawBody607_2 rawBody607_417

def rawBody607_419 : StackLang.HolProg 64 :=
.seq rawBody607_1 rawBody607_418

def rawBody607_420 : StackLang.HolProg 64 :=
.seq rawBody607_0 rawBody607_419

def raw607 : StackLang.HolProg 64 := rawBody607_420
theorem raw607_eq : StackRawCall.compTop RawInfo.rawInfo (function607 (.list [])).1 = raw607 := by
  kernel_rfl
#print axioms raw607_eq
end InitECandidate.Proofs.BackendStages
