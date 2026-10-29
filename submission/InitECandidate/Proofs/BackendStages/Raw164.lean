import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function164
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody164_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 9

def rawBody164_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody164_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def rawBody164_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody164_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody164_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def rawBody164_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody164_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def rawBody164_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 7

def rawBody164_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 6

def rawBody164_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def rawBody164_11 : StackLang.HolProg 64 :=
.seq rawBody164_9 rawBody164_10

def rawBody164_12 : StackLang.HolProg 64 :=
.seq rawBody164_8 rawBody164_11

def rawBody164_13 : StackLang.HolProg 64 :=
.seq rawBody164_7 rawBody164_12

def rawBody164_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody164_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def rawBody164_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody164_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody164_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody164_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody164_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody164_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody164_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody164_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody164_24 : StackLang.HolProg 64 :=
.seq rawBody164_22 rawBody164_23

def rawBody164_25 : StackLang.HolProg 64 :=
.seq rawBody164_21 rawBody164_24

def rawBody164_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody164_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody164_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody164_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody164_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody164_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody164_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def rawBody164_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody164_34 : StackLang.HolProg 64 :=
.seq rawBody164_32 rawBody164_33

def rawBody164_35 : StackLang.HolProg 64 :=
.seq rawBody164_31 rawBody164_34

def rawBody164_36 : StackLang.HolProg 64 :=
.seq rawBody164_30 rawBody164_35

def rawBody164_37 : StackLang.HolProg 64 :=
.seq rawBody164_29 rawBody164_36

def rawBody164_38 : StackLang.HolProg 64 :=
.seq rawBody164_28 rawBody164_37

def rawBody164_39 : StackLang.HolProg 64 :=
.seq rawBody164_27 rawBody164_38

def rawBody164_40 : StackLang.HolProg 64 :=
.seq rawBody164_26 rawBody164_39

def rawBody164_41 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody164_25 rawBody164_40

def rawBody164_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody164_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 8

def rawBody164_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 6

def rawBody164_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 5

def rawBody164_46 : StackLang.HolProg 64 :=
.seq rawBody164_44 rawBody164_45

def rawBody164_47 : StackLang.HolProg 64 :=
.seq rawBody164_43 rawBody164_46

def rawBody164_48 : StackLang.HolProg 64 :=
.seq rawBody164_42 rawBody164_47

def rawBody164_49 : StackLang.HolProg 64 :=
.seq rawBody164_41 rawBody164_48

def rawBody164_50 : StackLang.HolProg 64 :=
.seq rawBody164_20 rawBody164_49

def rawBody164_51 : StackLang.HolProg 64 :=
.seq rawBody164_19 rawBody164_50

def rawBody164_52 : StackLang.HolProg 64 :=
.seq rawBody164_18 rawBody164_51

def rawBody164_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody164_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody164_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody164_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody164_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody164_58 : StackLang.HolProg 64 :=
.seq rawBody164_56 rawBody164_57

def rawBody164_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody164_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody164_61 : StackLang.HolProg 64 :=
.seq rawBody164_59 rawBody164_60

def rawBody164_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody164_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody164_64 : StackLang.HolProg 64 :=
.seq rawBody164_62 rawBody164_63

def rawBody164_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 7

def rawBody164_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def rawBody164_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 1

def rawBody164_68 : StackLang.HolProg 64 :=
.seq rawBody164_66 rawBody164_67

def rawBody164_69 : StackLang.HolProg 64 :=
.seq rawBody164_65 rawBody164_68

def rawBody164_70 : StackLang.HolProg 64 :=
.seq rawBody164_64 rawBody164_69

def rawBody164_71 : StackLang.HolProg 64 :=
.seq rawBody164_61 rawBody164_70

def rawBody164_72 : StackLang.HolProg 64 :=
.seq rawBody164_58 rawBody164_71

def rawBody164_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody164_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 176#64)

def rawBody164_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody164_76 : StackLang.HolProg 64 :=
.seq rawBody164_74 rawBody164_75

def rawBody164_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody164_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody164_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody164_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 164 3

def rawBody164_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody164_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody164_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody164_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody164_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody164_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody164_87 : StackLang.HolProg 64 :=
.seq rawBody164_85 rawBody164_86

