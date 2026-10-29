import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.StackAnalysis.Data492
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def stackBody492_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def stackBody492_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody492_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def stackBody492_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def stackBody492_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def stackBody492_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def stackBody492_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def stackBody492_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 144#64))

def stackBody492_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def stackBody492_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody492_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def stackBody492_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody492_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def stackBody492_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def stackBody492_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody492_15 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def stackBody492_16 : StackLang.HolProg 64 :=
.seq stackBody492_14 stackBody492_15

def stackBody492_17 : StackLang.HolProg 64 :=
.seq stackBody492_13 stackBody492_16

def stackBody492_18 : StackLang.HolProg 64 :=
.seq stackBody492_12 stackBody492_17

def stackBody492_19 : StackLang.HolProg 64 :=
.seq stackBody492_11 stackBody492_18

def stackBody492_20 : StackLang.HolProg 64 :=
.seq stackBody492_10 stackBody492_19

def stackBody492_21 : StackLang.HolProg 64 :=
.seq stackBody492_9 stackBody492_20

def stackBody492_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody492_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) stackBody492_21 stackBody492_22

def stackBody492_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody492_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def stackBody492_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def stackBody492_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def stackBody492_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def stackBody492_29 : StackLang.HolProg 64 :=
.seq stackBody492_27 stackBody492_28

def stackBody492_30 : StackLang.HolProg 64 :=
.seq stackBody492_26 stackBody492_29

def stackBody492_31 : StackLang.HolProg 64 :=
.seq stackBody492_25 stackBody492_30

def stackBody492_32 : StackLang.HolProg 64 :=
.seq stackBody492_24 stackBody492_31

def stackBody492_33 : StackLang.HolProg 64 :=
.seq stackBody492_23 stackBody492_32

def stackBody492_34 : StackLang.HolProg 64 :=
.seq stackBody492_8 stackBody492_33

def stackBody492_35 : StackLang.HolProg 64 :=
.seq stackBody492_7 stackBody492_34

def stackBody492_36 : StackLang.HolProg 64 :=
.seq stackBody492_6 stackBody492_35

def stackBody492_37 : StackLang.HolProg 64 :=
.seq stackBody492_5 stackBody492_36

def stackBody492_38 : StackLang.HolProg 64 :=
.seq stackBody492_4 stackBody492_37

def stackBody492_39 : StackLang.HolProg 64 :=
.seq stackBody492_3 stackBody492_38

def stackBody492_40 : StackLang.HolProg 64 :=
.seq stackBody492_2 stackBody492_39

def stackBody492_41 : StackLang.HolProg 64 :=
.seq stackBody492_1 stackBody492_40

def stackBody492_42 : StackLang.HolProg 64 :=
.seq stackBody492_0 stackBody492_41

def function492 (bitmapPrefix : AppList (BitVec 64)) : StackLang.HolProg 64 × Nat × (AppList (BitVec 64) × Nat) :=
(stackBody492_42, 0, bitmapPrefix, 1539)
theorem function492_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileProgNative riscvConfig false InitECandidate.Proofs.StackAnalysis.optimized492.2.2 InitECandidate.Proofs.StackAnalysis.optimized492.2.1 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) (bitmapPrefix, 1539) = function492 bitmapPrefix := by
  kernel_rfl
#print axioms function492_eq
end InitECandidate.Proofs.BackendStages
