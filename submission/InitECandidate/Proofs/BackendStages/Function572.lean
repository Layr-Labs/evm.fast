import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data572
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody572_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody572_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody572_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def stackBody572_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def stackBody572_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def stackBody572_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def stackBody572_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def stackBody572_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def stackBody572_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody572_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def stackBody572_10 : StackLang.HolProg 64 :=
.seq stackBody572_8 stackBody572_9

def stackBody572_11 : StackLang.HolProg 64 :=
.seq stackBody572_7 stackBody572_10

def stackBody572_12 : StackLang.HolProg 64 :=
.seq stackBody572_6 stackBody572_11

def stackBody572_13 : StackLang.HolProg 64 :=
.seq stackBody572_5 stackBody572_12

def stackBody572_14 : StackLang.HolProg 64 :=
.seq stackBody572_4 stackBody572_13

def stackBody572_15 : StackLang.HolProg 64 :=
.seq stackBody572_3 stackBody572_14

def stackBody572_16 : StackLang.HolProg 64 :=
.seq stackBody572_2 stackBody572_15

def stackBody572_17 : StackLang.HolProg 64 :=
.seq stackBody572_1 stackBody572_16

def stackBody572_18 : StackLang.HolProg 64 :=
.seq stackBody572_0 stackBody572_17

def function572 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody572_18, 0, bitmapPrefix, 1991)
theorem function572_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized572.2.2 InitECandidate.Proofs.StackAnalysis.optimized572.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 1991) = function572 bitmapPrefix := by
  kernel_rfl
#print axioms function572_eq
end InitECandidate.Proofs.BackendStages
