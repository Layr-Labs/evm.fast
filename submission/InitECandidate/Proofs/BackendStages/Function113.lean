import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data113
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody113_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody113_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody113_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def stackBody113_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody113_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def stackBody113_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody113_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def stackBody113_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody113_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def stackBody113_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody113_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def stackBody113_11 : StackLang.HolProg 64 :=
.seq stackBody113_9 stackBody113_10

def stackBody113_12 : StackLang.HolProg 64 :=
.seq stackBody113_8 stackBody113_11

def stackBody113_13 : StackLang.HolProg 64 :=
.seq stackBody113_7 stackBody113_12

def stackBody113_14 : StackLang.HolProg 64 :=
.seq stackBody113_6 stackBody113_13

def stackBody113_15 : StackLang.HolProg 64 :=
.seq stackBody113_5 stackBody113_14

def stackBody113_16 : StackLang.HolProg 64 :=
.seq stackBody113_4 stackBody113_15

def stackBody113_17 : StackLang.HolProg 64 :=
.seq stackBody113_3 stackBody113_16

def stackBody113_18 : StackLang.HolProg 64 :=
.seq stackBody113_2 stackBody113_17

def stackBody113_19 : StackLang.HolProg 64 :=
.seq stackBody113_1 stackBody113_18

def stackBody113_20 : StackLang.HolProg 64 :=
.seq stackBody113_0 stackBody113_19

def function113 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody113_20, 0, bitmapPrefix, 46)
theorem function113_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized113.2.2 InitECandidate.Proofs.StackAnalysis.optimized113.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 46) = function113 bitmapPrefix := by
  kernel_rfl
#print axioms function113_eq
end InitECandidate.Proofs.BackendStages
