import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function745
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody745_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 9

def rawBody745_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody745_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def rawBody745_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody745_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 8#64))

def rawBody745_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody745_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 16#64))

def rawBody745_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody745_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 24#64))

def rawBody745_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody745_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 32#64))

def rawBody745_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody745_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 40#64))

def rawBody745_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def rawBody745_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 7

def rawBody745_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 6

def rawBody745_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 5

def rawBody745_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody745_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 3

def rawBody745_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody745_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody745_21 : StackLang.HolProg 64 :=
.seq rawBody745_19 rawBody745_20

def rawBody745_22 : StackLang.HolProg 64 :=
.seq rawBody745_18 rawBody745_21

def rawBody745_23 : StackLang.HolProg 64 :=
.seq rawBody745_17 rawBody745_22

def rawBody745_24 : StackLang.HolProg 64 :=
.seq rawBody745_16 rawBody745_23

def rawBody745_25 : StackLang.HolProg 64 :=
.seq rawBody745_15 rawBody745_24

def rawBody745_26 : StackLang.HolProg 64 :=
.seq rawBody745_14 rawBody745_25

def rawBody745_27 : StackLang.HolProg 64 :=
.seq rawBody745_13 rawBody745_26

def rawBody745_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody745_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3304#64)

def rawBody745_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody745_31 : StackLang.HolProg 64 :=
.seq rawBody745_29 rawBody745_30

def rawBody745_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody745_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody745_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody745_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 745 3

def rawBody745_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody745_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody745_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody745_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody745_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody745_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody745_42 : StackLang.HolProg 64 :=
.seq rawBody745_40 rawBody745_41

def rawBody745_43 : StackLang.HolProg 64 :=
.seq rawBody745_39 rawBody745_42

def rawBody745_44 : StackLang.HolProg 64 :=
.seq rawBody745_38 rawBody745_43

def rawBody745_45 : StackLang.HolProg 64 :=
.seq rawBody745_37 rawBody745_44

def rawBody745_46 : StackLang.HolProg 64 :=
.seq rawBody745_36 rawBody745_45

def rawBody745_47 : StackLang.HolProg 64 :=
.seq rawBody745_35 rawBody745_46

def rawBody745_48 : StackLang.HolProg 64 :=
.seq rawBody745_34 rawBody745_47

def rawBody745_49 : StackLang.HolProg 64 :=
.seq rawBody745_33 rawBody745_48

def rawBody745_50 : StackLang.HolProg 64 :=
.seq rawBody745_32 rawBody745_49

def rawBody745_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody745_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody745_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody745_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody745_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody745_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody745_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody745_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def rawBody745_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 7

def rawBody745_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def rawBody745_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def rawBody745_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody745_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody745_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody745_65 : StackLang.HolProg 64 :=
.seq rawBody745_63 rawBody745_64

def rawBody745_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody745_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def rawBody745_68 : StackLang.HolProg 64 :=
.seq rawBody745_66 rawBody745_67

def rawBody745_69 : StackLang.HolProg 64 :=
.seq rawBody745_65 rawBody745_68

def rawBody745_70 : StackLang.HolProg 64 :=
.seq rawBody745_62 rawBody745_69

def rawBody745_71 : StackLang.HolProg 64 :=
.seq rawBody745_61 rawBody745_70

def rawBody745_72 : StackLang.HolProg 64 :=
.seq rawBody745_60 rawBody745_71

def rawBody745_73 : StackLang.HolProg 64 :=
.seq rawBody745_59 rawBody745_72

def rawBody745_74 : StackLang.HolProg 64 :=
.seq rawBody745_58 rawBody745_73

def rawBody745_75 : StackLang.HolProg 64 :=
.seq rawBody745_57 rawBody745_74

def rawBody745_76 : StackLang.HolProg 64 :=
.seq rawBody745_56 rawBody745_75

def rawBody745_77 : StackLang.HolProg 64 :=
.seq rawBody745_55 rawBody745_76

