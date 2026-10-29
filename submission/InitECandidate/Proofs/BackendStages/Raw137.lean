import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function137
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody137_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody137_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody137_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody137_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody137_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody137_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody137_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody137_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def rawBody137_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody137_9 : StackLang.HolProg 64 :=
.seq rawBody137_7 rawBody137_8

def rawBody137_10 : StackLang.HolProg 64 :=
.seq rawBody137_6 rawBody137_9

def rawBody137_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody137_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody137_13 : StackLang.HolProg 64 :=
.seq rawBody137_11 rawBody137_12

def rawBody137_14 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody137_10 rawBody137_13

def rawBody137_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody137_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody137_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody137_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody137_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody137_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody137_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody137_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody137_23 : StackLang.HolProg 64 :=
.seq rawBody137_21 rawBody137_22

def rawBody137_24 : StackLang.HolProg 64 :=
.seq rawBody137_20 rawBody137_23

def rawBody137_25 : StackLang.HolProg 64 :=
.seq rawBody137_19 rawBody137_24

def rawBody137_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody137_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody137_28 : StackLang.HolProg 64 :=
.seq rawBody137_26 rawBody137_27

def rawBody137_29 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody137_25 rawBody137_28

def rawBody137_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody137_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody137_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody137_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody137_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody137_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody137_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody137_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody137_38 : StackLang.HolProg 64 :=
.seq rawBody137_36 rawBody137_37

def rawBody137_39 : StackLang.HolProg 64 :=
.seq rawBody137_35 rawBody137_38

def rawBody137_40 : StackLang.HolProg 64 :=
.seq rawBody137_34 rawBody137_39

def rawBody137_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody137_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody137_43 : StackLang.HolProg 64 :=
.seq rawBody137_41 rawBody137_42

def rawBody137_44 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody137_40 rawBody137_43

def rawBody137_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody137_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody137_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody137_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody137_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody137_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody137_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody137_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody137_53 : StackLang.HolProg 64 :=
.seq rawBody137_51 rawBody137_52

def rawBody137_54 : StackLang.HolProg 64 :=
.seq rawBody137_50 rawBody137_53

def rawBody137_55 : StackLang.HolProg 64 :=
.seq rawBody137_49 rawBody137_54

def rawBody137_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody137_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody137_58 : StackLang.HolProg 64 :=
.seq rawBody137_56 rawBody137_57

def rawBody137_59 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody137_55 rawBody137_58

def rawBody137_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody137_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody137_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def rawBody137_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody137_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody137_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody137_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def rawBody137_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody137_68 : StackLang.HolProg 64 :=
.seq rawBody137_66 rawBody137_67

def rawBody137_69 : StackLang.HolProg 64 :=
.seq rawBody137_65 rawBody137_68

def rawBody137_70 : StackLang.HolProg 64 :=
.seq rawBody137_64 rawBody137_69

def rawBody137_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody137_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody137_73 : StackLang.HolProg 64 :=
.seq rawBody137_71 rawBody137_72

def rawBody137_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody137_70 rawBody137_73

def rawBody137_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody137_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody137_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody137_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody137_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody137_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody137_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody137_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody137_83 : StackLang.HolProg 64 :=
.seq rawBody137_81 rawBody137_82

def rawBody137_84 : StackLang.HolProg 64 :=
.seq rawBody137_80 rawBody137_83

def rawBody137_85 : StackLang.HolProg 64 :=
.seq rawBody137_79 rawBody137_84

def rawBody137_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody137_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody137_88 : StackLang.HolProg 64 :=
.seq rawBody137_86 rawBody137_87

def rawBody137_89 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody137_85 rawBody137_88

def rawBody137_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody137_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody137_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody137_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody137_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody137_95 : StackLang.HolProg 64 :=
.seq rawBody137_93 rawBody137_94

def rawBody137_96 : StackLang.HolProg 64 :=
.seq rawBody137_92 rawBody137_95

