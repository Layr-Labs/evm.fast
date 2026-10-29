import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data215
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody215_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody215_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody215_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 18446744073709551615#64)

def stackBody215_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 18446744073709551614#64)

def stackBody215_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 13451932020343611451#64)

def stackBody215_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 13822214165235122497#64)

def stackBody215_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody215_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody215_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 136) none

def stackBody215_9 : StackLang.HolProg 64 :=
.seq stackBody215_7 stackBody215_8

def stackBody215_10 : StackLang.HolProg 64 :=
.seq stackBody215_6 stackBody215_9

def stackBody215_11 : StackLang.HolProg 64 :=
.seq stackBody215_5 stackBody215_10

def stackBody215_12 : StackLang.HolProg 64 :=
.seq stackBody215_4 stackBody215_11

def stackBody215_13 : StackLang.HolProg 64 :=
.seq stackBody215_3 stackBody215_12

def stackBody215_14 : StackLang.HolProg 64 :=
.seq stackBody215_2 stackBody215_13

def stackBody215_15 : StackLang.HolProg 64 :=
.seq stackBody215_1 stackBody215_14

def stackBody215_16 : StackLang.HolProg 64 :=
.seq stackBody215_0 stackBody215_15

def function215 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody215_16, 0, bitmapPrefix, 273)
theorem function215_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized215.2.2 InitECandidate.Proofs.StackAnalysis.optimized215.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 273) = function215 bitmapPrefix := by
  kernel_rfl
#print axioms function215_eq
end InitECandidate.Proofs.BackendStages
