import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function303
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody303_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody303_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody303_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def rawBody303_3 : StackLang.HolProg 64 :=
.seq rawBody303_1 rawBody303_2

def rawBody303_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody303_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 833#64)

def rawBody303_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody303_7 : StackLang.HolProg 64 :=
.seq rawBody303_5 rawBody303_6

def rawBody303_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody303_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody303_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody303_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 303 5

def rawBody303_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody303_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody303_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody303_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody303_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody303_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody303_18 : StackLang.HolProg 64 :=
.seq rawBody303_16 rawBody303_17

def rawBody303_19 : StackLang.HolProg 64 :=
.seq rawBody303_15 rawBody303_18

def rawBody303_20 : StackLang.HolProg 64 :=
.seq rawBody303_14 rawBody303_19

def rawBody303_21 : StackLang.HolProg 64 :=
.seq rawBody303_13 rawBody303_20

def rawBody303_22 : StackLang.HolProg 64 :=
.seq rawBody303_12 rawBody303_21

def rawBody303_23 : StackLang.HolProg 64 :=
.seq rawBody303_11 rawBody303_22

def rawBody303_24 : StackLang.HolProg 64 :=
.seq rawBody303_10 rawBody303_23

def rawBody303_25 : StackLang.HolProg 64 :=
.seq rawBody303_9 rawBody303_24

def rawBody303_26 : StackLang.HolProg 64 :=
.seq rawBody303_8 rawBody303_25

def rawBody303_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody303_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody303_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody303_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody303_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody303_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody303_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody303_34 : StackLang.HolProg 64 :=
.seq rawBody303_32 rawBody303_33

def rawBody303_35 : StackLang.HolProg 64 :=
.seq rawBody303_31 rawBody303_34

def rawBody303_36 : StackLang.HolProg 64 :=
.seq rawBody303_30 rawBody303_35

def rawBody303_37 : StackLang.HolProg 64 :=
.seq rawBody303_29 rawBody303_36

def rawBody303_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody303_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody303_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody303_41 : StackLang.HolProg 64 :=
.seq rawBody303_39 rawBody303_40

def rawBody303_42 : StackLang.HolProg 64 :=
.seq rawBody303_38 rawBody303_41

def rawBody303_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody303_44 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody303_45 : StackLang.HolProg 64 :=
.seq rawBody303_43 rawBody303_44

def rawBody303_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody303_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def rawBody303_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody303_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody303_50 : StackLang.HolProg 64 :=
.seq rawBody303_48 rawBody303_49

def rawBody303_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody303_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 834#64)

def rawBody303_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody303_54 : StackLang.HolProg 64 :=
.seq rawBody303_52 rawBody303_53

def rawBody303_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody303_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody303_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody303_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 303 4

def rawBody303_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody303_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody303_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody303_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody303_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody303_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody303_65 : StackLang.HolProg 64 :=
.seq rawBody303_63 rawBody303_64

def rawBody303_66 : StackLang.HolProg 64 :=
.seq rawBody303_62 rawBody303_65

def rawBody303_67 : StackLang.HolProg 64 :=
.seq rawBody303_61 rawBody303_66

def rawBody303_68 : StackLang.HolProg 64 :=
.seq rawBody303_60 rawBody303_67

def rawBody303_69 : StackLang.HolProg 64 :=
.seq rawBody303_59 rawBody303_68

def rawBody303_70 : StackLang.HolProg 64 :=
.seq rawBody303_58 rawBody303_69

def rawBody303_71 : StackLang.HolProg 64 :=
.seq rawBody303_57 rawBody303_70

def rawBody303_72 : StackLang.HolProg 64 :=
.seq rawBody303_56 rawBody303_71

def rawBody303_73 : StackLang.HolProg 64 :=
.seq rawBody303_55 rawBody303_72

def rawBody303_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody303_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody303_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody303_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody303_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody303_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody303_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody303_81 : StackLang.HolProg 64 :=
.seq rawBody303_79 rawBody303_80

def rawBody303_82 : StackLang.HolProg 64 :=
.seq rawBody303_78 rawBody303_81

def rawBody303_83 : StackLang.HolProg 64 :=
.seq rawBody303_77 rawBody303_82

