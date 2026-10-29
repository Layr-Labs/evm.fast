import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw298
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody298_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody298_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody298_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 176#64)

def AllocBody298_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody298_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody298_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 804#64)

def AllocBody298_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody298_7 : StackLang.HolProg 64 :=
.seq AllocBody298_5 AllocBody298_6

def AllocBody298_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody298_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody298_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody298_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 298 3

def AllocBody298_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody298_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody298_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody298_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody298_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody298_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody298_18 : StackLang.HolProg 64 :=
.seq AllocBody298_16 AllocBody298_17

def AllocBody298_19 : StackLang.HolProg 64 :=
.seq AllocBody298_15 AllocBody298_18

def AllocBody298_20 : StackLang.HolProg 64 :=
.seq AllocBody298_14 AllocBody298_19

def AllocBody298_21 : StackLang.HolProg 64 :=
.seq AllocBody298_13 AllocBody298_20

def AllocBody298_22 : StackLang.HolProg 64 :=
.seq AllocBody298_12 AllocBody298_21

def AllocBody298_23 : StackLang.HolProg 64 :=
.seq AllocBody298_11 AllocBody298_22

def AllocBody298_24 : StackLang.HolProg 64 :=
.seq AllocBody298_10 AllocBody298_23

def AllocBody298_25 : StackLang.HolProg 64 :=
.seq AllocBody298_9 AllocBody298_24

def AllocBody298_26 : StackLang.HolProg 64 :=
.seq AllocBody298_8 AllocBody298_25

def AllocBody298_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody298_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody298_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody298_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody298_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody298_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody298_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody298_34 : StackLang.HolProg 64 :=
.seq AllocBody298_32 AllocBody298_33

def AllocBody298_35 : StackLang.HolProg 64 :=
.seq AllocBody298_31 AllocBody298_34

def AllocBody298_36 : StackLang.HolProg 64 :=
.seq AllocBody298_30 AllocBody298_35

def AllocBody298_37 : StackLang.HolProg 64 :=
.seq AllocBody298_29 AllocBody298_36

def AllocBody298_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody298_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody298_40 : StackLang.HolProg 64 :=
.seq AllocBody298_38 AllocBody298_39

def AllocBody298_41 : StackLang.HolProg 64 :=
.call (some (AllocBody298_37, 0, 298, 2)) (Sum.inl 68) (some (AllocBody298_40, 298, 3))

def AllocBody298_42 : StackLang.HolProg 64 :=
.seq AllocBody298_28 AllocBody298_41

def AllocBody298_43 : StackLang.HolProg 64 :=
.seq AllocBody298_27 AllocBody298_42

def AllocBody298_44 : StackLang.HolProg 64 :=
.seq AllocBody298_26 AllocBody298_43

def AllocBody298_45 : StackLang.HolProg 64 :=
.seq AllocBody298_7 AllocBody298_44

def AllocBody298_46 : StackLang.HolProg 64 :=
.seq AllocBody298_4 AllocBody298_45

def AllocBody298_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody298_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody298_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 176#64)

def AllocBody298_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody298_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody298_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 805#64)

def AllocBody298_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody298_54 : StackLang.HolProg 64 :=
.seq AllocBody298_52 AllocBody298_53

def AllocBody298_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody298_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody298_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody298_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 298 5

def AllocBody298_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody298_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody298_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody298_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody298_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody298_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody298_65 : StackLang.HolProg 64 :=
.seq AllocBody298_63 AllocBody298_64

def AllocBody298_66 : StackLang.HolProg 64 :=
.seq AllocBody298_62 AllocBody298_65

def AllocBody298_67 : StackLang.HolProg 64 :=
.seq AllocBody298_61 AllocBody298_66

def AllocBody298_68 : StackLang.HolProg 64 :=
.seq AllocBody298_60 AllocBody298_67

def AllocBody298_69 : StackLang.HolProg 64 :=
.seq AllocBody298_59 AllocBody298_68

def AllocBody298_70 : StackLang.HolProg 64 :=
.seq AllocBody298_58 AllocBody298_69

def AllocBody298_71 : StackLang.HolProg 64 :=
.seq AllocBody298_57 AllocBody298_70

def AllocBody298_72 : StackLang.HolProg 64 :=
.seq AllocBody298_56 AllocBody298_71

