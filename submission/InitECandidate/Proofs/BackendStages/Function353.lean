import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data353
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody353_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody353_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody353_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 352#64))

def stackBody353_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody353_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 360#64))

def stackBody353_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody353_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 368#64))

def stackBody353_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody353_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 376#64))

def stackBody353_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def stackBody353_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def stackBody353_11 : StackLang.HolProg 64 :=
.seq stackBody353_9 stackBody353_10

def stackBody353_12 : StackLang.HolProg 64 :=
.seq stackBody353_8 stackBody353_11

def stackBody353_13 : StackLang.HolProg 64 :=
.seq stackBody353_7 stackBody353_12

def stackBody353_14 : StackLang.HolProg 64 :=
.seq stackBody353_6 stackBody353_13

def stackBody353_15 : StackLang.HolProg 64 :=
.seq stackBody353_5 stackBody353_14

def stackBody353_16 : StackLang.HolProg 64 :=
.seq stackBody353_4 stackBody353_15

def stackBody353_17 : StackLang.HolProg 64 :=
.seq stackBody353_3 stackBody353_16

def stackBody353_18 : StackLang.HolProg 64 :=
.seq stackBody353_2 stackBody353_17

def stackBody353_19 : StackLang.HolProg 64 :=
.seq stackBody353_1 stackBody353_18

def stackBody353_20 : StackLang.HolProg 64 :=
.seq stackBody353_0 stackBody353_19

def function353 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody353_20, 0, bitmapPrefix, 1026)
theorem function353_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized353.2.2 InitECandidate.Proofs.StackAnalysis.optimized353.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 1026) = function353 bitmapPrefix := by
  kernel_rfl
#print axioms function353_eq
end InitECandidate.Proofs.BackendStages
