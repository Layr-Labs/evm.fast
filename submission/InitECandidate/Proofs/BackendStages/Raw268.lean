import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function268
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody268_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody268_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody268_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def rawBody268_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody268_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody268_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def rawBody268_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def rawBody268_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 1

def rawBody268_8 : StackLang.HolProg 64 :=
.seq rawBody268_6 rawBody268_7

def rawBody268_9 : StackLang.HolProg 64 :=
.seq rawBody268_5 rawBody268_8

def rawBody268_10 : StackLang.HolProg 64 :=
.seq rawBody268_4 rawBody268_9

def rawBody268_11 : StackLang.HolProg 64 :=
.seq rawBody268_3 rawBody268_10

def rawBody268_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody268_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 653#64)

def rawBody268_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody268_15 : StackLang.HolProg 64 :=
.seq rawBody268_13 rawBody268_14

def rawBody268_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody268_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody268_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody268_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 268 3

def rawBody268_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody268_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody268_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody268_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody268_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody268_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody268_26 : StackLang.HolProg 64 :=
.seq rawBody268_24 rawBody268_25

def rawBody268_27 : StackLang.HolProg 64 :=
.seq rawBody268_23 rawBody268_26

def rawBody268_28 : StackLang.HolProg 64 :=
.seq rawBody268_22 rawBody268_27

def rawBody268_29 : StackLang.HolProg 64 :=
.seq rawBody268_21 rawBody268_28

def rawBody268_30 : StackLang.HolProg 64 :=
.seq rawBody268_20 rawBody268_29

def rawBody268_31 : StackLang.HolProg 64 :=
.seq rawBody268_19 rawBody268_30

def rawBody268_32 : StackLang.HolProg 64 :=
.seq rawBody268_18 rawBody268_31

def rawBody268_33 : StackLang.HolProg 64 :=
.seq rawBody268_17 rawBody268_32

def rawBody268_34 : StackLang.HolProg 64 :=
.seq rawBody268_16 rawBody268_33

def rawBody268_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody268_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody268_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody268_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody268_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody268_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody268_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody268_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody268_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody268_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody268_45 : StackLang.HolProg 64 :=
.seq rawBody268_43 rawBody268_44

def rawBody268_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody268_47 : StackLang.HolProg 64 :=
.seq rawBody268_45 rawBody268_46

def rawBody268_48 : StackLang.HolProg 64 :=
.seq rawBody268_42 rawBody268_47

def rawBody268_49 : StackLang.HolProg 64 :=
.seq rawBody268_41 rawBody268_48

def rawBody268_50 : StackLang.HolProg 64 :=
.seq rawBody268_40 rawBody268_49

def rawBody268_51 : StackLang.HolProg 64 :=
.seq rawBody268_39 rawBody268_50

def rawBody268_52 : StackLang.HolProg 64 :=
.seq rawBody268_38 rawBody268_51

def rawBody268_53 : StackLang.HolProg 64 :=
.seq rawBody268_37 rawBody268_52

def rawBody268_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody268_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody268_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody268_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody268_58 : StackLang.HolProg 64 :=
.seq rawBody268_56 rawBody268_57

def rawBody268_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody268_60 : StackLang.HolProg 64 :=
.seq rawBody268_58 rawBody268_59

def rawBody268_61 : StackLang.HolProg 64 :=
.seq rawBody268_55 rawBody268_60

def rawBody268_62 : StackLang.HolProg 64 :=
.seq rawBody268_54 rawBody268_61

def rawBody268_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody268_64 : StackLang.HolProg 64 :=
.seq rawBody268_62 rawBody268_63

def rawBody268_65 : StackLang.HolProg 64 :=
.call (some (rawBody268_53, 0, 268, 2)) (Sum.inl 77) (some (rawBody268_64, 268, 3))

def rawBody268_66 : StackLang.HolProg 64 :=
.seq rawBody268_36 rawBody268_65

def rawBody268_67 : StackLang.HolProg 64 :=
.seq rawBody268_35 rawBody268_66

def rawBody268_68 : StackLang.HolProg 64 :=
.seq rawBody268_34 rawBody268_67

def rawBody268_69 : StackLang.HolProg 64 :=
.seq rawBody268_15 rawBody268_68

def rawBody268_70 : StackLang.HolProg 64 :=
.seq rawBody268_12 rawBody268_69

def rawBody268_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody268_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody268_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody268_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody268_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody268_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody268_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 33#64)))

def rawBody268_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody268_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody268_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 654#64)

def rawBody268_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody268_82 : StackLang.HolProg 64 :=
.seq rawBody268_80 rawBody268_81

def rawBody268_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody268_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody268_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody268_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 268 5

def rawBody268_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody268_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody268_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody268_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody268_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody268_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody268_93 : StackLang.HolProg 64 :=
.seq rawBody268_91 rawBody268_92

def rawBody268_94 : StackLang.HolProg 64 :=
.seq rawBody268_90 rawBody268_93

def rawBody268_95 : StackLang.HolProg 64 :=
.seq rawBody268_89 rawBody268_94

def rawBody268_96 : StackLang.HolProg 64 :=
.seq rawBody268_88 rawBody268_95

def rawBody268_97 : StackLang.HolProg 64 :=
.seq rawBody268_87 rawBody268_96

def rawBody268_98 : StackLang.HolProg 64 :=
.seq rawBody268_86 rawBody268_97

def rawBody268_99 : StackLang.HolProg 64 :=
.seq rawBody268_85 rawBody268_98

def rawBody268_100 : StackLang.HolProg 64 :=
.seq rawBody268_84 rawBody268_99

