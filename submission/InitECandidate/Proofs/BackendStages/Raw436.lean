import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function436
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody436_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody436_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody436_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 24#64)

def rawBody436_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody436_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody436_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody436_6 : StackLang.HolProg 64 :=
.seq rawBody436_4 rawBody436_5

def rawBody436_7 : StackLang.HolProg 64 :=
.seq rawBody436_3 rawBody436_6

def rawBody436_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody436_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1315#64)

def rawBody436_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody436_11 : StackLang.HolProg 64 :=
.seq rawBody436_9 rawBody436_10

def rawBody436_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody436_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody436_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody436_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 436 3

def rawBody436_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody436_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody436_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody436_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody436_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody436_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody436_22 : StackLang.HolProg 64 :=
.seq rawBody436_20 rawBody436_21

def rawBody436_23 : StackLang.HolProg 64 :=
.seq rawBody436_19 rawBody436_22

def rawBody436_24 : StackLang.HolProg 64 :=
.seq rawBody436_18 rawBody436_23

def rawBody436_25 : StackLang.HolProg 64 :=
.seq rawBody436_17 rawBody436_24

def rawBody436_26 : StackLang.HolProg 64 :=
.seq rawBody436_16 rawBody436_25

def rawBody436_27 : StackLang.HolProg 64 :=
.seq rawBody436_15 rawBody436_26

def rawBody436_28 : StackLang.HolProg 64 :=
.seq rawBody436_14 rawBody436_27

def rawBody436_29 : StackLang.HolProg 64 :=
.seq rawBody436_13 rawBody436_28

def rawBody436_30 : StackLang.HolProg 64 :=
.seq rawBody436_12 rawBody436_29

def rawBody436_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody436_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody436_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody436_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody436_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody436_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody436_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody436_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody436_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody436_40 : StackLang.HolProg 64 :=
.seq rawBody436_38 rawBody436_39

def rawBody436_41 : StackLang.HolProg 64 :=
.seq rawBody436_37 rawBody436_40

def rawBody436_42 : StackLang.HolProg 64 :=
.seq rawBody436_36 rawBody436_41

def rawBody436_43 : StackLang.HolProg 64 :=
.seq rawBody436_35 rawBody436_42

def rawBody436_44 : StackLang.HolProg 64 :=
.seq rawBody436_34 rawBody436_43

def rawBody436_45 : StackLang.HolProg 64 :=
.seq rawBody436_33 rawBody436_44

def rawBody436_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody436_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody436_48 : StackLang.HolProg 64 :=
.seq rawBody436_46 rawBody436_47

def rawBody436_49 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody436_50 : StackLang.HolProg 64 :=
.seq rawBody436_48 rawBody436_49

def rawBody436_51 : StackLang.HolProg 64 :=
.call (some (rawBody436_45, 0, 436, 2)) (Sum.inl 74) (some (rawBody436_50, 436, 3))

def rawBody436_52 : StackLang.HolProg 64 :=
.seq rawBody436_32 rawBody436_51

def rawBody436_53 : StackLang.HolProg 64 :=
.seq rawBody436_31 rawBody436_52

def rawBody436_54 : StackLang.HolProg 64 :=
.seq rawBody436_30 rawBody436_53

def rawBody436_55 : StackLang.HolProg 64 :=
.seq rawBody436_11 rawBody436_54

def rawBody436_56 : StackLang.HolProg 64 :=
.seq rawBody436_8 rawBody436_55

def rawBody436_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody436_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody436_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody436_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody436_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def rawBody436_62 : StackLang.HolProg 64 :=
.seq rawBody436_60 rawBody436_61

def rawBody436_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody436_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1316#64)

def rawBody436_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody436_66 : StackLang.HolProg 64 :=
.seq rawBody436_64 rawBody436_65

def rawBody436_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody436_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody436_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody436_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 436 5

def rawBody436_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody436_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody436_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody436_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody436_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody436_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody436_77 : StackLang.HolProg 64 :=
.seq rawBody436_75 rawBody436_76

def rawBody436_78 : StackLang.HolProg 64 :=
.seq rawBody436_74 rawBody436_77

def rawBody436_79 : StackLang.HolProg 64 :=
.seq rawBody436_73 rawBody436_78

def rawBody436_80 : StackLang.HolProg 64 :=
.seq rawBody436_72 rawBody436_79

def rawBody436_81 : StackLang.HolProg 64 :=
.seq rawBody436_71 rawBody436_80

def rawBody436_82 : StackLang.HolProg 64 :=
.seq rawBody436_70 rawBody436_81

def rawBody436_83 : StackLang.HolProg 64 :=
.seq rawBody436_69 rawBody436_82

def rawBody436_84 : StackLang.HolProg 64 :=
.seq rawBody436_68 rawBody436_83

def rawBody436_85 : StackLang.HolProg 64 :=
.seq rawBody436_67 rawBody436_84

