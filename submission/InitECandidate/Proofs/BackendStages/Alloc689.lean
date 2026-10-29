import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw689
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody689_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody689_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody689_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody689_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody689_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody689_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody689_6 : StackLang.HolProg 64 :=
.seq AllocBody689_4 AllocBody689_5

def AllocBody689_7 : StackLang.HolProg 64 :=
.seq AllocBody689_3 AllocBody689_6

def AllocBody689_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody689_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody689_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody689_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody689_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody689_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody689_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody689_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody689_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody689_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def AllocBody689_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody689_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody689_20 : StackLang.HolProg 64 :=
.seq AllocBody689_18 AllocBody689_19

def AllocBody689_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody689_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2938#64)

def AllocBody689_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody689_24 : StackLang.HolProg 64 :=
.seq AllocBody689_22 AllocBody689_23

def AllocBody689_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody689_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody689_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody689_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 689 3

def AllocBody689_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody689_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody689_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody689_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody689_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody689_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody689_35 : StackLang.HolProg 64 :=
.seq AllocBody689_33 AllocBody689_34

def AllocBody689_36 : StackLang.HolProg 64 :=
.seq AllocBody689_32 AllocBody689_35

def AllocBody689_37 : StackLang.HolProg 64 :=
.seq AllocBody689_31 AllocBody689_36

def AllocBody689_38 : StackLang.HolProg 64 :=
.seq AllocBody689_30 AllocBody689_37

def AllocBody689_39 : StackLang.HolProg 64 :=
.seq AllocBody689_29 AllocBody689_38

def AllocBody689_40 : StackLang.HolProg 64 :=
.seq AllocBody689_28 AllocBody689_39

def AllocBody689_41 : StackLang.HolProg 64 :=
.seq AllocBody689_27 AllocBody689_40

def AllocBody689_42 : StackLang.HolProg 64 :=
.seq AllocBody689_26 AllocBody689_41

def AllocBody689_43 : StackLang.HolProg 64 :=
.seq AllocBody689_25 AllocBody689_42

def AllocBody689_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody689_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody689_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody689_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody689_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody689_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody689_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody689_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody689_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody689_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody689_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody689_55 : StackLang.HolProg 64 :=
.seq AllocBody689_53 AllocBody689_54

def AllocBody689_56 : StackLang.HolProg 64 :=
.seq AllocBody689_52 AllocBody689_55

def AllocBody689_57 : StackLang.HolProg 64 :=
.seq AllocBody689_51 AllocBody689_56

def AllocBody689_58 : StackLang.HolProg 64 :=
.seq AllocBody689_50 AllocBody689_57

def AllocBody689_59 : StackLang.HolProg 64 :=
.seq AllocBody689_49 AllocBody689_58

def AllocBody689_60 : StackLang.HolProg 64 :=
.seq AllocBody689_48 AllocBody689_59

def AllocBody689_61 : StackLang.HolProg 64 :=
.seq AllocBody689_47 AllocBody689_60

def AllocBody689_62 : StackLang.HolProg 64 :=
.seq AllocBody689_46 AllocBody689_61

def AllocBody689_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody689_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody689_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody689_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody689_67 : StackLang.HolProg 64 :=
.seq AllocBody689_65 AllocBody689_66

def AllocBody689_68 : StackLang.HolProg 64 :=
.seq AllocBody689_64 AllocBody689_67

def AllocBody689_69 : StackLang.HolProg 64 :=
.seq AllocBody689_63 AllocBody689_68

def AllocBody689_70 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody689_71 : StackLang.HolProg 64 :=
.seq AllocBody689_69 AllocBody689_70

def AllocBody689_72 : StackLang.HolProg 64 :=
.call (some (AllocBody689_62, 0, 689, 2)) (Sum.inl 80) (some (AllocBody689_71, 689, 3))

def AllocBody689_73 : StackLang.HolProg 64 :=
.seq AllocBody689_45 AllocBody689_72

def AllocBody689_74 : StackLang.HolProg 64 :=
.seq AllocBody689_44 AllocBody689_73

def AllocBody689_75 : StackLang.HolProg 64 :=
.seq AllocBody689_43 AllocBody689_74

def AllocBody689_76 : StackLang.HolProg 64 :=
.seq AllocBody689_24 AllocBody689_75

def AllocBody689_77 : StackLang.HolProg 64 :=
.seq AllocBody689_21 AllocBody689_76

def AllocBody689_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody689_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody689_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody689_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody689_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody689_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody689_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody689_85 : StackLang.HolProg 64 :=
.seq AllocBody689_83 AllocBody689_84

def AllocBody689_86 : StackLang.HolProg 64 :=
.seq AllocBody689_82 AllocBody689_85

