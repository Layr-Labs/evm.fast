import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data100
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody100_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody100_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody100_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def stackBody100_3 : StackLang.HolProg 64 :=
.seq stackBody100_1 stackBody100_2

def stackBody100_4 : StackLang.HolProg 64 :=
.seq stackBody100_0 stackBody100_3

def function100 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody100_4, 0, bitmapPrefix, 43)
theorem function100_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized100.2.2 InitECandidate.Proofs.StackAnalysis.optimized100.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 43) = function100 bitmapPrefix := by
  kernel_rfl
#print axioms function100_eq
end InitECandidate.Proofs.BackendStages
