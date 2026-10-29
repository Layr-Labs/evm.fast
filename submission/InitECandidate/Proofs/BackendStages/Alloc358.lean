import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw358
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody358_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody358_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody358_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody358_3 : StackLang.HolProg 64 :=
.seq AllocBody358_1 AllocBody358_2

def AllocBody358_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody358_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1032#64)

def AllocBody358_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody358_7 : StackLang.HolProg 64 :=
.seq AllocBody358_5 AllocBody358_6

def AllocBody358_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody358_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody358_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody358_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 358 3

def AllocBody358_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody358_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody358_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody358_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody358_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody358_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody358_18 : StackLang.HolProg 64 :=
.seq AllocBody358_16 AllocBody358_17

def AllocBody358_19 : StackLang.HolProg 64 :=
.seq AllocBody358_15 AllocBody358_18

def AllocBody358_20 : StackLang.HolProg 64 :=
.seq AllocBody358_14 AllocBody358_19

def AllocBody358_21 : StackLang.HolProg 64 :=
.seq AllocBody358_13 AllocBody358_20

def AllocBody358_22 : StackLang.HolProg 64 :=
.seq AllocBody358_12 AllocBody358_21

def AllocBody358_23 : StackLang.HolProg 64 :=
.seq AllocBody358_11 AllocBody358_22

def AllocBody358_24 : StackLang.HolProg 64 :=
.seq AllocBody358_10 AllocBody358_23

def AllocBody358_25 : StackLang.HolProg 64 :=
.seq AllocBody358_9 AllocBody358_24

def AllocBody358_26 : StackLang.HolProg 64 :=
.seq AllocBody358_8 AllocBody358_25

def AllocBody358_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody358_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody358_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody358_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody358_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody358_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody358_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody358_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody358_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody358_36 : StackLang.HolProg 64 :=
.seq AllocBody358_34 AllocBody358_35

def AllocBody358_37 : StackLang.HolProg 64 :=
.seq AllocBody358_33 AllocBody358_36

def AllocBody358_38 : StackLang.HolProg 64 :=
.seq AllocBody358_32 AllocBody358_37

def AllocBody358_39 : StackLang.HolProg 64 :=
.seq AllocBody358_31 AllocBody358_38

def AllocBody358_40 : StackLang.HolProg 64 :=
.seq AllocBody358_30 AllocBody358_39

def AllocBody358_41 : StackLang.HolProg 64 :=
.seq AllocBody358_29 AllocBody358_40

def AllocBody358_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody358_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody358_44 : StackLang.HolProg 64 :=
.seq AllocBody358_42 AllocBody358_43

def AllocBody358_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody358_46 : StackLang.HolProg 64 :=
.seq AllocBody358_44 AllocBody358_45

def AllocBody358_47 : StackLang.HolProg 64 :=
.call (some (AllocBody358_41, 0, 358, 2)) (Sum.inl 139) (some (AllocBody358_46, 358, 3))

def AllocBody358_48 : StackLang.HolProg 64 :=
.seq AllocBody358_28 AllocBody358_47

def AllocBody358_49 : StackLang.HolProg 64 :=
.seq AllocBody358_27 AllocBody358_48

def AllocBody358_50 : StackLang.HolProg 64 :=
.seq AllocBody358_26 AllocBody358_49

def AllocBody358_51 : StackLang.HolProg 64 :=
.seq AllocBody358_7 AllocBody358_50

def AllocBody358_52 : StackLang.HolProg 64 :=
.seq AllocBody358_4 AllocBody358_51

def AllocBody358_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody358_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody358_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody358_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody358_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody358_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody358_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody358_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody358_61 : StackLang.HolProg 64 :=
.seq AllocBody358_59 AllocBody358_60

def AllocBody358_62 : StackLang.HolProg 64 :=
.seq AllocBody358_58 AllocBody358_61

def AllocBody358_63 : StackLang.HolProg 64 :=
.seq AllocBody358_57 AllocBody358_62

