import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data92
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody92_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody92_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody92_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody92_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody92_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def stackBody92_5 : StackLang.HolProg 64 :=
.seq stackBody92_3 stackBody92_4

def stackBody92_6 : StackLang.HolProg 64 :=
.seq stackBody92_2 stackBody92_5

def stackBody92_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody92_8 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) stackBody92_6 stackBody92_7

def stackBody92_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody92_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody92_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def stackBody92_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def stackBody92_13 : StackLang.HolProg 64 :=
.seq stackBody92_11 stackBody92_12

def stackBody92_14 : StackLang.HolProg 64 :=
.seq stackBody92_10 stackBody92_13

def stackBody92_15 : StackLang.HolProg 64 :=
.seq stackBody92_9 stackBody92_14

def stackBody92_16 : StackLang.HolProg 64 :=
.seq stackBody92_8 stackBody92_15

def stackBody92_17 : StackLang.HolProg 64 :=
.seq stackBody92_1 stackBody92_16

def stackBody92_18 : StackLang.HolProg 64 :=
.seq stackBody92_0 stackBody92_17

def function92 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody92_18, 0, bitmapPrefix, 39)
theorem function92_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized92.2.2 InitECandidate.Proofs.StackAnalysis.optimized92.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 39) = function92 bitmapPrefix := by
  kernel_rfl
#print axioms function92_eq
end InitECandidate.Proofs.BackendStages
