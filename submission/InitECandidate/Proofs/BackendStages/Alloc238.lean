import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw238
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody238_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody238_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody238_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody238_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody238_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody238_5 : StackLang.HolProg 64 :=
.seq AllocBody238_3 AllocBody238_4

def AllocBody238_6 : StackLang.HolProg 64 :=
.seq AllocBody238_2 AllocBody238_5

def AllocBody238_7 : StackLang.HolProg 64 :=
.seq AllocBody238_1 AllocBody238_6

def AllocBody238_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody238_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 455#64)

def AllocBody238_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody238_11 : StackLang.HolProg 64 :=
.seq AllocBody238_9 AllocBody238_10

def AllocBody238_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody238_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody238_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody238_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 238 3

def AllocBody238_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody238_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody238_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody238_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody238_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody238_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody238_22 : StackLang.HolProg 64 :=
.seq AllocBody238_20 AllocBody238_21

def AllocBody238_23 : StackLang.HolProg 64 :=
.seq AllocBody238_19 AllocBody238_22

def AllocBody238_24 : StackLang.HolProg 64 :=
.seq AllocBody238_18 AllocBody238_23

def AllocBody238_25 : StackLang.HolProg 64 :=
.seq AllocBody238_17 AllocBody238_24

def AllocBody238_26 : StackLang.HolProg 64 :=
.seq AllocBody238_16 AllocBody238_25

def AllocBody238_27 : StackLang.HolProg 64 :=
.seq AllocBody238_15 AllocBody238_26

def AllocBody238_28 : StackLang.HolProg 64 :=
.seq AllocBody238_14 AllocBody238_27

def AllocBody238_29 : StackLang.HolProg 64 :=
.seq AllocBody238_13 AllocBody238_28

def AllocBody238_30 : StackLang.HolProg 64 :=
.seq AllocBody238_12 AllocBody238_29

def AllocBody238_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody238_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody238_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody238_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody238_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody238_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody238_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody238_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody238_39 : StackLang.HolProg 64 :=
.seq AllocBody238_37 AllocBody238_38

def AllocBody238_40 : StackLang.HolProg 64 :=
.seq AllocBody238_36 AllocBody238_39

def AllocBody238_41 : StackLang.HolProg 64 :=
.seq AllocBody238_35 AllocBody238_40

def AllocBody238_42 : StackLang.HolProg 64 :=
.seq AllocBody238_34 AllocBody238_41

def AllocBody238_43 : StackLang.HolProg 64 :=
.seq AllocBody238_33 AllocBody238_42

def AllocBody238_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody238_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody238_46 : StackLang.HolProg 64 :=
.seq AllocBody238_44 AllocBody238_45

def AllocBody238_47 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody238_48 : StackLang.HolProg 64 :=
.seq AllocBody238_46 AllocBody238_47

def AllocBody238_49 : StackLang.HolProg 64 :=
.call (some (AllocBody238_43, 0, 238, 2)) (Sum.inl 237) (some (AllocBody238_48, 238, 3))

def AllocBody238_50 : StackLang.HolProg 64 :=
.seq AllocBody238_32 AllocBody238_49

def AllocBody238_51 : StackLang.HolProg 64 :=
.seq AllocBody238_31 AllocBody238_50

def AllocBody238_52 : StackLang.HolProg 64 :=
.seq AllocBody238_30 AllocBody238_51

def AllocBody238_53 : StackLang.HolProg 64 :=
.seq AllocBody238_11 AllocBody238_52

def AllocBody238_54 : StackLang.HolProg 64 :=
.seq AllocBody238_8 AllocBody238_53

def AllocBody238_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody238_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody238_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody238_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 456#64)

def AllocBody238_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody238_60 : StackLang.HolProg 64 :=
.seq AllocBody238_58 AllocBody238_59

def AllocBody238_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody238_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody238_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody238_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 238 5

def AllocBody238_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody238_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody238_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody238_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody238_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody238_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody238_71 : StackLang.HolProg 64 :=
.seq AllocBody238_69 AllocBody238_70

