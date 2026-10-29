import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function435
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody435_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody435_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody435_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 24#64)

def rawBody435_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody435_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody435_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody435_6 : StackLang.HolProg 64 :=
.seq rawBody435_4 rawBody435_5

def rawBody435_7 : StackLang.HolProg 64 :=
.seq rawBody435_3 rawBody435_6

def rawBody435_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody435_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1313#64)

def rawBody435_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody435_11 : StackLang.HolProg 64 :=
.seq rawBody435_9 rawBody435_10

def rawBody435_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody435_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody435_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody435_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 435 3

def rawBody435_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody435_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody435_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody435_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody435_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody435_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody435_22 : StackLang.HolProg 64 :=
.seq rawBody435_20 rawBody435_21

def rawBody435_23 : StackLang.HolProg 64 :=
.seq rawBody435_19 rawBody435_22

def rawBody435_24 : StackLang.HolProg 64 :=
.seq rawBody435_18 rawBody435_23

def rawBody435_25 : StackLang.HolProg 64 :=
.seq rawBody435_17 rawBody435_24

def rawBody435_26 : StackLang.HolProg 64 :=
.seq rawBody435_16 rawBody435_25

def rawBody435_27 : StackLang.HolProg 64 :=
.seq rawBody435_15 rawBody435_26

def rawBody435_28 : StackLang.HolProg 64 :=
.seq rawBody435_14 rawBody435_27

def rawBody435_29 : StackLang.HolProg 64 :=
.seq rawBody435_13 rawBody435_28

def rawBody435_30 : StackLang.HolProg 64 :=
.seq rawBody435_12 rawBody435_29

def rawBody435_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody435_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody435_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody435_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody435_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody435_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody435_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody435_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody435_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody435_40 : StackLang.HolProg 64 :=
.seq rawBody435_38 rawBody435_39

def rawBody435_41 : StackLang.HolProg 64 :=
.seq rawBody435_37 rawBody435_40

def rawBody435_42 : StackLang.HolProg 64 :=
.seq rawBody435_36 rawBody435_41

def rawBody435_43 : StackLang.HolProg 64 :=
.seq rawBody435_35 rawBody435_42

def rawBody435_44 : StackLang.HolProg 64 :=
.seq rawBody435_34 rawBody435_43

def rawBody435_45 : StackLang.HolProg 64 :=
.seq rawBody435_33 rawBody435_44

def rawBody435_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody435_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody435_48 : StackLang.HolProg 64 :=
.seq rawBody435_46 rawBody435_47

def rawBody435_49 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody435_50 : StackLang.HolProg 64 :=
.seq rawBody435_48 rawBody435_49

def rawBody435_51 : StackLang.HolProg 64 :=
.call (some (rawBody435_45, 0, 435, 2)) (Sum.inl 68) (some (rawBody435_50, 435, 3))

def rawBody435_52 : StackLang.HolProg 64 :=
.seq rawBody435_32 rawBody435_51

def rawBody435_53 : StackLang.HolProg 64 :=
.seq rawBody435_31 rawBody435_52

def rawBody435_54 : StackLang.HolProg 64 :=
.seq rawBody435_30 rawBody435_53

def rawBody435_55 : StackLang.HolProg 64 :=
.seq rawBody435_11 rawBody435_54

def rawBody435_56 : StackLang.HolProg 64 :=
.seq rawBody435_8 rawBody435_55

def rawBody435_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody435_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody435_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody435_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody435_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def rawBody435_62 : StackLang.HolProg 64 :=
.seq rawBody435_60 rawBody435_61

def rawBody435_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody435_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1314#64)

def rawBody435_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody435_66 : StackLang.HolProg 64 :=
.seq rawBody435_64 rawBody435_65

def rawBody435_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody435_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody435_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody435_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 435 5

def rawBody435_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody435_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody435_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody435_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody435_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody435_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody435_77 : StackLang.HolProg 64 :=
.seq rawBody435_75 rawBody435_76

def rawBody435_78 : StackLang.HolProg 64 :=
.seq rawBody435_74 rawBody435_77

def rawBody435_79 : StackLang.HolProg 64 :=
.seq rawBody435_73 rawBody435_78

def rawBody435_80 : StackLang.HolProg 64 :=
.seq rawBody435_72 rawBody435_79

def rawBody435_81 : StackLang.HolProg 64 :=
.seq rawBody435_71 rawBody435_80

def rawBody435_82 : StackLang.HolProg 64 :=
.seq rawBody435_70 rawBody435_81

def rawBody435_83 : StackLang.HolProg 64 :=
.seq rawBody435_69 rawBody435_82

def rawBody435_84 : StackLang.HolProg 64 :=
.seq rawBody435_68 rawBody435_83

def rawBody435_85 : StackLang.HolProg 64 :=
.seq rawBody435_67 rawBody435_84

