import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw458
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody458_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody458_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody458_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody458_3 : StackLang.HolProg 64 :=
.seq AllocBody458_1 AllocBody458_2

def AllocBody458_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody458_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1408#64)

def AllocBody458_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody458_7 : StackLang.HolProg 64 :=
.seq AllocBody458_5 AllocBody458_6

def AllocBody458_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody458_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody458_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody458_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 458 3

def AllocBody458_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody458_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody458_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody458_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody458_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody458_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody458_18 : StackLang.HolProg 64 :=
.seq AllocBody458_16 AllocBody458_17

def AllocBody458_19 : StackLang.HolProg 64 :=
.seq AllocBody458_15 AllocBody458_18

def AllocBody458_20 : StackLang.HolProg 64 :=
.seq AllocBody458_14 AllocBody458_19

def AllocBody458_21 : StackLang.HolProg 64 :=
.seq AllocBody458_13 AllocBody458_20

def AllocBody458_22 : StackLang.HolProg 64 :=
.seq AllocBody458_12 AllocBody458_21

def AllocBody458_23 : StackLang.HolProg 64 :=
.seq AllocBody458_11 AllocBody458_22

def AllocBody458_24 : StackLang.HolProg 64 :=
.seq AllocBody458_10 AllocBody458_23

def AllocBody458_25 : StackLang.HolProg 64 :=
.seq AllocBody458_9 AllocBody458_24

def AllocBody458_26 : StackLang.HolProg 64 :=
.seq AllocBody458_8 AllocBody458_25

def AllocBody458_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody458_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody458_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody458_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody458_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody458_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody458_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody458_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody458_35 : StackLang.HolProg 64 :=
.seq AllocBody458_33 AllocBody458_34

def AllocBody458_36 : StackLang.HolProg 64 :=
.seq AllocBody458_32 AllocBody458_35

def AllocBody458_37 : StackLang.HolProg 64 :=
.seq AllocBody458_31 AllocBody458_36

def AllocBody458_38 : StackLang.HolProg 64 :=
.seq AllocBody458_30 AllocBody458_37

def AllocBody458_39 : StackLang.HolProg 64 :=
.seq AllocBody458_29 AllocBody458_38

def AllocBody458_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody458_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody458_42 : StackLang.HolProg 64 :=
.seq AllocBody458_40 AllocBody458_41

def AllocBody458_43 : StackLang.HolProg 64 :=
.call (some (AllocBody458_39, 0, 458, 2)) (Sum.inl 198) (some (AllocBody458_42, 458, 3))

def AllocBody458_44 : StackLang.HolProg 64 :=
.seq AllocBody458_28 AllocBody458_43

def AllocBody458_45 : StackLang.HolProg 64 :=
.seq AllocBody458_27 AllocBody458_44

def AllocBody458_46 : StackLang.HolProg 64 :=
.seq AllocBody458_26 AllocBody458_45

def AllocBody458_47 : StackLang.HolProg 64 :=
.seq AllocBody458_7 AllocBody458_46

def AllocBody458_48 : StackLang.HolProg 64 :=
.seq AllocBody458_4 AllocBody458_47

def AllocBody458_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody458_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody458_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 2#64)

def AllocBody458_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def AllocBody458_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody458_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody458_55 : StackLang.HolProg 64 :=
.seq AllocBody458_53 AllocBody458_54

def AllocBody458_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody458_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1409#64)

def AllocBody458_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody458_59 : StackLang.HolProg 64 :=
.seq AllocBody458_57 AllocBody458_58

def AllocBody458_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody458_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody458_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody458_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 458 5

def AllocBody458_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody458_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody458_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody458_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody458_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody458_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody458_70 : StackLang.HolProg 64 :=
.seq AllocBody458_68 AllocBody458_69

def AllocBody458_71 : StackLang.HolProg 64 :=
.seq AllocBody458_67 AllocBody458_70

def AllocBody458_72 : StackLang.HolProg 64 :=
.seq AllocBody458_66 AllocBody458_71

def AllocBody458_73 : StackLang.HolProg 64 :=
.seq AllocBody458_65 AllocBody458_72

def AllocBody458_74 : StackLang.HolProg 64 :=
.seq AllocBody458_64 AllocBody458_73