def AllocBody358_64 : StackLang.HolProg 64 :=
.seq AllocBody358_56 AllocBody358_63

def AllocBody358_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody358_66 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody358_64 AllocBody358_65

def AllocBody358_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody358_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody358_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody358_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody358_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody358_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody358_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def AllocBody358_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody358_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody358_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody358_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody358_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody358_79 : StackLang.HolProg 64 :=
.seq AllocBody358_77 AllocBody358_78

def AllocBody358_80 : StackLang.HolProg 64 :=
.seq AllocBody358_76 AllocBody358_79

def AllocBody358_81 : StackLang.HolProg 64 :=
.seq AllocBody358_75 AllocBody358_80

def AllocBody358_82 : StackLang.HolProg 64 :=
.seq AllocBody358_74 AllocBody358_81

def AllocBody358_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody358_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody358_82 AllocBody358_83

def AllocBody358_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody358_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody358_87 : StackLang.HolProg 64 :=
.seq AllocBody358_85 AllocBody358_86

def AllocBody358_88 : StackLang.HolProg 64 :=
.seq AllocBody358_84 AllocBody358_87

def AllocBody358_89 : StackLang.HolProg 64 :=
.seq AllocBody358_73 AllocBody358_88

def AllocBody358_90 : StackLang.HolProg 64 :=
.seq AllocBody358_72 AllocBody358_89

def AllocBody358_91 : StackLang.HolProg 64 :=
.seq AllocBody358_71 AllocBody358_90

def AllocBody358_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody358_93 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody358_91 AllocBody358_92

def AllocBody358_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody358_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody358_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody358_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody358_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody358_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody358_100 : StackLang.HolProg 64 :=
.seq AllocBody358_98 AllocBody358_99

def AllocBody358_101 : StackLang.HolProg 64 :=
.seq AllocBody358_97 AllocBody358_100

def AllocBody358_102 : StackLang.HolProg 64 :=
.seq AllocBody358_96 AllocBody358_101

def AllocBody358_103 : StackLang.HolProg 64 :=
.seq AllocBody358_95 AllocBody358_102

def AllocBody358_104 : StackLang.HolProg 64 :=
.seq AllocBody358_94 AllocBody358_103

def AllocBody358_105 : StackLang.HolProg 64 :=
.seq AllocBody358_93 AllocBody358_104

def AllocBody358_106 : StackLang.HolProg 64 :=
.seq AllocBody358_70 AllocBody358_105

def AllocBody358_107 : StackLang.HolProg 64 :=
.seq AllocBody358_69 AllocBody358_106

def AllocBody358_108 : StackLang.HolProg 64 :=
.seq AllocBody358_68 AllocBody358_107

def AllocBody358_109 : StackLang.HolProg 64 :=
.seq AllocBody358_67 AllocBody358_108

def AllocBody358_110 : StackLang.HolProg 64 :=
.seq AllocBody358_66 AllocBody358_109

def AllocBody358_111 : StackLang.HolProg 64 :=
.seq AllocBody358_55 AllocBody358_110

def AllocBody358_112 : StackLang.HolProg 64 :=
.seq AllocBody358_54 AllocBody358_111

def AllocBody358_113 : StackLang.HolProg 64 :=
.seq AllocBody358_53 AllocBody358_112

def AllocBody358_114 : StackLang.HolProg 64 :=
.seq AllocBody358_52 AllocBody358_113

def AllocBody358_115 : StackLang.HolProg 64 :=
.seq AllocBody358_3 AllocBody358_114

def AllocBody358_116 : StackLang.HolProg 64 :=
.seq AllocBody358_0 AllocBody358_115

def Alloc358 : Nat × StackLang.HolProg 64 := (358, AllocBody358_116)
theorem Alloc358_eq : StackAlloc.progComp (358, raw358) = Alloc358 := by
  kernel_rfl
#print axioms Alloc358_eq
end InitECandidate.Proofs.BackendStages
