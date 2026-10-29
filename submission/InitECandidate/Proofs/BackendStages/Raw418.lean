import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function418
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody418_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody418_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody418_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody418_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1245#64)

def rawBody418_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody418_5 : StackLang.HolProg 64 :=
.seq rawBody418_3 rawBody418_4

def rawBody418_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody418_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody418_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody418_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 418 3

def rawBody418_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody418_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody418_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody418_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody418_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody418_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody418_16 : StackLang.HolProg 64 :=
.seq rawBody418_14 rawBody418_15

def rawBody418_17 : StackLang.HolProg 64 :=
.seq rawBody418_13 rawBody418_16

def rawBody418_18 : StackLang.HolProg 64 :=
.seq rawBody418_12 rawBody418_17

def rawBody418_19 : StackLang.HolProg 64 :=
.seq rawBody418_11 rawBody418_18

def rawBody418_20 : StackLang.HolProg 64 :=
.seq rawBody418_10 rawBody418_19

def rawBody418_21 : StackLang.HolProg 64 :=
.seq rawBody418_9 rawBody418_20

def rawBody418_22 : StackLang.HolProg 64 :=
.seq rawBody418_8 rawBody418_21

def rawBody418_23 : StackLang.HolProg 64 :=
.seq rawBody418_7 rawBody418_22

def rawBody418_24 : StackLang.HolProg 64 :=
.seq rawBody418_6 rawBody418_23

def rawBody418_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody418_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody418_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody418_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody418_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody418_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody418_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody418_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody418_33 : StackLang.HolProg 64 :=
.seq rawBody418_31 rawBody418_32

def rawBody418_34 : StackLang.HolProg 64 :=
.seq rawBody418_30 rawBody418_33

def rawBody418_35 : StackLang.HolProg 64 :=
.seq rawBody418_29 rawBody418_34

def rawBody418_36 : StackLang.HolProg 64 :=
.seq rawBody418_28 rawBody418_35

def rawBody418_37 : StackLang.HolProg 64 :=
.seq rawBody418_27 rawBody418_36

def rawBody418_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody418_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody418_40 : StackLang.HolProg 64 :=
.seq rawBody418_38 rawBody418_39

def rawBody418_41 : StackLang.HolProg 64 :=
.call (some (rawBody418_37, 0, 418, 2)) (Sum.inl 406) (some (rawBody418_40, 418, 3))

def rawBody418_42 : StackLang.HolProg 64 :=
.seq rawBody418_26 rawBody418_41

def rawBody418_43 : StackLang.HolProg 64 :=
.seq rawBody418_25 rawBody418_42

def rawBody418_44 : StackLang.HolProg 64 :=
.seq rawBody418_24 rawBody418_43

def rawBody418_45 : StackLang.HolProg 64 :=
.seq rawBody418_5 rawBody418_44

def rawBody418_46 : StackLang.HolProg 64 :=
.seq rawBody418_2 rawBody418_45

def rawBody418_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody418_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody418_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody418_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody418_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody418_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody418_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody418_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody418_55 : StackLang.HolProg 64 :=
.seq rawBody418_53 rawBody418_54

def rawBody418_56 : StackLang.HolProg 64 :=
.seq rawBody418_52 rawBody418_55

def rawBody418_57 : StackLang.HolProg 64 :=
.seq rawBody418_51 rawBody418_56

def rawBody418_58 : StackLang.HolProg 64 :=
.seq rawBody418_50 rawBody418_57

def rawBody418_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody418_60 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody418_58 rawBody418_59

def rawBody418_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody418_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody418_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody418_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody418_65 : StackLang.HolProg 64 :=
.seq rawBody418_63 rawBody418_64

def rawBody418_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody418_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1246#64)

def rawBody418_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody418_69 : StackLang.HolProg 64 :=
.seq rawBody418_67 rawBody418_68

def rawBody418_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody418_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody418_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody418_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 418 5

def rawBody418_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody418_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody418_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody418_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody418_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody418_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody418_80 : StackLang.HolProg 64 :=
.seq rawBody418_78 rawBody418_79

def rawBody418_81 : StackLang.HolProg 64 :=
.seq rawBody418_77 rawBody418_80

def rawBody418_82 : StackLang.HolProg 64 :=
.seq rawBody418_76 rawBody418_81

def rawBody418_83 : StackLang.HolProg 64 :=
.seq rawBody418_75 rawBody418_82

def rawBody418_84 : StackLang.HolProg 64 :=
.seq rawBody418_74 rawBody418_83

def rawBody418_85 : StackLang.HolProg 64 :=
.seq rawBody418_73 rawBody418_84

def rawBody418_86 : StackLang.HolProg 64 :=
.seq rawBody418_72 rawBody418_85

