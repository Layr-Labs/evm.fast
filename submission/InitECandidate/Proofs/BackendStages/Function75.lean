import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data75
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody75_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody75_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody75_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def stackBody75_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def stackBody75_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def stackBody75_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551592#64))

def stackBody75_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody75_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def stackBody75_8 : StackLang.HolProg 64 :=
.seq stackBody75_6 stackBody75_7

def stackBody75_9 : StackLang.HolProg 64 :=
.seq stackBody75_5 stackBody75_8

def stackBody75_10 : StackLang.HolProg 64 :=
.seq stackBody75_4 stackBody75_9

def stackBody75_11 : StackLang.HolProg 64 :=
.seq stackBody75_3 stackBody75_10

def stackBody75_12 : StackLang.HolProg 64 :=
.seq stackBody75_2 stackBody75_11

def stackBody75_13 : StackLang.HolProg 64 :=
.seq stackBody75_1 stackBody75_12

def stackBody75_14 : StackLang.HolProg 64 :=
.seq stackBody75_0 stackBody75_13

def function75 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody75_14, 0, bitmapPrefix, 32)
theorem function75_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized75.2.2 InitECandidate.Proofs.StackAnalysis.optimized75.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 32) = function75 bitmapPrefix := by
  kernel_rfl
#print axioms function75_eq
end InitECandidate.Proofs.BackendStages
