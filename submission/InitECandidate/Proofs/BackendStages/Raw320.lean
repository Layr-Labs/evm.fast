import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function320
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody320_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody320_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody320_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody320_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody320_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 1

def rawBody320_5 : StackLang.HolProg 64 :=
.seq rawBody320_3 rawBody320_4

def rawBody320_6 : StackLang.HolProg 64 :=
.seq rawBody320_2 rawBody320_5

def rawBody320_7 : StackLang.HolProg 64 :=
.seq rawBody320_1 rawBody320_6

def rawBody320_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody320_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 896#64)

def rawBody320_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody320_11 : StackLang.HolProg 64 :=
.seq rawBody320_9 rawBody320_10

def rawBody320_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody320_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody320_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody320_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 320 3

def rawBody320_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody320_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody320_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody320_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody320_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody320_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody320_22 : StackLang.HolProg 64 :=
.seq rawBody320_20 rawBody320_21

def rawBody320_23 : StackLang.HolProg 64 :=
.seq rawBody320_19 rawBody320_22

def rawBody320_24 : StackLang.HolProg 64 :=
.seq rawBody320_18 rawBody320_23

def rawBody320_25 : StackLang.HolProg 64 :=
.seq rawBody320_17 rawBody320_24

def rawBody320_26 : StackLang.HolProg 64 :=
.seq rawBody320_16 rawBody320_25

def rawBody320_27 : StackLang.HolProg 64 :=
.seq rawBody320_15 rawBody320_26

def rawBody320_28 : StackLang.HolProg 64 :=
.seq rawBody320_14 rawBody320_27

def rawBody320_29 : StackLang.HolProg 64 :=
.seq rawBody320_13 rawBody320_28

def rawBody320_30 : StackLang.HolProg 64 :=
.seq rawBody320_12 rawBody320_29

def rawBody320_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody320_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody320_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody320_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody320_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody320_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody320_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody320_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody320_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 2

def rawBody320_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody320_41 : StackLang.HolProg 64 :=
.seq rawBody320_39 rawBody320_40

def rawBody320_42 : StackLang.HolProg 64 :=
.seq rawBody320_38 rawBody320_41

def rawBody320_43 : StackLang.HolProg 64 :=
.seq rawBody320_37 rawBody320_42

def rawBody320_44 : StackLang.HolProg 64 :=
.seq rawBody320_36 rawBody320_43

def rawBody320_45 : StackLang.HolProg 64 :=
.seq rawBody320_35 rawBody320_44

def rawBody320_46 : StackLang.HolProg 64 :=
.seq rawBody320_34 rawBody320_45

def rawBody320_47 : StackLang.HolProg 64 :=
.seq rawBody320_33 rawBody320_46

def rawBody320_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody320_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 2

def rawBody320_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody320_51 : StackLang.HolProg 64 :=
.seq rawBody320_49 rawBody320_50

def rawBody320_52 : StackLang.HolProg 64 :=
.seq rawBody320_48 rawBody320_51

def rawBody320_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody320_54 : StackLang.HolProg 64 :=
.seq rawBody320_52 rawBody320_53

def rawBody320_55 : StackLang.HolProg 64 :=
.call (some (rawBody320_47, 0, 320, 2)) (Sum.inl 310) (some (rawBody320_54, 320, 3))

def rawBody320_56 : StackLang.HolProg 64 :=
.seq rawBody320_32 rawBody320_55

def rawBody320_57 : StackLang.HolProg 64 :=
.seq rawBody320_31 rawBody320_56

def rawBody320_58 : StackLang.HolProg 64 :=
.seq rawBody320_30 rawBody320_57

def rawBody320_59 : StackLang.HolProg 64 :=
.seq rawBody320_11 rawBody320_58

def rawBody320_60 : StackLang.HolProg 64 :=
.seq rawBody320_8 rawBody320_59