def rawBody303_84 : StackLang.HolProg 64 :=
.seq rawBody303_76 rawBody303_83

def rawBody303_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody303_86 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody303_87 : StackLang.HolProg 64 :=
.seq rawBody303_85 rawBody303_86

def rawBody303_88 : StackLang.HolProg 64 :=
.call (some (rawBody303_84, 0, 303, 3)) (Sum.inl 76) (some (rawBody303_87, 303, 4))

def rawBody303_89 : StackLang.HolProg 64 :=
.seq rawBody303_75 rawBody303_88

def rawBody303_90 : StackLang.HolProg 64 :=
.seq rawBody303_74 rawBody303_89

def rawBody303_91 : StackLang.HolProg 64 :=
.seq rawBody303_73 rawBody303_90

def rawBody303_92 : StackLang.HolProg 64 :=
.seq rawBody303_54 rawBody303_91

def rawBody303_93 : StackLang.HolProg 64 :=
.seq rawBody303_51 rawBody303_92

def rawBody303_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody303_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody303_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 2

def rawBody303_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def rawBody303_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody303_99 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody303_100 : StackLang.HolProg 64 :=
.seq rawBody303_98 rawBody303_99

def rawBody303_101 : StackLang.HolProg 64 :=
.seq rawBody303_97 rawBody303_100

def rawBody303_102 : StackLang.HolProg 64 :=
.seq rawBody303_96 rawBody303_101

def rawBody303_103 : StackLang.HolProg 64 :=
.seq rawBody303_95 rawBody303_102

def rawBody303_104 : StackLang.HolProg 64 :=
.seq rawBody303_94 rawBody303_103

def rawBody303_105 : StackLang.HolProg 64 :=
.seq rawBody303_93 rawBody303_104

def rawBody303_106 : StackLang.HolProg 64 :=
.seq rawBody303_50 rawBody303_105

def rawBody303_107 : StackLang.HolProg 64 :=
.seq rawBody303_47 rawBody303_106

def rawBody303_108 : StackLang.HolProg 64 :=
.seq rawBody303_46 rawBody303_107

def rawBody303_109 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64) rawBody303_45 rawBody303_108

def rawBody303_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody303_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody303_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody303_113 : StackLang.HolProg 64 :=
.seq rawBody303_111 rawBody303_112

def rawBody303_114 : StackLang.HolProg 64 :=
.seq rawBody303_110 rawBody303_113

def rawBody303_115 : StackLang.HolProg 64 :=
.seq rawBody303_109 rawBody303_114

def rawBody303_116 : StackLang.HolProg 64 :=
.seq rawBody303_42 rawBody303_115

def rawBody303_117 : StackLang.HolProg 64 :=
.call (some (rawBody303_37, 0, 303, 2)) (Sum.inl 302) (some (rawBody303_116, 303, 5))

def rawBody303_118 : StackLang.HolProg 64 :=
.seq rawBody303_28 rawBody303_117

def rawBody303_119 : StackLang.HolProg 64 :=
.seq rawBody303_27 rawBody303_118

def rawBody303_120 : StackLang.HolProg 64 :=
.seq rawBody303_26 rawBody303_119

def rawBody303_121 : StackLang.HolProg 64 :=
.seq rawBody303_7 rawBody303_120

def rawBody303_122 : StackLang.HolProg 64 :=
.seq rawBody303_4 rawBody303_121

def rawBody303_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody303_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody303_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody303_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody303_127 : StackLang.HolProg 64 :=
.seq rawBody303_125 rawBody303_126

def rawBody303_128 : StackLang.HolProg 64 :=
.seq rawBody303_124 rawBody303_127

def rawBody303_129 : StackLang.HolProg 64 :=
.seq rawBody303_123 rawBody303_128

def rawBody303_130 : StackLang.HolProg 64 :=
.seq rawBody303_122 rawBody303_129

def rawBody303_131 : StackLang.HolProg 64 :=
.seq rawBody303_3 rawBody303_130

def rawBody303_132 : StackLang.HolProg 64 :=
.seq rawBody303_0 rawBody303_131

def raw303 : StackLang.HolProg 64 := rawBody303_132
theorem raw303_eq : StackRawCall.compTop RawInfo.rawInfo (function303 (.list [])).1 = raw303 := by
  kernel_rfl
#print axioms raw303_eq
end InitECandidate.Proofs.BackendStages