def rawBody268_101 : StackLang.HolProg 64 :=
.seq rawBody268_83 rawBody268_100

def rawBody268_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody268_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody268_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody268_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody268_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody268_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody268_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody268_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody268_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody268_111 : StackLang.HolProg 64 :=
.seq rawBody268_109 rawBody268_110

def rawBody268_112 : StackLang.HolProg 64 :=
.seq rawBody268_108 rawBody268_111

def rawBody268_113 : StackLang.HolProg 64 :=
.seq rawBody268_107 rawBody268_112

def rawBody268_114 : StackLang.HolProg 64 :=
.seq rawBody268_106 rawBody268_113

def rawBody268_115 : StackLang.HolProg 64 :=
.seq rawBody268_105 rawBody268_114

def rawBody268_116 : StackLang.HolProg 64 :=
.seq rawBody268_104 rawBody268_115

def rawBody268_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody268_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody268_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody268_120 : StackLang.HolProg 64 :=
.seq rawBody268_118 rawBody268_119

def rawBody268_121 : StackLang.HolProg 64 :=
.seq rawBody268_117 rawBody268_120

def rawBody268_122 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody268_123 : StackLang.HolProg 64 :=
.seq rawBody268_121 rawBody268_122

def rawBody268_124 : StackLang.HolProg 64 :=
.call (some (rawBody268_116, 0, 268, 4)) (Sum.inl 87) (some (rawBody268_123, 268, 5))

def rawBody268_125 : StackLang.HolProg 64 :=
.seq rawBody268_103 rawBody268_124

def rawBody268_126 : StackLang.HolProg 64 :=
.seq rawBody268_102 rawBody268_125

def rawBody268_127 : StackLang.HolProg 64 :=
.seq rawBody268_101 rawBody268_126

def rawBody268_128 : StackLang.HolProg 64 :=
.seq rawBody268_82 rawBody268_127

def rawBody268_129 : StackLang.HolProg 64 :=
.seq rawBody268_79 rawBody268_128

def rawBody268_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody268_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody268_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 41#64)))

def rawBody268_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody268_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 255#64)))

def rawBody268_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody268_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody268_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 42#64)))

def rawBody268_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody268_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody268_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody268_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 43#64)

def rawBody268_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody268_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody268_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody268_145 : StackLang.HolProg 64 :=
.seq rawBody268_143 rawBody268_144

def rawBody268_146 : StackLang.HolProg 64 :=
.seq rawBody268_142 rawBody268_145

def rawBody268_147 : StackLang.HolProg 64 :=
.seq rawBody268_141 rawBody268_146

def rawBody268_148 : StackLang.HolProg 64 :=
.seq rawBody268_140 rawBody268_147

def rawBody268_149 : StackLang.HolProg 64 :=
.seq rawBody268_139 rawBody268_148

def rawBody268_150 : StackLang.HolProg 64 :=
.seq rawBody268_138 rawBody268_149

def rawBody268_151 : StackLang.HolProg 64 :=
.seq rawBody268_137 rawBody268_150

def rawBody268_152 : StackLang.HolProg 64 :=
.seq rawBody268_136 rawBody268_151

def rawBody268_153 : StackLang.HolProg 64 :=
.seq rawBody268_135 rawBody268_152

def rawBody268_154 : StackLang.HolProg 64 :=
.seq rawBody268_134 rawBody268_153

def rawBody268_155 : StackLang.HolProg 64 :=
.seq rawBody268_133 rawBody268_154

def rawBody268_156 : StackLang.HolProg 64 :=
.seq rawBody268_132 rawBody268_155

def rawBody268_157 : StackLang.HolProg 64 :=
.seq rawBody268_131 rawBody268_156

def rawBody268_158 : StackLang.HolProg 64 :=
.seq rawBody268_130 rawBody268_157

def rawBody268_159 : StackLang.HolProg 64 :=
.seq rawBody268_129 rawBody268_158

def rawBody268_160 : StackLang.HolProg 64 :=
.seq rawBody268_78 rawBody268_159

def rawBody268_161 : StackLang.HolProg 64 :=
.seq rawBody268_77 rawBody268_160

def rawBody268_162 : StackLang.HolProg 64 :=
.seq rawBody268_76 rawBody268_161

def rawBody268_163 : StackLang.HolProg 64 :=
.seq rawBody268_75 rawBody268_162

def rawBody268_164 : StackLang.HolProg 64 :=
.seq rawBody268_74 rawBody268_163

def rawBody268_165 : StackLang.HolProg 64 :=
.seq rawBody268_73 rawBody268_164

def rawBody268_166 : StackLang.HolProg 64 :=
.seq rawBody268_72 rawBody268_165

def rawBody268_167 : StackLang.HolProg 64 :=
.seq rawBody268_71 rawBody268_166

def rawBody268_168 : StackLang.HolProg 64 :=
.seq rawBody268_70 rawBody268_167

def rawBody268_169 : StackLang.HolProg 64 :=
.seq rawBody268_11 rawBody268_168

def rawBody268_170 : StackLang.HolProg 64 :=
.seq rawBody268_2 rawBody268_169

def rawBody268_171 : StackLang.HolProg 64 :=
.seq rawBody268_1 rawBody268_170

def rawBody268_172 : StackLang.HolProg 64 :=
.seq rawBody268_0 rawBody268_171

def raw268 : StackLang.HolProg 64 := rawBody268_172
theorem raw268_eq : StackRawCall.compTop RawInfo.rawInfo (function268 (.list [])).1 = raw268 := by
  kernel_rfl
#print axioms raw268_eq
end InitECandidate.Proofs.BackendStages
