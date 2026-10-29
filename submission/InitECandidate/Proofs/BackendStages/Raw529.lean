import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function529
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody529_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody529_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody529_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody529_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody529_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody529_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1733#64)

def rawBody529_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody529_7 : StackLang.HolProg 64 :=
.seq rawBody529_5 rawBody529_6

def rawBody529_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody529_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody529_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody529_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 529 3

def rawBody529_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody529_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody529_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody529_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody529_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody529_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody529_18 : StackLang.HolProg 64 :=
.seq rawBody529_16 rawBody529_17

def rawBody529_19 : StackLang.HolProg 64 :=
.seq rawBody529_15 rawBody529_18

def rawBody529_20 : StackLang.HolProg 64 :=
.seq rawBody529_14 rawBody529_19

def rawBody529_21 : StackLang.HolProg 64 :=
.seq rawBody529_13 rawBody529_20

def rawBody529_22 : StackLang.HolProg 64 :=
.seq rawBody529_12 rawBody529_21

def rawBody529_23 : StackLang.HolProg 64 :=
.seq rawBody529_11 rawBody529_22

def rawBody529_24 : StackLang.HolProg 64 :=
.seq rawBody529_10 rawBody529_23

def rawBody529_25 : StackLang.HolProg 64 :=
.seq rawBody529_9 rawBody529_24

def rawBody529_26 : StackLang.HolProg 64 :=
.seq rawBody529_8 rawBody529_25

def rawBody529_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody529_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody529_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody529_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody529_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody529_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody529_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody529_34 : StackLang.HolProg 64 :=
.seq rawBody529_32 rawBody529_33

def rawBody529_35 : StackLang.HolProg 64 :=
.seq rawBody529_31 rawBody529_34

def rawBody529_36 : StackLang.HolProg 64 :=
.seq rawBody529_30 rawBody529_35

def rawBody529_37 : StackLang.HolProg 64 :=
.seq rawBody529_29 rawBody529_36

def rawBody529_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody529_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody529_40 : StackLang.HolProg 64 :=
.seq rawBody529_38 rawBody529_39

def rawBody529_41 : StackLang.HolProg 64 :=
.call (some (rawBody529_37, 0, 529, 2)) (Sum.inl 470) (some (rawBody529_40, 529, 3))

def rawBody529_42 : StackLang.HolProg 64 :=
.seq rawBody529_28 rawBody529_41

def rawBody529_43 : StackLang.HolProg 64 :=
.seq rawBody529_27 rawBody529_42

def rawBody529_44 : StackLang.HolProg 64 :=
.seq rawBody529_26 rawBody529_43

def rawBody529_45 : StackLang.HolProg 64 :=
.seq rawBody529_7 rawBody529_44

def rawBody529_46 : StackLang.HolProg 64 :=
.seq rawBody529_4 rawBody529_45

def rawBody529_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody529_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody529_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody529_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody529_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1734#64)

def rawBody529_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody529_53 : StackLang.HolProg 64 :=
.seq rawBody529_51 rawBody529_52

def rawBody529_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody529_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody529_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody529_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 529 5

def rawBody529_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody529_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody529_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody529_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody529_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody529_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody529_64 : StackLang.HolProg 64 :=
.seq rawBody529_62 rawBody529_63

def rawBody529_65 : StackLang.HolProg 64 :=
.seq rawBody529_61 rawBody529_64

def rawBody529_66 : StackLang.HolProg 64 :=
.seq rawBody529_60 rawBody529_65

def rawBody529_67 : StackLang.HolProg 64 :=
.seq rawBody529_59 rawBody529_66

def rawBody529_68 : StackLang.HolProg 64 :=
.seq rawBody529_58 rawBody529_67

def rawBody529_69 : StackLang.HolProg 64 :=
.seq rawBody529_57 rawBody529_68

def rawBody529_70 : StackLang.HolProg 64 :=
.seq rawBody529_56 rawBody529_69

def rawBody529_71 : StackLang.HolProg 64 :=
.seq rawBody529_55 rawBody529_70

def rawBody529_72 : StackLang.HolProg 64 :=
.seq rawBody529_54 rawBody529_71

def rawBody529_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody529_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody529_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody529_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody529_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody529_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody529_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody529_80 : StackLang.HolProg 64 :=
.seq rawBody529_78 rawBody529_79

def rawBody529_81 : StackLang.HolProg 64 :=
.seq rawBody529_77 rawBody529_80

def rawBody529_82 : StackLang.HolProg 64 :=
.seq rawBody529_76 rawBody529_81

def rawBody529_83 : StackLang.HolProg 64 :=
.seq rawBody529_75 rawBody529_82

def rawBody529_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody529_85 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody529_86 : StackLang.HolProg 64 :=
.seq rawBody529_84 rawBody529_85

def rawBody529_87 : StackLang.HolProg 64 :=
.call (some (rawBody529_83, 0, 529, 4)) (Sum.inl 490) (some (rawBody529_86, 529, 5))

def rawBody529_88 : StackLang.HolProg 64 :=
.seq rawBody529_74 rawBody529_87

def rawBody529_89 : StackLang.HolProg 64 :=
.seq rawBody529_73 rawBody529_88

def rawBody529_90 : StackLang.HolProg 64 :=
.seq rawBody529_72 rawBody529_89

def rawBody529_91 : StackLang.HolProg 64 :=
.seq rawBody529_53 rawBody529_90

def rawBody529_92 : StackLang.HolProg 64 :=
.seq rawBody529_50 rawBody529_91

def rawBody529_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody529_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody529_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody529_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody529_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody529_98 : StackLang.HolProg 64 :=
.seq rawBody529_96 rawBody529_97

def rawBody529_99 : StackLang.HolProg 64 :=
.seq rawBody529_95 rawBody529_98

def rawBody529_100 : StackLang.HolProg 64 :=
.seq rawBody529_94 rawBody529_99

def rawBody529_101 : StackLang.HolProg 64 :=
.seq rawBody529_93 rawBody529_100

def rawBody529_102 : StackLang.HolProg 64 :=
.seq rawBody529_92 rawBody529_101

def rawBody529_103 : StackLang.HolProg 64 :=
.seq rawBody529_49 rawBody529_102

def rawBody529_104 : StackLang.HolProg 64 :=
.seq rawBody529_48 rawBody529_103

def rawBody529_105 : StackLang.HolProg 64 :=
.seq rawBody529_47 rawBody529_104

def rawBody529_106 : StackLang.HolProg 64 :=
.seq rawBody529_46 rawBody529_105

def rawBody529_107 : StackLang.HolProg 64 :=
.seq rawBody529_3 rawBody529_106

def rawBody529_108 : StackLang.HolProg 64 :=
.seq rawBody529_2 rawBody529_107

def rawBody529_109 : StackLang.HolProg 64 :=
.seq rawBody529_1 rawBody529_108

def rawBody529_110 : StackLang.HolProg 64 :=
.seq rawBody529_0 rawBody529_109

def raw529 : StackLang.HolProg 64 := rawBody529_110
theorem raw529_eq : StackRawCall.compTop RawInfo.rawInfo (function529 (.list [])).1 = raw529 := by
  kernel_rfl
#print axioms raw529_eq
end InitECandidate.Proofs.BackendStages
