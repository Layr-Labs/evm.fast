import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw270
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody270_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody270_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody270_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody270_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody270_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody270_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody270_6 : StackLang.HolProg 64 :=
.seq AllocBody270_4 AllocBody270_5

def AllocBody270_7 : StackLang.HolProg 64 :=
.seq AllocBody270_3 AllocBody270_6

def AllocBody270_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody270_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 656#64)

def AllocBody270_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody270_11 : StackLang.HolProg 64 :=
.seq AllocBody270_9 AllocBody270_10

def AllocBody270_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody270_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody270_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody270_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 270 3

def AllocBody270_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody270_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody270_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody270_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody270_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody270_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody270_22 : StackLang.HolProg 64 :=
.seq AllocBody270_20 AllocBody270_21

def AllocBody270_23 : StackLang.HolProg 64 :=
.seq AllocBody270_19 AllocBody270_22

def AllocBody270_24 : StackLang.HolProg 64 :=
.seq AllocBody270_18 AllocBody270_23

def AllocBody270_25 : StackLang.HolProg 64 :=
.seq AllocBody270_17 AllocBody270_24

def AllocBody270_26 : StackLang.HolProg 64 :=
.seq AllocBody270_16 AllocBody270_25

def AllocBody270_27 : StackLang.HolProg 64 :=
.seq AllocBody270_15 AllocBody270_26

def AllocBody270_28 : StackLang.HolProg 64 :=
.seq AllocBody270_14 AllocBody270_27

def AllocBody270_29 : StackLang.HolProg 64 :=
.seq AllocBody270_13 AllocBody270_28

def AllocBody270_30 : StackLang.HolProg 64 :=
.seq AllocBody270_12 AllocBody270_29

def AllocBody270_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody270_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody270_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody270_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody270_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody270_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody270_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody270_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody270_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody270_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody270_41 : StackLang.HolProg 64 :=
.seq AllocBody270_39 AllocBody270_40

def AllocBody270_42 : StackLang.HolProg 64 :=
.seq AllocBody270_38 AllocBody270_41

def AllocBody270_43 : StackLang.HolProg 64 :=
.seq AllocBody270_37 AllocBody270_42

def AllocBody270_44 : StackLang.HolProg 64 :=
.seq AllocBody270_36 AllocBody270_43

def AllocBody270_45 : StackLang.HolProg 64 :=
.seq AllocBody270_35 AllocBody270_44

def AllocBody270_46 : StackLang.HolProg 64 :=
.seq AllocBody270_34 AllocBody270_45

def AllocBody270_47 : StackLang.HolProg 64 :=
.seq AllocBody270_33 AllocBody270_46

def AllocBody270_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody270_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody270_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody270_51 : StackLang.HolProg 64 :=
.seq AllocBody270_49 AllocBody270_50

def AllocBody270_52 : StackLang.HolProg 64 :=
.seq AllocBody270_48 AllocBody270_51

def AllocBody270_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody270_54 : StackLang.HolProg 64 :=
.seq AllocBody270_52 AllocBody270_53

def AllocBody270_55 : StackLang.HolProg 64 :=
.call (some (AllocBody270_47, 0, 270, 2)) (Sum.inl 269) (some (AllocBody270_54, 270, 3))

def AllocBody270_56 : StackLang.HolProg 64 :=
.seq AllocBody270_32 AllocBody270_55

def AllocBody270_57 : StackLang.HolProg 64 :=
.seq AllocBody270_31 AllocBody270_56

def AllocBody270_58 : StackLang.HolProg 64 :=
.seq AllocBody270_30 AllocBody270_57

def AllocBody270_59 : StackLang.HolProg 64 :=
.seq AllocBody270_11 AllocBody270_58

def AllocBody270_60 : StackLang.HolProg 64 :=
.seq AllocBody270_8 AllocBody270_59

def AllocBody270_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody270_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 8#64)

def AllocBody270_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody270_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody270_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 4#64)

def AllocBody270_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody270_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody270_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody270_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody270_70 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody270_71 : StackLang.HolProg 64 :=
.seq AllocBody270_69 AllocBody270_70

def AllocBody270_72 : StackLang.HolProg 64 :=
.seq AllocBody270_68 AllocBody270_71

def AllocBody270_73 : StackLang.HolProg 64 :=
.seq AllocBody270_67 AllocBody270_72

def AllocBody270_74 : StackLang.HolProg 64 :=
.seq AllocBody270_66 AllocBody270_73

def AllocBody270_75 : StackLang.HolProg 64 :=
.seq AllocBody270_65 AllocBody270_74

def AllocBody270_76 : StackLang.HolProg 64 :=
.seq AllocBody270_64 AllocBody270_75

