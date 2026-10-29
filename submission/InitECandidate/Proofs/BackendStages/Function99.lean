import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data99
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody99_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody99_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody99_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def stackBody99_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def stackBody99_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def stackBody99_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody99_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def stackBody99_7 : StackLang.HolProg 64 :=
.seq stackBody99_5 stackBody99_6

def stackBody99_8 : StackLang.HolProg 64 :=
.seq stackBody99_4 stackBody99_7

def stackBody99_9 : StackLang.HolProg 64 :=
.seq stackBody99_3 stackBody99_8

def stackBody99_10 : StackLang.HolProg 64 :=
.seq stackBody99_2 stackBody99_9

def stackBody99_11 : StackLang.HolProg 64 :=
.seq stackBody99_1 stackBody99_10

def stackBody99_12 : StackLang.HolProg 64 :=
.seq stackBody99_0 stackBody99_11

def function99 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody99_12, 0, bitmapPrefix, 43)
theorem function99_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized99.2.2 InitECandidate.Proofs.StackAnalysis.optimized99.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 43) = function99 bitmapPrefix := by
  kernel_rfl
#print axioms function99_eq
end InitECandidate.Proofs.BackendStages
