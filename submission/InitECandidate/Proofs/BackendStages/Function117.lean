import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data117
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody117_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody117_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def stackBody117_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def stackBody117_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def stackBody117_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody117_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 1 1 5 0))

def stackBody117_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody117_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def stackBody117_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody117_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 2 2 5 0))

def stackBody117_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody117_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def stackBody117_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody117_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 3 3 5 0))

def stackBody117_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody117_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def stackBody117_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody117_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 4 4 5 0))

def stackBody117_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody117_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def stackBody117_20 : StackLang.HolProg 64 :=
.seq stackBody117_18 stackBody117_19

def stackBody117_21 : StackLang.HolProg 64 :=
.seq stackBody117_17 stackBody117_20

def stackBody117_22 : StackLang.HolProg 64 :=
.seq stackBody117_16 stackBody117_21

def stackBody117_23 : StackLang.HolProg 64 :=
.seq stackBody117_15 stackBody117_22

def stackBody117_24 : StackLang.HolProg 64 :=
.seq stackBody117_14 stackBody117_23

def stackBody117_25 : StackLang.HolProg 64 :=
.seq stackBody117_13 stackBody117_24

def stackBody117_26 : StackLang.HolProg 64 :=
.seq stackBody117_12 stackBody117_25

def stackBody117_27 : StackLang.HolProg 64 :=
.seq stackBody117_11 stackBody117_26

def stackBody117_28 : StackLang.HolProg 64 :=
.seq stackBody117_10 stackBody117_27

def stackBody117_29 : StackLang.HolProg 64 :=
.seq stackBody117_9 stackBody117_28

def stackBody117_30 : StackLang.HolProg 64 :=
.seq stackBody117_8 stackBody117_29

def stackBody117_31 : StackLang.HolProg 64 :=
.seq stackBody117_7 stackBody117_30

def stackBody117_32 : StackLang.HolProg 64 :=
.seq stackBody117_6 stackBody117_31

def stackBody117_33 : StackLang.HolProg 64 :=
.seq stackBody117_5 stackBody117_32

def stackBody117_34 : StackLang.HolProg 64 :=
.seq stackBody117_4 stackBody117_33

def stackBody117_35 : StackLang.HolProg 64 :=
.seq stackBody117_3 stackBody117_34

def stackBody117_36 : StackLang.HolProg 64 :=
.seq stackBody117_2 stackBody117_35

def stackBody117_37 : StackLang.HolProg 64 :=
.seq stackBody117_1 stackBody117_36

def stackBody117_38 : StackLang.HolProg 64 :=
.seq stackBody117_0 stackBody117_37

def function117 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody117_38, 0, bitmapPrefix, 46)
theorem function117_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized117.2.2 InitECandidate.Proofs.StackAnalysis.optimized117.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 46) = function117 bitmapPrefix := by
  kernel_rfl
#print axioms function117_eq
end InitECandidate.Proofs.BackendStages
