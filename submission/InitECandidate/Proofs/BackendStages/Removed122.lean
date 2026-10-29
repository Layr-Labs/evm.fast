import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc122
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody122_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody122_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody122_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody122_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody122_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 4294901760#64)

def RemovedBody122_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody122_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody122_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody122_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 16#64)

def RemovedBody122_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody122_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody122_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody122_12 : StackLang.HolProg 64 :=
.seq RemovedBody122_10 RemovedBody122_11

def RemovedBody122_13 : StackLang.HolProg 64 :=
.seq RemovedBody122_9 RemovedBody122_12

def RemovedBody122_14 : StackLang.HolProg 64 :=
.seq RemovedBody122_8 RemovedBody122_13

def RemovedBody122_15 : StackLang.HolProg 64 :=
.seq RemovedBody122_7 RemovedBody122_14

def RemovedBody122_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody122_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody122_18 : StackLang.HolProg 64 :=
.seq RemovedBody122_16 RemovedBody122_17

def RemovedBody122_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody122_15 RemovedBody122_18

def RemovedBody122_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody122_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody122_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 4278190080#64)

def RemovedBody122_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody122_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody122_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody122_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody122_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody122_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody122_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody122_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody122_31 : StackLang.HolProg 64 :=
.seq RemovedBody122_29 RemovedBody122_30

def RemovedBody122_32 : StackLang.HolProg 64 :=
.seq RemovedBody122_28 RemovedBody122_31

def RemovedBody122_33 : StackLang.HolProg 64 :=
.seq RemovedBody122_27 RemovedBody122_32

def RemovedBody122_34 : StackLang.HolProg 64 :=
.seq RemovedBody122_26 RemovedBody122_33

def RemovedBody122_35 : StackLang.HolProg 64 :=
.seq RemovedBody122_25 RemovedBody122_34

def RemovedBody122_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody122_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody122_38 : StackLang.HolProg 64 :=
.seq RemovedBody122_36 RemovedBody122_37

def RemovedBody122_39 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody122_35 RemovedBody122_38

def RemovedBody122_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody122_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody122_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 4026531840#64)

def RemovedBody122_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody122_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody122_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody122_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody122_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody122_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody122_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody122_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody122_51 : StackLang.HolProg 64 :=
.seq RemovedBody122_49 RemovedBody122_50

def RemovedBody122_52 : StackLang.HolProg 64 :=
.seq RemovedBody122_48 RemovedBody122_51

def RemovedBody122_53 : StackLang.HolProg 64 :=
.seq RemovedBody122_47 RemovedBody122_52

def RemovedBody122_54 : StackLang.HolProg 64 :=
.seq RemovedBody122_46 RemovedBody122_53

def RemovedBody122_55 : StackLang.HolProg 64 :=
.seq RemovedBody122_45 RemovedBody122_54

def RemovedBody122_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody122_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody122_58 : StackLang.HolProg 64 :=
.seq RemovedBody122_56 RemovedBody122_57

def RemovedBody122_59 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody122_55 RemovedBody122_58

def RemovedBody122_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody122_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody122_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 3221225472#64)

def RemovedBody122_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody122_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody122_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody122_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody122_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody122_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody122_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody122_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody122_71 : StackLang.HolProg 64 :=
.seq RemovedBody122_69 RemovedBody122_70

def RemovedBody122_72 : StackLang.HolProg 64 :=
.seq RemovedBody122_68 RemovedBody122_71

def RemovedBody122_73 : StackLang.HolProg 64 :=
.seq RemovedBody122_67 RemovedBody122_72

def RemovedBody122_74 : StackLang.HolProg 64 :=
.seq RemovedBody122_66 RemovedBody122_73

def RemovedBody122_75 : StackLang.HolProg 64 :=
.seq RemovedBody122_65 RemovedBody122_74

def RemovedBody122_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody122_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody122_78 : StackLang.HolProg 64 :=
.seq RemovedBody122_76 RemovedBody122_77

def RemovedBody122_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody122_75 RemovedBody122_78

def RemovedBody122_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody122_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody122_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2147483648#64)

def RemovedBody122_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody122_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody122_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody122_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody122_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody122_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody122_89 : StackLang.HolProg 64 :=
.seq RemovedBody122_87 RemovedBody122_88

def RemovedBody122_90 : StackLang.HolProg 64 :=
.seq RemovedBody122_86 RemovedBody122_89

def RemovedBody122_91 : StackLang.HolProg 64 :=
.seq RemovedBody122_85 RemovedBody122_90

