import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw167
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody167_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody167_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody167_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody167_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody167_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody167_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody167_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody167_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody167_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody167_9 : StackLang.HolProg 64 :=
.seq AllocBody167_7 AllocBody167_8

def AllocBody167_10 : StackLang.HolProg 64 :=
.seq AllocBody167_6 AllocBody167_9

def AllocBody167_11 : StackLang.HolProg 64 :=
.seq AllocBody167_5 AllocBody167_10

def AllocBody167_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody167_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody167_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody167_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody167_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody167_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody167_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody167_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody167_20 : StackLang.HolProg 64 :=
.seq AllocBody167_18 AllocBody167_19

def AllocBody167_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def AllocBody167_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody167_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody167_24 : StackLang.HolProg 64 :=
.seq AllocBody167_22 AllocBody167_23

def AllocBody167_25 : StackLang.HolProg 64 :=
.seq AllocBody167_21 AllocBody167_24

def AllocBody167_26 : StackLang.HolProg 64 :=
.seq AllocBody167_20 AllocBody167_25

def AllocBody167_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody167_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 184#64)

def AllocBody167_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody167_30 : StackLang.HolProg 64 :=
.seq AllocBody167_28 AllocBody167_29

def AllocBody167_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody167_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody167_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody167_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 167 3

def AllocBody167_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody167_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody167_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody167_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody167_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody167_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody167_41 : StackLang.HolProg 64 :=
.seq AllocBody167_39 AllocBody167_40

def AllocBody167_42 : StackLang.HolProg 64 :=
.seq AllocBody167_38 AllocBody167_41

def AllocBody167_43 : StackLang.HolProg 64 :=
.seq AllocBody167_37 AllocBody167_42

def AllocBody167_44 : StackLang.HolProg 64 :=
.seq AllocBody167_36 AllocBody167_43

def AllocBody167_45 : StackLang.HolProg 64 :=
.seq AllocBody167_35 AllocBody167_44

def AllocBody167_46 : StackLang.HolProg 64 :=
.seq AllocBody167_34 AllocBody167_45

def AllocBody167_47 : StackLang.HolProg 64 :=
.seq AllocBody167_33 AllocBody167_46

def AllocBody167_48 : StackLang.HolProg 64 :=
.seq AllocBody167_32 AllocBody167_47

def AllocBody167_49 : StackLang.HolProg 64 :=
.seq AllocBody167_31 AllocBody167_48

def AllocBody167_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody167_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody167_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody167_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody167_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody167_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody167_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody167_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody167_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody167_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody167_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody167_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody167_62 : StackLang.HolProg 64 :=
.seq AllocBody167_60 AllocBody167_61

def AllocBody167_63 : StackLang.HolProg 64 :=
.seq AllocBody167_59 AllocBody167_62

def AllocBody167_64 : StackLang.HolProg 64 :=
.seq AllocBody167_58 AllocBody167_63

def AllocBody167_65 : StackLang.HolProg 64 :=
.seq AllocBody167_57 AllocBody167_64

def AllocBody167_66 : StackLang.HolProg 64 :=
.seq AllocBody167_56 AllocBody167_65

def AllocBody167_67 : StackLang.HolProg 64 :=
.seq AllocBody167_55 AllocBody167_66

def AllocBody167_68 : StackLang.HolProg 64 :=
.seq AllocBody167_54 AllocBody167_67

def AllocBody167_69 : StackLang.HolProg 64 :=
.seq AllocBody167_53 AllocBody167_68

def AllocBody167_70 : StackLang.HolProg 64 :=
.seq AllocBody167_52 AllocBody167_69

def AllocBody167_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody167_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody167_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody167_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody167_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody167_76 : StackLang.HolProg 64 :=
.seq AllocBody167_74 AllocBody167_75

def AllocBody167_77 : StackLang.HolProg 64 :=
.seq AllocBody167_73 AllocBody167_76

def AllocBody167_78 : StackLang.HolProg 64 :=
.seq AllocBody167_72 AllocBody167_77

def AllocBody167_79 : StackLang.HolProg 64 :=
.seq AllocBody167_71 AllocBody167_78

def AllocBody167_80 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody167_81 : StackLang.HolProg 64 :=
.seq AllocBody167_79 AllocBody167_80

def AllocBody167_82 : StackLang.HolProg 64 :=
.call (some (AllocBody167_70, 0, 167, 2)) (Sum.inl 166) (some (AllocBody167_81, 167, 3))

def AllocBody167_83 : StackLang.HolProg 64 :=
.seq AllocBody167_51 AllocBody167_82

