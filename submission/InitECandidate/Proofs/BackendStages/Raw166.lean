import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function166
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody166_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody166_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody166_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody166_3 : StackLang.HolProg 64 :=
.seq rawBody166_1 rawBody166_2

def rawBody166_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody166_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 182#64)

def rawBody166_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody166_7 : StackLang.HolProg 64 :=
.seq rawBody166_5 rawBody166_6

def rawBody166_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody166_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody166_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody166_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 166 3

def rawBody166_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody166_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody166_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody166_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody166_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody166_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody166_18 : StackLang.HolProg 64 :=
.seq rawBody166_16 rawBody166_17

def rawBody166_19 : StackLang.HolProg 64 :=
.seq rawBody166_15 rawBody166_18

def rawBody166_20 : StackLang.HolProg 64 :=
.seq rawBody166_14 rawBody166_19

def rawBody166_21 : StackLang.HolProg 64 :=
.seq rawBody166_13 rawBody166_20

def rawBody166_22 : StackLang.HolProg 64 :=
.seq rawBody166_12 rawBody166_21

def rawBody166_23 : StackLang.HolProg 64 :=
.seq rawBody166_11 rawBody166_22

def rawBody166_24 : StackLang.HolProg 64 :=
.seq rawBody166_10 rawBody166_23

def rawBody166_25 : StackLang.HolProg 64 :=
.seq rawBody166_9 rawBody166_24

def rawBody166_26 : StackLang.HolProg 64 :=
.seq rawBody166_8 rawBody166_25

def rawBody166_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody166_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody166_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody166_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody166_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody166_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody166_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody166_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody166_35 : StackLang.HolProg 64 :=
.seq rawBody166_33 rawBody166_34

def rawBody166_36 : StackLang.HolProg 64 :=
.seq rawBody166_32 rawBody166_35

def rawBody166_37 : StackLang.HolProg 64 :=
.seq rawBody166_31 rawBody166_36

def rawBody166_38 : StackLang.HolProg 64 :=
.seq rawBody166_30 rawBody166_37

def rawBody166_39 : StackLang.HolProg 64 :=
.seq rawBody166_29 rawBody166_38

def rawBody166_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody166_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody166_42 : StackLang.HolProg 64 :=
.seq rawBody166_40 rawBody166_41

def rawBody166_43 : StackLang.HolProg 64 :=
.call (some (rawBody166_39, 0, 166, 2)) (Sum.inl 163) (some (rawBody166_42, 166, 3))

def rawBody166_44 : StackLang.HolProg 64 :=
.seq rawBody166_28 rawBody166_43

def rawBody166_45 : StackLang.HolProg 64 :=
.seq rawBody166_27 rawBody166_44

def rawBody166_46 : StackLang.HolProg 64 :=
.seq rawBody166_26 rawBody166_45

def rawBody166_47 : StackLang.HolProg 64 :=
.seq rawBody166_7 rawBody166_46

def rawBody166_48 : StackLang.HolProg 64 :=
.seq rawBody166_4 rawBody166_47

def rawBody166_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody166_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody166_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody166_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody166_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody166_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody166_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody166_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody166_57 : StackLang.HolProg 64 :=
.seq rawBody166_55 rawBody166_56

def rawBody166_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody166_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 183#64)

def rawBody166_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody166_61 : StackLang.HolProg 64 :=
.seq rawBody166_59 rawBody166_60

def rawBody166_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody166_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody166_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody166_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 166 5

def rawBody166_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody166_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody166_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody166_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody166_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody166_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody166_72 : StackLang.HolProg 64 :=
.seq rawBody166_70 rawBody166_71

def rawBody166_73 : StackLang.HolProg 64 :=
.seq rawBody166_69 rawBody166_72

def rawBody166_74 : StackLang.HolProg 64 :=
.seq rawBody166_68 rawBody166_73

def rawBody166_75 : StackLang.HolProg 64 :=
.seq rawBody166_67 rawBody166_74

def rawBody166_76 : StackLang.HolProg 64 :=
.seq rawBody166_66 rawBody166_75

def rawBody166_77 : StackLang.HolProg 64 :=
.seq rawBody166_65 rawBody166_76

def rawBody166_78 : StackLang.HolProg 64 :=
.seq rawBody166_64 rawBody166_77

def rawBody166_79 : StackLang.HolProg 64 :=
.seq rawBody166_63 rawBody166_78