def rawBody137_97 : StackLang.HolProg 64 :=
.seq rawBody137_91 rawBody137_96

def rawBody137_98 : StackLang.HolProg 64 :=
.seq rawBody137_90 rawBody137_97

def rawBody137_99 : StackLang.HolProg 64 :=
.seq rawBody137_89 rawBody137_98

def rawBody137_100 : StackLang.HolProg 64 :=
.seq rawBody137_78 rawBody137_99

def rawBody137_101 : StackLang.HolProg 64 :=
.seq rawBody137_77 rawBody137_100

def rawBody137_102 : StackLang.HolProg 64 :=
.seq rawBody137_76 rawBody137_101

def rawBody137_103 : StackLang.HolProg 64 :=
.seq rawBody137_75 rawBody137_102

def rawBody137_104 : StackLang.HolProg 64 :=
.seq rawBody137_74 rawBody137_103

def rawBody137_105 : StackLang.HolProg 64 :=
.seq rawBody137_63 rawBody137_104

def rawBody137_106 : StackLang.HolProg 64 :=
.seq rawBody137_62 rawBody137_105

def rawBody137_107 : StackLang.HolProg 64 :=
.seq rawBody137_61 rawBody137_106

def rawBody137_108 : StackLang.HolProg 64 :=
.seq rawBody137_60 rawBody137_107

def rawBody137_109 : StackLang.HolProg 64 :=
.seq rawBody137_59 rawBody137_108

def rawBody137_110 : StackLang.HolProg 64 :=
.seq rawBody137_48 rawBody137_109

def rawBody137_111 : StackLang.HolProg 64 :=
.seq rawBody137_47 rawBody137_110

def rawBody137_112 : StackLang.HolProg 64 :=
.seq rawBody137_46 rawBody137_111

def rawBody137_113 : StackLang.HolProg 64 :=
.seq rawBody137_45 rawBody137_112

def rawBody137_114 : StackLang.HolProg 64 :=
.seq rawBody137_44 rawBody137_113

def rawBody137_115 : StackLang.HolProg 64 :=
.seq rawBody137_33 rawBody137_114

def rawBody137_116 : StackLang.HolProg 64 :=
.seq rawBody137_32 rawBody137_115

def rawBody137_117 : StackLang.HolProg 64 :=
.seq rawBody137_31 rawBody137_116

def rawBody137_118 : StackLang.HolProg 64 :=
.seq rawBody137_30 rawBody137_117

def rawBody137_119 : StackLang.HolProg 64 :=
.seq rawBody137_29 rawBody137_118

def rawBody137_120 : StackLang.HolProg 64 :=
.seq rawBody137_18 rawBody137_119

def rawBody137_121 : StackLang.HolProg 64 :=
.seq rawBody137_17 rawBody137_120

def rawBody137_122 : StackLang.HolProg 64 :=
.seq rawBody137_16 rawBody137_121

def rawBody137_123 : StackLang.HolProg 64 :=
.seq rawBody137_15 rawBody137_122

def rawBody137_124 : StackLang.HolProg 64 :=
.seq rawBody137_14 rawBody137_123

def rawBody137_125 : StackLang.HolProg 64 :=
.seq rawBody137_5 rawBody137_124

def rawBody137_126 : StackLang.HolProg 64 :=
.seq rawBody137_4 rawBody137_125

def rawBody137_127 : StackLang.HolProg 64 :=
.seq rawBody137_3 rawBody137_126

def rawBody137_128 : StackLang.HolProg 64 :=
.seq rawBody137_2 rawBody137_127

def rawBody137_129 : StackLang.HolProg 64 :=
.seq rawBody137_1 rawBody137_128

def rawBody137_130 : StackLang.HolProg 64 :=
.seq rawBody137_0 rawBody137_129

def raw137 : StackLang.HolProg 64 := rawBody137_130
theorem raw137_eq : StackRawCall.compTop RawInfo.rawInfo (function137 (.list [])).1 = raw137 := by
  kernel_rfl
#print axioms raw137_eq
end InitECandidate.Proofs.BackendStages
