import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data222
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody222_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody222_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def stackBody222_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 64#64))

def stackBody222_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody222_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 72#64))

def stackBody222_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody222_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 80#64))

def stackBody222_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody222_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 88#64))

def stackBody222_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody222_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody222_11 : StackLang.HolProg 64 :=
.call none (Sum.inl 102) none

def stackBody222_12 : StackLang.HolProg 64 :=
.seq stackBody222_10 stackBody222_11

def stackBody222_13 : StackLang.HolProg 64 :=
.seq stackBody222_9 stackBody222_12

def stackBody222_14 : StackLang.HolProg 64 :=
.seq stackBody222_8 stackBody222_13

def stackBody222_15 : StackLang.HolProg 64 :=
.seq stackBody222_7 stackBody222_14

def stackBody222_16 : StackLang.HolProg 64 :=
.seq stackBody222_6 stackBody222_15

def stackBody222_17 : StackLang.HolProg 64 :=
.seq stackBody222_5 stackBody222_16

def stackBody222_18 : StackLang.HolProg 64 :=
.seq stackBody222_4 stackBody222_17

def stackBody222_19 : StackLang.HolProg 64 :=
.seq stackBody222_3 stackBody222_18

def stackBody222_20 : StackLang.HolProg 64 :=
.seq stackBody222_2 stackBody222_19

def stackBody222_21 : StackLang.HolProg 64 :=
.seq stackBody222_1 stackBody222_20

def stackBody222_22 : StackLang.HolProg 64 :=
.seq stackBody222_0 stackBody222_21

def function222 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody222_22, 0, bitmapPrefix, 276)
theorem function222_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized222.2.2 InitECandidate.Proofs.StackAnalysis.optimized222.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 276) = function222 bitmapPrefix := by
  kernel_rfl
#print axioms function222_eq
end InitECandidate.Proofs.BackendStages