def rawBody320_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody320_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody320_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def rawBody320_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody320_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody320_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def rawBody320_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody320_68 : StackLang.HolProg 64 :=
.seq rawBody320_66 rawBody320_67

def rawBody320_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody320_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody320_71 : StackLang.HolProg 64 :=
.seq rawBody320_69 rawBody320_70

def rawBody320_72 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody320_68 rawBody320_71

def rawBody320_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody320_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody320_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody320_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def rawBody320_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody320_78 : StackLang.HolProg 64 :=
.seq rawBody320_76 rawBody320_77

def rawBody320_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody320_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody320_81 : StackLang.HolProg 64 :=
.seq rawBody320_79 rawBody320_80

def rawBody320_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody320_78 rawBody320_81

def rawBody320_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody320_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def rawBody320_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody320_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody320_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody320_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody320_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody320_90 : StackLang.HolProg 64 :=
.seq rawBody320_88 rawBody320_89

def rawBody320_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody320_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 3

def rawBody320_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody320_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 897#64)

def rawBody320_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody320_96 : StackLang.HolProg 64 :=
.seq rawBody320_94 rawBody320_95

def rawBody320_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody320_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody320_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody320_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 320 5

def rawBody320_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody320_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody320_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody320_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody320_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody320_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody320_107 : StackLang.HolProg 64 :=
.seq rawBody320_105 rawBody320_106

def rawBody320_108 : StackLang.HolProg 64 :=
.seq rawBody320_104 rawBody320_107

def rawBody320_109 : StackLang.HolProg 64 :=
.seq rawBody320_103 rawBody320_108

def rawBody320_110 : StackLang.HolProg 64 :=
.seq rawBody320_102 rawBody320_109

def rawBody320_111 : StackLang.HolProg 64 :=
.seq rawBody320_101 rawBody320_110

def rawBody320_112 : StackLang.HolProg 64 :=
.seq rawBody320_100 rawBody320_111

def rawBody320_113 : StackLang.HolProg 64 :=
.seq rawBody320_99 rawBody320_112

def rawBody320_114 : StackLang.HolProg 64 :=
.seq rawBody320_98 rawBody320_113

def rawBody320_115 : StackLang.HolProg 64 :=
.seq rawBody320_97 rawBody320_114

def rawBody320_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody320_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody320_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody320_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody320_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody320_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody320_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody320_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody320_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody320_125 : StackLang.HolProg 64 :=
.seq rawBody320_123 rawBody320_124

def rawBody320_126 : StackLang.HolProg 64 :=
.seq rawBody320_122 rawBody320_125

def rawBody320_127 : StackLang.HolProg 64 :=
.seq rawBody320_121 rawBody320_126

def rawBody320_128 : StackLang.HolProg 64 :=
.seq rawBody320_120 rawBody320_127

def rawBody320_129 : StackLang.HolProg 64 :=
.seq rawBody320_119 rawBody320_128

def rawBody320_130 : StackLang.HolProg 64 :=
.seq rawBody320_118 rawBody320_129

def rawBody320_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody320_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody320_133 : StackLang.HolProg 64 :=
.seq rawBody320_131 rawBody320_132

def rawBody320_134 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody320_135 : StackLang.HolProg 64 :=
.seq rawBody320_133 rawBody320_134

def rawBody320_136 : StackLang.HolProg 64 :=
.call (some (rawBody320_130, 0, 320, 4)) (Sum.inl 319) (some (rawBody320_135, 320, 5))

def rawBody320_137 : StackLang.HolProg 64 :=
.seq rawBody320_117 rawBody320_136

def rawBody320_138 : StackLang.HolProg 64 :=
.seq rawBody320_116 rawBody320_137

def rawBody320_139 : StackLang.HolProg 64 :=
.seq rawBody320_115 rawBody320_138

def rawBody320_140 : StackLang.HolProg 64 :=
.seq rawBody320_96 rawBody320_139

