import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data473
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody473_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody473_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody473_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def stackBody473_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody473_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 192#64))

def stackBody473_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody473_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 48#64))

def stackBody473_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody473_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 72#64))

def stackBody473_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def stackBody473_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def stackBody473_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody473_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def stackBody473_13 : StackLang.HolProg 64 :=
.seq stackBody473_11 stackBody473_12

def stackBody473_14 : StackLang.HolProg 64 :=
.seq stackBody473_10 stackBody473_13

def stackBody473_15 : StackLang.HolProg 64 :=
.seq stackBody473_9 stackBody473_14

def stackBody473_16 : StackLang.HolProg 64 :=
.seq stackBody473_8 stackBody473_15

def stackBody473_17 : StackLang.HolProg 64 :=
.seq stackBody473_7 stackBody473_16

def stackBody473_18 : StackLang.HolProg 64 :=
.seq stackBody473_6 stackBody473_17

def stackBody473_19 : StackLang.HolProg 64 :=
.seq stackBody473_5 stackBody473_18

def stackBody473_20 : StackLang.HolProg 64 :=
.seq stackBody473_4 stackBody473_19

def stackBody473_21 : StackLang.HolProg 64 :=
.seq stackBody473_3 stackBody473_20

def stackBody473_22 : StackLang.HolProg 64 :=
.seq stackBody473_2 stackBody473_21

def stackBody473_23 : StackLang.HolProg 64 :=
.seq stackBody473_1 stackBody473_22

def stackBody473_24 : StackLang.HolProg 64 :=
.seq stackBody473_0 stackBody473_23

def function473 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody473_24, 0, bitmapPrefix, 1495)
theorem function473_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized473.2.2 InitECandidate.Proofs.StackAnalysis.optimized473.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 1495) = function473 bitmapPrefix := by
  kernel_rfl
#print axioms function473_eq
end InitECandidate.Proofs.BackendStages
