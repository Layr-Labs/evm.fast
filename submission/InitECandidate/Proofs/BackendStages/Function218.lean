import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data218
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody218_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody218_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody218_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def stackBody218_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551614#64)

def stackBody218_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 13451932020343611451#64)

def stackBody218_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 13822214165235122495#64)

def stackBody218_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody218_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody218_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 217) none

def stackBody218_9 : StackLang.HolProg 64 :=
.seq stackBody218_7 stackBody218_8

def stackBody218_10 : StackLang.HolProg 64 :=
.seq stackBody218_6 stackBody218_9

def stackBody218_11 : StackLang.HolProg 64 :=
.seq stackBody218_5 stackBody218_10

def stackBody218_12 : StackLang.HolProg 64 :=
.seq stackBody218_4 stackBody218_11

def stackBody218_13 : StackLang.HolProg 64 :=
.seq stackBody218_3 stackBody218_12

def stackBody218_14 : StackLang.HolProg 64 :=
.seq stackBody218_2 stackBody218_13

def stackBody218_15 : StackLang.HolProg 64 :=
.seq stackBody218_1 stackBody218_14

def stackBody218_16 : StackLang.HolProg 64 :=
.seq stackBody218_0 stackBody218_15

def function218 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody218_16, 0, bitmapPrefix, 276)
theorem function218_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized218.2.2 InitECandidate.Proofs.StackAnalysis.optimized218.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 276) = function218 bitmapPrefix := by
  kernel_rfl
#print axioms function218_eq
end InitECandidate.Proofs.BackendStages
