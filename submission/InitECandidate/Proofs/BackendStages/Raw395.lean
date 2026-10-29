import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function395
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody395_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody395_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody395_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 56#64)

def rawBody395_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody395_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody395_5 : StackLang.HolProg 64 :=
.seq rawBody395_3 rawBody395_4

def rawBody395_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody395_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1173#64)

def rawBody395_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody395_9 : StackLang.HolProg 64 :=
.seq rawBody395_7 rawBody395_8

def rawBody395_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody395_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody395_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody395_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 395 3

def rawBody395_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody395_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody395_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody395_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody395_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody395_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody395_20 : StackLang.HolProg 64 :=
.seq rawBody395_18 rawBody395_19

def rawBody395_21 : StackLang.HolProg 64 :=
.seq rawBody395_17 rawBody395_20

def rawBody395_22 : StackLang.HolProg 64 :=
.seq rawBody395_16 rawBody395_21

def rawBody395_23 : StackLang.HolProg 64 :=
.seq rawBody395_15 rawBody395_22

def rawBody395_24 : StackLang.HolProg 64 :=
.seq rawBody395_14 rawBody395_23

def rawBody395_25 : StackLang.HolProg 64 :=
.seq rawBody395_13 rawBody395_24

def rawBody395_26 : StackLang.HolProg 64 :=
.seq rawBody395_12 rawBody395_25

def rawBody395_27 : StackLang.HolProg 64 :=
.seq rawBody395_11 rawBody395_26

def rawBody395_28 : StackLang.HolProg 64 :=
.seq rawBody395_10 rawBody395_27

def rawBody395_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody395_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody395_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody395_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody395_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody395_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody395_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody395_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody395_37 : StackLang.HolProg 64 :=
.seq rawBody395_35 rawBody395_36

def rawBody395_38 : StackLang.HolProg 64 :=
.seq rawBody395_34 rawBody395_37

def rawBody395_39 : StackLang.HolProg 64 :=
.seq rawBody395_33 rawBody395_38

def rawBody395_40 : StackLang.HolProg 64 :=
.seq rawBody395_32 rawBody395_39

def rawBody395_41 : StackLang.HolProg 64 :=
.seq rawBody395_31 rawBody395_40

def rawBody395_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody395_43 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody395_44 : StackLang.HolProg 64 :=
.seq rawBody395_42 rawBody395_43

def rawBody395_45 : StackLang.HolProg 64 :=
.call (some (rawBody395_41, 0, 395, 2)) (Sum.inl 68) (some (rawBody395_44, 395, 3))

def rawBody395_46 : StackLang.HolProg 64 :=
.seq rawBody395_30 rawBody395_45

def rawBody395_47 : StackLang.HolProg 64 :=
.seq rawBody395_29 rawBody395_46

def rawBody395_48 : StackLang.HolProg 64 :=
.seq rawBody395_28 rawBody395_47

def rawBody395_49 : StackLang.HolProg 64 :=
.seq rawBody395_9 rawBody395_48

def rawBody395_50 : StackLang.HolProg 64 :=
.seq rawBody395_6 rawBody395_49

def rawBody395_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody395_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody395_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 56#64)

def rawBody395_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody395_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody395_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1174#64)

def rawBody395_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody395_58 : StackLang.HolProg 64 :=
.seq rawBody395_56 rawBody395_57

def rawBody395_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody395_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody395_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody395_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 395 5

def rawBody395_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody395_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody395_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody395_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody395_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody395_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody395_69 : StackLang.HolProg 64 :=
.seq rawBody395_67 rawBody395_68

def rawBody395_70 : StackLang.HolProg 64 :=
.seq rawBody395_66 rawBody395_69

def rawBody395_71 : StackLang.HolProg 64 :=
.seq rawBody395_65 rawBody395_70

def rawBody395_72 : StackLang.HolProg 64 :=
.seq rawBody395_64 rawBody395_71

