import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data326
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody326_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody326_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def stackBody326_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def stackBody326_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def stackBody326_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody326_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody326_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody326_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def stackBody326_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody326_9 : StackLang.HolProg 64 :=
.seq stackBody326_7 stackBody326_8

def stackBody326_10 : StackLang.HolProg 64 :=
.seq stackBody326_6 stackBody326_9

def stackBody326_11 : StackLang.HolProg 64 :=
.seq stackBody326_5 stackBody326_10

def stackBody326_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody326_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody326_14 : StackLang.HolProg 64 :=
.seq stackBody326_12 stackBody326_13

def stackBody326_15 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) stackBody326_11 stackBody326_14

def stackBody326_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody326_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody326_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody326_19 : StackLang.HolProg 64 :=
.call none (Sum.inl 179) none

def stackBody326_20 : StackLang.HolProg 64 :=
.seq stackBody326_18 stackBody326_19

def stackBody326_21 : StackLang.HolProg 64 :=
.seq stackBody326_17 stackBody326_20

def stackBody326_22 : StackLang.HolProg 64 :=
.seq stackBody326_16 stackBody326_21

def stackBody326_23 : StackLang.HolProg 64 :=
.seq stackBody326_15 stackBody326_22

def stackBody326_24 : StackLang.HolProg 64 :=
.seq stackBody326_4 stackBody326_23

def stackBody326_25 : StackLang.HolProg 64 :=
.seq stackBody326_3 stackBody326_24

def stackBody326_26 : StackLang.HolProg 64 :=
.seq stackBody326_2 stackBody326_25

def stackBody326_27 : StackLang.HolProg 64 :=
.seq stackBody326_1 stackBody326_26

def stackBody326_28 : StackLang.HolProg 64 :=
.seq stackBody326_0 stackBody326_27

def function326 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody326_28, 0, bitmapPrefix, 924)
theorem function326_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized326.2.2 InitECandidate.Proofs.StackAnalysis.optimized326.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 924) = function326 bitmapPrefix := by
  kernel_rfl
#print axioms function326_eq
end InitECandidate.Proofs.BackendStages
