import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw403
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody403_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody403_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody403_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody403_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1200#64)

def AllocBody403_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody403_5 : StackLang.HolProg 64 :=
.seq AllocBody403_3 AllocBody403_4

def AllocBody403_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody403_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody403_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody403_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 403 3

def AllocBody403_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody403_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody403_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody403_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody403_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody403_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody403_16 : StackLang.HolProg 64 :=
.seq AllocBody403_14 AllocBody403_15

def AllocBody403_17 : StackLang.HolProg 64 :=
.seq AllocBody403_13 AllocBody403_16

def AllocBody403_18 : StackLang.HolProg 64 :=
.seq AllocBody403_12 AllocBody403_17

def AllocBody403_19 : StackLang.HolProg 64 :=
.seq AllocBody403_11 AllocBody403_18

def AllocBody403_20 : StackLang.HolProg 64 :=
.seq AllocBody403_10 AllocBody403_19

def AllocBody403_21 : StackLang.HolProg 64 :=
.seq AllocBody403_9 AllocBody403_20

def AllocBody403_22 : StackLang.HolProg 64 :=
.seq AllocBody403_8 AllocBody403_21

def AllocBody403_23 : StackLang.HolProg 64 :=
.seq AllocBody403_7 AllocBody403_22

def AllocBody403_24 : StackLang.HolProg 64 :=
.seq AllocBody403_6 AllocBody403_23

def AllocBody403_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody403_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody403_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody403_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody403_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody403_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody403_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody403_32 : StackLang.HolProg 64 :=
.seq AllocBody403_30 AllocBody403_31

def AllocBody403_33 : StackLang.HolProg 64 :=
.seq AllocBody403_29 AllocBody403_32

def AllocBody403_34 : StackLang.HolProg 64 :=
.seq AllocBody403_28 AllocBody403_33

def AllocBody403_35 : StackLang.HolProg 64 :=
.seq AllocBody403_27 AllocBody403_34

def AllocBody403_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody403_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody403_38 : StackLang.HolProg 64 :=
.seq AllocBody403_36 AllocBody403_37

def AllocBody403_39 : StackLang.HolProg 64 :=
.call (some (AllocBody403_35, 0, 403, 2)) (Sum.inl 399) (some (AllocBody403_38, 403, 3))

def AllocBody403_40 : StackLang.HolProg 64 :=
.seq AllocBody403_26 AllocBody403_39

def AllocBody403_41 : StackLang.HolProg 64 :=
.seq AllocBody403_25 AllocBody403_40

def AllocBody403_42 : StackLang.HolProg 64 :=
.seq AllocBody403_24 AllocBody403_41

def AllocBody403_43 : StackLang.HolProg 64 :=
.seq AllocBody403_5 AllocBody403_42

def AllocBody403_44 : StackLang.HolProg 64 :=
.seq AllocBody403_2 AllocBody403_43

def AllocBody403_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody403_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody403_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody403_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody403_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody403_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551488#64))

def AllocBody403_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def AllocBody403_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody403_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody403_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1201#64)

def AllocBody403_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody403_56 : StackLang.HolProg 64 :=
.seq AllocBody403_54 AllocBody403_55

def AllocBody403_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody403_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody403_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody403_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 403 5

def AllocBody403_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody403_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody403_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody403_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody403_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody403_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody403_67 : StackLang.HolProg 64 :=
.seq AllocBody403_65 AllocBody403_66

def AllocBody403_68 : StackLang.HolProg 64 :=
.seq AllocBody403_64 AllocBody403_67

def AllocBody403_69 : StackLang.HolProg 64 :=
.seq AllocBody403_63 AllocBody403_68

def AllocBody403_70 : StackLang.HolProg 64 :=
.seq AllocBody403_62 AllocBody403_69

def AllocBody403_71 : StackLang.HolProg 64 :=
.seq AllocBody403_61 AllocBody403_70

def AllocBody403_72 : StackLang.HolProg 64 :=
.seq AllocBody403_60 AllocBody403_71

def AllocBody403_73 : StackLang.HolProg 64 :=
.seq AllocBody403_59 AllocBody403_72

def AllocBody403_74 : StackLang.HolProg 64 :=
.seq AllocBody403_58 AllocBody403_73

def AllocBody403_75 : StackLang.HolProg 64 :=
.seq AllocBody403_57 AllocBody403_74

def AllocBody403_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody403_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody403_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody403_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody403_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody403_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody403_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody403_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody403_84 : StackLang.HolProg 64 :=
.seq AllocBody403_82 AllocBody403_83

def AllocBody403_85 : StackLang.HolProg 64 :=
.seq AllocBody403_81 AllocBody403_84