def RemovedBody122_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody122_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody122_94 : StackLang.HolProg 64 :=
.seq RemovedBody122_92 RemovedBody122_93

def RemovedBody122_95 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody122_91 RemovedBody122_94

def RemovedBody122_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody122_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody122_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody122_99 : StackLang.HolProg 64 :=
.seq RemovedBody122_97 RemovedBody122_98

def RemovedBody122_100 : StackLang.HolProg 64 :=
.seq RemovedBody122_96 RemovedBody122_99

def RemovedBody122_101 : StackLang.HolProg 64 :=
.seq RemovedBody122_95 RemovedBody122_100

def RemovedBody122_102 : StackLang.HolProg 64 :=
.seq RemovedBody122_84 RemovedBody122_101

def RemovedBody122_103 : StackLang.HolProg 64 :=
.seq RemovedBody122_83 RemovedBody122_102

def RemovedBody122_104 : StackLang.HolProg 64 :=
.seq RemovedBody122_82 RemovedBody122_103

def RemovedBody122_105 : StackLang.HolProg 64 :=
.seq RemovedBody122_81 RemovedBody122_104

def RemovedBody122_106 : StackLang.HolProg 64 :=
.seq RemovedBody122_80 RemovedBody122_105

def RemovedBody122_107 : StackLang.HolProg 64 :=
.seq RemovedBody122_79 RemovedBody122_106

def RemovedBody122_108 : StackLang.HolProg 64 :=
.seq RemovedBody122_64 RemovedBody122_107

def RemovedBody122_109 : StackLang.HolProg 64 :=
.seq RemovedBody122_63 RemovedBody122_108

def RemovedBody122_110 : StackLang.HolProg 64 :=
.seq RemovedBody122_62 RemovedBody122_109

def RemovedBody122_111 : StackLang.HolProg 64 :=
.seq RemovedBody122_61 RemovedBody122_110

def RemovedBody122_112 : StackLang.HolProg 64 :=
.seq RemovedBody122_60 RemovedBody122_111

def RemovedBody122_113 : StackLang.HolProg 64 :=
.seq RemovedBody122_59 RemovedBody122_112

def RemovedBody122_114 : StackLang.HolProg 64 :=
.seq RemovedBody122_44 RemovedBody122_113

def RemovedBody122_115 : StackLang.HolProg 64 :=
.seq RemovedBody122_43 RemovedBody122_114

def RemovedBody122_116 : StackLang.HolProg 64 :=
.seq RemovedBody122_42 RemovedBody122_115

def RemovedBody122_117 : StackLang.HolProg 64 :=
.seq RemovedBody122_41 RemovedBody122_116

def RemovedBody122_118 : StackLang.HolProg 64 :=
.seq RemovedBody122_40 RemovedBody122_117

def RemovedBody122_119 : StackLang.HolProg 64 :=
.seq RemovedBody122_39 RemovedBody122_118

def RemovedBody122_120 : StackLang.HolProg 64 :=
.seq RemovedBody122_24 RemovedBody122_119

def RemovedBody122_121 : StackLang.HolProg 64 :=
.seq RemovedBody122_23 RemovedBody122_120

def RemovedBody122_122 : StackLang.HolProg 64 :=
.seq RemovedBody122_22 RemovedBody122_121

def RemovedBody122_123 : StackLang.HolProg 64 :=
.seq RemovedBody122_21 RemovedBody122_122

def RemovedBody122_124 : StackLang.HolProg 64 :=
.seq RemovedBody122_20 RemovedBody122_123

def RemovedBody122_125 : StackLang.HolProg 64 :=
.seq RemovedBody122_19 RemovedBody122_124

def RemovedBody122_126 : StackLang.HolProg 64 :=
.seq RemovedBody122_6 RemovedBody122_125

def RemovedBody122_127 : StackLang.HolProg 64 :=
.seq RemovedBody122_5 RemovedBody122_126

def RemovedBody122_128 : StackLang.HolProg 64 :=
.seq RemovedBody122_4 RemovedBody122_127

def RemovedBody122_129 : StackLang.HolProg 64 :=
.seq RemovedBody122_3 RemovedBody122_128

def RemovedBody122_130 : StackLang.HolProg 64 :=
.seq RemovedBody122_2 RemovedBody122_129

def RemovedBody122_131 : StackLang.HolProg 64 :=
.seq RemovedBody122_1 RemovedBody122_130

def RemovedBody122_132 : StackLang.HolProg 64 :=
.seq RemovedBody122_0 RemovedBody122_131

def Removed122 : Nat × StackLang.HolProg 64 := (122, RemovedBody122_132)
theorem Removed122_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc122 = Removed122 := by
  kernel_rfl
#print axioms Removed122_eq
end InitECandidate.Proofs.BackendStages
