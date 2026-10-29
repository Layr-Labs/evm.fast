import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function177
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody177_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody177_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody177_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody177_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody177_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody177_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 128#64)

def rawBody177_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody177_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody177_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody177_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody177_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody177_11 : StackLang.HolProg 64 :=
.seq rawBody177_9 rawBody177_10

def rawBody177_12 : StackLang.HolProg 64 :=
.seq rawBody177_8 rawBody177_11

def rawBody177_13 : StackLang.HolProg 64 :=
.seq rawBody177_7 rawBody177_12

def rawBody177_14 : StackLang.HolProg 64 :=
.seq rawBody177_6 rawBody177_13

def rawBody177_15 : StackLang.HolProg 64 :=
.seq rawBody177_5 rawBody177_14

def rawBody177_16 : StackLang.HolProg 64 :=
.seq rawBody177_4 rawBody177_15

def rawBody177_17 : StackLang.HolProg 64 :=
.seq rawBody177_3 rawBody177_16

def rawBody177_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def rawBody177_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody177_17 rawBody177_18

def rawBody177_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody177_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody177_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody177_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def rawBody177_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody177_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 3

def rawBody177_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody177_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody177_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody177_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody177_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody177_31 : StackLang.HolProg 64 :=
.seq rawBody177_29 rawBody177_30

def rawBody177_32 : StackLang.HolProg 64 :=
.seq rawBody177_28 rawBody177_31

def rawBody177_33 : StackLang.HolProg 64 :=
.seq rawBody177_27 rawBody177_32

def rawBody177_34 : StackLang.HolProg 64 :=
.seq rawBody177_26 rawBody177_33

def rawBody177_35 : StackLang.HolProg 64 :=
.seq rawBody177_25 rawBody177_34

def rawBody177_36 : StackLang.HolProg 64 :=
.seq rawBody177_24 rawBody177_35

def rawBody177_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody177_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody177_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody177_40 : StackLang.HolProg 64 :=
.seq rawBody177_38 rawBody177_39

def rawBody177_41 : StackLang.HolProg 64 :=
.seq rawBody177_37 rawBody177_40

def rawBody177_42 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody177_36 rawBody177_41

def rawBody177_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody177_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody177_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody177_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody177_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody177_48 : StackLang.HolProg 64 :=
.seq rawBody177_46 rawBody177_47

def rawBody177_49 : StackLang.HolProg 64 :=
.seq rawBody177_45 rawBody177_48

def rawBody177_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody177_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 199#64)

def rawBody177_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody177_53 : StackLang.HolProg 64 :=
.seq rawBody177_51 rawBody177_52

def rawBody177_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody177_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody177_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody177_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 177 3

def rawBody177_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody177_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody177_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody177_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody177_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody177_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody177_64 : StackLang.HolProg 64 :=
.seq rawBody177_62 rawBody177_63

def rawBody177_65 : StackLang.HolProg 64 :=
.seq rawBody177_61 rawBody177_64

def rawBody177_66 : StackLang.HolProg 64 :=
.seq rawBody177_60 rawBody177_65

def rawBody177_67 : StackLang.HolProg 64 :=
.seq rawBody177_59 rawBody177_66

def rawBody177_68 : StackLang.HolProg 64 :=
.seq rawBody177_58 rawBody177_67

def rawBody177_69 : StackLang.HolProg 64 :=
.seq rawBody177_57 rawBody177_68

def rawBody177_70 : StackLang.HolProg 64 :=
.seq rawBody177_56 rawBody177_69

def rawBody177_71 : StackLang.HolProg 64 :=
.seq rawBody177_55 rawBody177_70

def rawBody177_72 : StackLang.HolProg 64 :=
.seq rawBody177_54 rawBody177_71

def rawBody177_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody177_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody177_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody177_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody177_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody177_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody177_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody177_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody177_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody177_82 : StackLang.HolProg 64 :=
.seq rawBody177_80 rawBody177_81