def AllocBody458_75 : StackLang.HolProg 64 :=
.seq AllocBody458_63 AllocBody458_74

def AllocBody458_76 : StackLang.HolProg 64 :=
.seq AllocBody458_62 AllocBody458_75

def AllocBody458_77 : StackLang.HolProg 64 :=
.seq AllocBody458_61 AllocBody458_76

def AllocBody458_78 : StackLang.HolProg 64 :=
.seq AllocBody458_60 AllocBody458_77

def AllocBody458_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody458_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody458_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody458_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody458_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody458_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody458_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody458_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody458_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody458_88 : StackLang.HolProg 64 :=
.seq AllocBody458_86 AllocBody458_87

def AllocBody458_89 : StackLang.HolProg 64 :=
.seq AllocBody458_85 AllocBody458_88

def AllocBody458_90 : StackLang.HolProg 64 :=
.seq AllocBody458_84 AllocBody458_89

def AllocBody458_91 : StackLang.HolProg 64 :=
.seq AllocBody458_83 AllocBody458_90

def AllocBody458_92 : StackLang.HolProg 64 :=
.seq AllocBody458_82 AllocBody458_91

def AllocBody458_93 : StackLang.HolProg 64 :=
.seq AllocBody458_81 AllocBody458_92

def AllocBody458_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody458_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody458_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody458_97 : StackLang.HolProg 64 :=
.seq AllocBody458_95 AllocBody458_96

def AllocBody458_98 : StackLang.HolProg 64 :=
.seq AllocBody458_94 AllocBody458_97

def AllocBody458_99 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody458_100 : StackLang.HolProg 64 :=
.seq AllocBody458_98 AllocBody458_99

def AllocBody458_101 : StackLang.HolProg 64 :=
.call (some (AllocBody458_93, 0, 458, 4)) (Sum.inl 457) (some (AllocBody458_100, 458, 5))

def AllocBody458_102 : StackLang.HolProg 64 :=
.seq AllocBody458_80 AllocBody458_101

def AllocBody458_103 : StackLang.HolProg 64 :=
.seq AllocBody458_79 AllocBody458_102

def AllocBody458_104 : StackLang.HolProg 64 :=
.seq AllocBody458_78 AllocBody458_103

def AllocBody458_105 : StackLang.HolProg 64 :=
.seq AllocBody458_59 AllocBody458_104

def AllocBody458_106 : StackLang.HolProg 64 :=
.seq AllocBody458_56 AllocBody458_105

def AllocBody458_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody458_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody458_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody458_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody458_111 : StackLang.HolProg 64 :=
.seq AllocBody458_109 AllocBody458_110

def AllocBody458_112 : StackLang.HolProg 64 :=
.seq AllocBody458_108 AllocBody458_111

def AllocBody458_113 : StackLang.HolProg 64 :=
.seq AllocBody458_107 AllocBody458_112

def AllocBody458_114 : StackLang.HolProg 64 :=
.seq AllocBody458_106 AllocBody458_113

def AllocBody458_115 : StackLang.HolProg 64 :=
.seq AllocBody458_55 AllocBody458_114

def AllocBody458_116 : StackLang.HolProg 64 :=
.seq AllocBody458_52 AllocBody458_115

def AllocBody458_117 : StackLang.HolProg 64 :=
.seq AllocBody458_51 AllocBody458_116

def AllocBody458_118 : StackLang.HolProg 64 :=
.seq AllocBody458_50 AllocBody458_117

def AllocBody458_119 : StackLang.HolProg 64 :=
.seq AllocBody458_49 AllocBody458_118

def AllocBody458_120 : StackLang.HolProg 64 :=
.seq AllocBody458_48 AllocBody458_119

def AllocBody458_121 : StackLang.HolProg 64 :=
.seq AllocBody458_3 AllocBody458_120

def AllocBody458_122 : StackLang.HolProg 64 :=
.seq AllocBody458_0 AllocBody458_121

def Alloc458 : Nat × StackLang.HolProg 64 := (458, AllocBody458_122)
theorem Alloc458_eq : StackAlloc.progComp (458, raw458) = Alloc458 := by
  kernel_rfl
#print axioms Alloc458_eq
end InitECandidate.Proofs.BackendStages
