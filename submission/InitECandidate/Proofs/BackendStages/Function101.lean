import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data101
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody101_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody101_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody101_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def stackBody101_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody101_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def stackBody101_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def stackBody101_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody101_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def stackBody101_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody101_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def stackBody101_10 : StackLang.HolProg 64 :=
.seq stackBody101_8 stackBody101_9

def stackBody101_11 : StackLang.HolProg 64 :=
.seq stackBody101_7 stackBody101_10

def stackBody101_12 : StackLang.HolProg 64 :=
.seq stackBody101_6 stackBody101_11

def stackBody101_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody101_14 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) stackBody101_12 stackBody101_13

def stackBody101_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody101_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody101_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def stackBody101_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody101_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def stackBody101_20 : StackLang.HolProg 64 :=
.seq stackBody101_18 stackBody101_19

def stackBody101_21 : StackLang.HolProg 64 :=
.seq stackBody101_17 stackBody101_20

def stackBody101_22 : StackLang.HolProg 64 :=
.seq stackBody101_16 stackBody101_21

def stackBody101_23 : StackLang.HolProg 64 :=
.seq stackBody101_15 stackBody101_22

def stackBody101_24 : StackLang.HolProg 64 :=
.seq stackBody101_14 stackBody101_23

def stackBody101_25 : StackLang.HolProg 64 :=
.seq stackBody101_5 stackBody101_24

def stackBody101_26 : StackLang.HolProg 64 :=
.seq stackBody101_4 stackBody101_25

def stackBody101_27 : StackLang.HolProg 64 :=
.seq stackBody101_3 stackBody101_26

def stackBody101_28 : StackLang.HolProg 64 :=
.seq stackBody101_2 stackBody101_27

def stackBody101_29 : StackLang.HolProg 64 :=
.seq stackBody101_1 stackBody101_28

def stackBody101_30 : StackLang.HolProg 64 :=
.seq stackBody101_0 stackBody101_29

def function101 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody101_30, 0, bitmapPrefix, 43)
theorem function101_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized101.2.2 InitECandidate.Proofs.StackAnalysis.optimized101.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 43) = function101 bitmapPrefix := by
  kernel_rfl
#print axioms function101_eq
end InitECandidate.Proofs.BackendStages
