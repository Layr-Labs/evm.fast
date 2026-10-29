import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data122
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody122_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody122_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody122_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def stackBody122_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody122_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 4294901760#64)

def stackBody122_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def stackBody122_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def stackBody122_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody122_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 16#64)

def stackBody122_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody122_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def stackBody122_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody122_12 : StackLang.HolProg 64 :=
.seq stackBody122_10 stackBody122_11

def stackBody122_13 : StackLang.HolProg 64 :=
.seq stackBody122_9 stackBody122_12

def stackBody122_14 : StackLang.HolProg 64 :=
.seq stackBody122_8 stackBody122_13

def stackBody122_15 : StackLang.HolProg 64 :=
.seq stackBody122_7 stackBody122_14

def stackBody122_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody122_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody122_18 : StackLang.HolProg 64 :=
.seq stackBody122_16 stackBody122_17

def stackBody122_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) stackBody122_15 stackBody122_18

def stackBody122_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody122_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody122_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 4278190080#64)

def stackBody122_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def stackBody122_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def stackBody122_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody122_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody122_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def stackBody122_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody122_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def stackBody122_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody122_31 : StackLang.HolProg 64 :=
.seq stackBody122_29 stackBody122_30

def stackBody122_32 : StackLang.HolProg 64 :=
.seq stackBody122_28 stackBody122_31

def stackBody122_33 : StackLang.HolProg 64 :=
.seq stackBody122_27 stackBody122_32

def stackBody122_34 : StackLang.HolProg 64 :=
.seq stackBody122_26 stackBody122_33

def stackBody122_35 : StackLang.HolProg 64 :=
.seq stackBody122_25 stackBody122_34

def stackBody122_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody122_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody122_38 : StackLang.HolProg 64 :=
.seq stackBody122_36 stackBody122_37

def stackBody122_39 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) stackBody122_35 stackBody122_38

def stackBody122_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody122_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody122_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 4026531840#64)

def stackBody122_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def stackBody122_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def stackBody122_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody122_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody122_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def stackBody122_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody122_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def stackBody122_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody122_51 : StackLang.HolProg 64 :=
.seq stackBody122_49 stackBody122_50

def stackBody122_52 : StackLang.HolProg 64 :=
.seq stackBody122_48 stackBody122_51

def stackBody122_53 : StackLang.HolProg 64 :=
.seq stackBody122_47 stackBody122_52

def stackBody122_54 : StackLang.HolProg 64 :=
.seq stackBody122_46 stackBody122_53

def stackBody122_55 : StackLang.HolProg 64 :=
.seq stackBody122_45 stackBody122_54

def stackBody122_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody122_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody122_58 : StackLang.HolProg 64 :=
.seq stackBody122_56 stackBody122_57

def stackBody122_59 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) stackBody122_55 stackBody122_58

def stackBody122_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody122_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody122_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 3221225472#64)

def stackBody122_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def stackBody122_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def stackBody122_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody122_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody122_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def stackBody122_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody122_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def stackBody122_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody122_71 : StackLang.HolProg 64 :=
.seq stackBody122_69 stackBody122_70

def stackBody122_72 : StackLang.HolProg 64 :=
.seq stackBody122_68 stackBody122_71

def stackBody122_73 : StackLang.HolProg 64 :=
.seq stackBody122_67 stackBody122_72

def stackBody122_74 : StackLang.HolProg 64 :=
.seq stackBody122_66 stackBody122_73

def stackBody122_75 : StackLang.HolProg 64 :=
.seq stackBody122_65 stackBody122_74

def stackBody122_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody122_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody122_78 : StackLang.HolProg 64 :=
.seq stackBody122_76 stackBody122_77

def stackBody122_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) stackBody122_75 stackBody122_78

def stackBody122_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody122_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody122_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2147483648#64)

def stackBody122_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def stackBody122_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def stackBody122_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody122_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody122_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def stackBody122_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody122_89 : StackLang.HolProg 64 :=
.seq stackBody122_87 stackBody122_88

def stackBody122_90 : StackLang.HolProg 64 :=
.seq stackBody122_86 stackBody122_89

def stackBody122_91 : StackLang.HolProg 64 :=
.seq stackBody122_85 stackBody122_90

