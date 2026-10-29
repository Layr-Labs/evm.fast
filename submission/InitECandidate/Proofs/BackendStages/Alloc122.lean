import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw122
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody122_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody122_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody122_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody122_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody122_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 4294901760#64)

def AllocBody122_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody122_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody122_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody122_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 16#64)

def AllocBody122_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody122_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody122_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody122_12 : StackLang.HolProg 64 :=
.seq AllocBody122_10 AllocBody122_11

def AllocBody122_13 : StackLang.HolProg 64 :=
.seq AllocBody122_9 AllocBody122_12

def AllocBody122_14 : StackLang.HolProg 64 :=
.seq AllocBody122_8 AllocBody122_13

def AllocBody122_15 : StackLang.HolProg 64 :=
.seq AllocBody122_7 AllocBody122_14

def AllocBody122_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody122_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody122_18 : StackLang.HolProg 64 :=
.seq AllocBody122_16 AllocBody122_17

def AllocBody122_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody122_15 AllocBody122_18

def AllocBody122_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody122_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody122_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 4278190080#64)

def AllocBody122_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody122_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody122_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody122_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody122_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody122_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody122_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody122_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody122_31 : StackLang.HolProg 64 :=
.seq AllocBody122_29 AllocBody122_30

def AllocBody122_32 : StackLang.HolProg 64 :=
.seq AllocBody122_28 AllocBody122_31

def AllocBody122_33 : StackLang.HolProg 64 :=
.seq AllocBody122_27 AllocBody122_32

def AllocBody122_34 : StackLang.HolProg 64 :=
.seq AllocBody122_26 AllocBody122_33

def AllocBody122_35 : StackLang.HolProg 64 :=
.seq AllocBody122_25 AllocBody122_34

def AllocBody122_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody122_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody122_38 : StackLang.HolProg 64 :=
.seq AllocBody122_36 AllocBody122_37

def AllocBody122_39 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody122_35 AllocBody122_38

def AllocBody122_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody122_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody122_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 4026531840#64)

def AllocBody122_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody122_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody122_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody122_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody122_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody122_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody122_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody122_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody122_51 : StackLang.HolProg 64 :=
.seq AllocBody122_49 AllocBody122_50

def AllocBody122_52 : StackLang.HolProg 64 :=
.seq AllocBody122_48 AllocBody122_51

def AllocBody122_53 : StackLang.HolProg 64 :=
.seq AllocBody122_47 AllocBody122_52

def AllocBody122_54 : StackLang.HolProg 64 :=
.seq AllocBody122_46 AllocBody122_53

def AllocBody122_55 : StackLang.HolProg 64 :=
.seq AllocBody122_45 AllocBody122_54

def AllocBody122_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody122_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody122_58 : StackLang.HolProg 64 :=
.seq AllocBody122_56 AllocBody122_57

def AllocBody122_59 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody122_55 AllocBody122_58

def AllocBody122_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody122_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody122_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 3221225472#64)

def AllocBody122_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody122_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody122_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody122_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody122_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody122_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody122_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody122_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody122_71 : StackLang.HolProg 64 :=
.seq AllocBody122_69 AllocBody122_70

def AllocBody122_72 : StackLang.HolProg 64 :=
.seq AllocBody122_68 AllocBody122_71

def AllocBody122_73 : StackLang.HolProg 64 :=
.seq AllocBody122_67 AllocBody122_72

def AllocBody122_74 : StackLang.HolProg 64 :=
.seq AllocBody122_66 AllocBody122_73

def AllocBody122_75 : StackLang.HolProg 64 :=
.seq AllocBody122_65 AllocBody122_74

def AllocBody122_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody122_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody122_78 : StackLang.HolProg 64 :=
.seq AllocBody122_76 AllocBody122_77

def AllocBody122_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody122_75 AllocBody122_78

def AllocBody122_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody122_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody122_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2147483648#64)

def AllocBody122_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody122_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody122_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody122_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody122_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody122_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody122_89 : StackLang.HolProg 64 :=
.seq AllocBody122_87 AllocBody122_88

def AllocBody122_90 : StackLang.HolProg 64 :=
.seq AllocBody122_86 AllocBody122_89

def AllocBody122_91 : StackLang.HolProg 64 :=
.seq AllocBody122_85 AllocBody122_90

