import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw137
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody137_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody137_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody137_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody137_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody137_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody137_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody137_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody137_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def AllocBody137_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody137_9 : StackLang.HolProg 64 :=
.seq AllocBody137_7 AllocBody137_8

def AllocBody137_10 : StackLang.HolProg 64 :=
.seq AllocBody137_6 AllocBody137_9

def AllocBody137_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody137_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody137_13 : StackLang.HolProg 64 :=
.seq AllocBody137_11 AllocBody137_12

def AllocBody137_14 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody137_10 AllocBody137_13

def AllocBody137_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody137_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody137_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody137_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody137_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody137_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody137_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody137_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody137_23 : StackLang.HolProg 64 :=
.seq AllocBody137_21 AllocBody137_22

def AllocBody137_24 : StackLang.HolProg 64 :=
.seq AllocBody137_20 AllocBody137_23

def AllocBody137_25 : StackLang.HolProg 64 :=
.seq AllocBody137_19 AllocBody137_24

def AllocBody137_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody137_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody137_28 : StackLang.HolProg 64 :=
.seq AllocBody137_26 AllocBody137_27

def AllocBody137_29 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody137_25 AllocBody137_28

def AllocBody137_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody137_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody137_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody137_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody137_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody137_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody137_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody137_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody137_38 : StackLang.HolProg 64 :=
.seq AllocBody137_36 AllocBody137_37

def AllocBody137_39 : StackLang.HolProg 64 :=
.seq AllocBody137_35 AllocBody137_38

def AllocBody137_40 : StackLang.HolProg 64 :=
.seq AllocBody137_34 AllocBody137_39

def AllocBody137_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody137_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody137_43 : StackLang.HolProg 64 :=
.seq AllocBody137_41 AllocBody137_42

def AllocBody137_44 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody137_40 AllocBody137_43

def AllocBody137_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody137_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody137_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody137_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody137_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody137_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody137_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody137_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody137_53 : StackLang.HolProg 64 :=
.seq AllocBody137_51 AllocBody137_52

def AllocBody137_54 : StackLang.HolProg 64 :=
.seq AllocBody137_50 AllocBody137_53

def AllocBody137_55 : StackLang.HolProg 64 :=
.seq AllocBody137_49 AllocBody137_54

def AllocBody137_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody137_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody137_58 : StackLang.HolProg 64 :=
.seq AllocBody137_56 AllocBody137_57

def AllocBody137_59 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody137_55 AllocBody137_58

def AllocBody137_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody137_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody137_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody137_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody137_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody137_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody137_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody137_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody137_68 : StackLang.HolProg 64 :=
.seq AllocBody137_66 AllocBody137_67

def AllocBody137_69 : StackLang.HolProg 64 :=
.seq AllocBody137_65 AllocBody137_68

def AllocBody137_70 : StackLang.HolProg 64 :=
.seq AllocBody137_64 AllocBody137_69

def AllocBody137_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody137_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody137_73 : StackLang.HolProg 64 :=
.seq AllocBody137_71 AllocBody137_72

def AllocBody137_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody137_70 AllocBody137_73

def AllocBody137_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody137_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody137_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody137_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody137_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody137_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody137_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody137_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody137_83 : StackLang.HolProg 64 :=
.seq AllocBody137_81 AllocBody137_82

def AllocBody137_84 : StackLang.HolProg 64 :=
.seq AllocBody137_80 AllocBody137_83

def AllocBody137_85 : StackLang.HolProg 64 :=
.seq AllocBody137_79 AllocBody137_84

def AllocBody137_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody137_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody137_88 : StackLang.HolProg 64 :=
.seq AllocBody137_86 AllocBody137_87

def AllocBody137_89 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody137_85 AllocBody137_88

def AllocBody137_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody137_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody137_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody137_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody137_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody137_95 : StackLang.HolProg 64 :=
.seq AllocBody137_93 AllocBody137_94

def AllocBody137_96 : StackLang.HolProg 64 :=
.seq AllocBody137_92 AllocBody137_95

def AllocBody137_97 : StackLang.HolProg 64 :=
.seq AllocBody137_91 AllocBody137_96