def rawBody745_78 : StackLang.HolProg 64 :=
.seq rawBody745_54 rawBody745_77

def rawBody745_79 : StackLang.HolProg 64 :=
.seq rawBody745_53 rawBody745_78

def rawBody745_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def rawBody745_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 7

def rawBody745_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def rawBody745_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def rawBody745_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody745_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody745_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody745_87 : StackLang.HolProg 64 :=
.seq rawBody745_85 rawBody745_86

def rawBody745_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody745_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def rawBody745_90 : StackLang.HolProg 64 :=
.seq rawBody745_88 rawBody745_89

def rawBody745_91 : StackLang.HolProg 64 :=
.seq rawBody745_87 rawBody745_90

def rawBody745_92 : StackLang.HolProg 64 :=
.seq rawBody745_84 rawBody745_91

def rawBody745_93 : StackLang.HolProg 64 :=
.seq rawBody745_83 rawBody745_92

def rawBody745_94 : StackLang.HolProg 64 :=
.seq rawBody745_82 rawBody745_93

def rawBody745_95 : StackLang.HolProg 64 :=
.seq rawBody745_81 rawBody745_94

def rawBody745_96 : StackLang.HolProg 64 :=
.seq rawBody745_80 rawBody745_95

def rawBody745_97 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody745_98 : StackLang.HolProg 64 :=
.seq rawBody745_96 rawBody745_97

def rawBody745_99 : StackLang.HolProg 64 :=
.call (some (rawBody745_79, 0, 745, 2)) (Sum.inl 723) (some (rawBody745_98, 745, 3))

def rawBody745_100 : StackLang.HolProg 64 :=
.seq rawBody745_52 rawBody745_99

def rawBody745_101 : StackLang.HolProg 64 :=
.seq rawBody745_51 rawBody745_100

def rawBody745_102 : StackLang.HolProg 64 :=
.seq rawBody745_50 rawBody745_101

def rawBody745_103 : StackLang.HolProg 64 :=
.seq rawBody745_31 rawBody745_102

def rawBody745_104 : StackLang.HolProg 64 :=
.seq rawBody745_28 rawBody745_103

def rawBody745_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody745_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody745_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody745_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody745_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody745_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody745_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 9

def rawBody745_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def rawBody745_113 : StackLang.HolProg 64 :=
.seq rawBody745_111 rawBody745_112

def rawBody745_114 : StackLang.HolProg 64 :=
.seq rawBody745_110 rawBody745_113

def rawBody745_115 : StackLang.HolProg 64 :=
.seq rawBody745_109 rawBody745_114

def rawBody745_116 : StackLang.HolProg 64 :=
.seq rawBody745_108 rawBody745_115

def rawBody745_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody745_118 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody745_116 rawBody745_117

def rawBody745_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody745_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody745_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody745_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 8

def rawBody745_123 : StackLang.HolProg 64 :=
.seq rawBody745_121 rawBody745_122

def rawBody745_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody745_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3305#64)

def rawBody745_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody745_127 : StackLang.HolProg 64 :=
.seq rawBody745_125 rawBody745_126

def rawBody745_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody745_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody745_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody745_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 745 5

def rawBody745_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody745_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody745_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody745_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody745_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody745_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody745_138 : StackLang.HolProg 64 :=
.seq rawBody745_136 rawBody745_137

def rawBody745_139 : StackLang.HolProg 64 :=
.seq rawBody745_135 rawBody745_138

def rawBody745_140 : StackLang.HolProg 64 :=
.seq rawBody745_134 rawBody745_139

def rawBody745_141 : StackLang.HolProg 64 :=
.seq rawBody745_133 rawBody745_140

def rawBody745_142 : StackLang.HolProg 64 :=
.seq rawBody745_132 rawBody745_141

def rawBody745_143 : StackLang.HolProg 64 :=
.seq rawBody745_131 rawBody745_142

def rawBody745_144 : StackLang.HolProg 64 :=
.seq rawBody745_130 rawBody745_143

def rawBody745_145 : StackLang.HolProg 64 :=
.seq rawBody745_129 rawBody745_144