def rawBody320_141 : StackLang.HolProg 64 :=
.seq rawBody320_93 rawBody320_140

def rawBody320_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody320_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody320_144 : StackLang.HolProg 64 :=
.seq rawBody320_142 rawBody320_143

def rawBody320_145 : StackLang.HolProg 64 :=
.seq rawBody320_141 rawBody320_144

def rawBody320_146 : StackLang.HolProg 64 :=
.seq rawBody320_92 rawBody320_145

def rawBody320_147 : StackLang.HolProg 64 :=
.seq rawBody320_91 rawBody320_146

def rawBody320_148 : StackLang.HolProg 64 :=
.seq rawBody320_90 rawBody320_147

def rawBody320_149 : StackLang.HolProg 64 :=
.seq rawBody320_87 rawBody320_148

def rawBody320_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody320_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody320_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody320_153 : StackLang.HolProg 64 :=
.seq rawBody320_151 rawBody320_152

def rawBody320_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody320_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 3

def rawBody320_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody320_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 898#64)

def rawBody320_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody320_159 : StackLang.HolProg 64 :=
.seq rawBody320_157 rawBody320_158

def rawBody320_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody320_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody320_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody320_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 320 7

def rawBody320_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody320_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody320_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody320_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody320_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody320_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody320_170 : StackLang.HolProg 64 :=
.seq rawBody320_168 rawBody320_169

def rawBody320_171 : StackLang.HolProg 64 :=
.seq rawBody320_167 rawBody320_170

def rawBody320_172 : StackLang.HolProg 64 :=
.seq rawBody320_166 rawBody320_171

def rawBody320_173 : StackLang.HolProg 64 :=
.seq rawBody320_165 rawBody320_172

def rawBody320_174 : StackLang.HolProg 64 :=
.seq rawBody320_164 rawBody320_173

def rawBody320_175 : StackLang.HolProg 64 :=
.seq rawBody320_163 rawBody320_174

def rawBody320_176 : StackLang.HolProg 64 :=
.seq rawBody320_162 rawBody320_175

def rawBody320_177 : StackLang.HolProg 64 :=
.seq rawBody320_161 rawBody320_176

def rawBody320_178 : StackLang.HolProg 64 :=
.seq rawBody320_160 rawBody320_177

def rawBody320_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody320_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody320_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody320_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody320_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody320_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody320_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody320_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody320_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody320_188 : StackLang.HolProg 64 :=
.seq rawBody320_186 rawBody320_187

def rawBody320_189 : StackLang.HolProg 64 :=
.seq rawBody320_185 rawBody320_188

def rawBody320_190 : StackLang.HolProg 64 :=
.seq rawBody320_184 rawBody320_189

def rawBody320_191 : StackLang.HolProg 64 :=
.seq rawBody320_183 rawBody320_190

def rawBody320_192 : StackLang.HolProg 64 :=
.seq rawBody320_182 rawBody320_191

def rawBody320_193 : StackLang.HolProg 64 :=
.seq rawBody320_181 rawBody320_192

def rawBody320_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody320_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody320_196 : StackLang.HolProg 64 :=
.seq rawBody320_194 rawBody320_195

def rawBody320_197 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody320_198 : StackLang.HolProg 64 :=
.seq rawBody320_196 rawBody320_197

def rawBody320_199 : StackLang.HolProg 64 :=
.call (some (rawBody320_193, 0, 320, 6)) (Sum.inl 315) (some (rawBody320_198, 320, 7))

def rawBody320_200 : StackLang.HolProg 64 :=
.seq rawBody320_180 rawBody320_199

def rawBody320_201 : StackLang.HolProg 64 :=
.seq rawBody320_179 rawBody320_200

def rawBody320_202 : StackLang.HolProg 64 :=
.seq rawBody320_178 rawBody320_201

def rawBody320_203 : StackLang.HolProg 64 :=
.seq rawBody320_159 rawBody320_202

