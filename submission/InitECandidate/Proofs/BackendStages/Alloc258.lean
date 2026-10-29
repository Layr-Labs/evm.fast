import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw258
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody258_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody258_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody258_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody258_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody258_4 : StackLang.HolProg 64 :=
.seq AllocBody258_2 AllocBody258_3

def AllocBody258_5 : StackLang.HolProg 64 :=
.seq AllocBody258_1 AllocBody258_4

def AllocBody258_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody258_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 558#64)

def AllocBody258_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody258_9 : StackLang.HolProg 64 :=
.seq AllocBody258_7 AllocBody258_8

def AllocBody258_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody258_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody258_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody258_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 258 3

def AllocBody258_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody258_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody258_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody258_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody258_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody258_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody258_20 : StackLang.HolProg 64 :=
.seq AllocBody258_18 AllocBody258_19

def AllocBody258_21 : StackLang.HolProg 64 :=
.seq AllocBody258_17 AllocBody258_20

def AllocBody258_22 : StackLang.HolProg 64 :=
.seq AllocBody258_16 AllocBody258_21

def AllocBody258_23 : StackLang.HolProg 64 :=
.seq AllocBody258_15 AllocBody258_22

def AllocBody258_24 : StackLang.HolProg 64 :=
.seq AllocBody258_14 AllocBody258_23

def AllocBody258_25 : StackLang.HolProg 64 :=
.seq AllocBody258_13 AllocBody258_24

def AllocBody258_26 : StackLang.HolProg 64 :=
.seq AllocBody258_12 AllocBody258_25

def AllocBody258_27 : StackLang.HolProg 64 :=
.seq AllocBody258_11 AllocBody258_26

def AllocBody258_28 : StackLang.HolProg 64 :=
.seq AllocBody258_10 AllocBody258_27

def AllocBody258_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody258_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody258_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody258_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody258_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody258_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody258_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody258_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody258_37 : StackLang.HolProg 64 :=
.seq AllocBody258_35 AllocBody258_36

def AllocBody258_38 : StackLang.HolProg 64 :=
.seq AllocBody258_34 AllocBody258_37

def AllocBody258_39 : StackLang.HolProg 64 :=
.seq AllocBody258_33 AllocBody258_38

def AllocBody258_40 : StackLang.HolProg 64 :=
.seq AllocBody258_32 AllocBody258_39

def AllocBody258_41 : StackLang.HolProg 64 :=
.seq AllocBody258_31 AllocBody258_40

def AllocBody258_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody258_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody258_44 : StackLang.HolProg 64 :=
.seq AllocBody258_42 AllocBody258_43

def AllocBody258_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody258_46 : StackLang.HolProg 64 :=
.seq AllocBody258_44 AllocBody258_45

def AllocBody258_47 : StackLang.HolProg 64 :=
.call (some (AllocBody258_41, 0, 258, 2)) (Sum.inl 235) (some (AllocBody258_46, 258, 3))

def AllocBody258_48 : StackLang.HolProg 64 :=
.seq AllocBody258_30 AllocBody258_47

def AllocBody258_49 : StackLang.HolProg 64 :=
.seq AllocBody258_29 AllocBody258_48

def AllocBody258_50 : StackLang.HolProg 64 :=
.seq AllocBody258_28 AllocBody258_49

def AllocBody258_51 : StackLang.HolProg 64 :=
.seq AllocBody258_9 AllocBody258_50

def AllocBody258_52 : StackLang.HolProg 64 :=
.seq AllocBody258_6 AllocBody258_51

def AllocBody258_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody258_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody258_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody258_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 559#64)

def AllocBody258_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody258_58 : StackLang.HolProg 64 :=
.seq AllocBody258_56 AllocBody258_57

def AllocBody258_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody258_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody258_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody258_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 258 5

def AllocBody258_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody258_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody258_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody258_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody258_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody258_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody258_69 : StackLang.HolProg 64 :=
.seq AllocBody258_67 AllocBody258_68

