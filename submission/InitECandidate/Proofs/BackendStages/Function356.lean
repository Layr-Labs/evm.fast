import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data356
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody356_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody356_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody356_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 264#64))

def stackBody356_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 17#64)))

def stackBody356_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody356_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def stackBody356_6 : StackLang.HolProg 64 :=
.seq stackBody356_4 stackBody356_5

def stackBody356_7 : StackLang.HolProg 64 :=
.seq stackBody356_3 stackBody356_6

def stackBody356_8 : StackLang.HolProg 64 :=
.seq stackBody356_2 stackBody356_7

def stackBody356_9 : StackLang.HolProg 64 :=
.seq stackBody356_1 stackBody356_8

def stackBody356_10 : StackLang.HolProg 64 :=
.seq stackBody356_0 stackBody356_9

def function356 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody356_10, 0, bitmapPrefix, 1026)
theorem function356_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized356.2.2 InitECandidate.Proofs.StackAnalysis.optimized356.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 1026) = function356 bitmapPrefix := by
  kernel_rfl
#print axioms function356_eq
end InitECandidate.Proofs.BackendStages
