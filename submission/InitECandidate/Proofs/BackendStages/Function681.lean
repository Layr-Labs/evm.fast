import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data681
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody681_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody681_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody681_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def stackBody681_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def stackBody681_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody681_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def stackBody681_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody681_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody681_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 676) none

def stackBody681_9 : StackLang.HolProg 64 :=
.seq stackBody681_7 stackBody681_8

def stackBody681_10 : StackLang.HolProg 64 :=
.seq stackBody681_6 stackBody681_9

def stackBody681_11 : StackLang.HolProg 64 :=
.seq stackBody681_5 stackBody681_10

def stackBody681_12 : StackLang.HolProg 64 :=
.seq stackBody681_4 stackBody681_11

def stackBody681_13 : StackLang.HolProg 64 :=
.seq stackBody681_3 stackBody681_12

def stackBody681_14 : StackLang.HolProg 64 :=
.seq stackBody681_2 stackBody681_13

def stackBody681_15 : StackLang.HolProg 64 :=
.seq stackBody681_1 stackBody681_14

def stackBody681_16 : StackLang.HolProg 64 :=
.seq stackBody681_0 stackBody681_15

def function681 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody681_16, 0, bitmapPrefix, 2796)
theorem function681_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized681.2.2 InitECandidate.Proofs.StackAnalysis.optimized681.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 2796) = function681 bitmapPrefix := by
  kernel_rfl
#print axioms function681_eq
end InitECandidate.Proofs.BackendStages
