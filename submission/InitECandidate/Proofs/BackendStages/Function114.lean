import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data114
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody114_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody114_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody114_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def stackBody114_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody114_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def stackBody114_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody114_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def stackBody114_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody114_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def stackBody114_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody114_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def stackBody114_11 : StackLang.HolProg 64 :=
.seq stackBody114_9 stackBody114_10

def stackBody114_12 : StackLang.HolProg 64 :=
.seq stackBody114_8 stackBody114_11

def stackBody114_13 : StackLang.HolProg 64 :=
.seq stackBody114_7 stackBody114_12

def stackBody114_14 : StackLang.HolProg 64 :=
.seq stackBody114_6 stackBody114_13

def stackBody114_15 : StackLang.HolProg 64 :=
.seq stackBody114_5 stackBody114_14

def stackBody114_16 : StackLang.HolProg 64 :=
.seq stackBody114_4 stackBody114_15

def stackBody114_17 : StackLang.HolProg 64 :=
.seq stackBody114_3 stackBody114_16

def stackBody114_18 : StackLang.HolProg 64 :=
.seq stackBody114_2 stackBody114_17

def stackBody114_19 : StackLang.HolProg 64 :=
.seq stackBody114_1 stackBody114_18

def stackBody114_20 : StackLang.HolProg 64 :=
.seq stackBody114_0 stackBody114_19

def function114 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody114_20, 0, bitmapPrefix, 46)
theorem function114_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized114.2.2 InitECandidate.Proofs.StackAnalysis.optimized114.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 46) = function114 bitmapPrefix := by
  kernel_rfl
#print axioms function114_eq
end InitECandidate.Proofs.BackendStages
