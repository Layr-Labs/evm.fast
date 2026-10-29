import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed122
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody122_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody122_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody122_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody122_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody122_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 4294901760#64)

def NamedBody122_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody122_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody122_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody122_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 16#64)

def NamedBody122_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody122_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody122_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody122_12 : StackLang.HolProg 64 :=
.seq NamedBody122_10 NamedBody122_11

def NamedBody122_13 : StackLang.HolProg 64 :=
.seq NamedBody122_9 NamedBody122_12

def NamedBody122_14 : StackLang.HolProg 64 :=
.seq NamedBody122_8 NamedBody122_13

def NamedBody122_15 : StackLang.HolProg 64 :=
.seq NamedBody122_7 NamedBody122_14

def NamedBody122_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody122_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody122_18 : StackLang.HolProg 64 :=
.seq NamedBody122_16 NamedBody122_17

def NamedBody122_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody122_15 NamedBody122_18

def NamedBody122_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody122_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody122_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 4278190080#64)

def NamedBody122_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody122_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody122_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody122_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody122_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody122_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody122_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody122_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody122_31 : StackLang.HolProg 64 :=
.seq NamedBody122_29 NamedBody122_30

def NamedBody122_32 : StackLang.HolProg 64 :=
.seq NamedBody122_28 NamedBody122_31

def NamedBody122_33 : StackLang.HolProg 64 :=
.seq NamedBody122_27 NamedBody122_32

def NamedBody122_34 : StackLang.HolProg 64 :=
.seq NamedBody122_26 NamedBody122_33

def NamedBody122_35 : StackLang.HolProg 64 :=
.seq NamedBody122_25 NamedBody122_34

def NamedBody122_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody122_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody122_38 : StackLang.HolProg 64 :=
.seq NamedBody122_36 NamedBody122_37

def NamedBody122_39 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody122_35 NamedBody122_38

def NamedBody122_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody122_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody122_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 4026531840#64)

def NamedBody122_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody122_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody122_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody122_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody122_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody122_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody122_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody122_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody122_51 : StackLang.HolProg 64 :=
.seq NamedBody122_49 NamedBody122_50

def NamedBody122_52 : StackLang.HolProg 64 :=
.seq NamedBody122_48 NamedBody122_51

def NamedBody122_53 : StackLang.HolProg 64 :=
.seq NamedBody122_47 NamedBody122_52

def NamedBody122_54 : StackLang.HolProg 64 :=
.seq NamedBody122_46 NamedBody122_53

def NamedBody122_55 : StackLang.HolProg 64 :=
.seq NamedBody122_45 NamedBody122_54

def NamedBody122_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody122_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody122_58 : StackLang.HolProg 64 :=
.seq NamedBody122_56 NamedBody122_57

def NamedBody122_59 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody122_55 NamedBody122_58

def NamedBody122_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody122_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody122_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 3221225472#64)

def NamedBody122_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody122_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody122_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody122_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody122_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody122_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody122_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody122_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody122_71 : StackLang.HolProg 64 :=
.seq NamedBody122_69 NamedBody122_70

def NamedBody122_72 : StackLang.HolProg 64 :=
.seq NamedBody122_68 NamedBody122_71

def NamedBody122_73 : StackLang.HolProg 64 :=
.seq NamedBody122_67 NamedBody122_72

def NamedBody122_74 : StackLang.HolProg 64 :=
.seq NamedBody122_66 NamedBody122_73

def NamedBody122_75 : StackLang.HolProg 64 :=
.seq NamedBody122_65 NamedBody122_74

def NamedBody122_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody122_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody122_78 : StackLang.HolProg 64 :=
.seq NamedBody122_76 NamedBody122_77

def NamedBody122_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody122_75 NamedBody122_78

def NamedBody122_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody122_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody122_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 2147483648#64)

def NamedBody122_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody122_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody122_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody122_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody122_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody122_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody122_89 : StackLang.HolProg 64 :=
.seq NamedBody122_87 NamedBody122_88

def NamedBody122_90 : StackLang.HolProg 64 :=
.seq NamedBody122_86 NamedBody122_89

def NamedBody122_91 : StackLang.HolProg 64 :=
.seq NamedBody122_85 NamedBody122_90

