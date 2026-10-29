import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data372
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody372_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody372_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def stackBody372_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def stackBody372_3 : StackLang.HolProg 64 :=
.seq stackBody372_1 stackBody372_2

def stackBody372_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 2#64)

def stackBody372_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody372_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody372_7 : StackLang.HolProg 64 :=
.call none (Sum.inl 370) none

def stackBody372_8 : StackLang.HolProg 64 :=
.seq stackBody372_6 stackBody372_7

def stackBody372_9 : StackLang.HolProg 64 :=
.seq stackBody372_5 stackBody372_8

def stackBody372_10 : StackLang.HolProg 64 :=
.seq stackBody372_4 stackBody372_9

def stackBody372_11 : StackLang.HolProg 64 :=
.seq stackBody372_3 stackBody372_10

def stackBody372_12 : StackLang.HolProg 64 :=
.seq stackBody372_0 stackBody372_11

def function372 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody372_12, 0, bitmapPrefix, 1088)
theorem function372_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized372.2.2 InitECandidate.Proofs.StackAnalysis.optimized372.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 1088) = function372 bitmapPrefix := by
  kernel_rfl
#print axioms function372_eq
end InitECandidate.Proofs.BackendStages
