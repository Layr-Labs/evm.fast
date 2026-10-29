import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw179
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody179_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody179_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody179_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def AllocBody179_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody179_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def AllocBody179_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody179_6 : StackLang.HolProg 64 :=
.seq AllocBody179_4 AllocBody179_5

def AllocBody179_7 : StackLang.HolProg 64 :=
.seq AllocBody179_3 AllocBody179_6

def AllocBody179_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody179_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody179_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody179_11 : StackLang.HolProg 64 :=
.seq AllocBody179_9 AllocBody179_10

def AllocBody179_12 : StackLang.HolProg 64 :=
.seq AllocBody179_8 AllocBody179_11

def AllocBody179_13 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody179_7 AllocBody179_12

def AllocBody179_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody179_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody179_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 128#64)

def AllocBody179_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody179_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody179_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody179_20 : StackLang.HolProg 64 :=
.seq AllocBody179_18 AllocBody179_19

def AllocBody179_21 : StackLang.HolProg 64 :=
.seq AllocBody179_17 AllocBody179_20

def AllocBody179_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody179_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody179_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody179_25 : StackLang.HolProg 64 :=
.seq AllocBody179_23 AllocBody179_24

def AllocBody179_26 : StackLang.HolProg 64 :=
.seq AllocBody179_22 AllocBody179_25

def AllocBody179_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody179_21 AllocBody179_26

def AllocBody179_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody179_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody179_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody179_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody179_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody179_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody179_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody179_35 : StackLang.HolProg 64 :=
.seq AllocBody179_33 AllocBody179_34

def AllocBody179_36 : StackLang.HolProg 64 :=
.seq AllocBody179_32 AllocBody179_35

def AllocBody179_37 : StackLang.HolProg 64 :=
.seq AllocBody179_31 AllocBody179_36

def AllocBody179_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody179_39 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) AllocBody179_37 AllocBody179_38

def AllocBody179_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody179_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody179_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody179_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody179_44 : StackLang.HolProg 64 :=
.seq AllocBody179_42 AllocBody179_43

def AllocBody179_45 : StackLang.HolProg 64 :=
.seq AllocBody179_41 AllocBody179_44

def AllocBody179_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody179_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 201#64)

def AllocBody179_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody179_49 : StackLang.HolProg 64 :=
.seq AllocBody179_47 AllocBody179_48

def AllocBody179_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody179_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody179_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody179_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 179 3

def AllocBody179_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody179_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody179_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody179_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody179_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody179_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody179_60 : StackLang.HolProg 64 :=
.seq AllocBody179_58 AllocBody179_59

def AllocBody179_61 : StackLang.HolProg 64 :=
.seq AllocBody179_57 AllocBody179_60

def AllocBody179_62 : StackLang.HolProg 64 :=
.seq AllocBody179_56 AllocBody179_61

def AllocBody179_63 : StackLang.HolProg 64 :=
.seq AllocBody179_55 AllocBody179_62

def AllocBody179_64 : StackLang.HolProg 64 :=
.seq AllocBody179_54 AllocBody179_63

def AllocBody179_65 : StackLang.HolProg 64 :=
.seq AllocBody179_53 AllocBody179_64

def AllocBody179_66 : StackLang.HolProg 64 :=
.seq AllocBody179_52 AllocBody179_65

def AllocBody179_67 : StackLang.HolProg 64 :=
.seq AllocBody179_51 AllocBody179_66

def AllocBody179_68 : StackLang.HolProg 64 :=
.seq AllocBody179_50 AllocBody179_67

def AllocBody179_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody179_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody179_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody179_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody179_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody179_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody179_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody179_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody179_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody179_78 : StackLang.HolProg 64 :=
.seq AllocBody179_76 AllocBody179_77

def AllocBody179_79 : StackLang.HolProg 64 :=
.seq AllocBody179_75 AllocBody179_78

def AllocBody179_80 : StackLang.HolProg 64 :=
.seq AllocBody179_74 AllocBody179_79

