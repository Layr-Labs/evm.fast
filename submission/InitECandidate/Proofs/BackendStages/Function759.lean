import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data759
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody759_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody759_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def stackBody759_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody759_3 : StackLang.HolProg 64 :=
.call none (Sum.inl 758) none

def stackBody759_4 : StackLang.HolProg 64 :=
.seq stackBody759_2 stackBody759_3

def stackBody759_5 : StackLang.HolProg 64 :=
.seq stackBody759_1 stackBody759_4

def stackBody759_6 : StackLang.HolProg 64 :=
.seq stackBody759_0 stackBody759_5

def function759 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody759_6, 0, bitmapPrefix, 3390)
theorem function759_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized759.2.2 InitECandidate.Proofs.StackAnalysis.optimized759.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 3390) = function759 bitmapPrefix := by
  kernel_rfl
#print axioms function759_eq
end InitECandidate.Proofs.BackendStages
