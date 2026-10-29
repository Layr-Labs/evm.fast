import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw149
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody149_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody149_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody149_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def AllocBody149_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody149_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody149_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 126#64)

def AllocBody149_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody149_7 : StackLang.HolProg 64 :=
.seq AllocBody149_5 AllocBody149_6

def AllocBody149_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody149_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody149_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody149_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 149 3

def AllocBody149_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody149_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody149_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody149_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody149_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody149_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody149_18 : StackLang.HolProg 64 :=
.seq AllocBody149_16 AllocBody149_17

def AllocBody149_19 : StackLang.HolProg 64 :=
.seq AllocBody149_15 AllocBody149_18

def AllocBody149_20 : StackLang.HolProg 64 :=
.seq AllocBody149_14 AllocBody149_19

def AllocBody149_21 : StackLang.HolProg 64 :=
.seq AllocBody149_13 AllocBody149_20

def AllocBody149_22 : StackLang.HolProg 64 :=
.seq AllocBody149_12 AllocBody149_21

def AllocBody149_23 : StackLang.HolProg 64 :=
.seq AllocBody149_11 AllocBody149_22

def AllocBody149_24 : StackLang.HolProg 64 :=
.seq AllocBody149_10 AllocBody149_23

def AllocBody149_25 : StackLang.HolProg 64 :=
.seq AllocBody149_9 AllocBody149_24

def AllocBody149_26 : StackLang.HolProg 64 :=
.seq AllocBody149_8 AllocBody149_25

def AllocBody149_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody149_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody149_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody149_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody149_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody149_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody149_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody149_34 : StackLang.HolProg 64 :=
.seq AllocBody149_32 AllocBody149_33

def AllocBody149_35 : StackLang.HolProg 64 :=
.seq AllocBody149_31 AllocBody149_34

def AllocBody149_36 : StackLang.HolProg 64 :=
.seq AllocBody149_30 AllocBody149_35

def AllocBody149_37 : StackLang.HolProg 64 :=
.seq AllocBody149_29 AllocBody149_36

def AllocBody149_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody149_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody149_40 : StackLang.HolProg 64 :=
.seq AllocBody149_38 AllocBody149_39

def AllocBody149_41 : StackLang.HolProg 64 :=
.call (some (AllocBody149_37, 0, 149, 2)) (Sum.inl 68) (some (AllocBody149_40, 149, 3))

def AllocBody149_42 : StackLang.HolProg 64 :=
.seq AllocBody149_28 AllocBody149_41

def AllocBody149_43 : StackLang.HolProg 64 :=
.seq AllocBody149_27 AllocBody149_42

def AllocBody149_44 : StackLang.HolProg 64 :=
.seq AllocBody149_26 AllocBody149_43

def AllocBody149_45 : StackLang.HolProg 64 :=
.seq AllocBody149_7 AllocBody149_44

def AllocBody149_46 : StackLang.HolProg 64 :=
.seq AllocBody149_4 AllocBody149_45

def AllocBody149_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody149_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody149_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody149_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody149_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551568#64)))

def AllocBody149_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody149_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody149_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def AllocBody149_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody149_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody149_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 127#64)

def AllocBody149_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody149_59 : StackLang.HolProg 64 :=
.seq AllocBody149_57 AllocBody149_58

def AllocBody149_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody149_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody149_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody149_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 149 5

def AllocBody149_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody149_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody149_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody149_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody149_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody149_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody149_70 : StackLang.HolProg 64 :=
.seq AllocBody149_68 AllocBody149_69

def AllocBody149_71 : StackLang.HolProg 64 :=
.seq AllocBody149_67 AllocBody149_70

def AllocBody149_72 : StackLang.HolProg 64 :=
.seq AllocBody149_66 AllocBody149_71

def AllocBody149_73 : StackLang.HolProg 64 :=
.seq AllocBody149_65 AllocBody149_72

def AllocBody149_74 : StackLang.HolProg 64 :=
.seq AllocBody149_64 AllocBody149_73

def AllocBody149_75 : StackLang.HolProg 64 :=
.seq AllocBody149_63 AllocBody149_74

def AllocBody149_76 : StackLang.HolProg 64 :=
.seq AllocBody149_62 AllocBody149_75

def AllocBody149_77 : StackLang.HolProg 64 :=
.seq AllocBody149_61 AllocBody149_76

def AllocBody149_78 : StackLang.HolProg 64 :=
.seq AllocBody149_60 AllocBody149_77

def AllocBody149_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody149_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody149_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody149_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody149_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody149_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody149_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody149_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody149_87 : StackLang.HolProg 64 :=
.seq AllocBody149_85 AllocBody149_86

