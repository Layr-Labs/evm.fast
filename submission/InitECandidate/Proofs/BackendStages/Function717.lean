import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data717
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody717_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody717_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody717_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def stackBody717_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def stackBody717_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def stackBody717_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 0#64)

def stackBody717_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def stackBody717_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 1#64)

def stackBody717_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody717_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody717_10 : StackLang.HolProg 64 :=
.call none (Sum.inl 714) none

def stackBody717_11 : StackLang.HolProg 64 :=
.seq stackBody717_9 stackBody717_10

def stackBody717_12 : StackLang.HolProg 64 :=
.seq stackBody717_8 stackBody717_11

def stackBody717_13 : StackLang.HolProg 64 :=
.seq stackBody717_7 stackBody717_12

def stackBody717_14 : StackLang.HolProg 64 :=
.seq stackBody717_6 stackBody717_13

def stackBody717_15 : StackLang.HolProg 64 :=
.seq stackBody717_5 stackBody717_14

def stackBody717_16 : StackLang.HolProg 64 :=
.seq stackBody717_4 stackBody717_15

def stackBody717_17 : StackLang.HolProg 64 :=
.seq stackBody717_3 stackBody717_16

def stackBody717_18 : StackLang.HolProg 64 :=
.seq stackBody717_2 stackBody717_17

def stackBody717_19 : StackLang.HolProg 64 :=
.seq stackBody717_1 stackBody717_18

def stackBody717_20 : StackLang.HolProg 64 :=
.seq stackBody717_0 stackBody717_19

def function717 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody717_20, 0, bitmapPrefix, 3230)
theorem function717_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized717.2.2 InitECandidate.Proofs.StackAnalysis.optimized717.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 3230) = function717 bitmapPrefix := by
  kernel_rfl
#print axioms function717_eq
end InitECandidate.Proofs.BackendStages
