import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data214
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody214_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody214_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody214_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 4611686018427387903#64)

def stackBody214_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def stackBody214_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def stackBody214_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744072635809548#64)

def stackBody214_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody214_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody214_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 208) none

def stackBody214_9 : StackLang.HolProg 64 :=
.seq stackBody214_7 stackBody214_8

def stackBody214_10 : StackLang.HolProg 64 :=
.seq stackBody214_6 stackBody214_9

def stackBody214_11 : StackLang.HolProg 64 :=
.seq stackBody214_5 stackBody214_10

def stackBody214_12 : StackLang.HolProg 64 :=
.seq stackBody214_4 stackBody214_11

def stackBody214_13 : StackLang.HolProg 64 :=
.seq stackBody214_3 stackBody214_12

def stackBody214_14 : StackLang.HolProg 64 :=
.seq stackBody214_2 stackBody214_13

def stackBody214_15 : StackLang.HolProg 64 :=
.seq stackBody214_1 stackBody214_14

def stackBody214_16 : StackLang.HolProg 64 :=
.seq stackBody214_0 stackBody214_15

def function214 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody214_16, 0, bitmapPrefix, 273)
theorem function214_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized214.2.2 InitECandidate.Proofs.StackAnalysis.optimized214.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 273) = function214 bitmapPrefix := by
  kernel_rfl
#print axioms function214_eq
end InitECandidate.Proofs.BackendStages
