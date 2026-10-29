import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data195
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody195_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody195_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody195_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def stackBody195_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody195_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def stackBody195_5 : StackLang.HolProg 64 :=
.seq stackBody195_3 stackBody195_4

def stackBody195_6 : StackLang.HolProg 64 :=
.seq stackBody195_2 stackBody195_5

def stackBody195_7 : StackLang.HolProg 64 :=
.seq stackBody195_1 stackBody195_6

def stackBody195_8 : StackLang.HolProg 64 :=
.seq stackBody195_0 stackBody195_7

def function195 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody195_8, 0, bitmapPrefix, 233)
theorem function195_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized195.2.2 InitECandidate.Proofs.StackAnalysis.optimized195.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 233) = function195 bitmapPrefix := by
  kernel_rfl
#print axioms function195_eq
end InitECandidate.Proofs.BackendStages
