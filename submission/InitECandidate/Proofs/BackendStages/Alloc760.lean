import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw760
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody760_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody760_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody760_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody760_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody760_4 : StackLang.HolProg 64 :=
.seq AllocBody760_2 AllocBody760_3

def AllocBody760_5 : StackLang.HolProg 64 :=
.seq AllocBody760_1 AllocBody760_4

def AllocBody760_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody760_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3391#64)

def AllocBody760_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody760_9 : StackLang.HolProg 64 :=
.seq AllocBody760_7 AllocBody760_8

def AllocBody760_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody760_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody760_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody760_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 760 3

def AllocBody760_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody760_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody760_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody760_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody760_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody760_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody760_20 : StackLang.HolProg 64 :=
.seq AllocBody760_18 AllocBody760_19

def AllocBody760_21 : StackLang.HolProg 64 :=
.seq AllocBody760_17 AllocBody760_20

def AllocBody760_22 : StackLang.HolProg 64 :=
.seq AllocBody760_16 AllocBody760_21

def AllocBody760_23 : StackLang.HolProg 64 :=
.seq AllocBody760_15 AllocBody760_22

def AllocBody760_24 : StackLang.HolProg 64 :=
.seq AllocBody760_14 AllocBody760_23

def AllocBody760_25 : StackLang.HolProg 64 :=
.seq AllocBody760_13 AllocBody760_24

def AllocBody760_26 : StackLang.HolProg 64 :=
.seq AllocBody760_12 AllocBody760_25

def AllocBody760_27 : StackLang.HolProg 64 :=
.seq AllocBody760_11 AllocBody760_26

def AllocBody760_28 : StackLang.HolProg 64 :=
.seq AllocBody760_10 AllocBody760_27

def AllocBody760_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody760_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody760_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody760_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody760_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody760_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody760_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody760_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody760_37 : StackLang.HolProg 64 :=
.seq AllocBody760_35 AllocBody760_36

def AllocBody760_38 : StackLang.HolProg 64 :=
.seq AllocBody760_34 AllocBody760_37

def AllocBody760_39 : StackLang.HolProg 64 :=
.seq AllocBody760_33 AllocBody760_38

def AllocBody760_40 : StackLang.HolProg 64 :=
.seq AllocBody760_32 AllocBody760_39

def AllocBody760_41 : StackLang.HolProg 64 :=
.seq AllocBody760_31 AllocBody760_40

def AllocBody760_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody760_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody760_44 : StackLang.HolProg 64 :=
.seq AllocBody760_42 AllocBody760_43

def AllocBody760_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody760_46 : StackLang.HolProg 64 :=
.seq AllocBody760_44 AllocBody760_45

def AllocBody760_47 : StackLang.HolProg 64 :=
.call (some (AllocBody760_41, 0, 760, 2)) (Sum.inl 746) (some (AllocBody760_46, 760, 3))

def AllocBody760_48 : StackLang.HolProg 64 :=
.seq AllocBody760_30 AllocBody760_47

def AllocBody760_49 : StackLang.HolProg 64 :=
.seq AllocBody760_29 AllocBody760_48

def AllocBody760_50 : StackLang.HolProg 64 :=
.seq AllocBody760_28 AllocBody760_49

def AllocBody760_51 : StackLang.HolProg 64 :=
.seq AllocBody760_9 AllocBody760_50

def AllocBody760_52 : StackLang.HolProg 64 :=
.seq AllocBody760_6 AllocBody760_51

def AllocBody760_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody760_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody760_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def AllocBody760_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody760_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def AllocBody760_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody760_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody760_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3392#64)

def AllocBody760_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody760_62 : StackLang.HolProg 64 :=
.seq AllocBody760_60 AllocBody760_61

def AllocBody760_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody760_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody760_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody760_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 760 5

def AllocBody760_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody760_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody760_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody760_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody760_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody760_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody760_73 : StackLang.HolProg 64 :=
.seq AllocBody760_71 AllocBody760_72

def AllocBody760_74 : StackLang.HolProg 64 :=
.seq AllocBody760_70 AllocBody760_73

def AllocBody760_75 : StackLang.HolProg 64 :=
.seq AllocBody760_69 AllocBody760_74

