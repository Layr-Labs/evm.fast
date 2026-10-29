import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function442
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody442_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody442_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody442_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody442_3 : StackLang.HolProg 64 :=
.seq rawBody442_1 rawBody442_2

def rawBody442_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody442_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1337#64)

def rawBody442_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody442_7 : StackLang.HolProg 64 :=
.seq rawBody442_5 rawBody442_6

def rawBody442_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody442_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody442_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody442_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 442 3

def rawBody442_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody442_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody442_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody442_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody442_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody442_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody442_18 : StackLang.HolProg 64 :=
.seq rawBody442_16 rawBody442_17

def rawBody442_19 : StackLang.HolProg 64 :=
.seq rawBody442_15 rawBody442_18

def rawBody442_20 : StackLang.HolProg 64 :=
.seq rawBody442_14 rawBody442_19

def rawBody442_21 : StackLang.HolProg 64 :=
.seq rawBody442_13 rawBody442_20

def rawBody442_22 : StackLang.HolProg 64 :=
.seq rawBody442_12 rawBody442_21

def rawBody442_23 : StackLang.HolProg 64 :=
.seq rawBody442_11 rawBody442_22

def rawBody442_24 : StackLang.HolProg 64 :=
.seq rawBody442_10 rawBody442_23

def rawBody442_25 : StackLang.HolProg 64 :=
.seq rawBody442_9 rawBody442_24

def rawBody442_26 : StackLang.HolProg 64 :=
.seq rawBody442_8 rawBody442_25

def rawBody442_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody442_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody442_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody442_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody442_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody442_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody442_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody442_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody442_35 : StackLang.HolProg 64 :=
.seq rawBody442_33 rawBody442_34

def rawBody442_36 : StackLang.HolProg 64 :=
.seq rawBody442_32 rawBody442_35

def rawBody442_37 : StackLang.HolProg 64 :=
.seq rawBody442_31 rawBody442_36

def rawBody442_38 : StackLang.HolProg 64 :=
.seq rawBody442_30 rawBody442_37

def rawBody442_39 : StackLang.HolProg 64 :=
.seq rawBody442_29 rawBody442_38

def rawBody442_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody442_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody442_42 : StackLang.HolProg 64 :=
.seq rawBody442_40 rawBody442_41

def rawBody442_43 : StackLang.HolProg 64 :=
.call (some (rawBody442_39, 0, 442, 2)) (Sum.inl 439) (some (rawBody442_42, 442, 3))

def rawBody442_44 : StackLang.HolProg 64 :=
.seq rawBody442_28 rawBody442_43

def rawBody442_45 : StackLang.HolProg 64 :=
.seq rawBody442_27 rawBody442_44

def rawBody442_46 : StackLang.HolProg 64 :=
.seq rawBody442_26 rawBody442_45

def rawBody442_47 : StackLang.HolProg 64 :=
.seq rawBody442_7 rawBody442_46

def rawBody442_48 : StackLang.HolProg 64 :=
.seq rawBody442_4 rawBody442_47

def rawBody442_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody442_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody442_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody442_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody442_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def rawBody442_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody442_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody442_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1338#64)

def rawBody442_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody442_58 : StackLang.HolProg 64 :=
.seq rawBody442_56 rawBody442_57

def rawBody442_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody442_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody442_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody442_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 442 5

def rawBody442_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody442_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody442_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody442_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody442_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody442_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody442_69 : StackLang.HolProg 64 :=
.seq rawBody442_67 rawBody442_68

def rawBody442_70 : StackLang.HolProg 64 :=
.seq rawBody442_66 rawBody442_69

def rawBody442_71 : StackLang.HolProg 64 :=
.seq rawBody442_65 rawBody442_70

def rawBody442_72 : StackLang.HolProg 64 :=
.seq rawBody442_64 rawBody442_71

def rawBody442_73 : StackLang.HolProg 64 :=
.seq rawBody442_63 rawBody442_72

def rawBody442_74 : StackLang.HolProg 64 :=
.seq rawBody442_62 rawBody442_73

def rawBody442_75 : StackLang.HolProg 64 :=
.seq rawBody442_61 rawBody442_74

def rawBody442_76 : StackLang.HolProg 64 :=
.seq rawBody442_60 rawBody442_75

def rawBody442_77 : StackLang.HolProg 64 :=
.seq rawBody442_59 rawBody442_76

def rawBody442_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody442_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody442_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody442_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody442_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody442_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody442_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody442_85 : StackLang.HolProg 64 :=
.seq rawBody442_83 rawBody442_84

def rawBody442_86 : StackLang.HolProg 64 :=
.seq rawBody442_82 rawBody442_85

def rawBody442_87 : StackLang.HolProg 64 :=
.seq rawBody442_81 rawBody442_86

def rawBody442_88 : StackLang.HolProg 64 :=
.seq rawBody442_80 rawBody442_87

def rawBody442_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody442_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody442_91 : StackLang.HolProg 64 :=
.seq rawBody442_89 rawBody442_90

def rawBody442_92 : StackLang.HolProg 64 :=
.call (some (rawBody442_88, 0, 442, 4)) (Sum.inl 192) (some (rawBody442_91, 442, 5))

def rawBody442_93 : StackLang.HolProg 64 :=
.seq rawBody442_79 rawBody442_92

def rawBody442_94 : StackLang.HolProg 64 :=
.seq rawBody442_78 rawBody442_93

def rawBody442_95 : StackLang.HolProg 64 :=
.seq rawBody442_77 rawBody442_94

def rawBody442_96 : StackLang.HolProg 64 :=
.seq rawBody442_58 rawBody442_95

def rawBody442_97 : StackLang.HolProg 64 :=
.seq rawBody442_55 rawBody442_96

def rawBody442_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody442_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody442_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody442_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody442_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody442_103 : StackLang.HolProg 64 :=
.seq rawBody442_101 rawBody442_102

def rawBody442_104 : StackLang.HolProg 64 :=
.seq rawBody442_100 rawBody442_103

def rawBody442_105 : StackLang.HolProg 64 :=
.seq rawBody442_99 rawBody442_104

def rawBody442_106 : StackLang.HolProg 64 :=
.seq rawBody442_98 rawBody442_105

def rawBody442_107 : StackLang.HolProg 64 :=
.seq rawBody442_97 rawBody442_106

def rawBody442_108 : StackLang.HolProg 64 :=
.seq rawBody442_54 rawBody442_107

def rawBody442_109 : StackLang.HolProg 64 :=
.seq rawBody442_53 rawBody442_108

def rawBody442_110 : StackLang.HolProg 64 :=
.seq rawBody442_52 rawBody442_109

def rawBody442_111 : StackLang.HolProg 64 :=
.seq rawBody442_51 rawBody442_110

def rawBody442_112 : StackLang.HolProg 64 :=
.seq rawBody442_50 rawBody442_111

def rawBody442_113 : StackLang.HolProg 64 :=
.seq rawBody442_49 rawBody442_112

def rawBody442_114 : StackLang.HolProg 64 :=
.seq rawBody442_48 rawBody442_113

def rawBody442_115 : StackLang.HolProg 64 :=
.seq rawBody442_3 rawBody442_114

def rawBody442_116 : StackLang.HolProg 64 :=
.seq rawBody442_0 rawBody442_115

def raw442 : StackLang.HolProg 64 := rawBody442_116
theorem raw442_eq : StackRawCall.compTop RawInfo.rawInfo (function442 (.list [])).1 = raw442 := by
  kernel_rfl
#print axioms raw442_eq
end InitECandidate.Proofs.BackendStages