def rawBody395_73 : StackLang.HolProg 64 :=
.seq rawBody395_63 rawBody395_72

def rawBody395_74 : StackLang.HolProg 64 :=
.seq rawBody395_62 rawBody395_73

def rawBody395_75 : StackLang.HolProg 64 :=
.seq rawBody395_61 rawBody395_74

def rawBody395_76 : StackLang.HolProg 64 :=
.seq rawBody395_60 rawBody395_75

def rawBody395_77 : StackLang.HolProg 64 :=
.seq rawBody395_59 rawBody395_76

def rawBody395_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody395_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody395_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody395_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody395_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody395_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody395_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody395_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody395_86 : StackLang.HolProg 64 :=
.seq rawBody395_84 rawBody395_85

def rawBody395_87 : StackLang.HolProg 64 :=
.seq rawBody395_83 rawBody395_86

def rawBody395_88 : StackLang.HolProg 64 :=
.seq rawBody395_82 rawBody395_87

def rawBody395_89 : StackLang.HolProg 64 :=
.seq rawBody395_81 rawBody395_88

def rawBody395_90 : StackLang.HolProg 64 :=
.seq rawBody395_80 rawBody395_89

def rawBody395_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody395_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody395_93 : StackLang.HolProg 64 :=
.seq rawBody395_91 rawBody395_92

def rawBody395_94 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody395_95 : StackLang.HolProg 64 :=
.seq rawBody395_93 rawBody395_94

def rawBody395_96 : StackLang.HolProg 64 :=
.call (some (rawBody395_90, 0, 395, 4)) (Sum.inl 77) (some (rawBody395_95, 395, 5))

def rawBody395_97 : StackLang.HolProg 64 :=
.seq rawBody395_79 rawBody395_96

def rawBody395_98 : StackLang.HolProg 64 :=
.seq rawBody395_78 rawBody395_97

def rawBody395_99 : StackLang.HolProg 64 :=
.seq rawBody395_77 rawBody395_98

def rawBody395_100 : StackLang.HolProg 64 :=
.seq rawBody395_58 rawBody395_99

def rawBody395_101 : StackLang.HolProg 64 :=
.seq rawBody395_55 rawBody395_100

def rawBody395_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody395_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody395_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody395_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody395_106 : StackLang.HolProg 64 :=
.seq rawBody395_104 rawBody395_105

def rawBody395_107 : StackLang.HolProg 64 :=
.seq rawBody395_103 rawBody395_106

def rawBody395_108 : StackLang.HolProg 64 :=
.seq rawBody395_102 rawBody395_107

def rawBody395_109 : StackLang.HolProg 64 :=
.seq rawBody395_101 rawBody395_108

def rawBody395_110 : StackLang.HolProg 64 :=
.seq rawBody395_54 rawBody395_109

def rawBody395_111 : StackLang.HolProg 64 :=
.seq rawBody395_53 rawBody395_110

def rawBody395_112 : StackLang.HolProg 64 :=
.seq rawBody395_52 rawBody395_111

def rawBody395_113 : StackLang.HolProg 64 :=
.seq rawBody395_51 rawBody395_112

def rawBody395_114 : StackLang.HolProg 64 :=
.seq rawBody395_50 rawBody395_113

def rawBody395_115 : StackLang.HolProg 64 :=
.seq rawBody395_5 rawBody395_114

def rawBody395_116 : StackLang.HolProg 64 :=
.seq rawBody395_2 rawBody395_115

def rawBody395_117 : StackLang.HolProg 64 :=
.seq rawBody395_1 rawBody395_116

def rawBody395_118 : StackLang.HolProg 64 :=
.seq rawBody395_0 rawBody395_117

def raw395 : StackLang.HolProg 64 := rawBody395_118
theorem raw395_eq : StackRawCall.compTop RawInfo.rawInfo (function395 (.list [])).1 = raw395 := by
  kernel_rfl
#print axioms raw395_eq
end InitECandidate.Proofs.BackendStages