def rawBody164_88 : StackLang.HolProg 64 :=
.seq rawBody164_84 rawBody164_87

def rawBody164_89 : StackLang.HolProg 64 :=
.seq rawBody164_83 rawBody164_88

def rawBody164_90 : StackLang.HolProg 64 :=
.seq rawBody164_82 rawBody164_89

def rawBody164_91 : StackLang.HolProg 64 :=
.seq rawBody164_81 rawBody164_90

def rawBody164_92 : StackLang.HolProg 64 :=
.seq rawBody164_80 rawBody164_91

def rawBody164_93 : StackLang.HolProg 64 :=
.seq rawBody164_79 rawBody164_92

def rawBody164_94 : StackLang.HolProg 64 :=
.seq rawBody164_78 rawBody164_93

def rawBody164_95 : StackLang.HolProg 64 :=
.seq rawBody164_77 rawBody164_94

def rawBody164_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody164_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody164_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody164_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody164_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody164_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody164_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody164_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def rawBody164_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody164_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody164_106 : StackLang.HolProg 64 :=
.seq rawBody164_104 rawBody164_105

def rawBody164_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody164_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody164_109 : StackLang.HolProg 64 :=
.seq rawBody164_107 rawBody164_108

def rawBody164_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody164_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody164_112 : StackLang.HolProg 64 :=
.seq rawBody164_110 rawBody164_111

def rawBody164_113 : StackLang.HolProg 64 :=
.seq rawBody164_109 rawBody164_112

def rawBody164_114 : StackLang.HolProg 64 :=
.seq rawBody164_106 rawBody164_113

def rawBody164_115 : StackLang.HolProg 64 :=
.seq rawBody164_103 rawBody164_114

def rawBody164_116 : StackLang.HolProg 64 :=
.seq rawBody164_102 rawBody164_115

def rawBody164_117 : StackLang.HolProg 64 :=
.seq rawBody164_101 rawBody164_116

def rawBody164_118 : StackLang.HolProg 64 :=
.seq rawBody164_100 rawBody164_117

def rawBody164_119 : StackLang.HolProg 64 :=
.seq rawBody164_99 rawBody164_118

def rawBody164_120 : StackLang.HolProg 64 :=
.seq rawBody164_98 rawBody164_119

def rawBody164_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def rawBody164_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody164_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody164_124 : StackLang.HolProg 64 :=
.seq rawBody164_122 rawBody164_123

def rawBody164_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody164_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody164_127 : StackLang.HolProg 64 :=
.seq rawBody164_125 rawBody164_126

def rawBody164_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody164_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody164_130 : StackLang.HolProg 64 :=
.seq rawBody164_128 rawBody164_129

def rawBody164_131 : StackLang.HolProg 64 :=
.seq rawBody164_127 rawBody164_130

def rawBody164_132 : StackLang.HolProg 64 :=
.seq rawBody164_124 rawBody164_131

def rawBody164_133 : StackLang.HolProg 64 :=
.seq rawBody164_121 rawBody164_132

def rawBody164_134 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody164_135 : StackLang.HolProg 64 :=
.seq rawBody164_133 rawBody164_134

def rawBody164_136 : StackLang.HolProg 64 :=
.call (some (rawBody164_120, 0, 164, 2)) (Sum.inl 163) (some (rawBody164_135, 164, 3))

def rawBody164_137 : StackLang.HolProg 64 :=
.seq rawBody164_97 rawBody164_136

def rawBody164_138 : StackLang.HolProg 64 :=
.seq rawBody164_96 rawBody164_137

def rawBody164_139 : StackLang.HolProg 64 :=
.seq rawBody164_95 rawBody164_138

def rawBody164_140 : StackLang.HolProg 64 :=
.seq rawBody164_76 rawBody164_139

def rawBody164_141 : StackLang.HolProg 64 :=
.seq rawBody164_73 rawBody164_140

def rawBody164_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody164_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody164_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody164_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody164_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody164_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody164_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody164_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody164_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 24#64)

def rawBody164_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody164_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody164_153 : StackLang.HolProg 64 :=
.seq rawBody164_151 rawBody164_152

def rawBody164_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody164_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 177#64)

def rawBody164_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody164_157 : StackLang.HolProg 64 :=
.seq rawBody164_155 rawBody164_156

