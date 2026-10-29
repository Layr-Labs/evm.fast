import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data70
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody70_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody70_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody70_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def stackBody70_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def stackBody70_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def stackBody70_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def stackBody70_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody70_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def stackBody70_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def stackBody70_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody70_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def stackBody70_11 : StackLang.HolProg 64 :=
.seq stackBody70_9 stackBody70_10

def stackBody70_12 : StackLang.HolProg 64 :=
.seq stackBody70_8 stackBody70_11

def stackBody70_13 : StackLang.HolProg 64 :=
.seq stackBody70_7 stackBody70_12

def stackBody70_14 : StackLang.HolProg 64 :=
.seq stackBody70_6 stackBody70_13

def stackBody70_15 : StackLang.HolProg 64 :=
.seq stackBody70_5 stackBody70_14

def stackBody70_16 : StackLang.HolProg 64 :=
.seq stackBody70_4 stackBody70_15

def stackBody70_17 : StackLang.HolProg 64 :=
.seq stackBody70_3 stackBody70_16

def stackBody70_18 : StackLang.HolProg 64 :=
.seq stackBody70_2 stackBody70_17

def stackBody70_19 : StackLang.HolProg 64 :=
.seq stackBody70_1 stackBody70_18

def stackBody70_20 : StackLang.HolProg 64 :=
.seq stackBody70_0 stackBody70_19

def function70 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody70_20, 0, bitmapPrefix, 28)
theorem function70_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized70.2.2 InitECandidate.Proofs.StackAnalysis.optimized70.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 28) = function70 bitmapPrefix := by
  kernel_rfl
#print axioms function70_eq
end InitECandidate.Proofs.BackendStages
