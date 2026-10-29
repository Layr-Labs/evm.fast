import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw756
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody756_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody756_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody756_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody756_3 : StackLang.HolProg 64 :=
.seq AllocBody756_1 AllocBody756_2

def AllocBody756_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody756_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3372#64)

def AllocBody756_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody756_7 : StackLang.HolProg 64 :=
.seq AllocBody756_5 AllocBody756_6

def AllocBody756_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody756_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody756_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody756_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 756 3

def AllocBody756_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody756_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody756_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody756_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody756_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody756_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody756_18 : StackLang.HolProg 64 :=
.seq AllocBody756_16 AllocBody756_17

def AllocBody756_19 : StackLang.HolProg 64 :=
.seq AllocBody756_15 AllocBody756_18

def AllocBody756_20 : StackLang.HolProg 64 :=
.seq AllocBody756_14 AllocBody756_19

def AllocBody756_21 : StackLang.HolProg 64 :=
.seq AllocBody756_13 AllocBody756_20

def AllocBody756_22 : StackLang.HolProg 64 :=
.seq AllocBody756_12 AllocBody756_21

def AllocBody756_23 : StackLang.HolProg 64 :=
.seq AllocBody756_11 AllocBody756_22

def AllocBody756_24 : StackLang.HolProg 64 :=
.seq AllocBody756_10 AllocBody756_23

def AllocBody756_25 : StackLang.HolProg 64 :=
.seq AllocBody756_9 AllocBody756_24

def AllocBody756_26 : StackLang.HolProg 64 :=
.seq AllocBody756_8 AllocBody756_25

def AllocBody756_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody756_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody756_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody756_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody756_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody756_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody756_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody756_34 : StackLang.HolProg 64 :=
.seq AllocBody756_32 AllocBody756_33

def AllocBody756_35 : StackLang.HolProg 64 :=
.seq AllocBody756_31 AllocBody756_34

def AllocBody756_36 : StackLang.HolProg 64 :=
.seq AllocBody756_30 AllocBody756_35

def AllocBody756_37 : StackLang.HolProg 64 :=
.seq AllocBody756_29 AllocBody756_36

def AllocBody756_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody756_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody756_40 : StackLang.HolProg 64 :=
.seq AllocBody756_38 AllocBody756_39

def AllocBody756_41 : StackLang.HolProg 64 :=
.call (some (AllocBody756_37, 0, 756, 2)) (Sum.inl 748) (some (AllocBody756_40, 756, 3))

def AllocBody756_42 : StackLang.HolProg 64 :=
.seq AllocBody756_28 AllocBody756_41

def AllocBody756_43 : StackLang.HolProg 64 :=
.seq AllocBody756_27 AllocBody756_42

def AllocBody756_44 : StackLang.HolProg 64 :=
.seq AllocBody756_26 AllocBody756_43

def AllocBody756_45 : StackLang.HolProg 64 :=
.seq AllocBody756_7 AllocBody756_44

def AllocBody756_46 : StackLang.HolProg 64 :=
.seq AllocBody756_4 AllocBody756_45

def AllocBody756_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody756_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody756_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def AllocBody756_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody756_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody756_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3373#64)

def AllocBody756_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody756_54 : StackLang.HolProg 64 :=
.seq AllocBody756_52 AllocBody756_53

def AllocBody756_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody756_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody756_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody756_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 756 5

def AllocBody756_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody756_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody756_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody756_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody756_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody756_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody756_65 : StackLang.HolProg 64 :=
.seq AllocBody756_63 AllocBody756_64

def AllocBody756_66 : StackLang.HolProg 64 :=
.seq AllocBody756_62 AllocBody756_65

def AllocBody756_67 : StackLang.HolProg 64 :=
.seq AllocBody756_61 AllocBody756_66

def AllocBody756_68 : StackLang.HolProg 64 :=
.seq AllocBody756_60 AllocBody756_67

def AllocBody756_69 : StackLang.HolProg 64 :=
.seq AllocBody756_59 AllocBody756_68

def AllocBody756_70 : StackLang.HolProg 64 :=
.seq AllocBody756_58 AllocBody756_69

def AllocBody756_71 : StackLang.HolProg 64 :=
.seq AllocBody756_57 AllocBody756_70

def AllocBody756_72 : StackLang.HolProg 64 :=
.seq AllocBody756_56 AllocBody756_71

def AllocBody756_73 : StackLang.HolProg 64 :=
.seq AllocBody756_55 AllocBody756_72

def AllocBody756_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody756_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody756_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody756_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody756_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody756_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody756_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody756_81 : StackLang.HolProg 64 :=
.seq AllocBody756_79 AllocBody756_80

def AllocBody756_82 : StackLang.HolProg 64 :=
.seq AllocBody756_78 AllocBody756_81

def AllocBody756_83 : StackLang.HolProg 64 :=
.seq AllocBody756_77 AllocBody756_82

def AllocBody756_84 : StackLang.HolProg 64 :=
.seq AllocBody756_76 AllocBody756_83

def AllocBody756_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody756_86 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody756_87 : StackLang.HolProg 64 :=
.seq AllocBody756_85 AllocBody756_86

def AllocBody756_88 : StackLang.HolProg 64 :=
.call (some (AllocBody756_84, 0, 756, 4)) (Sum.inl 747) (some (AllocBody756_87, 756, 5))

def AllocBody756_89 : StackLang.HolProg 64 :=
.seq AllocBody756_75 AllocBody756_88

def AllocBody756_90 : StackLang.HolProg 64 :=
.seq AllocBody756_74 AllocBody756_89

def AllocBody756_91 : StackLang.HolProg 64 :=
.seq AllocBody756_73 AllocBody756_90

def AllocBody756_92 : StackLang.HolProg 64 :=
.seq AllocBody756_54 AllocBody756_91

def AllocBody756_93 : StackLang.HolProg 64 :=
.seq AllocBody756_51 AllocBody756_92

def AllocBody756_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody756_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody756_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody756_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody756_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody756_99 : StackLang.HolProg 64 :=
.seq AllocBody756_97 AllocBody756_98

def AllocBody756_100 : StackLang.HolProg 64 :=
.seq AllocBody756_96 AllocBody756_99

def AllocBody756_101 : StackLang.HolProg 64 :=
.seq AllocBody756_95 AllocBody756_100

def AllocBody756_102 : StackLang.HolProg 64 :=
.seq AllocBody756_94 AllocBody756_101

def AllocBody756_103 : StackLang.HolProg 64 :=
.seq AllocBody756_93 AllocBody756_102

def AllocBody756_104 : StackLang.HolProg 64 :=
.seq AllocBody756_50 AllocBody756_103

def AllocBody756_105 : StackLang.HolProg 64 :=
.seq AllocBody756_49 AllocBody756_104

def AllocBody756_106 : StackLang.HolProg 64 :=
.seq AllocBody756_48 AllocBody756_105

def AllocBody756_107 : StackLang.HolProg 64 :=
.seq AllocBody756_47 AllocBody756_106

def AllocBody756_108 : StackLang.HolProg 64 :=
.seq AllocBody756_46 AllocBody756_107

def AllocBody756_109 : StackLang.HolProg 64 :=
.seq AllocBody756_3 AllocBody756_108

def AllocBody756_110 : StackLang.HolProg 64 :=
.seq AllocBody756_0 AllocBody756_109

def Alloc756 : Nat × StackLang.HolProg 64 := (756, AllocBody756_110)
theorem Alloc756_eq : StackAlloc.progComp (756, raw756) = Alloc756 := by
  kernel_rfl
#print axioms Alloc756_eq
end InitECandidate.Proofs.BackendStages