def AllocBody179_81 : StackLang.HolProg 64 :=
.seq AllocBody179_73 AllocBody179_80

def AllocBody179_82 : StackLang.HolProg 64 :=
.seq AllocBody179_72 AllocBody179_81

def AllocBody179_83 : StackLang.HolProg 64 :=
.seq AllocBody179_71 AllocBody179_82

def AllocBody179_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody179_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody179_86 : StackLang.HolProg 64 :=
.seq AllocBody179_84 AllocBody179_85

def AllocBody179_87 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody179_88 : StackLang.HolProg 64 :=
.seq AllocBody179_86 AllocBody179_87

def AllocBody179_89 : StackLang.HolProg 64 :=
.call (some (AllocBody179_83, 0, 179, 2)) (Sum.inl 175) (some (AllocBody179_88, 179, 3))

def AllocBody179_90 : StackLang.HolProg 64 :=
.seq AllocBody179_70 AllocBody179_89

def AllocBody179_91 : StackLang.HolProg 64 :=
.seq AllocBody179_69 AllocBody179_90

def AllocBody179_92 : StackLang.HolProg 64 :=
.seq AllocBody179_68 AllocBody179_91

def AllocBody179_93 : StackLang.HolProg 64 :=
.seq AllocBody179_49 AllocBody179_92

def AllocBody179_94 : StackLang.HolProg 64 :=
.seq AllocBody179_46 AllocBody179_93

def AllocBody179_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody179_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody179_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody179_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody179_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody179_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody179_101 : StackLang.HolProg 64 :=
.seq AllocBody179_99 AllocBody179_100

def AllocBody179_102 : StackLang.HolProg 64 :=
.seq AllocBody179_98 AllocBody179_101

def AllocBody179_103 : StackLang.HolProg 64 :=
.seq AllocBody179_97 AllocBody179_102

def AllocBody179_104 : StackLang.HolProg 64 :=
.seq AllocBody179_96 AllocBody179_103

def AllocBody179_105 : StackLang.HolProg 64 :=
.seq AllocBody179_95 AllocBody179_104

def AllocBody179_106 : StackLang.HolProg 64 :=
.seq AllocBody179_94 AllocBody179_105

def AllocBody179_107 : StackLang.HolProg 64 :=
.seq AllocBody179_45 AllocBody179_106

def AllocBody179_108 : StackLang.HolProg 64 :=
.seq AllocBody179_40 AllocBody179_107

def AllocBody179_109 : StackLang.HolProg 64 :=
.seq AllocBody179_39 AllocBody179_108

def AllocBody179_110 : StackLang.HolProg 64 :=
.seq AllocBody179_30 AllocBody179_109

def AllocBody179_111 : StackLang.HolProg 64 :=
.seq AllocBody179_29 AllocBody179_110

def AllocBody179_112 : StackLang.HolProg 64 :=
.seq AllocBody179_28 AllocBody179_111

def AllocBody179_113 : StackLang.HolProg 64 :=
.seq AllocBody179_27 AllocBody179_112

def AllocBody179_114 : StackLang.HolProg 64 :=
.seq AllocBody179_16 AllocBody179_113

def AllocBody179_115 : StackLang.HolProg 64 :=
.seq AllocBody179_15 AllocBody179_114

def AllocBody179_116 : StackLang.HolProg 64 :=
.seq AllocBody179_14 AllocBody179_115

def AllocBody179_117 : StackLang.HolProg 64 :=
.seq AllocBody179_13 AllocBody179_116

def AllocBody179_118 : StackLang.HolProg 64 :=
.seq AllocBody179_2 AllocBody179_117

def AllocBody179_119 : StackLang.HolProg 64 :=
.seq AllocBody179_1 AllocBody179_118

def AllocBody179_120 : StackLang.HolProg 64 :=
.seq AllocBody179_0 AllocBody179_119

def Alloc179 : Nat × StackLang.HolProg 64 := (179, AllocBody179_120)
theorem Alloc179_eq : StackAlloc.progComp (179, raw179) = Alloc179 := by
  kernel_rfl
#print axioms Alloc179_eq
end InitECandidate.Proofs.BackendStages