def AllocBody760_76 : StackLang.HolProg 64 :=
.seq AllocBody760_68 AllocBody760_75

def AllocBody760_77 : StackLang.HolProg 64 :=
.seq AllocBody760_67 AllocBody760_76

def AllocBody760_78 : StackLang.HolProg 64 :=
.seq AllocBody760_66 AllocBody760_77

def AllocBody760_79 : StackLang.HolProg 64 :=
.seq AllocBody760_65 AllocBody760_78

def AllocBody760_80 : StackLang.HolProg 64 :=
.seq AllocBody760_64 AllocBody760_79

def AllocBody760_81 : StackLang.HolProg 64 :=
.seq AllocBody760_63 AllocBody760_80

def AllocBody760_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody760_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody760_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody760_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody760_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody760_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody760_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody760_89 : StackLang.HolProg 64 :=
.seq AllocBody760_87 AllocBody760_88

def AllocBody760_90 : StackLang.HolProg 64 :=
.seq AllocBody760_86 AllocBody760_89

def AllocBody760_91 : StackLang.HolProg 64 :=
.seq AllocBody760_85 AllocBody760_90

def AllocBody760_92 : StackLang.HolProg 64 :=
.seq AllocBody760_84 AllocBody760_91

def AllocBody760_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody760_94 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody760_95 : StackLang.HolProg 64 :=
.seq AllocBody760_93 AllocBody760_94

def AllocBody760_96 : StackLang.HolProg 64 :=
.call (some (AllocBody760_92, 0, 760, 4)) (Sum.inl 751) (some (AllocBody760_95, 760, 5))

def AllocBody760_97 : StackLang.HolProg 64 :=
.seq AllocBody760_83 AllocBody760_96

def AllocBody760_98 : StackLang.HolProg 64 :=
.seq AllocBody760_82 AllocBody760_97

def AllocBody760_99 : StackLang.HolProg 64 :=
.seq AllocBody760_81 AllocBody760_98

def AllocBody760_100 : StackLang.HolProg 64 :=
.seq AllocBody760_62 AllocBody760_99

def AllocBody760_101 : StackLang.HolProg 64 :=
.seq AllocBody760_59 AllocBody760_100

def AllocBody760_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody760_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody760_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody760_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody760_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody760_107 : StackLang.HolProg 64 :=
.seq AllocBody760_105 AllocBody760_106

def AllocBody760_108 : StackLang.HolProg 64 :=
.seq AllocBody760_104 AllocBody760_107

def AllocBody760_109 : StackLang.HolProg 64 :=
.seq AllocBody760_103 AllocBody760_108

def AllocBody760_110 : StackLang.HolProg 64 :=
.seq AllocBody760_102 AllocBody760_109

def AllocBody760_111 : StackLang.HolProg 64 :=
.seq AllocBody760_101 AllocBody760_110

def AllocBody760_112 : StackLang.HolProg 64 :=
.seq AllocBody760_58 AllocBody760_111

def AllocBody760_113 : StackLang.HolProg 64 :=
.seq AllocBody760_57 AllocBody760_112

def AllocBody760_114 : StackLang.HolProg 64 :=
.seq AllocBody760_56 AllocBody760_113

def AllocBody760_115 : StackLang.HolProg 64 :=
.seq AllocBody760_55 AllocBody760_114

def AllocBody760_116 : StackLang.HolProg 64 :=
.seq AllocBody760_54 AllocBody760_115

def AllocBody760_117 : StackLang.HolProg 64 :=
.seq AllocBody760_53 AllocBody760_116

def AllocBody760_118 : StackLang.HolProg 64 :=
.seq AllocBody760_52 AllocBody760_117

def AllocBody760_119 : StackLang.HolProg 64 :=
.seq AllocBody760_5 AllocBody760_118

def AllocBody760_120 : StackLang.HolProg 64 :=
.seq AllocBody760_0 AllocBody760_119

def Alloc760 : Nat × StackLang.HolProg 64 := (760, AllocBody760_120)
theorem Alloc760_eq : StackAlloc.progComp (760, raw760) = Alloc760 := by
  kernel_rfl
#print axioms Alloc760_eq
end InitECandidate.Proofs.BackendStages
