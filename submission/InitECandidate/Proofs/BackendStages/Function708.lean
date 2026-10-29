import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data708
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody708_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody708_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def stackBody708_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def stackBody708_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody708_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 1 1 7 0))

def stackBody708_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody708_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 2 2 8 0))

def stackBody708_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody708_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 3 3 9 0))

def stackBody708_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody708_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 4 4 10 0))

def stackBody708_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody708_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 5 5 11 0))

def stackBody708_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody708_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 6 6 12 0))

def stackBody708_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def stackBody708_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def stackBody708_17 : StackLang.HolProg 64 :=
.seq stackBody708_15 stackBody708_16

def stackBody708_18 : StackLang.HolProg 64 :=
.seq stackBody708_14 stackBody708_17

def stackBody708_19 : StackLang.HolProg 64 :=
.seq stackBody708_13 stackBody708_18

def stackBody708_20 : StackLang.HolProg 64 :=
.seq stackBody708_12 stackBody708_19

def stackBody708_21 : StackLang.HolProg 64 :=
.seq stackBody708_11 stackBody708_20

def stackBody708_22 : StackLang.HolProg 64 :=
.seq stackBody708_10 stackBody708_21

def stackBody708_23 : StackLang.HolProg 64 :=
.seq stackBody708_9 stackBody708_22

def stackBody708_24 : StackLang.HolProg 64 :=
.seq stackBody708_8 stackBody708_23

def stackBody708_25 : StackLang.HolProg 64 :=
.seq stackBody708_7 stackBody708_24

def stackBody708_26 : StackLang.HolProg 64 :=
.seq stackBody708_6 stackBody708_25

def stackBody708_27 : StackLang.HolProg 64 :=
.seq stackBody708_5 stackBody708_26

def stackBody708_28 : StackLang.HolProg 64 :=
.seq stackBody708_4 stackBody708_27

def stackBody708_29 : StackLang.HolProg 64 :=
.seq stackBody708_3 stackBody708_28

def stackBody708_30 : StackLang.HolProg 64 :=
.seq stackBody708_2 stackBody708_29

def stackBody708_31 : StackLang.HolProg 64 :=
.seq stackBody708_1 stackBody708_30

def stackBody708_32 : StackLang.HolProg 64 :=
.seq stackBody708_0 stackBody708_31

def function708 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody708_32, 0, bitmapPrefix, 3151)
theorem function708_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized708.2.2 InitECandidate.Proofs.StackAnalysis.optimized708.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 3151) = function708 bitmapPrefix := by
  kernel_rfl
#print axioms function708_eq
end InitECandidate.Proofs.BackendStages