def rawBody164_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody164_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody164_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody164_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 164 5

def rawBody164_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody164_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody164_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody164_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody164_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody164_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody164_168 : StackLang.HolProg 64 :=
.seq rawBody164_166 rawBody164_167

def rawBody164_169 : StackLang.HolProg 64 :=
.seq rawBody164_165 rawBody164_168

def rawBody164_170 : StackLang.HolProg 64 :=
.seq rawBody164_164 rawBody164_169

def rawBody164_171 : StackLang.HolProg 64 :=
.seq rawBody164_163 rawBody164_170

def rawBody164_172 : StackLang.HolProg 64 :=
.seq rawBody164_162 rawBody164_171

def rawBody164_173 : StackLang.HolProg 64 :=
.seq rawBody164_161 rawBody164_172

def rawBody164_174 : StackLang.HolProg 64 :=
.seq rawBody164_160 rawBody164_173

def rawBody164_175 : StackLang.HolProg 64 :=
.seq rawBody164_159 rawBody164_174

def rawBody164_176 : StackLang.HolProg 64 :=
.seq rawBody164_158 rawBody164_175

def rawBody164_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody164_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody164_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody164_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody164_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody164_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody164_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody164_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 8

def rawBody164_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def rawBody164_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 6

def rawBody164_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody164_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody164_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 3

def rawBody164_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody164_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody164_192 : StackLang.HolProg 64 :=
.seq rawBody164_190 rawBody164_191

def rawBody164_193 : StackLang.HolProg 64 :=
.seq rawBody164_189 rawBody164_192

def rawBody164_194 : StackLang.HolProg 64 :=
.seq rawBody164_188 rawBody164_193

def rawBody164_195 : StackLang.HolProg 64 :=
.seq rawBody164_187 rawBody164_194

def rawBody164_196 : StackLang.HolProg 64 :=
.seq rawBody164_186 rawBody164_195

def rawBody164_197 : StackLang.HolProg 64 :=
.seq rawBody164_185 rawBody164_196

def rawBody164_198 : StackLang.HolProg 64 :=
.seq rawBody164_184 rawBody164_197

def rawBody164_199 : StackLang.HolProg 64 :=
.seq rawBody164_183 rawBody164_198

def rawBody164_200 : StackLang.HolProg 64 :=
.seq rawBody164_182 rawBody164_199

def rawBody164_201 : StackLang.HolProg 64 :=
.seq rawBody164_181 rawBody164_200

def rawBody164_202 : StackLang.HolProg 64 :=
.seq rawBody164_180 rawBody164_201

def rawBody164_203 : StackLang.HolProg 64 :=
.seq rawBody164_179 rawBody164_202

def rawBody164_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 8

def rawBody164_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def rawBody164_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 6

def rawBody164_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody164_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody164_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 3

def rawBody164_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody164_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody164_212 : StackLang.HolProg 64 :=
.seq rawBody164_210 rawBody164_211

def rawBody164_213 : StackLang.HolProg 64 :=
.seq rawBody164_209 rawBody164_212

def rawBody164_214 : StackLang.HolProg 64 :=
.seq rawBody164_208 rawBody164_213

def rawBody164_215 : StackLang.HolProg 64 :=
.seq rawBody164_207 rawBody164_214

def rawBody164_216 : StackLang.HolProg 64 :=
.seq rawBody164_206 rawBody164_215

def rawBody164_217 : StackLang.HolProg 64 :=
.seq rawBody164_205 rawBody164_216

def rawBody164_218 : StackLang.HolProg 64 :=
.seq rawBody164_204 rawBody164_217

def rawBody164_219 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody164_220 : StackLang.HolProg 64 :=
.seq rawBody164_218 rawBody164_219

def rawBody164_221 : StackLang.HolProg 64 :=
.call (some (rawBody164_203, 0, 164, 4)) (Sum.inl 74) (some (rawBody164_220, 164, 5))

def rawBody164_222 : StackLang.HolProg 64 :=
.seq rawBody164_178 rawBody164_221

def rawBody164_223 : StackLang.HolProg 64 :=
.seq rawBody164_177 rawBody164_222

def rawBody164_224 : StackLang.HolProg 64 :=
.seq rawBody164_176 rawBody164_223