def rawBody418_87 : StackLang.HolProg 64 :=
.seq rawBody418_71 rawBody418_86

def rawBody418_88 : StackLang.HolProg 64 :=
.seq rawBody418_70 rawBody418_87

def rawBody418_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody418_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody418_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody418_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody418_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody418_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody418_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody418_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody418_97 : StackLang.HolProg 64 :=
.seq rawBody418_95 rawBody418_96

def rawBody418_98 : StackLang.HolProg 64 :=
.seq rawBody418_94 rawBody418_97

def rawBody418_99 : StackLang.HolProg 64 :=
.seq rawBody418_93 rawBody418_98

def rawBody418_100 : StackLang.HolProg 64 :=
.seq rawBody418_92 rawBody418_99

def rawBody418_101 : StackLang.HolProg 64 :=
.seq rawBody418_91 rawBody418_100

def rawBody418_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody418_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody418_104 : StackLang.HolProg 64 :=
.seq rawBody418_102 rawBody418_103

def rawBody418_105 : StackLang.HolProg 64 :=
.call (some (rawBody418_101, 0, 418, 4)) (Sum.inl 416) (some (rawBody418_104, 418, 5))

def rawBody418_106 : StackLang.HolProg 64 :=
.seq rawBody418_90 rawBody418_105

def rawBody418_107 : StackLang.HolProg 64 :=
.seq rawBody418_89 rawBody418_106

def rawBody418_108 : StackLang.HolProg 64 :=
.seq rawBody418_88 rawBody418_107

def rawBody418_109 : StackLang.HolProg 64 :=
.seq rawBody418_69 rawBody418_108

def rawBody418_110 : StackLang.HolProg 64 :=
.seq rawBody418_66 rawBody418_109

def rawBody418_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody418_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody418_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody418_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody418_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody418_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody418_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody418_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody418_119 : StackLang.HolProg 64 :=
.seq rawBody418_117 rawBody418_118

def rawBody418_120 : StackLang.HolProg 64 :=
.seq rawBody418_116 rawBody418_119

def rawBody418_121 : StackLang.HolProg 64 :=
.seq rawBody418_115 rawBody418_120

def rawBody418_122 : StackLang.HolProg 64 :=
.seq rawBody418_114 rawBody418_121

def rawBody418_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody418_124 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody418_122 rawBody418_123

def rawBody418_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody418_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody418_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody418_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody418_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody418_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody418_131 : StackLang.HolProg 64 :=
.seq rawBody418_129 rawBody418_130

def rawBody418_132 : StackLang.HolProg 64 :=
.seq rawBody418_128 rawBody418_131

def rawBody418_133 : StackLang.HolProg 64 :=
.seq rawBody418_127 rawBody418_132

def rawBody418_134 : StackLang.HolProg 64 :=
.seq rawBody418_126 rawBody418_133

def rawBody418_135 : StackLang.HolProg 64 :=
.seq rawBody418_125 rawBody418_134

def rawBody418_136 : StackLang.HolProg 64 :=
.seq rawBody418_124 rawBody418_135

def rawBody418_137 : StackLang.HolProg 64 :=
.seq rawBody418_113 rawBody418_136

def rawBody418_138 : StackLang.HolProg 64 :=
.seq rawBody418_112 rawBody418_137

def rawBody418_139 : StackLang.HolProg 64 :=
.seq rawBody418_111 rawBody418_138

def rawBody418_140 : StackLang.HolProg 64 :=
.seq rawBody418_110 rawBody418_139

def rawBody418_141 : StackLang.HolProg 64 :=
.seq rawBody418_65 rawBody418_140

def rawBody418_142 : StackLang.HolProg 64 :=
.seq rawBody418_62 rawBody418_141

def rawBody418_143 : StackLang.HolProg 64 :=
.seq rawBody418_61 rawBody418_142

def rawBody418_144 : StackLang.HolProg 64 :=
.seq rawBody418_60 rawBody418_143

def rawBody418_145 : StackLang.HolProg 64 :=
.seq rawBody418_49 rawBody418_144

def rawBody418_146 : StackLang.HolProg 64 :=
.seq rawBody418_48 rawBody418_145

def rawBody418_147 : StackLang.HolProg 64 :=
.seq rawBody418_47 rawBody418_146

def rawBody418_148 : StackLang.HolProg 64 :=
.seq rawBody418_46 rawBody418_147

def rawBody418_149 : StackLang.HolProg 64 :=
.seq rawBody418_1 rawBody418_148

def rawBody418_150 : StackLang.HolProg 64 :=
.seq rawBody418_0 rawBody418_149

def raw418 : StackLang.HolProg 64 := rawBody418_150
theorem raw418_eq : StackRawCall.compTop RawInfo.rawInfo (function418 (.list [])).1 = raw418 := by
  kernel_rfl
#print axioms raw418_eq
end InitECandidate.Proofs.BackendStages
