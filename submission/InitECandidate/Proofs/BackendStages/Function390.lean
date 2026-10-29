import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data390
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody390_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody390_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody390_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def stackBody390_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def stackBody390_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def stackBody390_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551600#64))

def stackBody390_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody390_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def stackBody390_8 : StackLang.HolProg 64 :=
.seq stackBody390_6 stackBody390_7

def stackBody390_9 : StackLang.HolProg 64 :=
.seq stackBody390_5 stackBody390_8

def stackBody390_10 : StackLang.HolProg 64 :=
.seq stackBody390_4 stackBody390_9

def stackBody390_11 : StackLang.HolProg 64 :=
.seq stackBody390_3 stackBody390_10

def stackBody390_12 : StackLang.HolProg 64 :=
.seq stackBody390_2 stackBody390_11

def stackBody390_13 : StackLang.HolProg 64 :=
.seq stackBody390_1 stackBody390_12

def stackBody390_14 : StackLang.HolProg 64 :=
.seq stackBody390_0 stackBody390_13

def function390 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody390_14, 0, bitmapPrefix, 1166)
theorem function390_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized390.2.2 InitECandidate.Proofs.StackAnalysis.optimized390.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 1166) = function390 bitmapPrefix := by
  kernel_rfl
#print axioms function390_eq
end InitECandidate.Proofs.BackendStages