def AllocBody298_73 : StackLang.HolProg 64 :=
.seq AllocBody298_55 AllocBody298_72

def AllocBody298_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody298_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody298_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody298_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody298_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody298_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody298_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody298_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody298_82 : StackLang.HolProg 64 :=
.seq AllocBody298_80 AllocBody298_81

def AllocBody298_83 : StackLang.HolProg 64 :=
.seq AllocBody298_79 AllocBody298_82

def AllocBody298_84 : StackLang.HolProg 64 :=
.seq AllocBody298_78 AllocBody298_83

def AllocBody298_85 : StackLang.HolProg 64 :=
.seq AllocBody298_77 AllocBody298_84

def AllocBody298_86 : StackLang.HolProg 64 :=
.seq AllocBody298_76 AllocBody298_85

def AllocBody298_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody298_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody298_89 : StackLang.HolProg 64 :=
.seq AllocBody298_87 AllocBody298_88

def AllocBody298_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody298_91 : StackLang.HolProg 64 :=
.seq AllocBody298_89 AllocBody298_90

def AllocBody298_92 : StackLang.HolProg 64 :=
.call (some (AllocBody298_86, 0, 298, 4)) (Sum.inl 78) (some (AllocBody298_91, 298, 5))

def AllocBody298_93 : StackLang.HolProg 64 :=
.seq AllocBody298_75 AllocBody298_92

def AllocBody298_94 : StackLang.HolProg 64 :=
.seq AllocBody298_74 AllocBody298_93

def AllocBody298_95 : StackLang.HolProg 64 :=
.seq AllocBody298_73 AllocBody298_94

def AllocBody298_96 : StackLang.HolProg 64 :=
.seq AllocBody298_54 AllocBody298_95

def AllocBody298_97 : StackLang.HolProg 64 :=
.seq AllocBody298_51 AllocBody298_96

def AllocBody298_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody298_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody298_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody298_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody298_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody298_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody298_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody298_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody298_106 : StackLang.HolProg 64 :=
.seq AllocBody298_104 AllocBody298_105

def AllocBody298_107 : StackLang.HolProg 64 :=
.seq AllocBody298_103 AllocBody298_106

def AllocBody298_108 : StackLang.HolProg 64 :=
.seq AllocBody298_102 AllocBody298_107

def AllocBody298_109 : StackLang.HolProg 64 :=
.seq AllocBody298_101 AllocBody298_108

def AllocBody298_110 : StackLang.HolProg 64 :=
.seq AllocBody298_100 AllocBody298_109

def AllocBody298_111 : StackLang.HolProg 64 :=
.seq AllocBody298_99 AllocBody298_110

def AllocBody298_112 : StackLang.HolProg 64 :=
.seq AllocBody298_98 AllocBody298_111

def AllocBody298_113 : StackLang.HolProg 64 :=
.seq AllocBody298_97 AllocBody298_112

def AllocBody298_114 : StackLang.HolProg 64 :=
.seq AllocBody298_50 AllocBody298_113

def AllocBody298_115 : StackLang.HolProg 64 :=
.seq AllocBody298_49 AllocBody298_114

def AllocBody298_116 : StackLang.HolProg 64 :=
.seq AllocBody298_48 AllocBody298_115

def AllocBody298_117 : StackLang.HolProg 64 :=
.seq AllocBody298_47 AllocBody298_116

def AllocBody298_118 : StackLang.HolProg 64 :=
.seq AllocBody298_46 AllocBody298_117

def AllocBody298_119 : StackLang.HolProg 64 :=
.seq AllocBody298_3 AllocBody298_118

def AllocBody298_120 : StackLang.HolProg 64 :=
.seq AllocBody298_2 AllocBody298_119

def AllocBody298_121 : StackLang.HolProg 64 :=
.seq AllocBody298_1 AllocBody298_120

def AllocBody298_122 : StackLang.HolProg 64 :=
.seq AllocBody298_0 AllocBody298_121

def Alloc298 : Nat × StackLang.HolProg 64 := (298, AllocBody298_122)
theorem Alloc298_eq : StackAlloc.progComp (298, raw298) = Alloc298 := by
  kernel_rfl
#print axioms Alloc298_eq
end InitECandidate.Proofs.BackendStages