def rawBody436_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody436_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody436_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody436_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody436_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody436_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody436_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody436_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody436_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody436_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody436_96 : StackLang.HolProg 64 :=
.seq rawBody436_94 rawBody436_95

def rawBody436_97 : StackLang.HolProg 64 :=
.seq rawBody436_93 rawBody436_96

def rawBody436_98 : StackLang.HolProg 64 :=
.seq rawBody436_92 rawBody436_97

def rawBody436_99 : StackLang.HolProg 64 :=
.seq rawBody436_91 rawBody436_98

def rawBody436_100 : StackLang.HolProg 64 :=
.seq rawBody436_90 rawBody436_99

def rawBody436_101 : StackLang.HolProg 64 :=
.seq rawBody436_89 rawBody436_100

def rawBody436_102 : StackLang.HolProg 64 :=
.seq rawBody436_88 rawBody436_101

def rawBody436_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody436_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody436_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody436_106 : StackLang.HolProg 64 :=
.seq rawBody436_104 rawBody436_105

def rawBody436_107 : StackLang.HolProg 64 :=
.seq rawBody436_103 rawBody436_106

def rawBody436_108 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody436_109 : StackLang.HolProg 64 :=
.seq rawBody436_107 rawBody436_108

def rawBody436_110 : StackLang.HolProg 64 :=
.call (some (rawBody436_102, 0, 436, 4)) (Sum.inl 74) (some (rawBody436_109, 436, 5))

def rawBody436_111 : StackLang.HolProg 64 :=
.seq rawBody436_87 rawBody436_110

def rawBody436_112 : StackLang.HolProg 64 :=
.seq rawBody436_86 rawBody436_111

def rawBody436_113 : StackLang.HolProg 64 :=
.seq rawBody436_85 rawBody436_112

def rawBody436_114 : StackLang.HolProg 64 :=
.seq rawBody436_66 rawBody436_113

def rawBody436_115 : StackLang.HolProg 64 :=
.seq rawBody436_63 rawBody436_114

def rawBody436_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody436_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody436_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody436_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody436_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody436_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody436_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody436_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody436_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody436_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody436_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody436_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody436_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody436_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody436_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody436_131 : StackLang.HolProg 64 :=
.seq rawBody436_129 rawBody436_130

def rawBody436_132 : StackLang.HolProg 64 :=
.seq rawBody436_128 rawBody436_131

def rawBody436_133 : StackLang.HolProg 64 :=
.seq rawBody436_127 rawBody436_132

def rawBody436_134 : StackLang.HolProg 64 :=
.seq rawBody436_126 rawBody436_133

def rawBody436_135 : StackLang.HolProg 64 :=
.seq rawBody436_125 rawBody436_134

def rawBody436_136 : StackLang.HolProg 64 :=
.seq rawBody436_124 rawBody436_135

def rawBody436_137 : StackLang.HolProg 64 :=
.seq rawBody436_123 rawBody436_136

def rawBody436_138 : StackLang.HolProg 64 :=
.seq rawBody436_122 rawBody436_137

def rawBody436_139 : StackLang.HolProg 64 :=
.seq rawBody436_121 rawBody436_138

def rawBody436_140 : StackLang.HolProg 64 :=
.seq rawBody436_120 rawBody436_139

def rawBody436_141 : StackLang.HolProg 64 :=
.seq rawBody436_119 rawBody436_140

def rawBody436_142 : StackLang.HolProg 64 :=
.seq rawBody436_118 rawBody436_141

def rawBody436_143 : StackLang.HolProg 64 :=
.seq rawBody436_117 rawBody436_142

def rawBody436_144 : StackLang.HolProg 64 :=
.seq rawBody436_116 rawBody436_143

def rawBody436_145 : StackLang.HolProg 64 :=
.seq rawBody436_115 rawBody436_144

def rawBody436_146 : StackLang.HolProg 64 :=
.seq rawBody436_62 rawBody436_145

def rawBody436_147 : StackLang.HolProg 64 :=
.seq rawBody436_59 rawBody436_146

def rawBody436_148 : StackLang.HolProg 64 :=
.seq rawBody436_58 rawBody436_147

def rawBody436_149 : StackLang.HolProg 64 :=
.seq rawBody436_57 rawBody436_148

def rawBody436_150 : StackLang.HolProg 64 :=
.seq rawBody436_56 rawBody436_149

def rawBody436_151 : StackLang.HolProg 64 :=
.seq rawBody436_7 rawBody436_150

def rawBody436_152 : StackLang.HolProg 64 :=
.seq rawBody436_2 rawBody436_151

def rawBody436_153 : StackLang.HolProg 64 :=
.seq rawBody436_1 rawBody436_152

def rawBody436_154 : StackLang.HolProg 64 :=
.seq rawBody436_0 rawBody436_153

def raw436 : StackLang.HolProg 64 := rawBody436_154
theorem raw436_eq : StackRawCall.compTop RawInfo.rawInfo (function436 (.list [])).1 = raw436 := by
  kernel_rfl
#print axioms raw436_eq
end InitECandidate.Proofs.BackendStages
