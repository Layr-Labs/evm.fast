import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw244
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody244_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody244_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody244_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody244_3 : StackLang.HolProg 64 :=
.seq AllocBody244_1 AllocBody244_2

def AllocBody244_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def AllocBody244_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody244_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody244_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody244_8 : StackLang.HolProg 64 :=
.seq AllocBody244_6 AllocBody244_7

def AllocBody244_9 : StackLang.HolProg 64 :=
.seq AllocBody244_5 AllocBody244_8

def AllocBody244_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody244_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 481#64)

def AllocBody244_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody244_13 : StackLang.HolProg 64 :=
.seq AllocBody244_11 AllocBody244_12

def AllocBody244_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody244_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody244_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody244_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 244 3

def AllocBody244_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody244_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody244_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody244_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody244_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody244_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody244_24 : StackLang.HolProg 64 :=
.seq AllocBody244_22 AllocBody244_23

def AllocBody244_25 : StackLang.HolProg 64 :=
.seq AllocBody244_21 AllocBody244_24

def AllocBody244_26 : StackLang.HolProg 64 :=
.seq AllocBody244_20 AllocBody244_25

def AllocBody244_27 : StackLang.HolProg 64 :=
.seq AllocBody244_19 AllocBody244_26

def AllocBody244_28 : StackLang.HolProg 64 :=
.seq AllocBody244_18 AllocBody244_27

def AllocBody244_29 : StackLang.HolProg 64 :=
.seq AllocBody244_17 AllocBody244_28

def AllocBody244_30 : StackLang.HolProg 64 :=
.seq AllocBody244_16 AllocBody244_29

def AllocBody244_31 : StackLang.HolProg 64 :=
.seq AllocBody244_15 AllocBody244_30

def AllocBody244_32 : StackLang.HolProg 64 :=
.seq AllocBody244_14 AllocBody244_31

def AllocBody244_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody244_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody244_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody244_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody244_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody244_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody244_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody244_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody244_41 : StackLang.HolProg 64 :=
.seq AllocBody244_39 AllocBody244_40

def AllocBody244_42 : StackLang.HolProg 64 :=
.seq AllocBody244_38 AllocBody244_41

def AllocBody244_43 : StackLang.HolProg 64 :=
.seq AllocBody244_37 AllocBody244_42

def AllocBody244_44 : StackLang.HolProg 64 :=
.seq AllocBody244_36 AllocBody244_43

def AllocBody244_45 : StackLang.HolProg 64 :=
.seq AllocBody244_35 AllocBody244_44

def AllocBody244_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody244_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody244_48 : StackLang.HolProg 64 :=
.seq AllocBody244_46 AllocBody244_47

def AllocBody244_49 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody244_50 : StackLang.HolProg 64 :=
.seq AllocBody244_48 AllocBody244_49

def AllocBody244_51 : StackLang.HolProg 64 :=
.call (some (AllocBody244_45, 0, 244, 2)) (Sum.inl 78) (some (AllocBody244_50, 244, 3))

def AllocBody244_52 : StackLang.HolProg 64 :=
.seq AllocBody244_34 AllocBody244_51

def AllocBody244_53 : StackLang.HolProg 64 :=
.seq AllocBody244_33 AllocBody244_52

def AllocBody244_54 : StackLang.HolProg 64 :=
.seq AllocBody244_32 AllocBody244_53

def AllocBody244_55 : StackLang.HolProg 64 :=
.seq AllocBody244_13 AllocBody244_54

def AllocBody244_56 : StackLang.HolProg 64 :=
.seq AllocBody244_10 AllocBody244_55

def AllocBody244_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody244_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody244_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 8#64)

def AllocBody244_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody244_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody244_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 482#64)

def AllocBody244_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody244_64 : StackLang.HolProg 64 :=
.seq AllocBody244_62 AllocBody244_63

def AllocBody244_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody244_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody244_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody244_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 244 5

def AllocBody244_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody244_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody244_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody244_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody244_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody244_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody244_75 : StackLang.HolProg 64 :=
.seq AllocBody244_73 AllocBody244_74

def AllocBody244_76 : StackLang.HolProg 64 :=
.seq AllocBody244_72 AllocBody244_75

