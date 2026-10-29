import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw271
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody271_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody271_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody271_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody271_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 657#64)

def AllocBody271_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody271_5 : StackLang.HolProg 64 :=
.seq AllocBody271_3 AllocBody271_4

def AllocBody271_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody271_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody271_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody271_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 271 3

def AllocBody271_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody271_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody271_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody271_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody271_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody271_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody271_16 : StackLang.HolProg 64 :=
.seq AllocBody271_14 AllocBody271_15

def AllocBody271_17 : StackLang.HolProg 64 :=
.seq AllocBody271_13 AllocBody271_16

def AllocBody271_18 : StackLang.HolProg 64 :=
.seq AllocBody271_12 AllocBody271_17

def AllocBody271_19 : StackLang.HolProg 64 :=
.seq AllocBody271_11 AllocBody271_18

def AllocBody271_20 : StackLang.HolProg 64 :=
.seq AllocBody271_10 AllocBody271_19

def AllocBody271_21 : StackLang.HolProg 64 :=
.seq AllocBody271_9 AllocBody271_20

def AllocBody271_22 : StackLang.HolProg 64 :=
.seq AllocBody271_8 AllocBody271_21

def AllocBody271_23 : StackLang.HolProg 64 :=
.seq AllocBody271_7 AllocBody271_22

def AllocBody271_24 : StackLang.HolProg 64 :=
.seq AllocBody271_6 AllocBody271_23

def AllocBody271_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody271_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody271_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody271_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody271_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody271_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody271_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody271_32 : StackLang.HolProg 64 :=
.seq AllocBody271_30 AllocBody271_31

def AllocBody271_33 : StackLang.HolProg 64 :=
.seq AllocBody271_29 AllocBody271_32

def AllocBody271_34 : StackLang.HolProg 64 :=
.seq AllocBody271_28 AllocBody271_33

def AllocBody271_35 : StackLang.HolProg 64 :=
.seq AllocBody271_27 AllocBody271_34

def AllocBody271_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody271_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody271_38 : StackLang.HolProg 64 :=
.seq AllocBody271_36 AllocBody271_37

def AllocBody271_39 : StackLang.HolProg 64 :=
.call (some (AllocBody271_35, 0, 271, 2)) (Sum.inl 269) (some (AllocBody271_38, 271, 3))

def AllocBody271_40 : StackLang.HolProg 64 :=
.seq AllocBody271_26 AllocBody271_39

def AllocBody271_41 : StackLang.HolProg 64 :=
.seq AllocBody271_25 AllocBody271_40

def AllocBody271_42 : StackLang.HolProg 64 :=
.seq AllocBody271_24 AllocBody271_41

def AllocBody271_43 : StackLang.HolProg 64 :=
.seq AllocBody271_5 AllocBody271_42

def AllocBody271_44 : StackLang.HolProg 64 :=
.seq AllocBody271_2 AllocBody271_43

def AllocBody271_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody271_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 32#64)

def AllocBody271_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody271_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody271_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 5#64)

def AllocBody271_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody271_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody271_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody271_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody271_54 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody271_55 : StackLang.HolProg 64 :=
.seq AllocBody271_53 AllocBody271_54

def AllocBody271_56 : StackLang.HolProg 64 :=
.seq AllocBody271_52 AllocBody271_55

def AllocBody271_57 : StackLang.HolProg 64 :=
.seq AllocBody271_51 AllocBody271_56

def AllocBody271_58 : StackLang.HolProg 64 :=
.seq AllocBody271_50 AllocBody271_57

def AllocBody271_59 : StackLang.HolProg 64 :=
.seq AllocBody271_49 AllocBody271_58

def AllocBody271_60 : StackLang.HolProg 64 :=
.seq AllocBody271_48 AllocBody271_59

def AllocBody271_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody271_62 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody271_60 AllocBody271_61

def AllocBody271_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody271_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody271_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody271_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody271_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 658#64)

def AllocBody271_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody271_69 : StackLang.HolProg 64 :=
.seq AllocBody271_67 AllocBody271_68

def AllocBody271_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody271_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody271_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody271_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 271 5

def AllocBody271_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody271_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody271_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody271_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody271_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody271_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody271_80 : StackLang.HolProg 64 :=
.seq AllocBody271_78 AllocBody271_79

def AllocBody271_81 : StackLang.HolProg 64 :=
.seq AllocBody271_77 AllocBody271_80

