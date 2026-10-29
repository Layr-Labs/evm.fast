import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data677
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody677_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody677_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def stackBody677_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def stackBody677_3 : StackLang.HolProg 64 :=
.seq stackBody677_1 stackBody677_2

def stackBody677_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def stackBody677_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def stackBody677_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody677_7 : StackLang.HolProg 64 :=
.call none (Sum.inl 79) none

def stackBody677_8 : StackLang.HolProg 64 :=
.seq stackBody677_6 stackBody677_7

def stackBody677_9 : StackLang.HolProg 64 :=
.seq stackBody677_5 stackBody677_8

def stackBody677_10 : StackLang.HolProg 64 :=
.seq stackBody677_4 stackBody677_9

def stackBody677_11 : StackLang.HolProg 64 :=
.seq stackBody677_3 stackBody677_10

def stackBody677_12 : StackLang.HolProg 64 :=
.seq stackBody677_0 stackBody677_11

def function677 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody677_12, 0, bitmapPrefix, 2791)
theorem function677_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized677.2.2 InitECandidate.Proofs.StackAnalysis.optimized677.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 2791) = function677 bitmapPrefix := by
  kernel_rfl
#print axioms function677_eq
end InitECandidate.Proofs.BackendStages
