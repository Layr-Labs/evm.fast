import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw442
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody442_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody442_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody442_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody442_3 : StackLang.HolProg 64 :=
.seq AllocBody442_1 AllocBody442_2

def AllocBody442_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody442_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1337#64)

def AllocBody442_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody442_7 : StackLang.HolProg 64 :=
.seq AllocBody442_5 AllocBody442_6

def AllocBody442_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody442_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody442_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody442_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 442 3

def AllocBody442_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody442_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody442_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody442_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody442_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody442_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody442_18 : StackLang.HolProg 64 :=
.seq AllocBody442_16 AllocBody442_17

def AllocBody442_19 : StackLang.HolProg 64 :=
.seq AllocBody442_15 AllocBody442_18

def AllocBody442_20 : StackLang.HolProg 64 :=
.seq AllocBody442_14 AllocBody442_19

def AllocBody442_21 : StackLang.HolProg 64 :=
.seq AllocBody442_13 AllocBody442_20

def AllocBody442_22 : StackLang.HolProg 64 :=
.seq AllocBody442_12 AllocBody442_21

def AllocBody442_23 : StackLang.HolProg 64 :=
.seq AllocBody442_11 AllocBody442_22

def AllocBody442_24 : StackLang.HolProg 64 :=
.seq AllocBody442_10 AllocBody442_23

def AllocBody442_25 : StackLang.HolProg 64 :=
.seq AllocBody442_9 AllocBody442_24

def AllocBody442_26 : StackLang.HolProg 64 :=
.seq AllocBody442_8 AllocBody442_25

def AllocBody442_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody442_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody442_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody442_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody442_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody442_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody442_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody442_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody442_35 : StackLang.HolProg 64 :=
.seq AllocBody442_33 AllocBody442_34

def AllocBody442_36 : StackLang.HolProg 64 :=
.seq AllocBody442_32 AllocBody442_35

def AllocBody442_37 : StackLang.HolProg 64 :=
.seq AllocBody442_31 AllocBody442_36

def AllocBody442_38 : StackLang.HolProg 64 :=
.seq AllocBody442_30 AllocBody442_37

def AllocBody442_39 : StackLang.HolProg 64 :=
.seq AllocBody442_29 AllocBody442_38

def AllocBody442_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody442_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody442_42 : StackLang.HolProg 64 :=
.seq AllocBody442_40 AllocBody442_41

def AllocBody442_43 : StackLang.HolProg 64 :=
.call (some (AllocBody442_39, 0, 442, 2)) (Sum.inl 439) (some (AllocBody442_42, 442, 3))

def AllocBody442_44 : StackLang.HolProg 64 :=
.seq AllocBody442_28 AllocBody442_43

def AllocBody442_45 : StackLang.HolProg 64 :=
.seq AllocBody442_27 AllocBody442_44

def AllocBody442_46 : StackLang.HolProg 64 :=
.seq AllocBody442_26 AllocBody442_45

def AllocBody442_47 : StackLang.HolProg 64 :=
.seq AllocBody442_7 AllocBody442_46

def AllocBody442_48 : StackLang.HolProg 64 :=
.seq AllocBody442_4 AllocBody442_47

def AllocBody442_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody442_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody442_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody442_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody442_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def AllocBody442_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody442_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody442_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1338#64)

def AllocBody442_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody442_58 : StackLang.HolProg 64 :=
.seq AllocBody442_56 AllocBody442_57

def AllocBody442_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody442_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody442_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody442_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 442 5

def AllocBody442_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody442_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody442_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody442_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody442_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody442_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody442_69 : StackLang.HolProg 64 :=
.seq AllocBody442_67 AllocBody442_68

def AllocBody442_70 : StackLang.HolProg 64 :=
.seq AllocBody442_66 AllocBody442_69

def AllocBody442_71 : StackLang.HolProg 64 :=
.seq AllocBody442_65 AllocBody442_70

def AllocBody442_72 : StackLang.HolProg 64 :=
.seq AllocBody442_64 AllocBody442_71