def rawBody745_146 : StackLang.HolProg 64 :=
.seq rawBody745_128 rawBody745_145

def rawBody745_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody745_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody745_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody745_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody745_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody745_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody745_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody745_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody745_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 7

def rawBody745_156 : StackLang.HolProg 64 :=
.seq rawBody745_154 rawBody745_155

def rawBody745_157 : StackLang.HolProg 64 :=
.seq rawBody745_153 rawBody745_156

def rawBody745_158 : StackLang.HolProg 64 :=
.seq rawBody745_152 rawBody745_157

def rawBody745_159 : StackLang.HolProg 64 :=
.seq rawBody745_151 rawBody745_158

def rawBody745_160 : StackLang.HolProg 64 :=
.seq rawBody745_150 rawBody745_159

def rawBody745_161 : StackLang.HolProg 64 :=
.seq rawBody745_149 rawBody745_160

def rawBody745_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody745_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 7

def rawBody745_164 : StackLang.HolProg 64 :=
.seq rawBody745_162 rawBody745_163

def rawBody745_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody745_166 : StackLang.HolProg 64 :=
.seq rawBody745_164 rawBody745_165

def rawBody745_167 : StackLang.HolProg 64 :=
.call (some (rawBody745_161, 0, 745, 4)) (Sum.inl 705) (some (rawBody745_166, 745, 5))

def rawBody745_168 : StackLang.HolProg 64 :=
.seq rawBody745_148 rawBody745_167

def rawBody745_169 : StackLang.HolProg 64 :=
.seq rawBody745_147 rawBody745_168

def rawBody745_170 : StackLang.HolProg 64 :=
.seq rawBody745_146 rawBody745_169

def rawBody745_171 : StackLang.HolProg 64 :=
.seq rawBody745_127 rawBody745_170

def rawBody745_172 : StackLang.HolProg 64 :=
.seq rawBody745_124 rawBody745_171

def rawBody745_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody745_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody745_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody745_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody745_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody745_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody745_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 9

def rawBody745_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody745_181 : StackLang.HolProg 64 :=
.seq rawBody745_179 rawBody745_180

def rawBody745_182 : StackLang.HolProg 64 :=
.seq rawBody745_178 rawBody745_181

def rawBody745_183 : StackLang.HolProg 64 :=
.seq rawBody745_177 rawBody745_182

def rawBody745_184 : StackLang.HolProg 64 :=
.seq rawBody745_176 rawBody745_183

def rawBody745_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody745_186 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody745_184 rawBody745_185

def rawBody745_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody745_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody745_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody745_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 48#64))

def rawBody745_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody745_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 56#64))

def rawBody745_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody745_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 64#64))

def rawBody745_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody745_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 72#64))

def rawBody745_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody745_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 80#64))

def rawBody745_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody745_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 88#64))

def rawBody745_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody745_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody745_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody745_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 723

def rawBody745_205 : StackLang.HolProg 64 :=
.seq rawBody745_203 rawBody745_204

def rawBody745_206 : StackLang.HolProg 64 :=
.seq rawBody745_202 rawBody745_205

def rawBody745_207 : StackLang.HolProg 64 :=
.seq rawBody745_201 rawBody745_206

def rawBody745_208 : StackLang.HolProg 64 :=
.seq rawBody745_200 rawBody745_207

def rawBody745_209 : StackLang.HolProg 64 :=
.seq rawBody745_199 rawBody745_208

def rawBody745_210 : StackLang.HolProg 64 :=
.seq rawBody745_198 rawBody745_209

def rawBody745_211 : StackLang.HolProg 64 :=
.seq rawBody745_197 rawBody745_210

def rawBody745_212 : StackLang.HolProg 64 :=
.seq rawBody745_196 rawBody745_211

def rawBody745_213 : StackLang.HolProg 64 :=
.seq rawBody745_195 rawBody745_212

def rawBody745_214 : StackLang.HolProg 64 :=
.seq rawBody745_194 rawBody745_213

