import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data350
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody350_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody350_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody350_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 160#64))

def stackBody350_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody350_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 168#64))

def stackBody350_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody350_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 176#64))

def stackBody350_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody350_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 184#64))

def stackBody350_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def stackBody350_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def stackBody350_11 : StackLang.HolProg 64 :=
.seq stackBody350_9 stackBody350_10

def stackBody350_12 : StackLang.HolProg 64 :=
.seq stackBody350_8 stackBody350_11

def stackBody350_13 : StackLang.HolProg 64 :=
.seq stackBody350_7 stackBody350_12

def stackBody350_14 : StackLang.HolProg 64 :=
.seq stackBody350_6 stackBody350_13

def stackBody350_15 : StackLang.HolProg 64 :=
.seq stackBody350_5 stackBody350_14

def stackBody350_16 : StackLang.HolProg 64 :=
.seq stackBody350_4 stackBody350_15

def stackBody350_17 : StackLang.HolProg 64 :=
.seq stackBody350_3 stackBody350_16

def stackBody350_18 : StackLang.HolProg 64 :=
.seq stackBody350_2 stackBody350_17

def stackBody350_19 : StackLang.HolProg 64 :=
.seq stackBody350_1 stackBody350_18

def stackBody350_20 : StackLang.HolProg 64 :=
.seq stackBody350_0 stackBody350_19

def function350 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody350_20, 0, bitmapPrefix, 1026)
theorem function350_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized350.2.2 InitECandidate.Proofs.StackAnalysis.optimized350.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 1026) = function350 bitmapPrefix := by
  kernel_rfl
#print axioms function350_eq
end InitECandidate.Proofs.BackendStages
