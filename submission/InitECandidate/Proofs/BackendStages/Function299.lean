import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data299
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody299_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody299_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody299_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def stackBody299_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def stackBody299_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody299_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def stackBody299_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody299_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def stackBody299_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def stackBody299_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody299_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def stackBody299_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody299_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def stackBody299_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def stackBody299_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody299_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def stackBody299_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def stackBody299_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody299_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def stackBody299_19 : StackLang.HolProg 64 :=
.seq stackBody299_17 stackBody299_18

def stackBody299_20 : StackLang.HolProg 64 :=
.seq stackBody299_16 stackBody299_19

def stackBody299_21 : StackLang.HolProg 64 :=
.seq stackBody299_15 stackBody299_20

def stackBody299_22 : StackLang.HolProg 64 :=
.seq stackBody299_14 stackBody299_21

def stackBody299_23 : StackLang.HolProg 64 :=
.seq stackBody299_13 stackBody299_22

def stackBody299_24 : StackLang.HolProg 64 :=
.seq stackBody299_12 stackBody299_23

def stackBody299_25 : StackLang.HolProg 64 :=
.seq stackBody299_11 stackBody299_24

def stackBody299_26 : StackLang.HolProg 64 :=
.seq stackBody299_10 stackBody299_25

def stackBody299_27 : StackLang.HolProg 64 :=
.seq stackBody299_9 stackBody299_26

def stackBody299_28 : StackLang.HolProg 64 :=
.seq stackBody299_8 stackBody299_27

def stackBody299_29 : StackLang.HolProg 64 :=
.seq stackBody299_7 stackBody299_28

def stackBody299_30 : StackLang.HolProg 64 :=
.seq stackBody299_6 stackBody299_29

def stackBody299_31 : StackLang.HolProg 64 :=
.seq stackBody299_5 stackBody299_30

def stackBody299_32 : StackLang.HolProg 64 :=
.seq stackBody299_4 stackBody299_31

def stackBody299_33 : StackLang.HolProg 64 :=
.seq stackBody299_3 stackBody299_32

def stackBody299_34 : StackLang.HolProg 64 :=
.seq stackBody299_2 stackBody299_33

def stackBody299_35 : StackLang.HolProg 64 :=
.seq stackBody299_1 stackBody299_34

def stackBody299_36 : StackLang.HolProg 64 :=
.seq stackBody299_0 stackBody299_35

def function299 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody299_36, 0, bitmapPrefix, 805)
theorem function299_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized299.2.2 InitECandidate.Proofs.StackAnalysis.optimized299.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 805) = function299 bitmapPrefix := by
  kernel_rfl
#print axioms function299_eq
end InitECandidate.Proofs.BackendStages