def rawBody435_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody435_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody435_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody435_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody435_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody435_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody435_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody435_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody435_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody435_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody435_96 : StackLang.HolProg 64 :=
.seq rawBody435_94 rawBody435_95

def rawBody435_97 : StackLang.HolProg 64 :=
.seq rawBody435_93 rawBody435_96

def rawBody435_98 : StackLang.HolProg 64 :=
.seq rawBody435_92 rawBody435_97

def rawBody435_99 : StackLang.HolProg 64 :=
.seq rawBody435_91 rawBody435_98

def rawBody435_100 : StackLang.HolProg 64 :=
.seq rawBody435_90 rawBody435_99

def rawBody435_101 : StackLang.HolProg 64 :=
.seq rawBody435_89 rawBody435_100

def rawBody435_102 : StackLang.HolProg 64 :=
.seq rawBody435_88 rawBody435_101

def rawBody435_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody435_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody435_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody435_106 : StackLang.HolProg 64 :=
.seq rawBody435_104 rawBody435_105

def rawBody435_107 : StackLang.HolProg 64 :=
.seq rawBody435_103 rawBody435_106

def rawBody435_108 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody435_109 : StackLang.HolProg 64 :=
.seq rawBody435_107 rawBody435_108

def rawBody435_110 : StackLang.HolProg 64 :=
.call (some (rawBody435_102, 0, 435, 4)) (Sum.inl 68) (some (rawBody435_109, 435, 5))

def rawBody435_111 : StackLang.HolProg 64 :=
.seq rawBody435_87 rawBody435_110

def rawBody435_112 : StackLang.HolProg 64 :=
.seq rawBody435_86 rawBody435_111

def rawBody435_113 : StackLang.HolProg 64 :=
.seq rawBody435_85 rawBody435_112

def rawBody435_114 : StackLang.HolProg 64 :=
.seq rawBody435_66 rawBody435_113

def rawBody435_115 : StackLang.HolProg 64 :=
.seq rawBody435_63 rawBody435_114

def rawBody435_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody435_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody435_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody435_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody435_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody435_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody435_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody435_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody435_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody435_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody435_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody435_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody435_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody435_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody435_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody435_131 : StackLang.HolProg 64 :=
.seq rawBody435_129 rawBody435_130

def rawBody435_132 : StackLang.HolProg 64 :=
.seq rawBody435_128 rawBody435_131

def rawBody435_133 : StackLang.HolProg 64 :=
.seq rawBody435_127 rawBody435_132

def rawBody435_134 : StackLang.HolProg 64 :=
.seq rawBody435_126 rawBody435_133

def rawBody435_135 : StackLang.HolProg 64 :=
.seq rawBody435_125 rawBody435_134

def rawBody435_136 : StackLang.HolProg 64 :=
.seq rawBody435_124 rawBody435_135

def rawBody435_137 : StackLang.HolProg 64 :=
.seq rawBody435_123 rawBody435_136

def rawBody435_138 : StackLang.HolProg 64 :=
.seq rawBody435_122 rawBody435_137

def rawBody435_139 : StackLang.HolProg 64 :=
.seq rawBody435_121 rawBody435_138

def rawBody435_140 : StackLang.HolProg 64 :=
.seq rawBody435_120 rawBody435_139

def rawBody435_141 : StackLang.HolProg 64 :=
.seq rawBody435_119 rawBody435_140

def rawBody435_142 : StackLang.HolProg 64 :=
.seq rawBody435_118 rawBody435_141

def rawBody435_143 : StackLang.HolProg 64 :=
.seq rawBody435_117 rawBody435_142

def rawBody435_144 : StackLang.HolProg 64 :=
.seq rawBody435_116 rawBody435_143

def rawBody435_145 : StackLang.HolProg 64 :=
.seq rawBody435_115 rawBody435_144

def rawBody435_146 : StackLang.HolProg 64 :=
.seq rawBody435_62 rawBody435_145

def rawBody435_147 : StackLang.HolProg 64 :=
.seq rawBody435_59 rawBody435_146

def rawBody435_148 : StackLang.HolProg 64 :=
.seq rawBody435_58 rawBody435_147

def rawBody435_149 : StackLang.HolProg 64 :=
.seq rawBody435_57 rawBody435_148

def rawBody435_150 : StackLang.HolProg 64 :=
.seq rawBody435_56 rawBody435_149

def rawBody435_151 : StackLang.HolProg 64 :=
.seq rawBody435_7 rawBody435_150

def rawBody435_152 : StackLang.HolProg 64 :=
.seq rawBody435_2 rawBody435_151

def rawBody435_153 : StackLang.HolProg 64 :=
.seq rawBody435_1 rawBody435_152

def rawBody435_154 : StackLang.HolProg 64 :=
.seq rawBody435_0 rawBody435_153

def raw435 : StackLang.HolProg 64 := rawBody435_154
theorem raw435_eq : StackRawCall.compTop RawInfo.rawInfo (function435 (.list [])).1 = raw435 := by
  kernel_rfl
#print axioms raw435_eq
end InitECandidate.Proofs.BackendStages
