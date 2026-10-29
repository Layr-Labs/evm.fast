import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw417
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody417_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody417_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody417_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody417_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1243#64)

def AllocBody417_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody417_5 : StackLang.HolProg 64 :=
.seq AllocBody417_3 AllocBody417_4

def AllocBody417_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody417_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody417_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody417_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 417 3

def AllocBody417_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody417_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody417_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody417_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody417_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody417_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody417_16 : StackLang.HolProg 64 :=
.seq AllocBody417_14 AllocBody417_15

def AllocBody417_17 : StackLang.HolProg 64 :=
.seq AllocBody417_13 AllocBody417_16

def AllocBody417_18 : StackLang.HolProg 64 :=
.seq AllocBody417_12 AllocBody417_17

def AllocBody417_19 : StackLang.HolProg 64 :=
.seq AllocBody417_11 AllocBody417_18

def AllocBody417_20 : StackLang.HolProg 64 :=
.seq AllocBody417_10 AllocBody417_19

def AllocBody417_21 : StackLang.HolProg 64 :=
.seq AllocBody417_9 AllocBody417_20

def AllocBody417_22 : StackLang.HolProg 64 :=
.seq AllocBody417_8 AllocBody417_21

def AllocBody417_23 : StackLang.HolProg 64 :=
.seq AllocBody417_7 AllocBody417_22

def AllocBody417_24 : StackLang.HolProg 64 :=
.seq AllocBody417_6 AllocBody417_23

def AllocBody417_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody417_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody417_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody417_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody417_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody417_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody417_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody417_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody417_33 : StackLang.HolProg 64 :=
.seq AllocBody417_31 AllocBody417_32

def AllocBody417_34 : StackLang.HolProg 64 :=
.seq AllocBody417_30 AllocBody417_33

def AllocBody417_35 : StackLang.HolProg 64 :=
.seq AllocBody417_29 AllocBody417_34

def AllocBody417_36 : StackLang.HolProg 64 :=
.seq AllocBody417_28 AllocBody417_35

def AllocBody417_37 : StackLang.HolProg 64 :=
.seq AllocBody417_27 AllocBody417_36

def AllocBody417_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody417_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody417_40 : StackLang.HolProg 64 :=
.seq AllocBody417_38 AllocBody417_39

def AllocBody417_41 : StackLang.HolProg 64 :=
.call (some (AllocBody417_37, 0, 417, 2)) (Sum.inl 406) (some (AllocBody417_40, 417, 3))

def AllocBody417_42 : StackLang.HolProg 64 :=
.seq AllocBody417_26 AllocBody417_41

def AllocBody417_43 : StackLang.HolProg 64 :=
.seq AllocBody417_25 AllocBody417_42

def AllocBody417_44 : StackLang.HolProg 64 :=
.seq AllocBody417_24 AllocBody417_43

def AllocBody417_45 : StackLang.HolProg 64 :=
.seq AllocBody417_5 AllocBody417_44

def AllocBody417_46 : StackLang.HolProg 64 :=
.seq AllocBody417_2 AllocBody417_45

def AllocBody417_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody417_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody417_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody417_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody417_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody417_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody417_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody417_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody417_55 : StackLang.HolProg 64 :=
.seq AllocBody417_53 AllocBody417_54

def AllocBody417_56 : StackLang.HolProg 64 :=
.seq AllocBody417_52 AllocBody417_55

def AllocBody417_57 : StackLang.HolProg 64 :=
.seq AllocBody417_51 AllocBody417_56

def AllocBody417_58 : StackLang.HolProg 64 :=
.seq AllocBody417_50 AllocBody417_57

def AllocBody417_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody417_60 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody417_58 AllocBody417_59

def AllocBody417_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody417_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody417_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody417_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody417_65 : StackLang.HolProg 64 :=
.seq AllocBody417_63 AllocBody417_64

def AllocBody417_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody417_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1244#64)

def AllocBody417_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody417_69 : StackLang.HolProg 64 :=
.seq AllocBody417_67 AllocBody417_68

def AllocBody417_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody417_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody417_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody417_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 417 5

def AllocBody417_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody417_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody417_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody417_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody417_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody417_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody417_80 : StackLang.HolProg 64 :=
.seq AllocBody417_78 AllocBody417_79

def AllocBody417_81 : StackLang.HolProg 64 :=
.seq AllocBody417_77 AllocBody417_80