def AllocBody122_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody122_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody122_94 : StackLang.HolProg 64 :=
.seq AllocBody122_92 AllocBody122_93

def AllocBody122_95 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody122_91 AllocBody122_94

def AllocBody122_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody122_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody122_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody122_99 : StackLang.HolProg 64 :=
.seq AllocBody122_97 AllocBody122_98

def AllocBody122_100 : StackLang.HolProg 64 :=
.seq AllocBody122_96 AllocBody122_99

def AllocBody122_101 : StackLang.HolProg 64 :=
.seq AllocBody122_95 AllocBody122_100

def AllocBody122_102 : StackLang.HolProg 64 :=
.seq AllocBody122_84 AllocBody122_101

def AllocBody122_103 : StackLang.HolProg 64 :=
.seq AllocBody122_83 AllocBody122_102

def AllocBody122_104 : StackLang.HolProg 64 :=
.seq AllocBody122_82 AllocBody122_103

def AllocBody122_105 : StackLang.HolProg 64 :=
.seq AllocBody122_81 AllocBody122_104

def AllocBody122_106 : StackLang.HolProg 64 :=
.seq AllocBody122_80 AllocBody122_105

def AllocBody122_107 : StackLang.HolProg 64 :=
.seq AllocBody122_79 AllocBody122_106

def AllocBody122_108 : StackLang.HolProg 64 :=
.seq AllocBody122_64 AllocBody122_107

def AllocBody122_109 : StackLang.HolProg 64 :=
.seq AllocBody122_63 AllocBody122_108

def AllocBody122_110 : StackLang.HolProg 64 :=
.seq AllocBody122_62 AllocBody122_109

def AllocBody122_111 : StackLang.HolProg 64 :=
.seq AllocBody122_61 AllocBody122_110

def AllocBody122_112 : StackLang.HolProg 64 :=
.seq AllocBody122_60 AllocBody122_111

def AllocBody122_113 : StackLang.HolProg 64 :=
.seq AllocBody122_59 AllocBody122_112

def AllocBody122_114 : StackLang.HolProg 64 :=
.seq AllocBody122_44 AllocBody122_113

def AllocBody122_115 : StackLang.HolProg 64 :=
.seq AllocBody122_43 AllocBody122_114

def AllocBody122_116 : StackLang.HolProg 64 :=
.seq AllocBody122_42 AllocBody122_115

def AllocBody122_117 : StackLang.HolProg 64 :=
.seq AllocBody122_41 AllocBody122_116

def AllocBody122_118 : StackLang.HolProg 64 :=
.seq AllocBody122_40 AllocBody122_117

def AllocBody122_119 : StackLang.HolProg 64 :=
.seq AllocBody122_39 AllocBody122_118

def AllocBody122_120 : StackLang.HolProg 64 :=
.seq AllocBody122_24 AllocBody122_119

def AllocBody122_121 : StackLang.HolProg 64 :=
.seq AllocBody122_23 AllocBody122_120

def AllocBody122_122 : StackLang.HolProg 64 :=
.seq AllocBody122_22 AllocBody122_121

def AllocBody122_123 : StackLang.HolProg 64 :=
.seq AllocBody122_21 AllocBody122_122

def AllocBody122_124 : StackLang.HolProg 64 :=
.seq AllocBody122_20 AllocBody122_123

def AllocBody122_125 : StackLang.HolProg 64 :=
.seq AllocBody122_19 AllocBody122_124

def AllocBody122_126 : StackLang.HolProg 64 :=
.seq AllocBody122_6 AllocBody122_125

def AllocBody122_127 : StackLang.HolProg 64 :=
.seq AllocBody122_5 AllocBody122_126

def AllocBody122_128 : StackLang.HolProg 64 :=
.seq AllocBody122_4 AllocBody122_127

def AllocBody122_129 : StackLang.HolProg 64 :=
.seq AllocBody122_3 AllocBody122_128

def AllocBody122_130 : StackLang.HolProg 64 :=
.seq AllocBody122_2 AllocBody122_129

def AllocBody122_131 : StackLang.HolProg 64 :=
.seq AllocBody122_1 AllocBody122_130

def AllocBody122_132 : StackLang.HolProg 64 :=
.seq AllocBody122_0 AllocBody122_131

def Alloc122 : Nat × StackLang.HolProg 64 := (122, AllocBody122_132)
theorem Alloc122_eq : StackAlloc.progComp (122, raw122) = Alloc122 := by
  kernel_rfl
#print axioms Alloc122_eq
end InitECandidate.Proofs.BackendStages
