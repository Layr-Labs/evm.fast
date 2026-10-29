import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw407
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody407_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody407_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody407_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody407_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1211#64)

def AllocBody407_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody407_5 : StackLang.HolProg 64 :=
.seq AllocBody407_3 AllocBody407_4

def AllocBody407_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody407_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody407_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody407_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 407 3

def AllocBody407_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody407_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody407_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody407_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody407_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody407_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody407_16 : StackLang.HolProg 64 :=
.seq AllocBody407_14 AllocBody407_15

def AllocBody407_17 : StackLang.HolProg 64 :=
.seq AllocBody407_13 AllocBody407_16

def AllocBody407_18 : StackLang.HolProg 64 :=
.seq AllocBody407_12 AllocBody407_17

def AllocBody407_19 : StackLang.HolProg 64 :=
.seq AllocBody407_11 AllocBody407_18

def AllocBody407_20 : StackLang.HolProg 64 :=
.seq AllocBody407_10 AllocBody407_19

def AllocBody407_21 : StackLang.HolProg 64 :=
.seq AllocBody407_9 AllocBody407_20

def AllocBody407_22 : StackLang.HolProg 64 :=
.seq AllocBody407_8 AllocBody407_21

def AllocBody407_23 : StackLang.HolProg 64 :=
.seq AllocBody407_7 AllocBody407_22

def AllocBody407_24 : StackLang.HolProg 64 :=
.seq AllocBody407_6 AllocBody407_23

def AllocBody407_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody407_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody407_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody407_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody407_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody407_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody407_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody407_32 : StackLang.HolProg 64 :=
.seq AllocBody407_30 AllocBody407_31

def AllocBody407_33 : StackLang.HolProg 64 :=
.seq AllocBody407_29 AllocBody407_32

def AllocBody407_34 : StackLang.HolProg 64 :=
.seq AllocBody407_28 AllocBody407_33

def AllocBody407_35 : StackLang.HolProg 64 :=
.seq AllocBody407_27 AllocBody407_34

def AllocBody407_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody407_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody407_38 : StackLang.HolProg 64 :=
.seq AllocBody407_36 AllocBody407_37

def AllocBody407_39 : StackLang.HolProg 64 :=
.call (some (AllocBody407_35, 0, 407, 2)) (Sum.inl 406) (some (AllocBody407_38, 407, 3))

def AllocBody407_40 : StackLang.HolProg 64 :=
.seq AllocBody407_26 AllocBody407_39

def AllocBody407_41 : StackLang.HolProg 64 :=
.seq AllocBody407_25 AllocBody407_40

def AllocBody407_42 : StackLang.HolProg 64 :=
.seq AllocBody407_24 AllocBody407_41

def AllocBody407_43 : StackLang.HolProg 64 :=
.seq AllocBody407_5 AllocBody407_42

def AllocBody407_44 : StackLang.HolProg 64 :=
.seq AllocBody407_2 AllocBody407_43

def AllocBody407_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody407_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody407_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def AllocBody407_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody407_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody407_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody407_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1212#64)

def AllocBody407_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody407_53 : StackLang.HolProg 64 :=
.seq AllocBody407_51 AllocBody407_52

def AllocBody407_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody407_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody407_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody407_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 407 5

def AllocBody407_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody407_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody407_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody407_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody407_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody407_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody407_64 : StackLang.HolProg 64 :=
.seq AllocBody407_62 AllocBody407_63

def AllocBody407_65 : StackLang.HolProg 64 :=
.seq AllocBody407_61 AllocBody407_64

def AllocBody407_66 : StackLang.HolProg 64 :=
.seq AllocBody407_60 AllocBody407_65

def AllocBody407_67 : StackLang.HolProg 64 :=
.seq AllocBody407_59 AllocBody407_66

def AllocBody407_68 : StackLang.HolProg 64 :=
.seq AllocBody407_58 AllocBody407_67

def AllocBody407_69 : StackLang.HolProg 64 :=
.seq AllocBody407_57 AllocBody407_68

def AllocBody407_70 : StackLang.HolProg 64 :=
.seq AllocBody407_56 AllocBody407_69

