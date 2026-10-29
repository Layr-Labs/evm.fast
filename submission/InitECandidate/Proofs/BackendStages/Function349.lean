import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data349
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody349_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody349_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody349_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 152#64))

def stackBody349_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody349_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def stackBody349_5 : StackLang.HolProg 64 :=
.seq stackBody349_3 stackBody349_4

def stackBody349_6 : StackLang.HolProg 64 :=
.seq stackBody349_2 stackBody349_5

def stackBody349_7 : StackLang.HolProg 64 :=
.seq stackBody349_1 stackBody349_6

def stackBody349_8 : StackLang.HolProg 64 :=
.seq stackBody349_0 stackBody349_7

def function349 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody349_8, 0, bitmapPrefix, 1026)
theorem function349_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized349.2.2 InitECandidate.Proofs.StackAnalysis.optimized349.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 1026) = function349 bitmapPrefix := by
  kernel_rfl
#print axioms function349_eq
end InitECandidate.Proofs.BackendStages