def AllocBody244_77 : StackLang.HolProg 64 :=
.seq AllocBody244_71 AllocBody244_76

def AllocBody244_78 : StackLang.HolProg 64 :=
.seq AllocBody244_70 AllocBody244_77

def AllocBody244_79 : StackLang.HolProg 64 :=
.seq AllocBody244_69 AllocBody244_78

def AllocBody244_80 : StackLang.HolProg 64 :=
.seq AllocBody244_68 AllocBody244_79

def AllocBody244_81 : StackLang.HolProg 64 :=
.seq AllocBody244_67 AllocBody244_80

def AllocBody244_82 : StackLang.HolProg 64 :=
.seq AllocBody244_66 AllocBody244_81

def AllocBody244_83 : StackLang.HolProg 64 :=
.seq AllocBody244_65 AllocBody244_82

def AllocBody244_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody244_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody244_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody244_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody244_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody244_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody244_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody244_91 : StackLang.HolProg 64 :=
.seq AllocBody244_89 AllocBody244_90

def AllocBody244_92 : StackLang.HolProg 64 :=
.seq AllocBody244_88 AllocBody244_91

def AllocBody244_93 : StackLang.HolProg 64 :=
.seq AllocBody244_87 AllocBody244_92

def AllocBody244_94 : StackLang.HolProg 64 :=
.seq AllocBody244_86 AllocBody244_93

def AllocBody244_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody244_96 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody244_97 : StackLang.HolProg 64 :=
.seq AllocBody244_95 AllocBody244_96

def AllocBody244_98 : StackLang.HolProg 64 :=
.call (some (AllocBody244_94, 0, 244, 4)) (Sum.inl 77) (some (AllocBody244_97, 244, 5))

def AllocBody244_99 : StackLang.HolProg 64 :=
.seq AllocBody244_85 AllocBody244_98

def AllocBody244_100 : StackLang.HolProg 64 :=
.seq AllocBody244_84 AllocBody244_99

def AllocBody244_101 : StackLang.HolProg 64 :=
.seq AllocBody244_83 AllocBody244_100

def AllocBody244_102 : StackLang.HolProg 64 :=
.seq AllocBody244_64 AllocBody244_101

def AllocBody244_103 : StackLang.HolProg 64 :=
.seq AllocBody244_61 AllocBody244_102

def AllocBody244_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody244_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody244_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody244_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody244_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody244_109 : StackLang.HolProg 64 :=
.seq AllocBody244_107 AllocBody244_108

def AllocBody244_110 : StackLang.HolProg 64 :=
.seq AllocBody244_106 AllocBody244_109

def AllocBody244_111 : StackLang.HolProg 64 :=
.seq AllocBody244_105 AllocBody244_110

def AllocBody244_112 : StackLang.HolProg 64 :=
.seq AllocBody244_104 AllocBody244_111

def AllocBody244_113 : StackLang.HolProg 64 :=
.seq AllocBody244_103 AllocBody244_112

def AllocBody244_114 : StackLang.HolProg 64 :=
.seq AllocBody244_60 AllocBody244_113

def AllocBody244_115 : StackLang.HolProg 64 :=
.seq AllocBody244_59 AllocBody244_114

def AllocBody244_116 : StackLang.HolProg 64 :=
.seq AllocBody244_58 AllocBody244_115

def AllocBody244_117 : StackLang.HolProg 64 :=
.seq AllocBody244_57 AllocBody244_116

def AllocBody244_118 : StackLang.HolProg 64 :=
.seq AllocBody244_56 AllocBody244_117

def AllocBody244_119 : StackLang.HolProg 64 :=
.seq AllocBody244_9 AllocBody244_118

def AllocBody244_120 : StackLang.HolProg 64 :=
.seq AllocBody244_4 AllocBody244_119

def AllocBody244_121 : StackLang.HolProg 64 :=
.seq AllocBody244_3 AllocBody244_120

def AllocBody244_122 : StackLang.HolProg 64 :=
.seq AllocBody244_0 AllocBody244_121

def Alloc244 : Nat × StackLang.HolProg 64 := (244, AllocBody244_122)
theorem Alloc244_eq : StackAlloc.progComp (244, raw244) = Alloc244 := by
  kernel_rfl
#print axioms Alloc244_eq
end InitECandidate.Proofs.BackendStages
