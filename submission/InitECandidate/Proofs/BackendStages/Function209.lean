import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data209
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody209_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody209_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody209_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def stackBody209_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def stackBody209_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def stackBody209_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583341#64)

def stackBody209_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody209_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody209_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 208) none

def stackBody209_9 : StackLang.HolProg 64 :=
.seq stackBody209_7 stackBody209_8

def stackBody209_10 : StackLang.HolProg 64 :=
.seq stackBody209_6 stackBody209_9

def stackBody209_11 : StackLang.HolProg 64 :=
.seq stackBody209_5 stackBody209_10

def stackBody209_12 : StackLang.HolProg 64 :=
.seq stackBody209_4 stackBody209_11

def stackBody209_13 : StackLang.HolProg 64 :=
.seq stackBody209_3 stackBody209_12

def stackBody209_14 : StackLang.HolProg 64 :=
.seq stackBody209_2 stackBody209_13

def stackBody209_15 : StackLang.HolProg 64 :=
.seq stackBody209_1 stackBody209_14

def stackBody209_16 : StackLang.HolProg 64 :=
.seq stackBody209_0 stackBody209_15

def function209 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody209_16, 0, bitmapPrefix, 261)
theorem function209_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized209.2.2 InitECandidate.Proofs.StackAnalysis.optimized209.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 261) = function209 bitmapPrefix := by
  kernel_rfl
#print axioms function209_eq
end InitECandidate.Proofs.BackendStages
