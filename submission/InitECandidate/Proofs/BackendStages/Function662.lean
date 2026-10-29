import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data662
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody662_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody662_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody662_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 493319470278259999#64)

def stackBody662_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 5164255478447964150#64)

def stackBody662_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 13107472804851548667#64)

def stackBody662_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 17522657719365597833#64)

def stackBody662_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody662_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody662_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 661) none

def stackBody662_9 : StackLang.HolProg 64 :=
.seq stackBody662_7 stackBody662_8

def stackBody662_10 : StackLang.HolProg 64 :=
.seq stackBody662_6 stackBody662_9

def stackBody662_11 : StackLang.HolProg 64 :=
.seq stackBody662_5 stackBody662_10

def stackBody662_12 : StackLang.HolProg 64 :=
.seq stackBody662_4 stackBody662_11

def stackBody662_13 : StackLang.HolProg 64 :=
.seq stackBody662_3 stackBody662_12

def stackBody662_14 : StackLang.HolProg 64 :=
.seq stackBody662_2 stackBody662_13

def stackBody662_15 : StackLang.HolProg 64 :=
.seq stackBody662_1 stackBody662_14

def stackBody662_16 : StackLang.HolProg 64 :=
.seq stackBody662_0 stackBody662_15

def function662 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody662_16, 0, bitmapPrefix, 2751)
theorem function662_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized662.2.2 InitECandidate.Proofs.StackAnalysis.optimized662.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 2751) = function662 bitmapPrefix := by
  kernel_rfl
#print axioms function662_eq
end InitECandidate.Proofs.BackendStages
