import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw859
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody859_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody859_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody859_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 200#64)

def AllocBody859_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody859_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody859_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4364#64)

def AllocBody859_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody859_7 : StackLang.HolProg 64 :=
.seq AllocBody859_5 AllocBody859_6

def AllocBody859_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody859_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody859_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody859_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 859 3

def AllocBody859_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody859_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody859_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody859_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody859_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody859_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody859_18 : StackLang.HolProg 64 :=
.seq AllocBody859_16 AllocBody859_17

def AllocBody859_19 : StackLang.HolProg 64 :=
.seq AllocBody859_15 AllocBody859_18

def AllocBody859_20 : StackLang.HolProg 64 :=
.seq AllocBody859_14 AllocBody859_19

def AllocBody859_21 : StackLang.HolProg 64 :=
.seq AllocBody859_13 AllocBody859_20

def AllocBody859_22 : StackLang.HolProg 64 :=
.seq AllocBody859_12 AllocBody859_21

def AllocBody859_23 : StackLang.HolProg 64 :=
.seq AllocBody859_11 AllocBody859_22

def AllocBody859_24 : StackLang.HolProg 64 :=
.seq AllocBody859_10 AllocBody859_23

def AllocBody859_25 : StackLang.HolProg 64 :=
.seq AllocBody859_9 AllocBody859_24

def AllocBody859_26 : StackLang.HolProg 64 :=
.seq AllocBody859_8 AllocBody859_25

def AllocBody859_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody859_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody859_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody859_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody859_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody859_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody859_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody859_34 : StackLang.HolProg 64 :=
.seq AllocBody859_32 AllocBody859_33

def AllocBody859_35 : StackLang.HolProg 64 :=
.seq AllocBody859_31 AllocBody859_34

def AllocBody859_36 : StackLang.HolProg 64 :=
.seq AllocBody859_30 AllocBody859_35

def AllocBody859_37 : StackLang.HolProg 64 :=
.seq AllocBody859_29 AllocBody859_36

def AllocBody859_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody859_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody859_40 : StackLang.HolProg 64 :=
.seq AllocBody859_38 AllocBody859_39

def AllocBody859_41 : StackLang.HolProg 64 :=
.call (some (AllocBody859_37, 0, 859, 2)) (Sum.inl 68) (some (AllocBody859_40, 859, 3))

def AllocBody859_42 : StackLang.HolProg 64 :=
.seq AllocBody859_28 AllocBody859_41

def AllocBody859_43 : StackLang.HolProg 64 :=
.seq AllocBody859_27 AllocBody859_42

def AllocBody859_44 : StackLang.HolProg 64 :=
.seq AllocBody859_26 AllocBody859_43

def AllocBody859_45 : StackLang.HolProg 64 :=
.seq AllocBody859_7 AllocBody859_44

def AllocBody859_46 : StackLang.HolProg 64 :=
.seq AllocBody859_4 AllocBody859_45

def AllocBody859_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody859_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody859_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 200#64)

def AllocBody859_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody859_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody859_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4365#64)

def AllocBody859_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody859_54 : StackLang.HolProg 64 :=
.seq AllocBody859_52 AllocBody859_53

def AllocBody859_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody859_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody859_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody859_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 859 5

def AllocBody859_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody859_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody859_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody859_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody859_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody859_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody859_65 : StackLang.HolProg 64 :=
.seq AllocBody859_63 AllocBody859_64

def AllocBody859_66 : StackLang.HolProg 64 :=
.seq AllocBody859_62 AllocBody859_65

def AllocBody859_67 : StackLang.HolProg 64 :=
.seq AllocBody859_61 AllocBody859_66

def AllocBody859_68 : StackLang.HolProg 64 :=
.seq AllocBody859_60 AllocBody859_67

def AllocBody859_69 : StackLang.HolProg 64 :=
.seq AllocBody859_59 AllocBody859_68

def AllocBody859_70 : StackLang.HolProg 64 :=
.seq AllocBody859_58 AllocBody859_69