def rawBody177_83 : StackLang.HolProg 64 :=
.seq rawBody177_79 rawBody177_82

def rawBody177_84 : StackLang.HolProg 64 :=
.seq rawBody177_78 rawBody177_83

def rawBody177_85 : StackLang.HolProg 64 :=
.seq rawBody177_77 rawBody177_84

def rawBody177_86 : StackLang.HolProg 64 :=
.seq rawBody177_76 rawBody177_85

def rawBody177_87 : StackLang.HolProg 64 :=
.seq rawBody177_75 rawBody177_86

def rawBody177_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody177_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody177_90 : StackLang.HolProg 64 :=
.seq rawBody177_88 rawBody177_89

def rawBody177_91 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody177_92 : StackLang.HolProg 64 :=
.seq rawBody177_90 rawBody177_91

def rawBody177_93 : StackLang.HolProg 64 :=
.call (some (rawBody177_87, 0, 177, 2)) (Sum.inl 172) (some (rawBody177_92, 177, 3))

def rawBody177_94 : StackLang.HolProg 64 :=
.seq rawBody177_74 rawBody177_93

def rawBody177_95 : StackLang.HolProg 64 :=
.seq rawBody177_73 rawBody177_94

def rawBody177_96 : StackLang.HolProg 64 :=
.seq rawBody177_72 rawBody177_95

def rawBody177_97 : StackLang.HolProg 64 :=
.seq rawBody177_53 rawBody177_96

def rawBody177_98 : StackLang.HolProg 64 :=
.seq rawBody177_50 rawBody177_97

def rawBody177_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody177_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody177_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def rawBody177_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody177_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody177_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody177_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody177_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody177_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 200#64)

def rawBody177_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody177_109 : StackLang.HolProg 64 :=
.seq rawBody177_107 rawBody177_108

def rawBody177_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody177_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody177_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody177_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 177 5

def rawBody177_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody177_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody177_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody177_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody177_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody177_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody177_120 : StackLang.HolProg 64 :=
.seq rawBody177_118 rawBody177_119

def rawBody177_121 : StackLang.HolProg 64 :=
.seq rawBody177_117 rawBody177_120

def rawBody177_122 : StackLang.HolProg 64 :=
.seq rawBody177_116 rawBody177_121

def rawBody177_123 : StackLang.HolProg 64 :=
.seq rawBody177_115 rawBody177_122

def rawBody177_124 : StackLang.HolProg 64 :=
.seq rawBody177_114 rawBody177_123

def rawBody177_125 : StackLang.HolProg 64 :=
.seq rawBody177_113 rawBody177_124

def rawBody177_126 : StackLang.HolProg 64 :=
.seq rawBody177_112 rawBody177_125

def rawBody177_127 : StackLang.HolProg 64 :=
.seq rawBody177_111 rawBody177_126

def rawBody177_128 : StackLang.HolProg 64 :=
.seq rawBody177_110 rawBody177_127

def rawBody177_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody177_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody177_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody177_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody177_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody177_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody177_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody177_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody177_137 : StackLang.HolProg 64 :=
.seq rawBody177_135 rawBody177_136

def rawBody177_138 : StackLang.HolProg 64 :=
.seq rawBody177_134 rawBody177_137

def rawBody177_139 : StackLang.HolProg 64 :=
.seq rawBody177_133 rawBody177_138

def rawBody177_140 : StackLang.HolProg 64 :=
.seq rawBody177_132 rawBody177_139

def rawBody177_141 : StackLang.HolProg 64 :=
.seq rawBody177_131 rawBody177_140

def rawBody177_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody177_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody177_144 : StackLang.HolProg 64 :=
.seq rawBody177_142 rawBody177_143

def rawBody177_145 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody177_146 : StackLang.HolProg 64 :=
.seq rawBody177_144 rawBody177_145

