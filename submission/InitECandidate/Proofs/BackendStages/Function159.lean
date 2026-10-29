import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data159
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody159_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody159_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody159_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def stackBody159_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def stackBody159_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody159_5 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def stackBody159_6 : StackLang.HolProg 64 :=
.seq stackBody159_4 stackBody159_5

def stackBody159_7 : StackLang.HolProg 64 :=
.seq stackBody159_3 stackBody159_6

def stackBody159_8 : StackLang.HolProg 64 :=
.seq stackBody159_2 stackBody159_7

def stackBody159_9 : StackLang.HolProg 64 :=
.seq stackBody159_1 stackBody159_8

def stackBody159_10 : StackLang.HolProg 64 :=
.seq stackBody159_0 stackBody159_9

def function159 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody159_10, 0, bitmapPrefix, 146)
theorem function159_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized159.2.2 InitECandidate.Proofs.StackAnalysis.optimized159.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 146) = function159 bitmapPrefix := by
  kernel_rfl
#print axioms function159_eq
end InitECandidate.Proofs.BackendStages
