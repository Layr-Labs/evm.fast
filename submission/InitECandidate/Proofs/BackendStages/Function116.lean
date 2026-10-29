import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data116
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody116_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody116_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def stackBody116_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def stackBody116_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody116_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 1 1 5 0))

def stackBody116_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody116_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 2 2 6 0))

def stackBody116_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody116_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 3 3 7 0))

def stackBody116_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody116_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 4 4 8 0))

def stackBody116_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody116_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def stackBody116_13 : StackLang.HolProg 64 :=
.seq stackBody116_11 stackBody116_12

def stackBody116_14 : StackLang.HolProg 64 :=
.seq stackBody116_10 stackBody116_13

def stackBody116_15 : StackLang.HolProg 64 :=
.seq stackBody116_9 stackBody116_14

def stackBody116_16 : StackLang.HolProg 64 :=
.seq stackBody116_8 stackBody116_15

def stackBody116_17 : StackLang.HolProg 64 :=
.seq stackBody116_7 stackBody116_16

def stackBody116_18 : StackLang.HolProg 64 :=
.seq stackBody116_6 stackBody116_17

def stackBody116_19 : StackLang.HolProg 64 :=
.seq stackBody116_5 stackBody116_18

def stackBody116_20 : StackLang.HolProg 64 :=
.seq stackBody116_4 stackBody116_19

def stackBody116_21 : StackLang.HolProg 64 :=
.seq stackBody116_3 stackBody116_20

def stackBody116_22 : StackLang.HolProg 64 :=
.seq stackBody116_2 stackBody116_21

def stackBody116_23 : StackLang.HolProg 64 :=
.seq stackBody116_1 stackBody116_22

def stackBody116_24 : StackLang.HolProg 64 :=
.seq stackBody116_0 stackBody116_23

def function116 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody116_24, 0, bitmapPrefix, 46)
theorem function116_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized116.2.2 InitECandidate.Proofs.StackAnalysis.optimized116.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 46) = function116 bitmapPrefix := by
  kernel_rfl
#print axioms function116_eq
end InitECandidate.Proofs.BackendStages