def rawBody177_147 : StackLang.HolProg 64 :=
.call (some (rawBody177_141, 0, 177, 4)) (Sum.inl 173) (some (rawBody177_146, 177, 5))

def rawBody177_148 : StackLang.HolProg 64 :=
.seq rawBody177_130 rawBody177_147

def rawBody177_149 : StackLang.HolProg 64 :=
.seq rawBody177_129 rawBody177_148

def rawBody177_150 : StackLang.HolProg 64 :=
.seq rawBody177_128 rawBody177_149

def rawBody177_151 : StackLang.HolProg 64 :=
.seq rawBody177_109 rawBody177_150

def rawBody177_152 : StackLang.HolProg 64 :=
.seq rawBody177_106 rawBody177_151

def rawBody177_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody177_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody177_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody177_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody177_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody177_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody177_159 : StackLang.HolProg 64 :=
.seq rawBody177_157 rawBody177_158

def rawBody177_160 : StackLang.HolProg 64 :=
.seq rawBody177_156 rawBody177_159

def rawBody177_161 : StackLang.HolProg 64 :=
.seq rawBody177_155 rawBody177_160

def rawBody177_162 : StackLang.HolProg 64 :=
.seq rawBody177_154 rawBody177_161

def rawBody177_163 : StackLang.HolProg 64 :=
.seq rawBody177_153 rawBody177_162

def rawBody177_164 : StackLang.HolProg 64 :=
.seq rawBody177_152 rawBody177_163

def rawBody177_165 : StackLang.HolProg 64 :=
.seq rawBody177_105 rawBody177_164

def rawBody177_166 : StackLang.HolProg 64 :=
.seq rawBody177_104 rawBody177_165

def rawBody177_167 : StackLang.HolProg 64 :=
.seq rawBody177_103 rawBody177_166

def rawBody177_168 : StackLang.HolProg 64 :=
.seq rawBody177_102 rawBody177_167

def rawBody177_169 : StackLang.HolProg 64 :=
.seq rawBody177_101 rawBody177_168

def rawBody177_170 : StackLang.HolProg 64 :=
.seq rawBody177_100 rawBody177_169

def rawBody177_171 : StackLang.HolProg 64 :=
.seq rawBody177_99 rawBody177_170

def rawBody177_172 : StackLang.HolProg 64 :=
.seq rawBody177_98 rawBody177_171

def rawBody177_173 : StackLang.HolProg 64 :=
.seq rawBody177_49 rawBody177_172

def rawBody177_174 : StackLang.HolProg 64 :=
.seq rawBody177_44 rawBody177_173

def rawBody177_175 : StackLang.HolProg 64 :=
.seq rawBody177_43 rawBody177_174

def rawBody177_176 : StackLang.HolProg 64 :=
.seq rawBody177_42 rawBody177_175

def rawBody177_177 : StackLang.HolProg 64 :=
.seq rawBody177_23 rawBody177_176

def rawBody177_178 : StackLang.HolProg 64 :=
.seq rawBody177_22 rawBody177_177

def rawBody177_179 : StackLang.HolProg 64 :=
.seq rawBody177_21 rawBody177_178

def rawBody177_180 : StackLang.HolProg 64 :=
.seq rawBody177_20 rawBody177_179

def rawBody177_181 : StackLang.HolProg 64 :=
.seq rawBody177_19 rawBody177_180

def rawBody177_182 : StackLang.HolProg 64 :=
.seq rawBody177_2 rawBody177_181

def rawBody177_183 : StackLang.HolProg 64 :=
.seq rawBody177_1 rawBody177_182

def rawBody177_184 : StackLang.HolProg 64 :=
.seq rawBody177_0 rawBody177_183

def raw177 : StackLang.HolProg 64 := rawBody177_184
theorem raw177_eq : StackRawCall.compTop RawInfo.rawInfo (function177 (.list [])).1 = raw177 := by
  kernel_rfl
#print axioms raw177_eq
end InitECandidate.Proofs.BackendStages