def AllocBody689_87 : StackLang.HolProg 64 :=
.seq AllocBody689_81 AllocBody689_86

def AllocBody689_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody689_89 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody689_87 AllocBody689_88

def AllocBody689_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody689_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody689_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody689_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody689_94 : StackLang.HolProg 64 :=
.seq AllocBody689_92 AllocBody689_93

def AllocBody689_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody689_96 : StackLang.HolProg 64 :=
.seq AllocBody689_94 AllocBody689_95

def AllocBody689_97 : StackLang.HolProg 64 :=
.seq AllocBody689_91 AllocBody689_96

def AllocBody689_98 : StackLang.HolProg 64 :=
.seq AllocBody689_90 AllocBody689_97

def AllocBody689_99 : StackLang.HolProg 64 :=
.seq AllocBody689_89 AllocBody689_98

def AllocBody689_100 : StackLang.HolProg 64 :=
.seq AllocBody689_80 AllocBody689_99

def AllocBody689_101 : StackLang.HolProg 64 :=
.seq AllocBody689_79 AllocBody689_100

def AllocBody689_102 : StackLang.HolProg 64 :=
.seq AllocBody689_78 AllocBody689_101

def AllocBody689_103 : StackLang.HolProg 64 :=
.seq AllocBody689_77 AllocBody689_102

def AllocBody689_104 : StackLang.HolProg 64 :=
.seq AllocBody689_20 AllocBody689_103

def AllocBody689_105 : StackLang.HolProg 64 :=
.seq AllocBody689_17 AllocBody689_104

def AllocBody689_106 : StackLang.HolProg 64 :=
.seq AllocBody689_16 AllocBody689_105

def AllocBody689_107 : StackLang.HolProg 64 :=
.seq AllocBody689_15 AllocBody689_106

def AllocBody689_108 : StackLang.HolProg 64 :=
.seq AllocBody689_14 AllocBody689_107

def AllocBody689_109 : StackLang.HolProg 64 :=
.seq AllocBody689_13 AllocBody689_108

def AllocBody689_110 : StackLang.HolProg 64 :=
.seq AllocBody689_12 AllocBody689_109

def AllocBody689_111 : StackLang.HolProg 64 :=
.seq AllocBody689_11 AllocBody689_110

def AllocBody689_112 : StackLang.HolProg 64 :=
.seq AllocBody689_10 AllocBody689_111

def AllocBody689_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody689_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody689_115 : StackLang.HolProg 64 :=
.seq AllocBody689_113 AllocBody689_114

def AllocBody689_116 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody689_112 AllocBody689_115

def AllocBody689_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody689_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody689_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody689_120 : StackLang.HolProg 64 :=
.seq AllocBody689_118 AllocBody689_119

def AllocBody689_121 : StackLang.HolProg 64 :=
.seq AllocBody689_117 AllocBody689_120

def AllocBody689_122 : StackLang.HolProg 64 :=
.seq AllocBody689_116 AllocBody689_121

def AllocBody689_123 : StackLang.HolProg 64 :=
.seq AllocBody689_9 AllocBody689_122

def AllocBody689_124 : StackLang.HolProg 64 :=
.seq AllocBody689_8 AllocBody689_123

def AllocBody689_125 : StackLang.HolProg 64 :=
.loop AllocBody689_124

def AllocBody689_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody689_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def AllocBody689_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody689_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody689_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody689_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def AllocBody689_132 : StackLang.HolProg 64 :=
.seq AllocBody689_130 AllocBody689_131

def AllocBody689_133 : StackLang.HolProg 64 :=
.seq AllocBody689_129 AllocBody689_132

def AllocBody689_134 : StackLang.HolProg 64 :=
.seq AllocBody689_128 AllocBody689_133

def AllocBody689_135 : StackLang.HolProg 64 :=
.seq AllocBody689_127 AllocBody689_134

def AllocBody689_136 : StackLang.HolProg 64 :=
.seq AllocBody689_126 AllocBody689_135

def AllocBody689_137 : StackLang.HolProg 64 :=
.seq AllocBody689_125 AllocBody689_136

def AllocBody689_138 : StackLang.HolProg 64 :=
.seq AllocBody689_7 AllocBody689_137

def AllocBody689_139 : StackLang.HolProg 64 :=
.seq AllocBody689_2 AllocBody689_138

def AllocBody689_140 : StackLang.HolProg 64 :=
.seq AllocBody689_1 AllocBody689_139

def AllocBody689_141 : StackLang.HolProg 64 :=
.seq AllocBody689_0 AllocBody689_140

def Alloc689 : Nat × StackLang.HolProg 64 := (689, AllocBody689_141)
theorem Alloc689_eq : StackAlloc.progComp (689, raw689) = Alloc689 := by
  kernel_rfl
#print axioms Alloc689_eq
end InitECandidate.Proofs.BackendStages