def rawBody164_225 : StackLang.HolProg 64 :=
.seq rawBody164_157 rawBody164_224

def rawBody164_226 : StackLang.HolProg 64 :=
.seq rawBody164_154 rawBody164_225

def rawBody164_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody164_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody164_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody164_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody164_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody164_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody164_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody164_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody164_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody164_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody164_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody164_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody164_239 : StackLang.HolProg 64 :=
.seq rawBody164_237 rawBody164_238

def rawBody164_240 : StackLang.HolProg 64 :=
.seq rawBody164_236 rawBody164_239

def rawBody164_241 : StackLang.HolProg 64 :=
.seq rawBody164_235 rawBody164_240

def rawBody164_242 : StackLang.HolProg 64 :=
.seq rawBody164_234 rawBody164_241

def rawBody164_243 : StackLang.HolProg 64 :=
.seq rawBody164_233 rawBody164_242

def rawBody164_244 : StackLang.HolProg 64 :=
.seq rawBody164_232 rawBody164_243

def rawBody164_245 : StackLang.HolProg 64 :=
.seq rawBody164_231 rawBody164_244

def rawBody164_246 : StackLang.HolProg 64 :=
.seq rawBody164_230 rawBody164_245

def rawBody164_247 : StackLang.HolProg 64 :=
.seq rawBody164_229 rawBody164_246

def rawBody164_248 : StackLang.HolProg 64 :=
.seq rawBody164_228 rawBody164_247

def rawBody164_249 : StackLang.HolProg 64 :=
.seq rawBody164_227 rawBody164_248

def rawBody164_250 : StackLang.HolProg 64 :=
.seq rawBody164_226 rawBody164_249

def rawBody164_251 : StackLang.HolProg 64 :=
.seq rawBody164_153 rawBody164_250

def rawBody164_252 : StackLang.HolProg 64 :=
.seq rawBody164_150 rawBody164_251

def rawBody164_253 : StackLang.HolProg 64 :=
.seq rawBody164_149 rawBody164_252

def rawBody164_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody164_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 8

def rawBody164_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody164_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 6

def rawBody164_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody164_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 3

def rawBody164_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody164_261 : StackLang.HolProg 64 :=
.seq rawBody164_259 rawBody164_260

def rawBody164_262 : StackLang.HolProg 64 :=
.seq rawBody164_258 rawBody164_261

def rawBody164_263 : StackLang.HolProg 64 :=
.seq rawBody164_257 rawBody164_262

def rawBody164_264 : StackLang.HolProg 64 :=
.seq rawBody164_256 rawBody164_263

def rawBody164_265 : StackLang.HolProg 64 :=
.seq rawBody164_255 rawBody164_264

def rawBody164_266 : StackLang.HolProg 64 :=
.seq rawBody164_254 rawBody164_265

def rawBody164_267 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody164_253 rawBody164_266

def rawBody164_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody164_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody164_270 : StackLang.HolProg 64 :=
.seq rawBody164_268 rawBody164_269

def rawBody164_271 : StackLang.HolProg 64 :=
.seq rawBody164_267 rawBody164_270

def rawBody164_272 : StackLang.HolProg 64 :=
.seq rawBody164_148 rawBody164_271

def rawBody164_273 : StackLang.HolProg 64 :=
.seq rawBody164_147 rawBody164_272

def rawBody164_274 : StackLang.HolProg 64 :=
.seq rawBody164_146 rawBody164_273

def rawBody164_275 : StackLang.HolProg 64 :=
.seq rawBody164_145 rawBody164_274

def rawBody164_276 : StackLang.HolProg 64 :=
.seq rawBody164_144 rawBody164_275

def rawBody164_277 : StackLang.HolProg 64 :=
.seq rawBody164_143 rawBody164_276

def rawBody164_278 : StackLang.HolProg 64 :=
.seq rawBody164_142 rawBody164_277

def rawBody164_279 : StackLang.HolProg 64 :=
.seq rawBody164_141 rawBody164_278

def rawBody164_280 : StackLang.HolProg 64 :=
.seq rawBody164_72 rawBody164_279

def rawBody164_281 : StackLang.HolProg 64 :=
.seq rawBody164_55 rawBody164_280

def rawBody164_282 : StackLang.HolProg 64 :=
.seq rawBody164_54 rawBody164_281