def AllocBody270_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody270_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody270_76 AllocBody270_77

def AllocBody270_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody270_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody270_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody270_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody270_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody270_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody270_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody270_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody270_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody270_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody270_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody270_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody270_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody270_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody270_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody270_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody270_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody270_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody270_97 : StackLang.HolProg 64 :=
.seq AllocBody270_95 AllocBody270_96

def AllocBody270_98 : StackLang.HolProg 64 :=
.seq AllocBody270_94 AllocBody270_97

def AllocBody270_99 : StackLang.HolProg 64 :=
.seq AllocBody270_93 AllocBody270_98

def AllocBody270_100 : StackLang.HolProg 64 :=
.seq AllocBody270_92 AllocBody270_99

def AllocBody270_101 : StackLang.HolProg 64 :=
.seq AllocBody270_91 AllocBody270_100

def AllocBody270_102 : StackLang.HolProg 64 :=
.seq AllocBody270_90 AllocBody270_101

def AllocBody270_103 : StackLang.HolProg 64 :=
.seq AllocBody270_89 AllocBody270_102

def AllocBody270_104 : StackLang.HolProg 64 :=
.seq AllocBody270_88 AllocBody270_103

def AllocBody270_105 : StackLang.HolProg 64 :=
.seq AllocBody270_87 AllocBody270_104

def AllocBody270_106 : StackLang.HolProg 64 :=
.seq AllocBody270_86 AllocBody270_105

def AllocBody270_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody270_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody270_109 : StackLang.HolProg 64 :=
.seq AllocBody270_107 AllocBody270_108

def AllocBody270_110 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody270_106 AllocBody270_109

def AllocBody270_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody270_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody270_113 : StackLang.HolProg 64 :=
.seq AllocBody270_111 AllocBody270_112

def AllocBody270_114 : StackLang.HolProg 64 :=
.seq AllocBody270_110 AllocBody270_113

def AllocBody270_115 : StackLang.HolProg 64 :=
.seq AllocBody270_85 AllocBody270_114

def AllocBody270_116 : StackLang.HolProg 64 :=
.loop AllocBody270_115

def AllocBody270_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody270_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody270_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody270_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def AllocBody270_121 : StackLang.HolProg 64 :=
.seq AllocBody270_119 AllocBody270_120

def AllocBody270_122 : StackLang.HolProg 64 :=
.seq AllocBody270_118 AllocBody270_121

def AllocBody270_123 : StackLang.HolProg 64 :=
.seq AllocBody270_117 AllocBody270_122

def AllocBody270_124 : StackLang.HolProg 64 :=
.seq AllocBody270_116 AllocBody270_123

def AllocBody270_125 : StackLang.HolProg 64 :=
.seq AllocBody270_84 AllocBody270_124

def AllocBody270_126 : StackLang.HolProg 64 :=
.seq AllocBody270_83 AllocBody270_125

def AllocBody270_127 : StackLang.HolProg 64 :=
.seq AllocBody270_82 AllocBody270_126

def AllocBody270_128 : StackLang.HolProg 64 :=
.seq AllocBody270_81 AllocBody270_127

def AllocBody270_129 : StackLang.HolProg 64 :=
.seq AllocBody270_80 AllocBody270_128

def AllocBody270_130 : StackLang.HolProg 64 :=
.seq AllocBody270_79 AllocBody270_129

def AllocBody270_131 : StackLang.HolProg 64 :=
.seq AllocBody270_78 AllocBody270_130

def AllocBody270_132 : StackLang.HolProg 64 :=
.seq AllocBody270_63 AllocBody270_131

def AllocBody270_133 : StackLang.HolProg 64 :=
.seq AllocBody270_62 AllocBody270_132

def AllocBody270_134 : StackLang.HolProg 64 :=
.seq AllocBody270_61 AllocBody270_133

def AllocBody270_135 : StackLang.HolProg 64 :=
.seq AllocBody270_60 AllocBody270_134

def AllocBody270_136 : StackLang.HolProg 64 :=
.seq AllocBody270_7 AllocBody270_135

def AllocBody270_137 : StackLang.HolProg 64 :=
.seq AllocBody270_2 AllocBody270_136

def AllocBody270_138 : StackLang.HolProg 64 :=
.seq AllocBody270_1 AllocBody270_137

def AllocBody270_139 : StackLang.HolProg 64 :=
.seq AllocBody270_0 AllocBody270_138

def Alloc270 : Nat × StackLang.HolProg 64 := (270, AllocBody270_139)
theorem Alloc270_eq : StackAlloc.progComp (270, raw270) = Alloc270 := by
  kernel_rfl
#print axioms Alloc270_eq
end InitECandidate.Proofs.BackendStages
