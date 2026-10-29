import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw529
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody529_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody529_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody529_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody529_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody529_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody529_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1733#64)

def AllocBody529_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody529_7 : StackLang.HolProg 64 :=
.seq AllocBody529_5 AllocBody529_6

def AllocBody529_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody529_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody529_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody529_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 529 3

def AllocBody529_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody529_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody529_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody529_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody529_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody529_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody529_18 : StackLang.HolProg 64 :=
.seq AllocBody529_16 AllocBody529_17

def AllocBody529_19 : StackLang.HolProg 64 :=
.seq AllocBody529_15 AllocBody529_18

def AllocBody529_20 : StackLang.HolProg 64 :=
.seq AllocBody529_14 AllocBody529_19

def AllocBody529_21 : StackLang.HolProg 64 :=
.seq AllocBody529_13 AllocBody529_20

def AllocBody529_22 : StackLang.HolProg 64 :=
.seq AllocBody529_12 AllocBody529_21

def AllocBody529_23 : StackLang.HolProg 64 :=
.seq AllocBody529_11 AllocBody529_22

def AllocBody529_24 : StackLang.HolProg 64 :=
.seq AllocBody529_10 AllocBody529_23

def AllocBody529_25 : StackLang.HolProg 64 :=
.seq AllocBody529_9 AllocBody529_24

def AllocBody529_26 : StackLang.HolProg 64 :=
.seq AllocBody529_8 AllocBody529_25

def AllocBody529_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody529_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody529_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody529_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody529_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody529_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody529_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody529_34 : StackLang.HolProg 64 :=
.seq AllocBody529_32 AllocBody529_33

def AllocBody529_35 : StackLang.HolProg 64 :=
.seq AllocBody529_31 AllocBody529_34

def AllocBody529_36 : StackLang.HolProg 64 :=
.seq AllocBody529_30 AllocBody529_35

def AllocBody529_37 : StackLang.HolProg 64 :=
.seq AllocBody529_29 AllocBody529_36

def AllocBody529_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody529_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody529_40 : StackLang.HolProg 64 :=
.seq AllocBody529_38 AllocBody529_39

def AllocBody529_41 : StackLang.HolProg 64 :=
.call (some (AllocBody529_37, 0, 529, 2)) (Sum.inl 470) (some (AllocBody529_40, 529, 3))

def AllocBody529_42 : StackLang.HolProg 64 :=
.seq AllocBody529_28 AllocBody529_41

def AllocBody529_43 : StackLang.HolProg 64 :=
.seq AllocBody529_27 AllocBody529_42

def AllocBody529_44 : StackLang.HolProg 64 :=
.seq AllocBody529_26 AllocBody529_43

def AllocBody529_45 : StackLang.HolProg 64 :=
.seq AllocBody529_7 AllocBody529_44

def AllocBody529_46 : StackLang.HolProg 64 :=
.seq AllocBody529_4 AllocBody529_45

def AllocBody529_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody529_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody529_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody529_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody529_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1734#64)

def AllocBody529_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody529_53 : StackLang.HolProg 64 :=
.seq AllocBody529_51 AllocBody529_52

def AllocBody529_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody529_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody529_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody529_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 529 5

def AllocBody529_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody529_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody529_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody529_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody529_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody529_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody529_64 : StackLang.HolProg 64 :=
.seq AllocBody529_62 AllocBody529_63

def AllocBody529_65 : StackLang.HolProg 64 :=
.seq AllocBody529_61 AllocBody529_64

def AllocBody529_66 : StackLang.HolProg 64 :=
.seq AllocBody529_60 AllocBody529_65

def AllocBody529_67 : StackLang.HolProg 64 :=
.seq AllocBody529_59 AllocBody529_66

def AllocBody529_68 : StackLang.HolProg 64 :=
.seq AllocBody529_58 AllocBody529_67

def AllocBody529_69 : StackLang.HolProg 64 :=
.seq AllocBody529_57 AllocBody529_68

def AllocBody529_70 : StackLang.HolProg 64 :=
.seq AllocBody529_56 AllocBody529_69

def AllocBody529_71 : StackLang.HolProg 64 :=
.seq AllocBody529_55 AllocBody529_70

def AllocBody529_72 : StackLang.HolProg 64 :=
.seq AllocBody529_54 AllocBody529_71

def AllocBody529_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody529_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody529_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody529_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody529_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody529_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody529_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody529_80 : StackLang.HolProg 64 :=
.seq AllocBody529_78 AllocBody529_79

def AllocBody529_81 : StackLang.HolProg 64 :=
.seq AllocBody529_77 AllocBody529_80

def AllocBody529_82 : StackLang.HolProg 64 :=
.seq AllocBody529_76 AllocBody529_81

def AllocBody529_83 : StackLang.HolProg 64 :=
.seq AllocBody529_75 AllocBody529_82

def AllocBody529_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody529_85 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody529_86 : StackLang.HolProg 64 :=
.seq AllocBody529_84 AllocBody529_85

def AllocBody529_87 : StackLang.HolProg 64 :=
.call (some (AllocBody529_83, 0, 529, 4)) (Sum.inl 490) (some (AllocBody529_86, 529, 5))

def AllocBody529_88 : StackLang.HolProg 64 :=
.seq AllocBody529_74 AllocBody529_87

def AllocBody529_89 : StackLang.HolProg 64 :=
.seq AllocBody529_73 AllocBody529_88

def AllocBody529_90 : StackLang.HolProg 64 :=
.seq AllocBody529_72 AllocBody529_89

def AllocBody529_91 : StackLang.HolProg 64 :=
.seq AllocBody529_53 AllocBody529_90

def AllocBody529_92 : StackLang.HolProg 64 :=
.seq AllocBody529_50 AllocBody529_91

def AllocBody529_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody529_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody529_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody529_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody529_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody529_98 : StackLang.HolProg 64 :=
.seq AllocBody529_96 AllocBody529_97

def AllocBody529_99 : StackLang.HolProg 64 :=
.seq AllocBody529_95 AllocBody529_98

def AllocBody529_100 : StackLang.HolProg 64 :=
.seq AllocBody529_94 AllocBody529_99

def AllocBody529_101 : StackLang.HolProg 64 :=
.seq AllocBody529_93 AllocBody529_100

def AllocBody529_102 : StackLang.HolProg 64 :=
.seq AllocBody529_92 AllocBody529_101

def AllocBody529_103 : StackLang.HolProg 64 :=
.seq AllocBody529_49 AllocBody529_102

def AllocBody529_104 : StackLang.HolProg 64 :=
.seq AllocBody529_48 AllocBody529_103

def AllocBody529_105 : StackLang.HolProg 64 :=
.seq AllocBody529_47 AllocBody529_104

def AllocBody529_106 : StackLang.HolProg 64 :=
.seq AllocBody529_46 AllocBody529_105

def AllocBody529_107 : StackLang.HolProg 64 :=
.seq AllocBody529_3 AllocBody529_106

def AllocBody529_108 : StackLang.HolProg 64 :=
.seq AllocBody529_2 AllocBody529_107

def AllocBody529_109 : StackLang.HolProg 64 :=
.seq AllocBody529_1 AllocBody529_108

def AllocBody529_110 : StackLang.HolProg 64 :=
.seq AllocBody529_0 AllocBody529_109

def Alloc529 : Nat × StackLang.HolProg 64 := (529, AllocBody529_110)
theorem Alloc529_eq : StackAlloc.progComp (529, raw529) = Alloc529 := by
  kernel_rfl
#print axioms Alloc529_eq
end InitECandidate.Proofs.BackendStages