def rawBody320_204 : StackLang.HolProg 64 :=
.seq rawBody320_156 rawBody320_203

def rawBody320_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody320_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody320_207 : StackLang.HolProg 64 :=
.seq rawBody320_205 rawBody320_206

def rawBody320_208 : StackLang.HolProg 64 :=
.seq rawBody320_204 rawBody320_207

def rawBody320_209 : StackLang.HolProg 64 :=
.seq rawBody320_155 rawBody320_208

def rawBody320_210 : StackLang.HolProg 64 :=
.seq rawBody320_154 rawBody320_209

def rawBody320_211 : StackLang.HolProg 64 :=
.seq rawBody320_153 rawBody320_210

def rawBody320_212 : StackLang.HolProg 64 :=
.seq rawBody320_150 rawBody320_211

def rawBody320_213 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody320_149 rawBody320_212

def rawBody320_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody320_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody320_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody320_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody320_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody320_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody320_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody320_221 : StackLang.HolProg 64 :=
.seq rawBody320_219 rawBody320_220

def rawBody320_222 : StackLang.HolProg 64 :=
.seq rawBody320_218 rawBody320_221

def rawBody320_223 : StackLang.HolProg 64 :=
.seq rawBody320_217 rawBody320_222

def rawBody320_224 : StackLang.HolProg 64 :=
.seq rawBody320_216 rawBody320_223

def rawBody320_225 : StackLang.HolProg 64 :=
.seq rawBody320_215 rawBody320_224

def rawBody320_226 : StackLang.HolProg 64 :=
.seq rawBody320_214 rawBody320_225

def rawBody320_227 : StackLang.HolProg 64 :=
.seq rawBody320_213 rawBody320_226

def rawBody320_228 : StackLang.HolProg 64 :=
.seq rawBody320_86 rawBody320_227

def rawBody320_229 : StackLang.HolProg 64 :=
.seq rawBody320_85 rawBody320_228

def rawBody320_230 : StackLang.HolProg 64 :=
.seq rawBody320_84 rawBody320_229

def rawBody320_231 : StackLang.HolProg 64 :=
.seq rawBody320_83 rawBody320_230

def rawBody320_232 : StackLang.HolProg 64 :=
.seq rawBody320_82 rawBody320_231

def rawBody320_233 : StackLang.HolProg 64 :=
.seq rawBody320_75 rawBody320_232

def rawBody320_234 : StackLang.HolProg 64 :=
.seq rawBody320_74 rawBody320_233

def rawBody320_235 : StackLang.HolProg 64 :=
.seq rawBody320_73 rawBody320_234

def rawBody320_236 : StackLang.HolProg 64 :=
.seq rawBody320_72 rawBody320_235

def rawBody320_237 : StackLang.HolProg 64 :=
.seq rawBody320_65 rawBody320_236

def rawBody320_238 : StackLang.HolProg 64 :=
.seq rawBody320_64 rawBody320_237

def rawBody320_239 : StackLang.HolProg 64 :=
.seq rawBody320_63 rawBody320_238

def rawBody320_240 : StackLang.HolProg 64 :=
.seq rawBody320_62 rawBody320_239

def rawBody320_241 : StackLang.HolProg 64 :=
.seq rawBody320_61 rawBody320_240

def rawBody320_242 : StackLang.HolProg 64 :=
.seq rawBody320_60 rawBody320_241

def rawBody320_243 : StackLang.HolProg 64 :=
.seq rawBody320_7 rawBody320_242

def rawBody320_244 : StackLang.HolProg 64 :=
.seq rawBody320_0 rawBody320_243

def raw320 : StackLang.HolProg 64 := rawBody320_244
theorem raw320_eq : StackRawCall.compTop RawInfo.rawInfo (function320 (.list [])).1 = raw320 := by
  kernel_rfl
#print axioms raw320_eq
end InitECandidate.Proofs.BackendStages