def AllocBody417_82 : StackLang.HolProg 64 :=
.seq AllocBody417_76 AllocBody417_81

def AllocBody417_83 : StackLang.HolProg 64 :=
.seq AllocBody417_75 AllocBody417_82

def AllocBody417_84 : StackLang.HolProg 64 :=
.seq AllocBody417_74 AllocBody417_83

def AllocBody417_85 : StackLang.HolProg 64 :=
.seq AllocBody417_73 AllocBody417_84

def AllocBody417_86 : StackLang.HolProg 64 :=
.seq AllocBody417_72 AllocBody417_85

def AllocBody417_87 : StackLang.HolProg 64 :=
.seq AllocBody417_71 AllocBody417_86

def AllocBody417_88 : StackLang.HolProg 64 :=
.seq AllocBody417_70 AllocBody417_87

def AllocBody417_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody417_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody417_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody417_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody417_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody417_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody417_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody417_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody417_97 : StackLang.HolProg 64 :=
.seq AllocBody417_95 AllocBody417_96

def AllocBody417_98 : StackLang.HolProg 64 :=
.seq AllocBody417_94 AllocBody417_97

def AllocBody417_99 : StackLang.HolProg 64 :=
.seq AllocBody417_93 AllocBody417_98

def AllocBody417_100 : StackLang.HolProg 64 :=
.seq AllocBody417_92 AllocBody417_99

def AllocBody417_101 : StackLang.HolProg 64 :=
.seq AllocBody417_91 AllocBody417_100

def AllocBody417_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody417_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody417_104 : StackLang.HolProg 64 :=
.seq AllocBody417_102 AllocBody417_103

def AllocBody417_105 : StackLang.HolProg 64 :=
.call (some (AllocBody417_101, 0, 417, 4)) (Sum.inl 416) (some (AllocBody417_104, 417, 5))

def AllocBody417_106 : StackLang.HolProg 64 :=
.seq AllocBody417_90 AllocBody417_105

def AllocBody417_107 : StackLang.HolProg 64 :=
.seq AllocBody417_89 AllocBody417_106

def AllocBody417_108 : StackLang.HolProg 64 :=
.seq AllocBody417_88 AllocBody417_107

def AllocBody417_109 : StackLang.HolProg 64 :=
.seq AllocBody417_69 AllocBody417_108

def AllocBody417_110 : StackLang.HolProg 64 :=
.seq AllocBody417_66 AllocBody417_109

def AllocBody417_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody417_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody417_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody417_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody417_115 : StackLang.HolProg 64 :=
.seq AllocBody417_113 AllocBody417_114

def AllocBody417_116 : StackLang.HolProg 64 :=
.seq AllocBody417_112 AllocBody417_115

def AllocBody417_117 : StackLang.HolProg 64 :=
.seq AllocBody417_111 AllocBody417_116

def AllocBody417_118 : StackLang.HolProg 64 :=
.seq AllocBody417_110 AllocBody417_117

def AllocBody417_119 : StackLang.HolProg 64 :=
.seq AllocBody417_65 AllocBody417_118

def AllocBody417_120 : StackLang.HolProg 64 :=
.seq AllocBody417_62 AllocBody417_119

def AllocBody417_121 : StackLang.HolProg 64 :=
.seq AllocBody417_61 AllocBody417_120

def AllocBody417_122 : StackLang.HolProg 64 :=
.seq AllocBody417_60 AllocBody417_121

def AllocBody417_123 : StackLang.HolProg 64 :=
.seq AllocBody417_49 AllocBody417_122

def AllocBody417_124 : StackLang.HolProg 64 :=
.seq AllocBody417_48 AllocBody417_123

def AllocBody417_125 : StackLang.HolProg 64 :=
.seq AllocBody417_47 AllocBody417_124

def AllocBody417_126 : StackLang.HolProg 64 :=
.seq AllocBody417_46 AllocBody417_125

def AllocBody417_127 : StackLang.HolProg 64 :=
.seq AllocBody417_1 AllocBody417_126

def AllocBody417_128 : StackLang.HolProg 64 :=
.seq AllocBody417_0 AllocBody417_127

def Alloc417 : Nat × StackLang.HolProg 64 := (417, AllocBody417_128)
theorem Alloc417_eq : StackAlloc.progComp (417, raw417) = Alloc417 := by
  kernel_rfl
#print axioms Alloc417_eq
end InitECandidate.Proofs.BackendStages