def NamedBody122_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody122_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody122_94 : StackLang.HolProg 64 :=
.seq NamedBody122_92 NamedBody122_93

def NamedBody122_95 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody122_91 NamedBody122_94

def NamedBody122_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody122_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody122_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody122_99 : StackLang.HolProg 64 :=
.seq NamedBody122_97 NamedBody122_98

def NamedBody122_100 : StackLang.HolProg 64 :=
.seq NamedBody122_96 NamedBody122_99

def NamedBody122_101 : StackLang.HolProg 64 :=
.seq NamedBody122_95 NamedBody122_100

def NamedBody122_102 : StackLang.HolProg 64 :=
.seq NamedBody122_84 NamedBody122_101

def NamedBody122_103 : StackLang.HolProg 64 :=
.seq NamedBody122_83 NamedBody122_102

def NamedBody122_104 : StackLang.HolProg 64 :=
.seq NamedBody122_82 NamedBody122_103

def NamedBody122_105 : StackLang.HolProg 64 :=
.seq NamedBody122_81 NamedBody122_104

def NamedBody122_106 : StackLang.HolProg 64 :=
.seq NamedBody122_80 NamedBody122_105

def NamedBody122_107 : StackLang.HolProg 64 :=
.seq NamedBody122_79 NamedBody122_106

def NamedBody122_108 : StackLang.HolProg 64 :=
.seq NamedBody122_64 NamedBody122_107

def NamedBody122_109 : StackLang.HolProg 64 :=
.seq NamedBody122_63 NamedBody122_108

def NamedBody122_110 : StackLang.HolProg 64 :=
.seq NamedBody122_62 NamedBody122_109

def NamedBody122_111 : StackLang.HolProg 64 :=
.seq NamedBody122_61 NamedBody122_110

def NamedBody122_112 : StackLang.HolProg 64 :=
.seq NamedBody122_60 NamedBody122_111

def NamedBody122_113 : StackLang.HolProg 64 :=
.seq NamedBody122_59 NamedBody122_112

def NamedBody122_114 : StackLang.HolProg 64 :=
.seq NamedBody122_44 NamedBody122_113

def NamedBody122_115 : StackLang.HolProg 64 :=
.seq NamedBody122_43 NamedBody122_114

def NamedBody122_116 : StackLang.HolProg 64 :=
.seq NamedBody122_42 NamedBody122_115

def NamedBody122_117 : StackLang.HolProg 64 :=
.seq NamedBody122_41 NamedBody122_116

def NamedBody122_118 : StackLang.HolProg 64 :=
.seq NamedBody122_40 NamedBody122_117

def NamedBody122_119 : StackLang.HolProg 64 :=
.seq NamedBody122_39 NamedBody122_118

def NamedBody122_120 : StackLang.HolProg 64 :=
.seq NamedBody122_24 NamedBody122_119

def NamedBody122_121 : StackLang.HolProg 64 :=
.seq NamedBody122_23 NamedBody122_120

def NamedBody122_122 : StackLang.HolProg 64 :=
.seq NamedBody122_22 NamedBody122_121

def NamedBody122_123 : StackLang.HolProg 64 :=
.seq NamedBody122_21 NamedBody122_122

def NamedBody122_124 : StackLang.HolProg 64 :=
.seq NamedBody122_20 NamedBody122_123

def NamedBody122_125 : StackLang.HolProg 64 :=
.seq NamedBody122_19 NamedBody122_124

def NamedBody122_126 : StackLang.HolProg 64 :=
.seq NamedBody122_6 NamedBody122_125

def NamedBody122_127 : StackLang.HolProg 64 :=
.seq NamedBody122_5 NamedBody122_126

def NamedBody122_128 : StackLang.HolProg 64 :=
.seq NamedBody122_4 NamedBody122_127

def NamedBody122_129 : StackLang.HolProg 64 :=
.seq NamedBody122_3 NamedBody122_128

def NamedBody122_130 : StackLang.HolProg 64 :=
.seq NamedBody122_2 NamedBody122_129

def NamedBody122_131 : StackLang.HolProg 64 :=
.seq NamedBody122_1 NamedBody122_130

def NamedBody122_132 : StackLang.HolProg 64 :=
.seq NamedBody122_0 NamedBody122_131

def Named122 : Nat × StackLang.HolProg 64 := (122, NamedBody122_132)
theorem Named122_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed122 = Named122 := by
  kernel_rfl
#print axioms Named122_eq
end InitECandidate.Proofs.BackendStages