def AllocBody859_71 : StackLang.HolProg 64 :=
.seq AllocBody859_57 AllocBody859_70

def AllocBody859_72 : StackLang.HolProg 64 :=
.seq AllocBody859_56 AllocBody859_71

def AllocBody859_73 : StackLang.HolProg 64 :=
.seq AllocBody859_55 AllocBody859_72

def AllocBody859_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody859_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody859_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody859_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody859_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody859_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody859_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody859_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody859_82 : StackLang.HolProg 64 :=
.seq AllocBody859_80 AllocBody859_81

def AllocBody859_83 : StackLang.HolProg 64 :=
.seq AllocBody859_79 AllocBody859_82

def AllocBody859_84 : StackLang.HolProg 64 :=
.seq AllocBody859_78 AllocBody859_83

def AllocBody859_85 : StackLang.HolProg 64 :=
.seq AllocBody859_77 AllocBody859_84

def AllocBody859_86 : StackLang.HolProg 64 :=
.seq AllocBody859_76 AllocBody859_85

def AllocBody859_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody859_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody859_89 : StackLang.HolProg 64 :=
.seq AllocBody859_87 AllocBody859_88

def AllocBody859_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody859_91 : StackLang.HolProg 64 :=
.seq AllocBody859_89 AllocBody859_90

def AllocBody859_92 : StackLang.HolProg 64 :=
.call (some (AllocBody859_86, 0, 859, 4)) (Sum.inl 78) (some (AllocBody859_91, 859, 5))

def AllocBody859_93 : StackLang.HolProg 64 :=
.seq AllocBody859_75 AllocBody859_92

def AllocBody859_94 : StackLang.HolProg 64 :=
.seq AllocBody859_74 AllocBody859_93

def AllocBody859_95 : StackLang.HolProg 64 :=
.seq AllocBody859_73 AllocBody859_94

def AllocBody859_96 : StackLang.HolProg 64 :=
.seq AllocBody859_54 AllocBody859_95

def AllocBody859_97 : StackLang.HolProg 64 :=
.seq AllocBody859_51 AllocBody859_96

def AllocBody859_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody859_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody859_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody859_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody859_102 : StackLang.HolProg 64 :=
.seq AllocBody859_100 AllocBody859_101

def AllocBody859_103 : StackLang.HolProg 64 :=
.seq AllocBody859_99 AllocBody859_102

def AllocBody859_104 : StackLang.HolProg 64 :=
.seq AllocBody859_98 AllocBody859_103

def AllocBody859_105 : StackLang.HolProg 64 :=
.seq AllocBody859_97 AllocBody859_104

def AllocBody859_106 : StackLang.HolProg 64 :=
.seq AllocBody859_50 AllocBody859_105

def AllocBody859_107 : StackLang.HolProg 64 :=
.seq AllocBody859_49 AllocBody859_106

def AllocBody859_108 : StackLang.HolProg 64 :=
.seq AllocBody859_48 AllocBody859_107

def AllocBody859_109 : StackLang.HolProg 64 :=
.seq AllocBody859_47 AllocBody859_108

def AllocBody859_110 : StackLang.HolProg 64 :=
.seq AllocBody859_46 AllocBody859_109

def AllocBody859_111 : StackLang.HolProg 64 :=
.seq AllocBody859_3 AllocBody859_110

def AllocBody859_112 : StackLang.HolProg 64 :=
.seq AllocBody859_2 AllocBody859_111

def AllocBody859_113 : StackLang.HolProg 64 :=
.seq AllocBody859_1 AllocBody859_112

def AllocBody859_114 : StackLang.HolProg 64 :=
.seq AllocBody859_0 AllocBody859_113

def Alloc859 : Nat × StackLang.HolProg 64 := (859, AllocBody859_114)
theorem Alloc859_eq : StackAlloc.progComp (859, raw859) = Alloc859 := by
  kernel_rfl
#print axioms Alloc859_eq
end InitECandidate.Proofs.BackendStages