def AllocBody258_70 : StackLang.HolProg 64 :=
.seq AllocBody258_66 AllocBody258_69

def AllocBody258_71 : StackLang.HolProg 64 :=
.seq AllocBody258_65 AllocBody258_70

def AllocBody258_72 : StackLang.HolProg 64 :=
.seq AllocBody258_64 AllocBody258_71

def AllocBody258_73 : StackLang.HolProg 64 :=
.seq AllocBody258_63 AllocBody258_72

def AllocBody258_74 : StackLang.HolProg 64 :=
.seq AllocBody258_62 AllocBody258_73

def AllocBody258_75 : StackLang.HolProg 64 :=
.seq AllocBody258_61 AllocBody258_74

def AllocBody258_76 : StackLang.HolProg 64 :=
.seq AllocBody258_60 AllocBody258_75

def AllocBody258_77 : StackLang.HolProg 64 :=
.seq AllocBody258_59 AllocBody258_76

def AllocBody258_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody258_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody258_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody258_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody258_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody258_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody258_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody258_85 : StackLang.HolProg 64 :=
.seq AllocBody258_83 AllocBody258_84

def AllocBody258_86 : StackLang.HolProg 64 :=
.seq AllocBody258_82 AllocBody258_85

def AllocBody258_87 : StackLang.HolProg 64 :=
.seq AllocBody258_81 AllocBody258_86

def AllocBody258_88 : StackLang.HolProg 64 :=
.seq AllocBody258_80 AllocBody258_87

def AllocBody258_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody258_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody258_91 : StackLang.HolProg 64 :=
.seq AllocBody258_89 AllocBody258_90

def AllocBody258_92 : StackLang.HolProg 64 :=
.call (some (AllocBody258_88, 0, 258, 4)) (Sum.inl 236) (some (AllocBody258_91, 258, 5))

def AllocBody258_93 : StackLang.HolProg 64 :=
.seq AllocBody258_79 AllocBody258_92

def AllocBody258_94 : StackLang.HolProg 64 :=
.seq AllocBody258_78 AllocBody258_93

def AllocBody258_95 : StackLang.HolProg 64 :=
.seq AllocBody258_77 AllocBody258_94

def AllocBody258_96 : StackLang.HolProg 64 :=
.seq AllocBody258_58 AllocBody258_95

def AllocBody258_97 : StackLang.HolProg 64 :=
.seq AllocBody258_55 AllocBody258_96

def AllocBody258_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody258_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody258_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody258_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody258_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody258_103 : StackLang.HolProg 64 :=
.seq AllocBody258_101 AllocBody258_102

def AllocBody258_104 : StackLang.HolProg 64 :=
.seq AllocBody258_100 AllocBody258_103

def AllocBody258_105 : StackLang.HolProg 64 :=
.seq AllocBody258_99 AllocBody258_104

def AllocBody258_106 : StackLang.HolProg 64 :=
.seq AllocBody258_98 AllocBody258_105

def AllocBody258_107 : StackLang.HolProg 64 :=
.seq AllocBody258_97 AllocBody258_106

def AllocBody258_108 : StackLang.HolProg 64 :=
.seq AllocBody258_54 AllocBody258_107

def AllocBody258_109 : StackLang.HolProg 64 :=
.seq AllocBody258_53 AllocBody258_108

def AllocBody258_110 : StackLang.HolProg 64 :=
.seq AllocBody258_52 AllocBody258_109

def AllocBody258_111 : StackLang.HolProg 64 :=
.seq AllocBody258_5 AllocBody258_110

def AllocBody258_112 : StackLang.HolProg 64 :=
.seq AllocBody258_0 AllocBody258_111

def Alloc258 : Nat × StackLang.HolProg 64 := (258, AllocBody258_112)
theorem Alloc258_eq : StackAlloc.progComp (258, raw258) = Alloc258 := by
  kernel_rfl
#print axioms Alloc258_eq
end InitECandidate.Proofs.BackendStages
