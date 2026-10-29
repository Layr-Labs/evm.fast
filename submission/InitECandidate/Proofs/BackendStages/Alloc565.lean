import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw565
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody565_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody565_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody565_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody565_3 : StackLang.HolProg 64 :=
.seq AllocBody565_1 AllocBody565_2

def AllocBody565_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody565_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1932#64)

def AllocBody565_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody565_7 : StackLang.HolProg 64 :=
.seq AllocBody565_5 AllocBody565_6

def AllocBody565_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody565_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody565_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody565_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 565 3

def AllocBody565_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody565_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody565_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody565_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody565_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody565_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody565_18 : StackLang.HolProg 64 :=
.seq AllocBody565_16 AllocBody565_17

def AllocBody565_19 : StackLang.HolProg 64 :=
.seq AllocBody565_15 AllocBody565_18

def AllocBody565_20 : StackLang.HolProg 64 :=
.seq AllocBody565_14 AllocBody565_19

def AllocBody565_21 : StackLang.HolProg 64 :=
.seq AllocBody565_13 AllocBody565_20

def AllocBody565_22 : StackLang.HolProg 64 :=
.seq AllocBody565_12 AllocBody565_21

def AllocBody565_23 : StackLang.HolProg 64 :=
.seq AllocBody565_11 AllocBody565_22

def AllocBody565_24 : StackLang.HolProg 64 :=
.seq AllocBody565_10 AllocBody565_23

def AllocBody565_25 : StackLang.HolProg 64 :=
.seq AllocBody565_9 AllocBody565_24

def AllocBody565_26 : StackLang.HolProg 64 :=
.seq AllocBody565_8 AllocBody565_25

def AllocBody565_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody565_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody565_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody565_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody565_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody565_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody565_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody565_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody565_35 : StackLang.HolProg 64 :=
.seq AllocBody565_33 AllocBody565_34

def AllocBody565_36 : StackLang.HolProg 64 :=
.seq AllocBody565_32 AllocBody565_35

def AllocBody565_37 : StackLang.HolProg 64 :=
.seq AllocBody565_31 AllocBody565_36

def AllocBody565_38 : StackLang.HolProg 64 :=
.seq AllocBody565_30 AllocBody565_37

def AllocBody565_39 : StackLang.HolProg 64 :=
.seq AllocBody565_29 AllocBody565_38

def AllocBody565_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody565_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody565_42 : StackLang.HolProg 64 :=
.seq AllocBody565_40 AllocBody565_41

def AllocBody565_43 : StackLang.HolProg 64 :=
.call (some (AllocBody565_39, 0, 565, 2)) (Sum.inl 407) (some (AllocBody565_42, 565, 3))

def AllocBody565_44 : StackLang.HolProg 64 :=
.seq AllocBody565_28 AllocBody565_43

def AllocBody565_45 : StackLang.HolProg 64 :=
.seq AllocBody565_27 AllocBody565_44

def AllocBody565_46 : StackLang.HolProg 64 :=
.seq AllocBody565_26 AllocBody565_45

def AllocBody565_47 : StackLang.HolProg 64 :=
.seq AllocBody565_7 AllocBody565_46

def AllocBody565_48 : StackLang.HolProg 64 :=
.seq AllocBody565_4 AllocBody565_47

def AllocBody565_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody565_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody565_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 48#64))

def AllocBody565_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody565_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody565_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1933#64)

def AllocBody565_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody565_56 : StackLang.HolProg 64 :=
.seq AllocBody565_54 AllocBody565_55

def AllocBody565_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody565_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody565_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody565_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 565 5

def AllocBody565_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody565_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody565_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody565_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody565_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody565_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody565_67 : StackLang.HolProg 64 :=
.seq AllocBody565_65 AllocBody565_66

def AllocBody565_68 : StackLang.HolProg 64 :=
.seq AllocBody565_64 AllocBody565_67

def AllocBody565_69 : StackLang.HolProg 64 :=
.seq AllocBody565_63 AllocBody565_68