def rawBody745_215 : StackLang.HolProg 64 :=
.seq rawBody745_193 rawBody745_214

def rawBody745_216 : StackLang.HolProg 64 :=
.seq rawBody745_192 rawBody745_215

def rawBody745_217 : StackLang.HolProg 64 :=
.seq rawBody745_191 rawBody745_216

def rawBody745_218 : StackLang.HolProg 64 :=
.seq rawBody745_190 rawBody745_217

def rawBody745_219 : StackLang.HolProg 64 :=
.seq rawBody745_189 rawBody745_218

def rawBody745_220 : StackLang.HolProg 64 :=
.seq rawBody745_188 rawBody745_219

def rawBody745_221 : StackLang.HolProg 64 :=
.seq rawBody745_187 rawBody745_220

def rawBody745_222 : StackLang.HolProg 64 :=
.seq rawBody745_186 rawBody745_221

def rawBody745_223 : StackLang.HolProg 64 :=
.seq rawBody745_175 rawBody745_222

def rawBody745_224 : StackLang.HolProg 64 :=
.seq rawBody745_174 rawBody745_223

def rawBody745_225 : StackLang.HolProg 64 :=
.seq rawBody745_173 rawBody745_224

def rawBody745_226 : StackLang.HolProg 64 :=
.seq rawBody745_172 rawBody745_225

def rawBody745_227 : StackLang.HolProg 64 :=
.seq rawBody745_123 rawBody745_226

def rawBody745_228 : StackLang.HolProg 64 :=
.seq rawBody745_120 rawBody745_227

def rawBody745_229 : StackLang.HolProg 64 :=
.seq rawBody745_119 rawBody745_228

def rawBody745_230 : StackLang.HolProg 64 :=
.seq rawBody745_118 rawBody745_229

def rawBody745_231 : StackLang.HolProg 64 :=
.seq rawBody745_107 rawBody745_230

def rawBody745_232 : StackLang.HolProg 64 :=
.seq rawBody745_106 rawBody745_231

def rawBody745_233 : StackLang.HolProg 64 :=
.seq rawBody745_105 rawBody745_232

def rawBody745_234 : StackLang.HolProg 64 :=
.seq rawBody745_104 rawBody745_233

def rawBody745_235 : StackLang.HolProg 64 :=
.seq rawBody745_27 rawBody745_234

def rawBody745_236 : StackLang.HolProg 64 :=
.seq rawBody745_12 rawBody745_235

def rawBody745_237 : StackLang.HolProg 64 :=
.seq rawBody745_11 rawBody745_236

def rawBody745_238 : StackLang.HolProg 64 :=
.seq rawBody745_10 rawBody745_237

def rawBody745_239 : StackLang.HolProg 64 :=
.seq rawBody745_9 rawBody745_238

def rawBody745_240 : StackLang.HolProg 64 :=
.seq rawBody745_8 rawBody745_239

def rawBody745_241 : StackLang.HolProg 64 :=
.seq rawBody745_7 rawBody745_240

def rawBody745_242 : StackLang.HolProg 64 :=
.seq rawBody745_6 rawBody745_241

def rawBody745_243 : StackLang.HolProg 64 :=
.seq rawBody745_5 rawBody745_242

def rawBody745_244 : StackLang.HolProg 64 :=
.seq rawBody745_4 rawBody745_243

def rawBody745_245 : StackLang.HolProg 64 :=
.seq rawBody745_3 rawBody745_244

def rawBody745_246 : StackLang.HolProg 64 :=
.seq rawBody745_2 rawBody745_245

def rawBody745_247 : StackLang.HolProg 64 :=
.seq rawBody745_1 rawBody745_246

def rawBody745_248 : StackLang.HolProg 64 :=
.seq rawBody745_0 rawBody745_247

def raw745 : StackLang.HolProg 64 := rawBody745_248
theorem raw745_eq : StackRawCall.compTop RawInfo.rawInfo (function745 (.list [])).1 = raw745 := by
  kernel_rfl
#print axioms raw745_eq
end InitECandidate.Proofs.BackendStages