def AllocBody149_88 : StackLang.HolProg 64 :=
.seq AllocBody149_84 AllocBody149_87

def AllocBody149_89 : StackLang.HolProg 64 :=
.seq AllocBody149_83 AllocBody149_88

def AllocBody149_90 : StackLang.HolProg 64 :=
.seq AllocBody149_82 AllocBody149_89

def AllocBody149_91 : StackLang.HolProg 64 :=
.seq AllocBody149_81 AllocBody149_90

def AllocBody149_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody149_93 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody149_94 : StackLang.HolProg 64 :=
.seq AllocBody149_92 AllocBody149_93

def AllocBody149_95 : StackLang.HolProg 64 :=
.call (some (AllocBody149_91, 0, 149, 4)) (Sum.inl 68) (some (AllocBody149_94, 149, 5))

def AllocBody149_96 : StackLang.HolProg 64 :=
.seq AllocBody149_80 AllocBody149_95

def AllocBody149_97 : StackLang.HolProg 64 :=
.seq AllocBody149_79 AllocBody149_96

def AllocBody149_98 : StackLang.HolProg 64 :=
.seq AllocBody149_78 AllocBody149_97

def AllocBody149_99 : StackLang.HolProg 64 :=
.seq AllocBody149_59 AllocBody149_98

def AllocBody149_100 : StackLang.HolProg 64 :=
.seq AllocBody149_56 AllocBody149_99

def AllocBody149_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody149_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody149_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody149_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody149_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551560#64)))

def AllocBody149_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody149_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody149_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody149_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody149_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody149_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody149_112 : StackLang.HolProg 64 :=
.seq AllocBody149_110 AllocBody149_111

def AllocBody149_113 : StackLang.HolProg 64 :=
.seq AllocBody149_109 AllocBody149_112

def AllocBody149_114 : StackLang.HolProg 64 :=
.seq AllocBody149_108 AllocBody149_113

def AllocBody149_115 : StackLang.HolProg 64 :=
.seq AllocBody149_107 AllocBody149_114

def AllocBody149_116 : StackLang.HolProg 64 :=
.seq AllocBody149_106 AllocBody149_115

def AllocBody149_117 : StackLang.HolProg 64 :=
.seq AllocBody149_105 AllocBody149_116

def AllocBody149_118 : StackLang.HolProg 64 :=
.seq AllocBody149_104 AllocBody149_117

def AllocBody149_119 : StackLang.HolProg 64 :=
.seq AllocBody149_103 AllocBody149_118

def AllocBody149_120 : StackLang.HolProg 64 :=
.seq AllocBody149_102 AllocBody149_119

def AllocBody149_121 : StackLang.HolProg 64 :=
.seq AllocBody149_101 AllocBody149_120

def AllocBody149_122 : StackLang.HolProg 64 :=
.seq AllocBody149_100 AllocBody149_121

def AllocBody149_123 : StackLang.HolProg 64 :=
.seq AllocBody149_55 AllocBody149_122

def AllocBody149_124 : StackLang.HolProg 64 :=
.seq AllocBody149_54 AllocBody149_123

def AllocBody149_125 : StackLang.HolProg 64 :=
.seq AllocBody149_53 AllocBody149_124

def AllocBody149_126 : StackLang.HolProg 64 :=
.seq AllocBody149_52 AllocBody149_125

def AllocBody149_127 : StackLang.HolProg 64 :=
.seq AllocBody149_51 AllocBody149_126

def AllocBody149_128 : StackLang.HolProg 64 :=
.seq AllocBody149_50 AllocBody149_127

def AllocBody149_129 : StackLang.HolProg 64 :=
.seq AllocBody149_49 AllocBody149_128

def AllocBody149_130 : StackLang.HolProg 64 :=
.seq AllocBody149_48 AllocBody149_129

def AllocBody149_131 : StackLang.HolProg 64 :=
.seq AllocBody149_47 AllocBody149_130

def AllocBody149_132 : StackLang.HolProg 64 :=
.seq AllocBody149_46 AllocBody149_131

def AllocBody149_133 : StackLang.HolProg 64 :=
.seq AllocBody149_3 AllocBody149_132

def AllocBody149_134 : StackLang.HolProg 64 :=
.seq AllocBody149_2 AllocBody149_133

def AllocBody149_135 : StackLang.HolProg 64 :=
.seq AllocBody149_1 AllocBody149_134

def AllocBody149_136 : StackLang.HolProg 64 :=
.seq AllocBody149_0 AllocBody149_135

def Alloc149 : Nat × StackLang.HolProg 64 := (149, AllocBody149_136)
theorem Alloc149_eq : StackAlloc.progComp (149, raw149) = Alloc149 := by
  kernel_rfl
#print axioms Alloc149_eq
end InitECandidate.Proofs.BackendStages