def rawBody164_283 : StackLang.HolProg 64 :=
.seq rawBody164_53 rawBody164_282

def rawBody164_284 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody164_52 rawBody164_283

def rawBody164_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody164_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 8

def rawBody164_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def rawBody164_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 6

def rawBody164_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 5

def rawBody164_290 : StackLang.HolProg 64 :=
.seq rawBody164_288 rawBody164_289

def rawBody164_291 : StackLang.HolProg 64 :=
.seq rawBody164_287 rawBody164_290

def rawBody164_292 : StackLang.HolProg 64 :=
.seq rawBody164_286 rawBody164_291

def rawBody164_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody164_294 : StackLang.HolProg 64 :=
.seq rawBody164_292 rawBody164_293

def rawBody164_295 : StackLang.HolProg 64 :=
.seq rawBody164_285 rawBody164_294

def rawBody164_296 : StackLang.HolProg 64 :=
.seq rawBody164_284 rawBody164_295

def rawBody164_297 : StackLang.HolProg 64 :=
.seq rawBody164_17 rawBody164_296

def rawBody164_298 : StackLang.HolProg 64 :=
.seq rawBody164_16 rawBody164_297

def rawBody164_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody164_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody164_301 : StackLang.HolProg 64 :=
.seq rawBody164_299 rawBody164_300

def rawBody164_302 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody164_298 rawBody164_301

def rawBody164_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody164_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def rawBody164_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 7

def rawBody164_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 6

def rawBody164_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def rawBody164_308 : StackLang.HolProg 64 :=
.seq rawBody164_306 rawBody164_307

def rawBody164_309 : StackLang.HolProg 64 :=
.seq rawBody164_305 rawBody164_308

def rawBody164_310 : StackLang.HolProg 64 :=
.seq rawBody164_304 rawBody164_309

def rawBody164_311 : StackLang.HolProg 64 :=
.seq rawBody164_303 rawBody164_310

def rawBody164_312 : StackLang.HolProg 64 :=
.seq rawBody164_302 rawBody164_311

def rawBody164_313 : StackLang.HolProg 64 :=
.seq rawBody164_15 rawBody164_312

def rawBody164_314 : StackLang.HolProg 64 :=
.seq rawBody164_14 rawBody164_313

def rawBody164_315 : StackLang.HolProg 64 :=
.loop rawBody164_314

def rawBody164_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody164_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody164_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody164_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def rawBody164_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 9

def rawBody164_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def rawBody164_322 : StackLang.HolProg 64 :=
.seq rawBody164_320 rawBody164_321

def rawBody164_323 : StackLang.HolProg 64 :=
.seq rawBody164_319 rawBody164_322

def rawBody164_324 : StackLang.HolProg 64 :=
.seq rawBody164_318 rawBody164_323

def rawBody164_325 : StackLang.HolProg 64 :=
.seq rawBody164_317 rawBody164_324

def rawBody164_326 : StackLang.HolProg 64 :=
.seq rawBody164_316 rawBody164_325

def rawBody164_327 : StackLang.HolProg 64 :=
.seq rawBody164_315 rawBody164_326

def rawBody164_328 : StackLang.HolProg 64 :=
.seq rawBody164_13 rawBody164_327

def rawBody164_329 : StackLang.HolProg 64 :=
.seq rawBody164_6 rawBody164_328

def rawBody164_330 : StackLang.HolProg 64 :=
.seq rawBody164_5 rawBody164_329

def rawBody164_331 : StackLang.HolProg 64 :=
.seq rawBody164_4 rawBody164_330

def rawBody164_332 : StackLang.HolProg 64 :=
.seq rawBody164_3 rawBody164_331

def rawBody164_333 : StackLang.HolProg 64 :=
.seq rawBody164_2 rawBody164_332

def rawBody164_334 : StackLang.HolProg 64 :=
.seq rawBody164_1 rawBody164_333

def rawBody164_335 : StackLang.HolProg 64 :=
.seq rawBody164_0 rawBody164_334

def raw164 : StackLang.HolProg 64 := rawBody164_335
theorem raw164_eq : StackRawCall.compTop RawInfo.rawInfo (function164 (.list [])).1 = raw164 := by
  kernel_rfl
#print axioms raw164_eq
end InitECandidate.Proofs.BackendStages
