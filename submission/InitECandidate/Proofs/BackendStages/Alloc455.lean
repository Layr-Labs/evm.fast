import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw455
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody455_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody455_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody455_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody455_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1397#64)

def AllocBody455_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody455_5 : StackLang.HolProg 64 :=
.seq AllocBody455_3 AllocBody455_4

def AllocBody455_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody455_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody455_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody455_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 455 3

def AllocBody455_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody455_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody455_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody455_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody455_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody455_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody455_16 : StackLang.HolProg 64 :=
.seq AllocBody455_14 AllocBody455_15

def AllocBody455_17 : StackLang.HolProg 64 :=
.seq AllocBody455_13 AllocBody455_16

def AllocBody455_18 : StackLang.HolProg 64 :=
.seq AllocBody455_12 AllocBody455_17

def AllocBody455_19 : StackLang.HolProg 64 :=
.seq AllocBody455_11 AllocBody455_18

def AllocBody455_20 : StackLang.HolProg 64 :=
.seq AllocBody455_10 AllocBody455_19

def AllocBody455_21 : StackLang.HolProg 64 :=
.seq AllocBody455_9 AllocBody455_20

def AllocBody455_22 : StackLang.HolProg 64 :=
.seq AllocBody455_8 AllocBody455_21

def AllocBody455_23 : StackLang.HolProg 64 :=
.seq AllocBody455_7 AllocBody455_22

def AllocBody455_24 : StackLang.HolProg 64 :=
.seq AllocBody455_6 AllocBody455_23

def AllocBody455_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody455_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody455_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody455_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody455_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody455_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody455_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody455_32 : StackLang.HolProg 64 :=
.seq AllocBody455_30 AllocBody455_31

def AllocBody455_33 : StackLang.HolProg 64 :=
.seq AllocBody455_29 AllocBody455_32

def AllocBody455_34 : StackLang.HolProg 64 :=
.seq AllocBody455_28 AllocBody455_33

def AllocBody455_35 : StackLang.HolProg 64 :=
.seq AllocBody455_27 AllocBody455_34

def AllocBody455_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody455_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody455_38 : StackLang.HolProg 64 :=
.seq AllocBody455_36 AllocBody455_37

def AllocBody455_39 : StackLang.HolProg 64 :=
.call (some (AllocBody455_35, 0, 455, 2)) (Sum.inl 454) (some (AllocBody455_38, 455, 3))

def AllocBody455_40 : StackLang.HolProg 64 :=
.seq AllocBody455_26 AllocBody455_39

def AllocBody455_41 : StackLang.HolProg 64 :=
.seq AllocBody455_25 AllocBody455_40

def AllocBody455_42 : StackLang.HolProg 64 :=
.seq AllocBody455_24 AllocBody455_41

def AllocBody455_43 : StackLang.HolProg 64 :=
.seq AllocBody455_5 AllocBody455_42

def AllocBody455_44 : StackLang.HolProg 64 :=
.seq AllocBody455_2 AllocBody455_43

def AllocBody455_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody455_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody455_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody455_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1398#64)

def AllocBody455_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody455_50 : StackLang.HolProg 64 :=
.seq AllocBody455_48 AllocBody455_49

def AllocBody455_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody455_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody455_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody455_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 455 5

def AllocBody455_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody455_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody455_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody455_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody455_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody455_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody455_61 : StackLang.HolProg 64 :=
.seq AllocBody455_59 AllocBody455_60

def AllocBody455_62 : StackLang.HolProg 64 :=
.seq AllocBody455_58 AllocBody455_61

def AllocBody455_63 : StackLang.HolProg 64 :=
.seq AllocBody455_57 AllocBody455_62

def AllocBody455_64 : StackLang.HolProg 64 :=
.seq AllocBody455_56 AllocBody455_63

def AllocBody455_65 : StackLang.HolProg 64 :=
.seq AllocBody455_55 AllocBody455_64

def AllocBody455_66 : StackLang.HolProg 64 :=
.seq AllocBody455_54 AllocBody455_65

def AllocBody455_67 : StackLang.HolProg 64 :=
.seq AllocBody455_53 AllocBody455_66

def AllocBody455_68 : StackLang.HolProg 64 :=
.seq AllocBody455_52 AllocBody455_67

def AllocBody455_69 : StackLang.HolProg 64 :=
.seq AllocBody455_51 AllocBody455_68

def AllocBody455_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody455_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody455_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody455_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody455_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody455_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody455_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody455_77 : StackLang.HolProg 64 :=
.seq AllocBody455_75 AllocBody455_76

def AllocBody455_78 : StackLang.HolProg 64 :=
.seq AllocBody455_74 AllocBody455_77

def AllocBody455_79 : StackLang.HolProg 64 :=
.seq AllocBody455_73 AllocBody455_78

def AllocBody455_80 : StackLang.HolProg 64 :=
.seq AllocBody455_72 AllocBody455_79

def AllocBody455_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody455_82 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody455_83 : StackLang.HolProg 64 :=
.seq AllocBody455_81 AllocBody455_82

def AllocBody455_84 : StackLang.HolProg 64 :=
.call (some (AllocBody455_80, 0, 455, 4)) (Sum.inl 433) (some (AllocBody455_83, 455, 5))

def AllocBody455_85 : StackLang.HolProg 64 :=
.seq AllocBody455_71 AllocBody455_84

def AllocBody455_86 : StackLang.HolProg 64 :=
.seq AllocBody455_70 AllocBody455_85

def AllocBody455_87 : StackLang.HolProg 64 :=
.seq AllocBody455_69 AllocBody455_86

def AllocBody455_88 : StackLang.HolProg 64 :=
.seq AllocBody455_50 AllocBody455_87

def AllocBody455_89 : StackLang.HolProg 64 :=
.seq AllocBody455_47 AllocBody455_88

def AllocBody455_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody455_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody455_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody455_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody455_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody455_95 : StackLang.HolProg 64 :=
.seq AllocBody455_93 AllocBody455_94

def AllocBody455_96 : StackLang.HolProg 64 :=
.seq AllocBody455_92 AllocBody455_95

def AllocBody455_97 : StackLang.HolProg 64 :=
.seq AllocBody455_91 AllocBody455_96

def AllocBody455_98 : StackLang.HolProg 64 :=
.seq AllocBody455_90 AllocBody455_97

def AllocBody455_99 : StackLang.HolProg 64 :=
.seq AllocBody455_89 AllocBody455_98

def AllocBody455_100 : StackLang.HolProg 64 :=
.seq AllocBody455_46 AllocBody455_99

def AllocBody455_101 : StackLang.HolProg 64 :=
.seq AllocBody455_45 AllocBody455_100

def AllocBody455_102 : StackLang.HolProg 64 :=
.seq AllocBody455_44 AllocBody455_101

def AllocBody455_103 : StackLang.HolProg 64 :=
.seq AllocBody455_1 AllocBody455_102

def AllocBody455_104 : StackLang.HolProg 64 :=
.seq AllocBody455_0 AllocBody455_103

def Alloc455 : Nat × StackLang.HolProg 64 := (455, AllocBody455_104)
theorem Alloc455_eq : StackAlloc.progComp (455, raw455) = Alloc455 := by
  kernel_rfl
#print axioms Alloc455_eq
end InitECandidate.Proofs.BackendStages
