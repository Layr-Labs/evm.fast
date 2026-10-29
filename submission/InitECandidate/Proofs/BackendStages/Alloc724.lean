import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw724
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody724_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody724_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody724_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody724_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3246#64)

def AllocBody724_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody724_5 : StackLang.HolProg 64 :=
.seq AllocBody724_3 AllocBody724_4

def AllocBody724_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody724_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody724_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody724_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 724 3

def AllocBody724_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody724_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody724_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody724_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody724_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody724_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody724_16 : StackLang.HolProg 64 :=
.seq AllocBody724_14 AllocBody724_15

def AllocBody724_17 : StackLang.HolProg 64 :=
.seq AllocBody724_13 AllocBody724_16

def AllocBody724_18 : StackLang.HolProg 64 :=
.seq AllocBody724_12 AllocBody724_17

def AllocBody724_19 : StackLang.HolProg 64 :=
.seq AllocBody724_11 AllocBody724_18

def AllocBody724_20 : StackLang.HolProg 64 :=
.seq AllocBody724_10 AllocBody724_19

def AllocBody724_21 : StackLang.HolProg 64 :=
.seq AllocBody724_9 AllocBody724_20

def AllocBody724_22 : StackLang.HolProg 64 :=
.seq AllocBody724_8 AllocBody724_21

def AllocBody724_23 : StackLang.HolProg 64 :=
.seq AllocBody724_7 AllocBody724_22

def AllocBody724_24 : StackLang.HolProg 64 :=
.seq AllocBody724_6 AllocBody724_23

def AllocBody724_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody724_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody724_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody724_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody724_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody724_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody724_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody724_32 : StackLang.HolProg 64 :=
.seq AllocBody724_30 AllocBody724_31

def AllocBody724_33 : StackLang.HolProg 64 :=
.seq AllocBody724_29 AllocBody724_32

def AllocBody724_34 : StackLang.HolProg 64 :=
.seq AllocBody724_28 AllocBody724_33

def AllocBody724_35 : StackLang.HolProg 64 :=
.seq AllocBody724_27 AllocBody724_34

def AllocBody724_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody724_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody724_38 : StackLang.HolProg 64 :=
.seq AllocBody724_36 AllocBody724_37

def AllocBody724_39 : StackLang.HolProg 64 :=
.call (some (AllocBody724_35, 0, 724, 2)) (Sum.inl 717) (some (AllocBody724_38, 724, 3))

def AllocBody724_40 : StackLang.HolProg 64 :=
.seq AllocBody724_26 AllocBody724_39

def AllocBody724_41 : StackLang.HolProg 64 :=
.seq AllocBody724_25 AllocBody724_40

def AllocBody724_42 : StackLang.HolProg 64 :=
.seq AllocBody724_24 AllocBody724_41

def AllocBody724_43 : StackLang.HolProg 64 :=
.seq AllocBody724_5 AllocBody724_42

def AllocBody724_44 : StackLang.HolProg 64 :=
.seq AllocBody724_2 AllocBody724_43

def AllocBody724_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody724_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody724_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody724_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody724_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody724_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody724_51 : StackLang.HolProg 64 :=
.seq AllocBody724_49 AllocBody724_50

def AllocBody724_52 : StackLang.HolProg 64 :=
.seq AllocBody724_48 AllocBody724_51

def AllocBody724_53 : StackLang.HolProg 64 :=
.seq AllocBody724_47 AllocBody724_52

def AllocBody724_54 : StackLang.HolProg 64 :=
.seq AllocBody724_46 AllocBody724_53

def AllocBody724_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 936899308823769933#64)

def AllocBody724_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 2706051889235351147#64)

def AllocBody724_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 12843041017062132063#64)

def AllocBody724_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 12941209323636816658#64)

def AllocBody724_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1105070755758604287#64)

def AllocBody724_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 15924587544893707605#64)

def AllocBody724_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody724_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody724_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3247#64)

def AllocBody724_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody724_65 : StackLang.HolProg 64 :=
.seq AllocBody724_63 AllocBody724_64

def AllocBody724_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody724_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody724_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody724_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 724 5

def AllocBody724_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody724_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody724_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody724_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody724_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody724_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody724_76 : StackLang.HolProg 64 :=
.seq AllocBody724_74 AllocBody724_75

def AllocBody724_77 : StackLang.HolProg 64 :=
.seq AllocBody724_73 AllocBody724_76

def AllocBody724_78 : StackLang.HolProg 64 :=
.seq AllocBody724_72 AllocBody724_77

