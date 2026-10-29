import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function258
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody258_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody258_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody258_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody258_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody258_4 : StackLang.HolProg 64 :=
.seq rawBody258_2 rawBody258_3

def rawBody258_5 : StackLang.HolProg 64 :=
.seq rawBody258_1 rawBody258_4

def rawBody258_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody258_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 558#64)

def rawBody258_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody258_9 : StackLang.HolProg 64 :=
.seq rawBody258_7 rawBody258_8

def rawBody258_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody258_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody258_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody258_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 258 3

def rawBody258_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody258_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody258_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody258_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody258_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody258_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody258_20 : StackLang.HolProg 64 :=
.seq rawBody258_18 rawBody258_19

def rawBody258_21 : StackLang.HolProg 64 :=
.seq rawBody258_17 rawBody258_20

def rawBody258_22 : StackLang.HolProg 64 :=
.seq rawBody258_16 rawBody258_21

def rawBody258_23 : StackLang.HolProg 64 :=
.seq rawBody258_15 rawBody258_22

def rawBody258_24 : StackLang.HolProg 64 :=
.seq rawBody258_14 rawBody258_23

def rawBody258_25 : StackLang.HolProg 64 :=
.seq rawBody258_13 rawBody258_24

def rawBody258_26 : StackLang.HolProg 64 :=
.seq rawBody258_12 rawBody258_25

def rawBody258_27 : StackLang.HolProg 64 :=
.seq rawBody258_11 rawBody258_26

def rawBody258_28 : StackLang.HolProg 64 :=
.seq rawBody258_10 rawBody258_27

def rawBody258_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody258_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody258_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody258_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody258_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody258_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody258_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody258_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody258_37 : StackLang.HolProg 64 :=
.seq rawBody258_35 rawBody258_36

def rawBody258_38 : StackLang.HolProg 64 :=
.seq rawBody258_34 rawBody258_37

def rawBody258_39 : StackLang.HolProg 64 :=
.seq rawBody258_33 rawBody258_38

def rawBody258_40 : StackLang.HolProg 64 :=
.seq rawBody258_32 rawBody258_39

def rawBody258_41 : StackLang.HolProg 64 :=
.seq rawBody258_31 rawBody258_40

def rawBody258_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody258_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody258_44 : StackLang.HolProg 64 :=
.seq rawBody258_42 rawBody258_43

def rawBody258_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody258_46 : StackLang.HolProg 64 :=
.seq rawBody258_44 rawBody258_45

def rawBody258_47 : StackLang.HolProg 64 :=
.call (some (rawBody258_41, 0, 258, 2)) (Sum.inl 235) (some (rawBody258_46, 258, 3))

def rawBody258_48 : StackLang.HolProg 64 :=
.seq rawBody258_30 rawBody258_47

def rawBody258_49 : StackLang.HolProg 64 :=
.seq rawBody258_29 rawBody258_48

def rawBody258_50 : StackLang.HolProg 64 :=
.seq rawBody258_28 rawBody258_49

def rawBody258_51 : StackLang.HolProg 64 :=
.seq rawBody258_9 rawBody258_50

def rawBody258_52 : StackLang.HolProg 64 :=
.seq rawBody258_6 rawBody258_51

def rawBody258_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody258_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody258_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody258_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 559#64)

def rawBody258_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody258_58 : StackLang.HolProg 64 :=
.seq rawBody258_56 rawBody258_57

def rawBody258_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody258_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody258_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody258_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 258 5

def rawBody258_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody258_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody258_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody258_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody258_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody258_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody258_69 : StackLang.HolProg 64 :=
.seq rawBody258_67 rawBody258_68

def rawBody258_70 : StackLang.HolProg 64 :=
.seq rawBody258_66 rawBody258_69

def rawBody258_71 : StackLang.HolProg 64 :=
.seq rawBody258_65 rawBody258_70

def rawBody258_72 : StackLang.HolProg 64 :=
.seq rawBody258_64 rawBody258_71

def rawBody258_73 : StackLang.HolProg 64 :=
.seq rawBody258_63 rawBody258_72

def rawBody258_74 : StackLang.HolProg 64 :=
.seq rawBody258_62 rawBody258_73

def rawBody258_75 : StackLang.HolProg 64 :=
.seq rawBody258_61 rawBody258_74

def rawBody258_76 : StackLang.HolProg 64 :=
.seq rawBody258_60 rawBody258_75

def rawBody258_77 : StackLang.HolProg 64 :=
.seq rawBody258_59 rawBody258_76

def rawBody258_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody258_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody258_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody258_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody258_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody258_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody258_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody258_85 : StackLang.HolProg 64 :=
.seq rawBody258_83 rawBody258_84

def rawBody258_86 : StackLang.HolProg 64 :=
.seq rawBody258_82 rawBody258_85

def rawBody258_87 : StackLang.HolProg 64 :=
.seq rawBody258_81 rawBody258_86

def rawBody258_88 : StackLang.HolProg 64 :=
.seq rawBody258_80 rawBody258_87

def rawBody258_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody258_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody258_91 : StackLang.HolProg 64 :=
.seq rawBody258_89 rawBody258_90

def rawBody258_92 : StackLang.HolProg 64 :=
.call (some (rawBody258_88, 0, 258, 4)) (Sum.inl 236) (some (rawBody258_91, 258, 5))

def rawBody258_93 : StackLang.HolProg 64 :=
.seq rawBody258_79 rawBody258_92

def rawBody258_94 : StackLang.HolProg 64 :=
.seq rawBody258_78 rawBody258_93

def rawBody258_95 : StackLang.HolProg 64 :=
.seq rawBody258_77 rawBody258_94

def rawBody258_96 : StackLang.HolProg 64 :=
.seq rawBody258_58 rawBody258_95

def rawBody258_97 : StackLang.HolProg 64 :=
.seq rawBody258_55 rawBody258_96

def rawBody258_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody258_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody258_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody258_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody258_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody258_103 : StackLang.HolProg 64 :=
.seq rawBody258_101 rawBody258_102

def rawBody258_104 : StackLang.HolProg 64 :=
.seq rawBody258_100 rawBody258_103

def rawBody258_105 : StackLang.HolProg 64 :=
.seq rawBody258_99 rawBody258_104

def rawBody258_106 : StackLang.HolProg 64 :=
.seq rawBody258_98 rawBody258_105

def rawBody258_107 : StackLang.HolProg 64 :=
.seq rawBody258_97 rawBody258_106

def rawBody258_108 : StackLang.HolProg 64 :=
.seq rawBody258_54 rawBody258_107

def rawBody258_109 : StackLang.HolProg 64 :=
.seq rawBody258_53 rawBody258_108

def rawBody258_110 : StackLang.HolProg 64 :=
.seq rawBody258_52 rawBody258_109

def rawBody258_111 : StackLang.HolProg 64 :=
.seq rawBody258_5 rawBody258_110

def rawBody258_112 : StackLang.HolProg 64 :=
.seq rawBody258_0 rawBody258_111

def raw258 : StackLang.HolProg 64 := rawBody258_112
theorem raw258_eq : StackRawCall.compTop RawInfo.rawInfo (function258 (.list [])).1 = raw258 := by
  kernel_rfl
#print axioms raw258_eq
end InitECandidate.Proofs.BackendStages
