import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data245
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody245_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody245_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody245_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def stackBody245_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def stackBody245_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody245_5 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def stackBody245_6 : StackLang.HolProg 64 :=
.seq stackBody245_4 stackBody245_5

def stackBody245_7 : StackLang.HolProg 64 :=
.seq stackBody245_3 stackBody245_6

def stackBody245_8 : StackLang.HolProg 64 :=
.seq stackBody245_2 stackBody245_7

def stackBody245_9 : StackLang.HolProg 64 :=
.seq stackBody245_1 stackBody245_8

def stackBody245_10 : StackLang.HolProg 64 :=
.seq stackBody245_0 stackBody245_9

def function245 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody245_10, 0, bitmapPrefix, 482)
theorem function245_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized245.2.2 InitECandidate.Proofs.StackAnalysis.optimized245.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 482) = function245 bitmapPrefix := by
  kernel_rfl
#print axioms function245_eq
end InitECandidate.Proofs.BackendStages
