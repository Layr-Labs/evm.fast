import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data180
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody180_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody180_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody180_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody180_3 : StackLang.HolProg 64 :=
.call none (Sum.inl 175) none

def stackBody180_4 : StackLang.HolProg 64 :=
.seq stackBody180_2 stackBody180_3

def stackBody180_5 : StackLang.HolProg 64 :=
.seq stackBody180_1 stackBody180_4

def stackBody180_6 : StackLang.HolProg 64 :=
.seq stackBody180_0 stackBody180_5

def function180 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody180_6, 0, bitmapPrefix, 201)
theorem function180_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized180.2.2 InitECandidate.Proofs.StackAnalysis.optimized180.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 201) = function180 bitmapPrefix := by
  kernel_rfl
#print axioms function180_eq
end InitECandidate.Proofs.BackendStages
