import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data112
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody112_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody112_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody112_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def stackBody112_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody112_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def stackBody112_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody112_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def stackBody112_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody112_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def stackBody112_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody112_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def stackBody112_11 : StackLang.HolProg 64 :=
.seq stackBody112_9 stackBody112_10

def stackBody112_12 : StackLang.HolProg 64 :=
.seq stackBody112_8 stackBody112_11

def stackBody112_13 : StackLang.HolProg 64 :=
.seq stackBody112_7 stackBody112_12

def stackBody112_14 : StackLang.HolProg 64 :=
.seq stackBody112_6 stackBody112_13

def stackBody112_15 : StackLang.HolProg 64 :=
.seq stackBody112_5 stackBody112_14

def stackBody112_16 : StackLang.HolProg 64 :=
.seq stackBody112_4 stackBody112_15

def stackBody112_17 : StackLang.HolProg 64 :=
.seq stackBody112_3 stackBody112_16

def stackBody112_18 : StackLang.HolProg 64 :=
.seq stackBody112_2 stackBody112_17

def stackBody112_19 : StackLang.HolProg 64 :=
.seq stackBody112_1 stackBody112_18

def stackBody112_20 : StackLang.HolProg 64 :=
.seq stackBody112_0 stackBody112_19

def function112 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody112_20, 0, bitmapPrefix, 46)
theorem function112_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized112.2.2 InitECandidate.Proofs.StackAnalysis.optimized112.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 46) = function112 bitmapPrefix := by
  kernel_rfl
#print axioms function112_eq
end InitECandidate.Proofs.BackendStages