def AllocBody724_79 : StackLang.HolProg 64 :=
.seq AllocBody724_71 AllocBody724_78

def AllocBody724_80 : StackLang.HolProg 64 :=
.seq AllocBody724_70 AllocBody724_79

def AllocBody724_81 : StackLang.HolProg 64 :=
.seq AllocBody724_69 AllocBody724_80

def AllocBody724_82 : StackLang.HolProg 64 :=
.seq AllocBody724_68 AllocBody724_81

def AllocBody724_83 : StackLang.HolProg 64 :=
.seq AllocBody724_67 AllocBody724_82

def AllocBody724_84 : StackLang.HolProg 64 :=
.seq AllocBody724_66 AllocBody724_83

def AllocBody724_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody724_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody724_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody724_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody724_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody724_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody724_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody724_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody724_93 : StackLang.HolProg 64 :=
.seq AllocBody724_91 AllocBody724_92

def AllocBody724_94 : StackLang.HolProg 64 :=
.seq AllocBody724_90 AllocBody724_93

def AllocBody724_95 : StackLang.HolProg 64 :=
.seq AllocBody724_89 AllocBody724_94

def AllocBody724_96 : StackLang.HolProg 64 :=
.seq AllocBody724_88 AllocBody724_95

def AllocBody724_97 : StackLang.HolProg 64 :=
.seq AllocBody724_87 AllocBody724_96

def AllocBody724_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody724_99 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody724_100 : StackLang.HolProg 64 :=
.seq AllocBody724_98 AllocBody724_99

def AllocBody724_101 : StackLang.HolProg 64 :=
.call (some (AllocBody724_97, 0, 724, 4)) (Sum.inl 707) (some (AllocBody724_100, 724, 5))

def AllocBody724_102 : StackLang.HolProg 64 :=
.seq AllocBody724_86 AllocBody724_101

def AllocBody724_103 : StackLang.HolProg 64 :=
.seq AllocBody724_85 AllocBody724_102

def AllocBody724_104 : StackLang.HolProg 64 :=
.seq AllocBody724_84 AllocBody724_103

def AllocBody724_105 : StackLang.HolProg 64 :=
.seq AllocBody724_65 AllocBody724_104

def AllocBody724_106 : StackLang.HolProg 64 :=
.seq AllocBody724_62 AllocBody724_105

def AllocBody724_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody724_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody724_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody724_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody724_111 : StackLang.HolProg 64 :=
.seq AllocBody724_109 AllocBody724_110

def AllocBody724_112 : StackLang.HolProg 64 :=
.seq AllocBody724_108 AllocBody724_111

def AllocBody724_113 : StackLang.HolProg 64 :=
.seq AllocBody724_107 AllocBody724_112

def AllocBody724_114 : StackLang.HolProg 64 :=
.seq AllocBody724_106 AllocBody724_113

def AllocBody724_115 : StackLang.HolProg 64 :=
.seq AllocBody724_61 AllocBody724_114

def AllocBody724_116 : StackLang.HolProg 64 :=
.seq AllocBody724_60 AllocBody724_115

def AllocBody724_117 : StackLang.HolProg 64 :=
.seq AllocBody724_59 AllocBody724_116

def AllocBody724_118 : StackLang.HolProg 64 :=
.seq AllocBody724_58 AllocBody724_117

def AllocBody724_119 : StackLang.HolProg 64 :=
.seq AllocBody724_57 AllocBody724_118

def AllocBody724_120 : StackLang.HolProg 64 :=
.seq AllocBody724_56 AllocBody724_119

def AllocBody724_121 : StackLang.HolProg 64 :=
.seq AllocBody724_55 AllocBody724_120

def AllocBody724_122 : StackLang.HolProg 64 :=
.seq AllocBody724_54 AllocBody724_121

def AllocBody724_123 : StackLang.HolProg 64 :=
.seq AllocBody724_45 AllocBody724_122

def AllocBody724_124 : StackLang.HolProg 64 :=
.seq AllocBody724_44 AllocBody724_123

def AllocBody724_125 : StackLang.HolProg 64 :=
.seq AllocBody724_1 AllocBody724_124

def AllocBody724_126 : StackLang.HolProg 64 :=
.seq AllocBody724_0 AllocBody724_125

def Alloc724 : Nat × StackLang.HolProg 64 := (724, AllocBody724_126)
theorem Alloc724_eq : StackAlloc.progComp (724, raw724) = Alloc724 := by
  kernel_rfl
#print axioms Alloc724_eq
end InitECandidate.Proofs.BackendStages
