import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function409
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody409_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody409_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody409_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody409_3 : StackLang.HolProg 64 :=
.seq rawBody409_1 rawBody409_2

def rawBody409_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody409_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1219#64)

def rawBody409_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody409_7 : StackLang.HolProg 64 :=
.seq rawBody409_5 rawBody409_6

def rawBody409_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody409_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody409_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody409_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 409 3

def rawBody409_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody409_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody409_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody409_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody409_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody409_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody409_18 : StackLang.HolProg 64 :=
.seq rawBody409_16 rawBody409_17

def rawBody409_19 : StackLang.HolProg 64 :=
.seq rawBody409_15 rawBody409_18

def rawBody409_20 : StackLang.HolProg 64 :=
.seq rawBody409_14 rawBody409_19

def rawBody409_21 : StackLang.HolProg 64 :=
.seq rawBody409_13 rawBody409_20

def rawBody409_22 : StackLang.HolProg 64 :=
.seq rawBody409_12 rawBody409_21

def rawBody409_23 : StackLang.HolProg 64 :=
.seq rawBody409_11 rawBody409_22

def rawBody409_24 : StackLang.HolProg 64 :=
.seq rawBody409_10 rawBody409_23

def rawBody409_25 : StackLang.HolProg 64 :=
.seq rawBody409_9 rawBody409_24

def rawBody409_26 : StackLang.HolProg 64 :=
.seq rawBody409_8 rawBody409_25

def rawBody409_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody409_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody409_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody409_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody409_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody409_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody409_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody409_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody409_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody409_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody409_37 : StackLang.HolProg 64 :=
.seq rawBody409_35 rawBody409_36

def rawBody409_38 : StackLang.HolProg 64 :=
.seq rawBody409_34 rawBody409_37

def rawBody409_39 : StackLang.HolProg 64 :=
.seq rawBody409_33 rawBody409_38

def rawBody409_40 : StackLang.HolProg 64 :=
.seq rawBody409_32 rawBody409_39

def rawBody409_41 : StackLang.HolProg 64 :=
.seq rawBody409_31 rawBody409_40

def rawBody409_42 : StackLang.HolProg 64 :=
.seq rawBody409_30 rawBody409_41

def rawBody409_43 : StackLang.HolProg 64 :=
.seq rawBody409_29 rawBody409_42

def rawBody409_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody409_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody409_46 : StackLang.HolProg 64 :=
.seq rawBody409_44 rawBody409_45

def rawBody409_47 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody409_48 : StackLang.HolProg 64 :=
.seq rawBody409_46 rawBody409_47

def rawBody409_49 : StackLang.HolProg 64 :=
.call (some (rawBody409_43, 0, 409, 2)) (Sum.inl 186) (some (rawBody409_48, 409, 3))

def rawBody409_50 : StackLang.HolProg 64 :=
.seq rawBody409_28 rawBody409_49

def rawBody409_51 : StackLang.HolProg 64 :=
.seq rawBody409_27 rawBody409_50

def rawBody409_52 : StackLang.HolProg 64 :=
.seq rawBody409_26 rawBody409_51

def rawBody409_53 : StackLang.HolProg 64 :=
.seq rawBody409_7 rawBody409_52

def rawBody409_54 : StackLang.HolProg 64 :=
.seq rawBody409_4 rawBody409_53

def rawBody409_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody409_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody409_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody409_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody409_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody409_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody409_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody409_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody409_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def rawBody409_64 : StackLang.HolProg 64 :=
.seq rawBody409_62 rawBody409_63

def rawBody409_65 : StackLang.HolProg 64 :=
.seq rawBody409_61 rawBody409_64

def rawBody409_66 : StackLang.HolProg 64 :=
.seq rawBody409_60 rawBody409_65

def rawBody409_67 : StackLang.HolProg 64 :=
.seq rawBody409_59 rawBody409_66

def rawBody409_68 : StackLang.HolProg 64 :=
.seq rawBody409_58 rawBody409_67

def rawBody409_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody409_70 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody409_68 rawBody409_69

def rawBody409_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody409_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody409_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody409_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody409_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def rawBody409_76 : StackLang.HolProg 64 :=
.seq rawBody409_74 rawBody409_75

def rawBody409_77 : StackLang.HolProg 64 :=
.seq rawBody409_73 rawBody409_76

def rawBody409_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody409_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1220#64)

def rawBody409_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody409_81 : StackLang.HolProg 64 :=
.seq rawBody409_79 rawBody409_80