def AllocBody167_84 : StackLang.HolProg 64 :=
.seq AllocBody167_50 AllocBody167_83

def AllocBody167_85 : StackLang.HolProg 64 :=
.seq AllocBody167_49 AllocBody167_84

def AllocBody167_86 : StackLang.HolProg 64 :=
.seq AllocBody167_30 AllocBody167_85

def AllocBody167_87 : StackLang.HolProg 64 :=
.seq AllocBody167_27 AllocBody167_86

def AllocBody167_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody167_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody167_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody167_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody167_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody167_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def AllocBody167_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody167_95 : StackLang.HolProg 64 :=
.seq AllocBody167_93 AllocBody167_94

def AllocBody167_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody167_97 : StackLang.HolProg 64 :=
.seq AllocBody167_95 AllocBody167_96

def AllocBody167_98 : StackLang.HolProg 64 :=
.seq AllocBody167_92 AllocBody167_97

def AllocBody167_99 : StackLang.HolProg 64 :=
.seq AllocBody167_91 AllocBody167_98

def AllocBody167_100 : StackLang.HolProg 64 :=
.seq AllocBody167_90 AllocBody167_99

def AllocBody167_101 : StackLang.HolProg 64 :=
.seq AllocBody167_89 AllocBody167_100

def AllocBody167_102 : StackLang.HolProg 64 :=
.seq AllocBody167_88 AllocBody167_101

def AllocBody167_103 : StackLang.HolProg 64 :=
.seq AllocBody167_87 AllocBody167_102

def AllocBody167_104 : StackLang.HolProg 64 :=
.seq AllocBody167_26 AllocBody167_103

def AllocBody167_105 : StackLang.HolProg 64 :=
.seq AllocBody167_17 AllocBody167_104

def AllocBody167_106 : StackLang.HolProg 64 :=
.seq AllocBody167_16 AllocBody167_105

def AllocBody167_107 : StackLang.HolProg 64 :=
.seq AllocBody167_15 AllocBody167_106

def AllocBody167_108 : StackLang.HolProg 64 :=
.seq AllocBody167_14 AllocBody167_107

def AllocBody167_109 : StackLang.HolProg 64 :=
.seq AllocBody167_13 AllocBody167_108

def AllocBody167_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody167_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody167_112 : StackLang.HolProg 64 :=
.seq AllocBody167_110 AllocBody167_111

def AllocBody167_113 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody167_109 AllocBody167_112

def AllocBody167_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody167_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def AllocBody167_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody167_117 : StackLang.HolProg 64 :=
.seq AllocBody167_115 AllocBody167_116

def AllocBody167_118 : StackLang.HolProg 64 :=
.seq AllocBody167_114 AllocBody167_117

def AllocBody167_119 : StackLang.HolProg 64 :=
.seq AllocBody167_113 AllocBody167_118

def AllocBody167_120 : StackLang.HolProg 64 :=
.seq AllocBody167_12 AllocBody167_119

def AllocBody167_121 : StackLang.HolProg 64 :=
.loop AllocBody167_120

def AllocBody167_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody167_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 4

def AllocBody167_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody167_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody167_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def AllocBody167_127 : StackLang.HolProg 64 :=
.seq AllocBody167_125 AllocBody167_126

def AllocBody167_128 : StackLang.HolProg 64 :=
.seq AllocBody167_124 AllocBody167_127

def AllocBody167_129 : StackLang.HolProg 64 :=
.seq AllocBody167_123 AllocBody167_128

def AllocBody167_130 : StackLang.HolProg 64 :=
.seq AllocBody167_122 AllocBody167_129

def AllocBody167_131 : StackLang.HolProg 64 :=
.seq AllocBody167_121 AllocBody167_130

def AllocBody167_132 : StackLang.HolProg 64 :=
.seq AllocBody167_11 AllocBody167_131

def AllocBody167_133 : StackLang.HolProg 64 :=
.seq AllocBody167_4 AllocBody167_132

def AllocBody167_134 : StackLang.HolProg 64 :=
.seq AllocBody167_3 AllocBody167_133

def AllocBody167_135 : StackLang.HolProg 64 :=
.seq AllocBody167_2 AllocBody167_134

def AllocBody167_136 : StackLang.HolProg 64 :=
.seq AllocBody167_1 AllocBody167_135

def AllocBody167_137 : StackLang.HolProg 64 :=
.seq AllocBody167_0 AllocBody167_136

def Alloc167 : Nat × StackLang.HolProg 64 := (167, AllocBody167_137)
theorem Alloc167_eq : StackAlloc.progComp (167, raw167) = Alloc167 := by
  kernel_rfl
#print axioms Alloc167_eq
end InitECandidate.Proofs.BackendStages
