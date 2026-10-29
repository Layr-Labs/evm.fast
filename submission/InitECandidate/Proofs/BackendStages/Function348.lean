import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data348
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody348_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody348_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody348_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def stackBody348_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody348_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def stackBody348_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody348_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def stackBody348_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody348_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def stackBody348_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def stackBody348_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def stackBody348_11 : StackLang.HolProg 64 :=
.seq stackBody348_9 stackBody348_10

def stackBody348_12 : StackLang.HolProg 64 :=
.seq stackBody348_8 stackBody348_11

def stackBody348_13 : StackLang.HolProg 64 :=
.seq stackBody348_7 stackBody348_12

def stackBody348_14 : StackLang.HolProg 64 :=
.seq stackBody348_6 stackBody348_13

def stackBody348_15 : StackLang.HolProg 64 :=
.seq stackBody348_5 stackBody348_14

def stackBody348_16 : StackLang.HolProg 64 :=
.seq stackBody348_4 stackBody348_15

def stackBody348_17 : StackLang.HolProg 64 :=
.seq stackBody348_3 stackBody348_16

def stackBody348_18 : StackLang.HolProg 64 :=
.seq stackBody348_2 stackBody348_17

def stackBody348_19 : StackLang.HolProg 64 :=
.seq stackBody348_1 stackBody348_18

def stackBody348_20 : StackLang.HolProg 64 :=
.seq stackBody348_0 stackBody348_19

def function348 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody348_20, 0, bitmapPrefix, 1026)
theorem function348_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized348.2.2 InitECandidate.Proofs.StackAnalysis.optimized348.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 1026) = function348 bitmapPrefix := by
  kernel_rfl
#print axioms function348_eq
end InitECandidate.Proofs.BackendStages