def AllocBody238_72 : StackLang.HolProg 64 :=
.seq AllocBody238_68 AllocBody238_71

def AllocBody238_73 : StackLang.HolProg 64 :=
.seq AllocBody238_67 AllocBody238_72

def AllocBody238_74 : StackLang.HolProg 64 :=
.seq AllocBody238_66 AllocBody238_73

def AllocBody238_75 : StackLang.HolProg 64 :=
.seq AllocBody238_65 AllocBody238_74

def AllocBody238_76 : StackLang.HolProg 64 :=
.seq AllocBody238_64 AllocBody238_75

def AllocBody238_77 : StackLang.HolProg 64 :=
.seq AllocBody238_63 AllocBody238_76

def AllocBody238_78 : StackLang.HolProg 64 :=
.seq AllocBody238_62 AllocBody238_77

def AllocBody238_79 : StackLang.HolProg 64 :=
.seq AllocBody238_61 AllocBody238_78

def AllocBody238_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody238_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody238_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody238_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody238_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody238_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody238_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody238_87 : StackLang.HolProg 64 :=
.seq AllocBody238_85 AllocBody238_86

def AllocBody238_88 : StackLang.HolProg 64 :=
.seq AllocBody238_84 AllocBody238_87

def AllocBody238_89 : StackLang.HolProg 64 :=
.seq AllocBody238_83 AllocBody238_88

def AllocBody238_90 : StackLang.HolProg 64 :=
.seq AllocBody238_82 AllocBody238_89

def AllocBody238_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody238_92 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody238_93 : StackLang.HolProg 64 :=
.seq AllocBody238_91 AllocBody238_92

def AllocBody238_94 : StackLang.HolProg 64 :=
.call (some (AllocBody238_90, 0, 238, 4)) (Sum.inl 236) (some (AllocBody238_93, 238, 5))

def AllocBody238_95 : StackLang.HolProg 64 :=
.seq AllocBody238_81 AllocBody238_94

def AllocBody238_96 : StackLang.HolProg 64 :=
.seq AllocBody238_80 AllocBody238_95

def AllocBody238_97 : StackLang.HolProg 64 :=
.seq AllocBody238_79 AllocBody238_96

def AllocBody238_98 : StackLang.HolProg 64 :=
.seq AllocBody238_60 AllocBody238_97

def AllocBody238_99 : StackLang.HolProg 64 :=
.seq AllocBody238_57 AllocBody238_98

def AllocBody238_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody238_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody238_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody238_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody238_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody238_105 : StackLang.HolProg 64 :=
.seq AllocBody238_103 AllocBody238_104

def AllocBody238_106 : StackLang.HolProg 64 :=
.seq AllocBody238_102 AllocBody238_105

def AllocBody238_107 : StackLang.HolProg 64 :=
.seq AllocBody238_101 AllocBody238_106

def AllocBody238_108 : StackLang.HolProg 64 :=
.seq AllocBody238_100 AllocBody238_107

def AllocBody238_109 : StackLang.HolProg 64 :=
.seq AllocBody238_99 AllocBody238_108

def AllocBody238_110 : StackLang.HolProg 64 :=
.seq AllocBody238_56 AllocBody238_109

def AllocBody238_111 : StackLang.HolProg 64 :=
.seq AllocBody238_55 AllocBody238_110

def AllocBody238_112 : StackLang.HolProg 64 :=
.seq AllocBody238_54 AllocBody238_111

def AllocBody238_113 : StackLang.HolProg 64 :=
.seq AllocBody238_7 AllocBody238_112

def AllocBody238_114 : StackLang.HolProg 64 :=
.seq AllocBody238_0 AllocBody238_113

def Alloc238 : Nat × StackLang.HolProg 64 := (238, AllocBody238_114)
theorem Alloc238_eq : StackAlloc.progComp (238, raw238) = Alloc238 := by
  kernel_rfl
#print axioms Alloc238_eq
end InitECandidate.Proofs.BackendStages