def rawBody409_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody409_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody409_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody409_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 409 5

def rawBody409_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody409_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody409_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody409_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody409_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody409_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody409_92 : StackLang.HolProg 64 :=
.seq rawBody409_90 rawBody409_91

def rawBody409_93 : StackLang.HolProg 64 :=
.seq rawBody409_89 rawBody409_92

def rawBody409_94 : StackLang.HolProg 64 :=
.seq rawBody409_88 rawBody409_93

def rawBody409_95 : StackLang.HolProg 64 :=
.seq rawBody409_87 rawBody409_94

def rawBody409_96 : StackLang.HolProg 64 :=
.seq rawBody409_86 rawBody409_95

def rawBody409_97 : StackLang.HolProg 64 :=
.seq rawBody409_85 rawBody409_96

def rawBody409_98 : StackLang.HolProg 64 :=
.seq rawBody409_84 rawBody409_97

def rawBody409_99 : StackLang.HolProg 64 :=
.seq rawBody409_83 rawBody409_98

def rawBody409_100 : StackLang.HolProg 64 :=
.seq rawBody409_82 rawBody409_99

def rawBody409_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody409_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody409_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody409_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody409_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody409_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody409_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody409_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody409_109 : StackLang.HolProg 64 :=
.seq rawBody409_107 rawBody409_108

def rawBody409_110 : StackLang.HolProg 64 :=
.seq rawBody409_106 rawBody409_109

def rawBody409_111 : StackLang.HolProg 64 :=
.seq rawBody409_105 rawBody409_110

def rawBody409_112 : StackLang.HolProg 64 :=
.seq rawBody409_104 rawBody409_111

def rawBody409_113 : StackLang.HolProg 64 :=
.seq rawBody409_103 rawBody409_112

def rawBody409_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody409_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody409_116 : StackLang.HolProg 64 :=
.seq rawBody409_114 rawBody409_115

def rawBody409_117 : StackLang.HolProg 64 :=
.call (some (rawBody409_113, 0, 409, 4)) (Sum.inl 186) (some (rawBody409_116, 409, 5))

def rawBody409_118 : StackLang.HolProg 64 :=
.seq rawBody409_102 rawBody409_117

def rawBody409_119 : StackLang.HolProg 64 :=
.seq rawBody409_101 rawBody409_118

def rawBody409_120 : StackLang.HolProg 64 :=
.seq rawBody409_100 rawBody409_119

def rawBody409_121 : StackLang.HolProg 64 :=
.seq rawBody409_81 rawBody409_120

def rawBody409_122 : StackLang.HolProg 64 :=
.seq rawBody409_78 rawBody409_121

def rawBody409_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody409_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody409_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody409_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody409_127 : StackLang.HolProg 64 :=
.seq rawBody409_125 rawBody409_126

def rawBody409_128 : StackLang.HolProg 64 :=
.seq rawBody409_124 rawBody409_127

def rawBody409_129 : StackLang.HolProg 64 :=
.seq rawBody409_123 rawBody409_128

def rawBody409_130 : StackLang.HolProg 64 :=
.seq rawBody409_122 rawBody409_129

def rawBody409_131 : StackLang.HolProg 64 :=
.seq rawBody409_77 rawBody409_130

def rawBody409_132 : StackLang.HolProg 64 :=
.seq rawBody409_72 rawBody409_131

def rawBody409_133 : StackLang.HolProg 64 :=
.seq rawBody409_71 rawBody409_132

def rawBody409_134 : StackLang.HolProg 64 :=
.seq rawBody409_70 rawBody409_133

def rawBody409_135 : StackLang.HolProg 64 :=
.seq rawBody409_57 rawBody409_134

def rawBody409_136 : StackLang.HolProg 64 :=
.seq rawBody409_56 rawBody409_135

def rawBody409_137 : StackLang.HolProg 64 :=
.seq rawBody409_55 rawBody409_136

def rawBody409_138 : StackLang.HolProg 64 :=
.seq rawBody409_54 rawBody409_137

def rawBody409_139 : StackLang.HolProg 64 :=
.seq rawBody409_3 rawBody409_138

def rawBody409_140 : StackLang.HolProg 64 :=
.seq rawBody409_0 rawBody409_139

def raw409 : StackLang.HolProg 64 := rawBody409_140
theorem raw409_eq : StackRawCall.compTop RawInfo.rawInfo (function409 (.list [])).1 = raw409 := by
  kernel_rfl
#print axioms raw409_eq
end InitECandidate.Proofs.BackendStages