def AllocBody442_73 : StackLang.HolProg 64 :=
.seq AllocBody442_63 AllocBody442_72

def AllocBody442_74 : StackLang.HolProg 64 :=
.seq AllocBody442_62 AllocBody442_73

def AllocBody442_75 : StackLang.HolProg 64 :=
.seq AllocBody442_61 AllocBody442_74

def AllocBody442_76 : StackLang.HolProg 64 :=
.seq AllocBody442_60 AllocBody442_75

def AllocBody442_77 : StackLang.HolProg 64 :=
.seq AllocBody442_59 AllocBody442_76

def AllocBody442_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody442_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody442_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody442_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody442_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody442_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody442_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody442_85 : StackLang.HolProg 64 :=
.seq AllocBody442_83 AllocBody442_84

def AllocBody442_86 : StackLang.HolProg 64 :=
.seq AllocBody442_82 AllocBody442_85

def AllocBody442_87 : StackLang.HolProg 64 :=
.seq AllocBody442_81 AllocBody442_86

def AllocBody442_88 : StackLang.HolProg 64 :=
.seq AllocBody442_80 AllocBody442_87

def AllocBody442_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody442_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody442_91 : StackLang.HolProg 64 :=
.seq AllocBody442_89 AllocBody442_90

def AllocBody442_92 : StackLang.HolProg 64 :=
.call (some (AllocBody442_88, 0, 442, 4)) (Sum.inl 192) (some (AllocBody442_91, 442, 5))

def AllocBody442_93 : StackLang.HolProg 64 :=
.seq AllocBody442_79 AllocBody442_92

def AllocBody442_94 : StackLang.HolProg 64 :=
.seq AllocBody442_78 AllocBody442_93

def AllocBody442_95 : StackLang.HolProg 64 :=
.seq AllocBody442_77 AllocBody442_94

def AllocBody442_96 : StackLang.HolProg 64 :=
.seq AllocBody442_58 AllocBody442_95

def AllocBody442_97 : StackLang.HolProg 64 :=
.seq AllocBody442_55 AllocBody442_96

def AllocBody442_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody442_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody442_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody442_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody442_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody442_103 : StackLang.HolProg 64 :=
.seq AllocBody442_101 AllocBody442_102

def AllocBody442_104 : StackLang.HolProg 64 :=
.seq AllocBody442_100 AllocBody442_103

def AllocBody442_105 : StackLang.HolProg 64 :=
.seq AllocBody442_99 AllocBody442_104

def AllocBody442_106 : StackLang.HolProg 64 :=
.seq AllocBody442_98 AllocBody442_105

def AllocBody442_107 : StackLang.HolProg 64 :=
.seq AllocBody442_97 AllocBody442_106

def AllocBody442_108 : StackLang.HolProg 64 :=
.seq AllocBody442_54 AllocBody442_107

def AllocBody442_109 : StackLang.HolProg 64 :=
.seq AllocBody442_53 AllocBody442_108

def AllocBody442_110 : StackLang.HolProg 64 :=
.seq AllocBody442_52 AllocBody442_109

def AllocBody442_111 : StackLang.HolProg 64 :=
.seq AllocBody442_51 AllocBody442_110

def AllocBody442_112 : StackLang.HolProg 64 :=
.seq AllocBody442_50 AllocBody442_111

def AllocBody442_113 : StackLang.HolProg 64 :=
.seq AllocBody442_49 AllocBody442_112

def AllocBody442_114 : StackLang.HolProg 64 :=
.seq AllocBody442_48 AllocBody442_113

def AllocBody442_115 : StackLang.HolProg 64 :=
.seq AllocBody442_3 AllocBody442_114

def AllocBody442_116 : StackLang.HolProg 64 :=
.seq AllocBody442_0 AllocBody442_115

def Alloc442 : Nat × StackLang.HolProg 64 := (442, AllocBody442_116)
theorem Alloc442_eq : StackAlloc.progComp (442, raw442) = Alloc442 := by
  kernel_rfl
#print axioms Alloc442_eq
end InitECandidate.Proofs.BackendStages
