import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data676
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody676_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody676_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def stackBody676_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def stackBody676_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def stackBody676_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody676_5 : StackLang.HolProg 64 :=
.call none (Sum.inl 80) none

def stackBody676_6 : StackLang.HolProg 64 :=
.seq stackBody676_4 stackBody676_5

def stackBody676_7 : StackLang.HolProg 64 :=
.seq stackBody676_3 stackBody676_6

def stackBody676_8 : StackLang.HolProg 64 :=
.seq stackBody676_2 stackBody676_7

def stackBody676_9 : StackLang.HolProg 64 :=
.seq stackBody676_1 stackBody676_8

def stackBody676_10 : StackLang.HolProg 64 :=
.seq stackBody676_0 stackBody676_9

def function676 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody676_10, 0, bitmapPrefix, 2791)
theorem function676_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized676.2.2 InitECandidate.Proofs.StackAnalysis.optimized676.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 2791) = function676 bitmapPrefix := by
  kernel_rfl
#print axioms function676_eq
end InitECandidate.Proofs.BackendStages