def AllocBody271_82 : StackLang.HolProg 64 :=
.seq AllocBody271_76 AllocBody271_81

def AllocBody271_83 : StackLang.HolProg 64 :=
.seq AllocBody271_75 AllocBody271_82

def AllocBody271_84 : StackLang.HolProg 64 :=
.seq AllocBody271_74 AllocBody271_83

def AllocBody271_85 : StackLang.HolProg 64 :=
.seq AllocBody271_73 AllocBody271_84

def AllocBody271_86 : StackLang.HolProg 64 :=
.seq AllocBody271_72 AllocBody271_85

def AllocBody271_87 : StackLang.HolProg 64 :=
.seq AllocBody271_71 AllocBody271_86

def AllocBody271_88 : StackLang.HolProg 64 :=
.seq AllocBody271_70 AllocBody271_87

def AllocBody271_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody271_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody271_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody271_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody271_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody271_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody271_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody271_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody271_97 : StackLang.HolProg 64 :=
.seq AllocBody271_95 AllocBody271_96

def AllocBody271_98 : StackLang.HolProg 64 :=
.seq AllocBody271_94 AllocBody271_97

def AllocBody271_99 : StackLang.HolProg 64 :=
.seq AllocBody271_93 AllocBody271_98

def AllocBody271_100 : StackLang.HolProg 64 :=
.seq AllocBody271_92 AllocBody271_99

def AllocBody271_101 : StackLang.HolProg 64 :=
.seq AllocBody271_91 AllocBody271_100

def AllocBody271_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody271_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody271_104 : StackLang.HolProg 64 :=
.seq AllocBody271_102 AllocBody271_103

def AllocBody271_105 : StackLang.HolProg 64 :=
.call (some (AllocBody271_101, 0, 271, 4)) (Sum.inl 146) (some (AllocBody271_104, 271, 5))

def AllocBody271_106 : StackLang.HolProg 64 :=
.seq AllocBody271_90 AllocBody271_105

def AllocBody271_107 : StackLang.HolProg 64 :=
.seq AllocBody271_89 AllocBody271_106

def AllocBody271_108 : StackLang.HolProg 64 :=
.seq AllocBody271_88 AllocBody271_107

def AllocBody271_109 : StackLang.HolProg 64 :=
.seq AllocBody271_69 AllocBody271_108

def AllocBody271_110 : StackLang.HolProg 64 :=
.seq AllocBody271_66 AllocBody271_109

def AllocBody271_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody271_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody271_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody271_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody271_115 : StackLang.HolProg 64 :=
.seq AllocBody271_113 AllocBody271_114

def AllocBody271_116 : StackLang.HolProg 64 :=
.seq AllocBody271_112 AllocBody271_115

def AllocBody271_117 : StackLang.HolProg 64 :=
.seq AllocBody271_111 AllocBody271_116

def AllocBody271_118 : StackLang.HolProg 64 :=
.seq AllocBody271_110 AllocBody271_117

def AllocBody271_119 : StackLang.HolProg 64 :=
.seq AllocBody271_65 AllocBody271_118

def AllocBody271_120 : StackLang.HolProg 64 :=
.seq AllocBody271_64 AllocBody271_119

def AllocBody271_121 : StackLang.HolProg 64 :=
.seq AllocBody271_63 AllocBody271_120

def AllocBody271_122 : StackLang.HolProg 64 :=
.seq AllocBody271_62 AllocBody271_121

def AllocBody271_123 : StackLang.HolProg 64 :=
.seq AllocBody271_47 AllocBody271_122

def AllocBody271_124 : StackLang.HolProg 64 :=
.seq AllocBody271_46 AllocBody271_123

def AllocBody271_125 : StackLang.HolProg 64 :=
.seq AllocBody271_45 AllocBody271_124

def AllocBody271_126 : StackLang.HolProg 64 :=
.seq AllocBody271_44 AllocBody271_125

def AllocBody271_127 : StackLang.HolProg 64 :=
.seq AllocBody271_1 AllocBody271_126

def AllocBody271_128 : StackLang.HolProg 64 :=
.seq AllocBody271_0 AllocBody271_127

def Alloc271 : Nat × StackLang.HolProg 64 := (271, AllocBody271_128)
theorem Alloc271_eq : StackAlloc.progComp (271, raw271) = Alloc271 := by
  kernel_rfl
#print axioms Alloc271_eq
end InitECandidate.Proofs.BackendStages