def AllocBody403_86 : StackLang.HolProg 64 :=
.seq AllocBody403_80 AllocBody403_85

def AllocBody403_87 : StackLang.HolProg 64 :=
.seq AllocBody403_79 AllocBody403_86

def AllocBody403_88 : StackLang.HolProg 64 :=
.seq AllocBody403_78 AllocBody403_87

def AllocBody403_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody403_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody403_91 : StackLang.HolProg 64 :=
.seq AllocBody403_89 AllocBody403_90

def AllocBody403_92 : StackLang.HolProg 64 :=
.call (some (AllocBody403_88, 0, 403, 4)) (Sum.inl 79) (some (AllocBody403_91, 403, 5))

def AllocBody403_93 : StackLang.HolProg 64 :=
.seq AllocBody403_77 AllocBody403_92

def AllocBody403_94 : StackLang.HolProg 64 :=
.seq AllocBody403_76 AllocBody403_93

def AllocBody403_95 : StackLang.HolProg 64 :=
.seq AllocBody403_75 AllocBody403_94

def AllocBody403_96 : StackLang.HolProg 64 :=
.seq AllocBody403_56 AllocBody403_95

def AllocBody403_97 : StackLang.HolProg 64 :=
.seq AllocBody403_53 AllocBody403_96

def AllocBody403_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody403_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody403_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody403_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody403_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody403_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody403_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody403_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody403_106 : StackLang.HolProg 64 :=
.seq AllocBody403_104 AllocBody403_105

def AllocBody403_107 : StackLang.HolProg 64 :=
.seq AllocBody403_103 AllocBody403_106

def AllocBody403_108 : StackLang.HolProg 64 :=
.seq AllocBody403_102 AllocBody403_107

def AllocBody403_109 : StackLang.HolProg 64 :=
.seq AllocBody403_101 AllocBody403_108

def AllocBody403_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody403_111 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody403_109 AllocBody403_110

def AllocBody403_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody403_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody403_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody403_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody403_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody403_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody403_118 : StackLang.HolProg 64 :=
.seq AllocBody403_116 AllocBody403_117

def AllocBody403_119 : StackLang.HolProg 64 :=
.seq AllocBody403_115 AllocBody403_118

def AllocBody403_120 : StackLang.HolProg 64 :=
.seq AllocBody403_114 AllocBody403_119

def AllocBody403_121 : StackLang.HolProg 64 :=
.seq AllocBody403_113 AllocBody403_120

def AllocBody403_122 : StackLang.HolProg 64 :=
.seq AllocBody403_112 AllocBody403_121

def AllocBody403_123 : StackLang.HolProg 64 :=
.seq AllocBody403_111 AllocBody403_122

def AllocBody403_124 : StackLang.HolProg 64 :=
.seq AllocBody403_100 AllocBody403_123

def AllocBody403_125 : StackLang.HolProg 64 :=
.seq AllocBody403_99 AllocBody403_124

def AllocBody403_126 : StackLang.HolProg 64 :=
.seq AllocBody403_98 AllocBody403_125

def AllocBody403_127 : StackLang.HolProg 64 :=
.seq AllocBody403_97 AllocBody403_126

def AllocBody403_128 : StackLang.HolProg 64 :=
.seq AllocBody403_52 AllocBody403_127

def AllocBody403_129 : StackLang.HolProg 64 :=
.seq AllocBody403_51 AllocBody403_128

def AllocBody403_130 : StackLang.HolProg 64 :=
.seq AllocBody403_50 AllocBody403_129

def AllocBody403_131 : StackLang.HolProg 64 :=
.seq AllocBody403_49 AllocBody403_130

def AllocBody403_132 : StackLang.HolProg 64 :=
.seq AllocBody403_48 AllocBody403_131

def AllocBody403_133 : StackLang.HolProg 64 :=
.seq AllocBody403_47 AllocBody403_132

def AllocBody403_134 : StackLang.HolProg 64 :=
.seq AllocBody403_46 AllocBody403_133

def AllocBody403_135 : StackLang.HolProg 64 :=
.seq AllocBody403_45 AllocBody403_134

def AllocBody403_136 : StackLang.HolProg 64 :=
.seq AllocBody403_44 AllocBody403_135

def AllocBody403_137 : StackLang.HolProg 64 :=
.seq AllocBody403_1 AllocBody403_136

def AllocBody403_138 : StackLang.HolProg 64 :=
.seq AllocBody403_0 AllocBody403_137

def Alloc403 : Nat × StackLang.HolProg 64 := (403, AllocBody403_138)
theorem Alloc403_eq : StackAlloc.progComp (403, raw403) = Alloc403 := by
  kernel_rfl
#print axioms Alloc403_eq
end InitECandidate.Proofs.BackendStages