def AllocBody565_70 : StackLang.HolProg 64 :=
.seq AllocBody565_62 AllocBody565_69

def AllocBody565_71 : StackLang.HolProg 64 :=
.seq AllocBody565_61 AllocBody565_70

def AllocBody565_72 : StackLang.HolProg 64 :=
.seq AllocBody565_60 AllocBody565_71

def AllocBody565_73 : StackLang.HolProg 64 :=
.seq AllocBody565_59 AllocBody565_72

def AllocBody565_74 : StackLang.HolProg 64 :=
.seq AllocBody565_58 AllocBody565_73

def AllocBody565_75 : StackLang.HolProg 64 :=
.seq AllocBody565_57 AllocBody565_74

def AllocBody565_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody565_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody565_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody565_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody565_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody565_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody565_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody565_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody565_84 : StackLang.HolProg 64 :=
.seq AllocBody565_82 AllocBody565_83

def AllocBody565_85 : StackLang.HolProg 64 :=
.seq AllocBody565_81 AllocBody565_84

def AllocBody565_86 : StackLang.HolProg 64 :=
.seq AllocBody565_80 AllocBody565_85

def AllocBody565_87 : StackLang.HolProg 64 :=
.seq AllocBody565_79 AllocBody565_86

def AllocBody565_88 : StackLang.HolProg 64 :=
.seq AllocBody565_78 AllocBody565_87

def AllocBody565_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody565_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody565_91 : StackLang.HolProg 64 :=
.seq AllocBody565_89 AllocBody565_90

def AllocBody565_92 : StackLang.HolProg 64 :=
.call (some (AllocBody565_88, 0, 565, 4)) (Sum.inl 408) (some (AllocBody565_91, 565, 5))

def AllocBody565_93 : StackLang.HolProg 64 :=
.seq AllocBody565_77 AllocBody565_92

def AllocBody565_94 : StackLang.HolProg 64 :=
.seq AllocBody565_76 AllocBody565_93

def AllocBody565_95 : StackLang.HolProg 64 :=
.seq AllocBody565_75 AllocBody565_94

def AllocBody565_96 : StackLang.HolProg 64 :=
.seq AllocBody565_56 AllocBody565_95

def AllocBody565_97 : StackLang.HolProg 64 :=
.seq AllocBody565_53 AllocBody565_96

def AllocBody565_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody565_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody565_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody565_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody565_102 : StackLang.HolProg 64 :=
.seq AllocBody565_100 AllocBody565_101

def AllocBody565_103 : StackLang.HolProg 64 :=
.seq AllocBody565_99 AllocBody565_102

def AllocBody565_104 : StackLang.HolProg 64 :=
.seq AllocBody565_98 AllocBody565_103

def AllocBody565_105 : StackLang.HolProg 64 :=
.seq AllocBody565_97 AllocBody565_104

def AllocBody565_106 : StackLang.HolProg 64 :=
.seq AllocBody565_52 AllocBody565_105

def AllocBody565_107 : StackLang.HolProg 64 :=
.seq AllocBody565_51 AllocBody565_106

def AllocBody565_108 : StackLang.HolProg 64 :=
.seq AllocBody565_50 AllocBody565_107

def AllocBody565_109 : StackLang.HolProg 64 :=
.seq AllocBody565_49 AllocBody565_108

def AllocBody565_110 : StackLang.HolProg 64 :=
.seq AllocBody565_48 AllocBody565_109

def AllocBody565_111 : StackLang.HolProg 64 :=
.seq AllocBody565_3 AllocBody565_110

def AllocBody565_112 : StackLang.HolProg 64 :=
.seq AllocBody565_0 AllocBody565_111

def Alloc565 : Nat × StackLang.HolProg 64 := (565, AllocBody565_112)
theorem Alloc565_eq : StackAlloc.progComp (565, raw565) = Alloc565 := by
  kernel_rfl
#print axioms Alloc565_eq
end InitECandidate.Proofs.BackendStages