def stackBody122_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody122_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody122_94 : StackLang.HolProg 64 :=
.seq stackBody122_92 stackBody122_93

def stackBody122_95 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) stackBody122_91 stackBody122_94

def stackBody122_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody122_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def stackBody122_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def stackBody122_99 : StackLang.HolProg 64 :=
.seq stackBody122_97 stackBody122_98

def stackBody122_100 : StackLang.HolProg 64 :=
.seq stackBody122_96 stackBody122_99

def stackBody122_101 : StackLang.HolProg 64 :=
.seq stackBody122_95 stackBody122_100

def stackBody122_102 : StackLang.HolProg 64 :=
.seq stackBody122_84 stackBody122_101

def stackBody122_103 : StackLang.HolProg 64 :=
.seq stackBody122_83 stackBody122_102

def stackBody122_104 : StackLang.HolProg 64 :=
.seq stackBody122_82 stackBody122_103

def stackBody122_105 : StackLang.HolProg 64 :=
.seq stackBody122_81 stackBody122_104

def stackBody122_106 : StackLang.HolProg 64 :=
.seq stackBody122_80 stackBody122_105

def stackBody122_107 : StackLang.HolProg 64 :=
.seq stackBody122_79 stackBody122_106

def stackBody122_108 : StackLang.HolProg 64 :=
.seq stackBody122_64 stackBody122_107

def stackBody122_109 : StackLang.HolProg 64 :=
.seq stackBody122_63 stackBody122_108

def stackBody122_110 : StackLang.HolProg 64 :=
.seq stackBody122_62 stackBody122_109

def stackBody122_111 : StackLang.HolProg 64 :=
.seq stackBody122_61 stackBody122_110

def stackBody122_112 : StackLang.HolProg 64 :=
.seq stackBody122_60 stackBody122_111

def stackBody122_113 : StackLang.HolProg 64 :=
.seq stackBody122_59 stackBody122_112

def stackBody122_114 : StackLang.HolProg 64 :=
.seq stackBody122_44 stackBody122_113

def stackBody122_115 : StackLang.HolProg 64 :=
.seq stackBody122_43 stackBody122_114

def stackBody122_116 : StackLang.HolProg 64 :=
.seq stackBody122_42 stackBody122_115

def stackBody122_117 : StackLang.HolProg 64 :=
.seq stackBody122_41 stackBody122_116

def stackBody122_118 : StackLang.HolProg 64 :=
.seq stackBody122_40 stackBody122_117

def stackBody122_119 : StackLang.HolProg 64 :=
.seq stackBody122_39 stackBody122_118

def stackBody122_120 : StackLang.HolProg 64 :=
.seq stackBody122_24 stackBody122_119

def stackBody122_121 : StackLang.HolProg 64 :=
.seq stackBody122_23 stackBody122_120

def stackBody122_122 : StackLang.HolProg 64 :=
.seq stackBody122_22 stackBody122_121

def stackBody122_123 : StackLang.HolProg 64 :=
.seq stackBody122_21 stackBody122_122

def stackBody122_124 : StackLang.HolProg 64 :=
.seq stackBody122_20 stackBody122_123

def stackBody122_125 : StackLang.HolProg 64 :=
.seq stackBody122_19 stackBody122_124

def stackBody122_126 : StackLang.HolProg 64 :=
.seq stackBody122_6 stackBody122_125

def stackBody122_127 : StackLang.HolProg 64 :=
.seq stackBody122_5 stackBody122_126

def stackBody122_128 : StackLang.HolProg 64 :=
.seq stackBody122_4 stackBody122_127

def stackBody122_129 : StackLang.HolProg 64 :=
.seq stackBody122_3 stackBody122_128

def stackBody122_130 : StackLang.HolProg 64 :=
.seq stackBody122_2 stackBody122_129

def stackBody122_131 : StackLang.HolProg 64 :=
.seq stackBody122_1 stackBody122_130

def stackBody122_132 : StackLang.HolProg 64 :=
.seq stackBody122_0 stackBody122_131

def function122 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody122_132, 0, bitmapPrefix, 69)
theorem function122_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized122.2.2 InitECandidate.Proofs.StackAnalysis.optimized122.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 69) = function122 bitmapPrefix := by
  kernel_rfl
#print axioms function122_eq
end InitECandidate.Proofs.BackendStages