def rawBody166_80 : StackLang.HolProg 64 :=
.seq rawBody166_62 rawBody166_79

def rawBody166_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody166_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody166_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody166_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody166_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody166_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody166_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody166_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody166_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody166_90 : StackLang.HolProg 64 :=
.seq rawBody166_88 rawBody166_89

def rawBody166_91 : StackLang.HolProg 64 :=
.seq rawBody166_87 rawBody166_90

def rawBody166_92 : StackLang.HolProg 64 :=
.seq rawBody166_86 rawBody166_91

def rawBody166_93 : StackLang.HolProg 64 :=
.seq rawBody166_85 rawBody166_92

def rawBody166_94 : StackLang.HolProg 64 :=
.seq rawBody166_84 rawBody166_93

def rawBody166_95 : StackLang.HolProg 64 :=
.seq rawBody166_83 rawBody166_94

def rawBody166_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody166_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody166_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody166_99 : StackLang.HolProg 64 :=
.seq rawBody166_97 rawBody166_98

def rawBody166_100 : StackLang.HolProg 64 :=
.seq rawBody166_96 rawBody166_99

def rawBody166_101 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody166_102 : StackLang.HolProg 64 :=
.seq rawBody166_100 rawBody166_101

def rawBody166_103 : StackLang.HolProg 64 :=
.call (some (rawBody166_95, 0, 166, 4)) (Sum.inl 165) (some (rawBody166_102, 166, 5))

def rawBody166_104 : StackLang.HolProg 64 :=
.seq rawBody166_82 rawBody166_103

def rawBody166_105 : StackLang.HolProg 64 :=
.seq rawBody166_81 rawBody166_104

def rawBody166_106 : StackLang.HolProg 64 :=
.seq rawBody166_80 rawBody166_105

def rawBody166_107 : StackLang.HolProg 64 :=
.seq rawBody166_61 rawBody166_106

def rawBody166_108 : StackLang.HolProg 64 :=
.seq rawBody166_58 rawBody166_107

def rawBody166_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody166_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody166_111 : StackLang.HolProg 64 :=
.seq rawBody166_109 rawBody166_110

def rawBody166_112 : StackLang.HolProg 64 :=
.seq rawBody166_108 rawBody166_111

def rawBody166_113 : StackLang.HolProg 64 :=
.seq rawBody166_57 rawBody166_112

def rawBody166_114 : StackLang.HolProg 64 :=
.seq rawBody166_54 rawBody166_113

def rawBody166_115 : StackLang.HolProg 64 :=
.seq rawBody166_53 rawBody166_114

def rawBody166_116 : StackLang.HolProg 64 :=
.seq rawBody166_52 rawBody166_115

def rawBody166_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody166_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody166_119 : StackLang.HolProg 64 :=
.seq rawBody166_117 rawBody166_118

def rawBody166_120 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody166_116 rawBody166_119

def rawBody166_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody166_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody166_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody166_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody166_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody166_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody166_127 : StackLang.HolProg 64 :=
.seq rawBody166_125 rawBody166_126

def rawBody166_128 : StackLang.HolProg 64 :=
.seq rawBody166_124 rawBody166_127

def rawBody166_129 : StackLang.HolProg 64 :=
.seq rawBody166_123 rawBody166_128

def rawBody166_130 : StackLang.HolProg 64 :=
.seq rawBody166_122 rawBody166_129

def rawBody166_131 : StackLang.HolProg 64 :=
.seq rawBody166_121 rawBody166_130

def rawBody166_132 : StackLang.HolProg 64 :=
.seq rawBody166_120 rawBody166_131

def rawBody166_133 : StackLang.HolProg 64 :=
.seq rawBody166_51 rawBody166_132

def rawBody166_134 : StackLang.HolProg 64 :=
.seq rawBody166_50 rawBody166_133

def rawBody166_135 : StackLang.HolProg 64 :=
.seq rawBody166_49 rawBody166_134

def rawBody166_136 : StackLang.HolProg 64 :=
.seq rawBody166_48 rawBody166_135

def rawBody166_137 : StackLang.HolProg 64 :=
.seq rawBody166_3 rawBody166_136

def rawBody166_138 : StackLang.HolProg 64 :=
.seq rawBody166_0 rawBody166_137

def raw166 : StackLang.HolProg 64 := rawBody166_138
theorem raw166_eq : StackRawCall.compTop RawInfo.rawInfo (function166 (.list [])).1 = raw166 := by
  kernel_rfl
#print axioms raw166_eq
end InitECandidate.Proofs.BackendStages
