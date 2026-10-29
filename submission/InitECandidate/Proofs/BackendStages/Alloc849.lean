import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw849
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody849_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody849_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody849_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody849_3 : StackLang.HolProg 64 :=
.seq AllocBody849_1 AllocBody849_2

def AllocBody849_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody849_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4269#64)

def AllocBody849_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody849_7 : StackLang.HolProg 64 :=
.seq AllocBody849_5 AllocBody849_6

def AllocBody849_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody849_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody849_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody849_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 849 3

def AllocBody849_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody849_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody849_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody849_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody849_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody849_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody849_18 : StackLang.HolProg 64 :=
.seq AllocBody849_16 AllocBody849_17

def AllocBody849_19 : StackLang.HolProg 64 :=
.seq AllocBody849_15 AllocBody849_18

def AllocBody849_20 : StackLang.HolProg 64 :=
.seq AllocBody849_14 AllocBody849_19

def AllocBody849_21 : StackLang.HolProg 64 :=
.seq AllocBody849_13 AllocBody849_20

def AllocBody849_22 : StackLang.HolProg 64 :=
.seq AllocBody849_12 AllocBody849_21

def AllocBody849_23 : StackLang.HolProg 64 :=
.seq AllocBody849_11 AllocBody849_22

def AllocBody849_24 : StackLang.HolProg 64 :=
.seq AllocBody849_10 AllocBody849_23

def AllocBody849_25 : StackLang.HolProg 64 :=
.seq AllocBody849_9 AllocBody849_24

def AllocBody849_26 : StackLang.HolProg 64 :=
.seq AllocBody849_8 AllocBody849_25

def AllocBody849_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody849_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody849_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody849_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody849_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody849_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody849_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody849_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody849_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody849_36 : StackLang.HolProg 64 :=
.seq AllocBody849_34 AllocBody849_35

def AllocBody849_37 : StackLang.HolProg 64 :=
.seq AllocBody849_33 AllocBody849_36

def AllocBody849_38 : StackLang.HolProg 64 :=
.seq AllocBody849_32 AllocBody849_37

def AllocBody849_39 : StackLang.HolProg 64 :=
.seq AllocBody849_31 AllocBody849_38

def AllocBody849_40 : StackLang.HolProg 64 :=
.seq AllocBody849_30 AllocBody849_39

def AllocBody849_41 : StackLang.HolProg 64 :=
.seq AllocBody849_29 AllocBody849_40

def AllocBody849_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody849_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody849_44 : StackLang.HolProg 64 :=
.seq AllocBody849_42 AllocBody849_43

def AllocBody849_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody849_46 : StackLang.HolProg 64 :=
.seq AllocBody849_44 AllocBody849_45

def AllocBody849_47 : StackLang.HolProg 64 :=
.call (some (AllocBody849_41, 0, 849, 2)) (Sum.inl 187) (some (AllocBody849_46, 849, 3))

def AllocBody849_48 : StackLang.HolProg 64 :=
.seq AllocBody849_28 AllocBody849_47

def AllocBody849_49 : StackLang.HolProg 64 :=
.seq AllocBody849_27 AllocBody849_48

def AllocBody849_50 : StackLang.HolProg 64 :=
.seq AllocBody849_26 AllocBody849_49

def AllocBody849_51 : StackLang.HolProg 64 :=
.seq AllocBody849_7 AllocBody849_50

def AllocBody849_52 : StackLang.HolProg 64 :=
.seq AllocBody849_4 AllocBody849_51

def AllocBody849_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody849_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody849_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody849_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody849_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody849_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody849_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody849_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551488#64))

def AllocBody849_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody849_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody849_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody849_64 : StackLang.HolProg 64 :=
.seq AllocBody849_62 AllocBody849_63

def AllocBody849_65 : StackLang.HolProg 64 :=
.seq AllocBody849_61 AllocBody849_64

def AllocBody849_66 : StackLang.HolProg 64 :=
.seq AllocBody849_60 AllocBody849_65

def AllocBody849_67 : StackLang.HolProg 64 :=
.seq AllocBody849_59 AllocBody849_66

def AllocBody849_68 : StackLang.HolProg 64 :=
.seq AllocBody849_58 AllocBody849_67

def AllocBody849_69 : StackLang.HolProg 64 :=
.seq AllocBody849_57 AllocBody849_68

def AllocBody849_70 : StackLang.HolProg 64 :=
.seq AllocBody849_56 AllocBody849_69

def AllocBody849_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody849_72 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody849_70 AllocBody849_71

def AllocBody849_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody849_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody849_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody849_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody849_77 : StackLang.HolProg 64 :=
.seq AllocBody849_75 AllocBody849_76

def AllocBody849_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody849_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4270#64)

def AllocBody849_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody849_81 : StackLang.HolProg 64 :=
.seq AllocBody849_79 AllocBody849_80