def AllocBody407_71 : StackLang.HolProg 64 :=
.seq AllocBody407_55 AllocBody407_70

def AllocBody407_72 : StackLang.HolProg 64 :=
.seq AllocBody407_54 AllocBody407_71

def AllocBody407_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody407_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody407_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody407_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody407_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody407_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody407_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody407_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody407_81 : StackLang.HolProg 64 :=
.seq AllocBody407_79 AllocBody407_80

def AllocBody407_82 : StackLang.HolProg 64 :=
.seq AllocBody407_78 AllocBody407_81

def AllocBody407_83 : StackLang.HolProg 64 :=
.seq AllocBody407_77 AllocBody407_82

def AllocBody407_84 : StackLang.HolProg 64 :=
.seq AllocBody407_76 AllocBody407_83

def AllocBody407_85 : StackLang.HolProg 64 :=
.seq AllocBody407_75 AllocBody407_84

def AllocBody407_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody407_87 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody407_88 : StackLang.HolProg 64 :=
.seq AllocBody407_86 AllocBody407_87

def AllocBody407_89 : StackLang.HolProg 64 :=
.call (some (AllocBody407_85, 0, 407, 4)) (Sum.inl 394) (some (AllocBody407_88, 407, 5))

def AllocBody407_90 : StackLang.HolProg 64 :=
.seq AllocBody407_74 AllocBody407_89

def AllocBody407_91 : StackLang.HolProg 64 :=
.seq AllocBody407_73 AllocBody407_90

def AllocBody407_92 : StackLang.HolProg 64 :=
.seq AllocBody407_72 AllocBody407_91

def AllocBody407_93 : StackLang.HolProg 64 :=
.seq AllocBody407_53 AllocBody407_92

def AllocBody407_94 : StackLang.HolProg 64 :=
.seq AllocBody407_50 AllocBody407_93

def AllocBody407_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody407_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody407_97 : StackLang.HolProg 64 :=
.seq AllocBody407_95 AllocBody407_96

def AllocBody407_98 : StackLang.HolProg 64 :=
.seq AllocBody407_94 AllocBody407_97

def AllocBody407_99 : StackLang.HolProg 64 :=
.seq AllocBody407_49 AllocBody407_98

def AllocBody407_100 : StackLang.HolProg 64 :=
.seq AllocBody407_48 AllocBody407_99

def AllocBody407_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody407_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody407_103 : StackLang.HolProg 64 :=
.seq AllocBody407_101 AllocBody407_102

def AllocBody407_104 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody407_100 AllocBody407_103

def AllocBody407_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody407_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody407_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody407_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody407_109 : StackLang.HolProg 64 :=
.seq AllocBody407_107 AllocBody407_108

def AllocBody407_110 : StackLang.HolProg 64 :=
.seq AllocBody407_106 AllocBody407_109

def AllocBody407_111 : StackLang.HolProg 64 :=
.seq AllocBody407_105 AllocBody407_110

def AllocBody407_112 : StackLang.HolProg 64 :=
.seq AllocBody407_104 AllocBody407_111

def AllocBody407_113 : StackLang.HolProg 64 :=
.seq AllocBody407_47 AllocBody407_112

def AllocBody407_114 : StackLang.HolProg 64 :=
.seq AllocBody407_46 AllocBody407_113

def AllocBody407_115 : StackLang.HolProg 64 :=
.seq AllocBody407_45 AllocBody407_114

def AllocBody407_116 : StackLang.HolProg 64 :=
.seq AllocBody407_44 AllocBody407_115

def AllocBody407_117 : StackLang.HolProg 64 :=
.seq AllocBody407_1 AllocBody407_116

def AllocBody407_118 : StackLang.HolProg 64 :=
.seq AllocBody407_0 AllocBody407_117

def Alloc407 : Nat × StackLang.HolProg 64 := (407, AllocBody407_118)
theorem Alloc407_eq : StackAlloc.progComp (407, raw407) = Alloc407 := by
  kernel_rfl
#print axioms Alloc407_eq
end InitECandidate.Proofs.BackendStages
