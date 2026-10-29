import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data76
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody76_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody76_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody76_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def stackBody76_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def stackBody76_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def stackBody76_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551592#64)))

def stackBody76_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody76_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def stackBody76_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def stackBody76_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody76_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def stackBody76_11 : StackLang.HolProg 64 :=
.seq stackBody76_9 stackBody76_10

def stackBody76_12 : StackLang.HolProg 64 :=
.seq stackBody76_8 stackBody76_11

def stackBody76_13 : StackLang.HolProg 64 :=
.seq stackBody76_7 stackBody76_12

def stackBody76_14 : StackLang.HolProg 64 :=
.seq stackBody76_6 stackBody76_13

def stackBody76_15 : StackLang.HolProg 64 :=
.seq stackBody76_5 stackBody76_14

def stackBody76_16 : StackLang.HolProg 64 :=
.seq stackBody76_4 stackBody76_15

def stackBody76_17 : StackLang.HolProg 64 :=
.seq stackBody76_3 stackBody76_16

def stackBody76_18 : StackLang.HolProg 64 :=
.seq stackBody76_2 stackBody76_17

def stackBody76_19 : StackLang.HolProg 64 :=
.seq stackBody76_1 stackBody76_18

def stackBody76_20 : StackLang.HolProg 64 :=
.seq stackBody76_0 stackBody76_19

def function76 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody76_20, 0, bitmapPrefix, 32)
theorem function76_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized76.2.2 InitECandidate.Proofs.StackAnalysis.optimized76.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 32) = function76 bitmapPrefix := by
  kernel_rfl
#print axioms function76_eq
end InitECandidate.Proofs.BackendStages