def AllocBody137_98 : StackLang.HolProg 64 :=
.seq AllocBody137_90 AllocBody137_97

def AllocBody137_99 : StackLang.HolProg 64 :=
.seq AllocBody137_89 AllocBody137_98

def AllocBody137_100 : StackLang.HolProg 64 :=
.seq AllocBody137_78 AllocBody137_99

def AllocBody137_101 : StackLang.HolProg 64 :=
.seq AllocBody137_77 AllocBody137_100

def AllocBody137_102 : StackLang.HolProg 64 :=
.seq AllocBody137_76 AllocBody137_101

def AllocBody137_103 : StackLang.HolProg 64 :=
.seq AllocBody137_75 AllocBody137_102

def AllocBody137_104 : StackLang.HolProg 64 :=
.seq AllocBody137_74 AllocBody137_103

def AllocBody137_105 : StackLang.HolProg 64 :=
.seq AllocBody137_63 AllocBody137_104

def AllocBody137_106 : StackLang.HolProg 64 :=
.seq AllocBody137_62 AllocBody137_105

def AllocBody137_107 : StackLang.HolProg 64 :=
.seq AllocBody137_61 AllocBody137_106

def AllocBody137_108 : StackLang.HolProg 64 :=
.seq AllocBody137_60 AllocBody137_107

def AllocBody137_109 : StackLang.HolProg 64 :=
.seq AllocBody137_59 AllocBody137_108

def AllocBody137_110 : StackLang.HolProg 64 :=
.seq AllocBody137_48 AllocBody137_109

def AllocBody137_111 : StackLang.HolProg 64 :=
.seq AllocBody137_47 AllocBody137_110

def AllocBody137_112 : StackLang.HolProg 64 :=
.seq AllocBody137_46 AllocBody137_111

def AllocBody137_113 : StackLang.HolProg 64 :=
.seq AllocBody137_45 AllocBody137_112

def AllocBody137_114 : StackLang.HolProg 64 :=
.seq AllocBody137_44 AllocBody137_113

def AllocBody137_115 : StackLang.HolProg 64 :=
.seq AllocBody137_33 AllocBody137_114

def AllocBody137_116 : StackLang.HolProg 64 :=
.seq AllocBody137_32 AllocBody137_115

def AllocBody137_117 : StackLang.HolProg 64 :=
.seq AllocBody137_31 AllocBody137_116

def AllocBody137_118 : StackLang.HolProg 64 :=
.seq AllocBody137_30 AllocBody137_117

def AllocBody137_119 : StackLang.HolProg 64 :=
.seq AllocBody137_29 AllocBody137_118

def AllocBody137_120 : StackLang.HolProg 64 :=
.seq AllocBody137_18 AllocBody137_119

def AllocBody137_121 : StackLang.HolProg 64 :=
.seq AllocBody137_17 AllocBody137_120

def AllocBody137_122 : StackLang.HolProg 64 :=
.seq AllocBody137_16 AllocBody137_121

def AllocBody137_123 : StackLang.HolProg 64 :=
.seq AllocBody137_15 AllocBody137_122

def AllocBody137_124 : StackLang.HolProg 64 :=
.seq AllocBody137_14 AllocBody137_123

def AllocBody137_125 : StackLang.HolProg 64 :=
.seq AllocBody137_5 AllocBody137_124

def AllocBody137_126 : StackLang.HolProg 64 :=
.seq AllocBody137_4 AllocBody137_125

def AllocBody137_127 : StackLang.HolProg 64 :=
.seq AllocBody137_3 AllocBody137_126

def AllocBody137_128 : StackLang.HolProg 64 :=
.seq AllocBody137_2 AllocBody137_127

def AllocBody137_129 : StackLang.HolProg 64 :=
.seq AllocBody137_1 AllocBody137_128

def AllocBody137_130 : StackLang.HolProg 64 :=
.seq AllocBody137_0 AllocBody137_129

def Alloc137 : Nat × StackLang.HolProg 64 := (137, AllocBody137_130)
theorem Alloc137_eq : StackAlloc.progComp (137, raw137) = Alloc137 := by
  kernel_rfl
#print axioms Alloc137_eq
end InitECandidate.Proofs.BackendStages