def AllocBody849_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody849_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody849_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody849_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 849 5

def AllocBody849_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody849_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody849_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody849_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody849_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody849_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody849_92 : StackLang.HolProg 64 :=
.seq AllocBody849_90 AllocBody849_91

def AllocBody849_93 : StackLang.HolProg 64 :=
.seq AllocBody849_89 AllocBody849_92

def AllocBody849_94 : StackLang.HolProg 64 :=
.seq AllocBody849_88 AllocBody849_93

def AllocBody849_95 : StackLang.HolProg 64 :=
.seq AllocBody849_87 AllocBody849_94

def AllocBody849_96 : StackLang.HolProg 64 :=
.seq AllocBody849_86 AllocBody849_95

def AllocBody849_97 : StackLang.HolProg 64 :=
.seq AllocBody849_85 AllocBody849_96

def AllocBody849_98 : StackLang.HolProg 64 :=
.seq AllocBody849_84 AllocBody849_97

def AllocBody849_99 : StackLang.HolProg 64 :=
.seq AllocBody849_83 AllocBody849_98

def AllocBody849_100 : StackLang.HolProg 64 :=
.seq AllocBody849_82 AllocBody849_99

def AllocBody849_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody849_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody849_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody849_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody849_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody849_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody849_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody849_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody849_109 : StackLang.HolProg 64 :=
.seq AllocBody849_107 AllocBody849_108

def AllocBody849_110 : StackLang.HolProg 64 :=
.seq AllocBody849_106 AllocBody849_109

def AllocBody849_111 : StackLang.HolProg 64 :=
.seq AllocBody849_105 AllocBody849_110

def AllocBody849_112 : StackLang.HolProg 64 :=
.seq AllocBody849_104 AllocBody849_111

def AllocBody849_113 : StackLang.HolProg 64 :=
.seq AllocBody849_103 AllocBody849_112

def AllocBody849_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody849_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody849_116 : StackLang.HolProg 64 :=
.seq AllocBody849_114 AllocBody849_115

def AllocBody849_117 : StackLang.HolProg 64 :=
.call (some (AllocBody849_113, 0, 849, 4)) (Sum.inl 399) (some (AllocBody849_116, 849, 5))

def AllocBody849_118 : StackLang.HolProg 64 :=
.seq AllocBody849_102 AllocBody849_117

def AllocBody849_119 : StackLang.HolProg 64 :=
.seq AllocBody849_101 AllocBody849_118

def AllocBody849_120 : StackLang.HolProg 64 :=
.seq AllocBody849_100 AllocBody849_119

def AllocBody849_121 : StackLang.HolProg 64 :=
.seq AllocBody849_81 AllocBody849_120

def AllocBody849_122 : StackLang.HolProg 64 :=
.seq AllocBody849_78 AllocBody849_121

def AllocBody849_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody849_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody849_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody849_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody849_127 : StackLang.HolProg 64 :=
.seq AllocBody849_125 AllocBody849_126

def AllocBody849_128 : StackLang.HolProg 64 :=
.seq AllocBody849_124 AllocBody849_127

def AllocBody849_129 : StackLang.HolProg 64 :=
.seq AllocBody849_123 AllocBody849_128

def AllocBody849_130 : StackLang.HolProg 64 :=
.seq AllocBody849_122 AllocBody849_129

def AllocBody849_131 : StackLang.HolProg 64 :=
.seq AllocBody849_77 AllocBody849_130

def AllocBody849_132 : StackLang.HolProg 64 :=
.seq AllocBody849_74 AllocBody849_131

def AllocBody849_133 : StackLang.HolProg 64 :=
.seq AllocBody849_73 AllocBody849_132

def AllocBody849_134 : StackLang.HolProg 64 :=
.seq AllocBody849_72 AllocBody849_133

def AllocBody849_135 : StackLang.HolProg 64 :=
.seq AllocBody849_55 AllocBody849_134

def AllocBody849_136 : StackLang.HolProg 64 :=
.seq AllocBody849_54 AllocBody849_135

def AllocBody849_137 : StackLang.HolProg 64 :=
.seq AllocBody849_53 AllocBody849_136

def AllocBody849_138 : StackLang.HolProg 64 :=
.seq AllocBody849_52 AllocBody849_137

def AllocBody849_139 : StackLang.HolProg 64 :=
.seq AllocBody849_3 AllocBody849_138

def AllocBody849_140 : StackLang.HolProg 64 :=
.seq AllocBody849_0 AllocBody849_139

def Alloc849 : Nat × StackLang.HolProg 64 := (849, AllocBody849_140)
theorem Alloc849_eq : StackAlloc.progComp (849, raw849) = Alloc849 := by
  kernel_rfl
#print axioms Alloc849_eq
end InitECandidate.Proofs.BackendStages
