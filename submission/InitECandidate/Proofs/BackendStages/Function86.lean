import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data86
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody86_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody86_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody86_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def stackBody86_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody86_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def stackBody86_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody86_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def stackBody86_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def stackBody86_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody86_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def stackBody86_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody86_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def stackBody86_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def stackBody86_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody86_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def stackBody86_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody86_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def stackBody86_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def stackBody86_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def stackBody86_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody86_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def stackBody86_21 : StackLang.HolProg 64 :=
.seq stackBody86_19 stackBody86_20

def stackBody86_22 : StackLang.HolProg 64 :=
.seq stackBody86_18 stackBody86_21

def stackBody86_23 : StackLang.HolProg 64 :=
.seq stackBody86_17 stackBody86_22

def stackBody86_24 : StackLang.HolProg 64 :=
.seq stackBody86_16 stackBody86_23

def stackBody86_25 : StackLang.HolProg 64 :=
.seq stackBody86_15 stackBody86_24

def stackBody86_26 : StackLang.HolProg 64 :=
.seq stackBody86_14 stackBody86_25

def stackBody86_27 : StackLang.HolProg 64 :=
.seq stackBody86_13 stackBody86_26

def stackBody86_28 : StackLang.HolProg 64 :=
.seq stackBody86_12 stackBody86_27

def stackBody86_29 : StackLang.HolProg 64 :=
.seq stackBody86_11 stackBody86_28

def stackBody86_30 : StackLang.HolProg 64 :=
.seq stackBody86_10 stackBody86_29

def stackBody86_31 : StackLang.HolProg 64 :=
.seq stackBody86_9 stackBody86_30

def stackBody86_32 : StackLang.HolProg 64 :=
.seq stackBody86_8 stackBody86_31

def stackBody86_33 : StackLang.HolProg 64 :=
.seq stackBody86_7 stackBody86_32

def stackBody86_34 : StackLang.HolProg 64 :=
.seq stackBody86_6 stackBody86_33

def stackBody86_35 : StackLang.HolProg 64 :=
.seq stackBody86_5 stackBody86_34

def stackBody86_36 : StackLang.HolProg 64 :=
.seq stackBody86_4 stackBody86_35

def stackBody86_37 : StackLang.HolProg 64 :=
.seq stackBody86_3 stackBody86_36

def stackBody86_38 : StackLang.HolProg 64 :=
.seq stackBody86_2 stackBody86_37

def stackBody86_39 : StackLang.HolProg 64 :=
.seq stackBody86_1 stackBody86_38

def stackBody86_40 : StackLang.HolProg 64 :=
.seq stackBody86_0 stackBody86_39

def function86 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody86_40, 0, bitmapPrefix, 32)
theorem function86_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized86.2.2 InitECandidate.Proofs.StackAnalysis.optimized86.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 32) = function86 bitmapPrefix := by
  kernel_rfl
#print axioms function86_eq
end InitECandidate.Proofs.BackendStages
