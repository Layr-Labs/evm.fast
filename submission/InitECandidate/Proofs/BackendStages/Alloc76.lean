import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw76
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody76_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody76_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody76_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody76_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody76_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def AllocBody76_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551592#64)))

def AllocBody76_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody76_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody76_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody76_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody76_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody76_11 : StackLang.HolProg 64 :=
.seq AllocBody76_9 AllocBody76_10

def AllocBody76_12 : StackLang.HolProg 64 :=
.seq AllocBody76_8 AllocBody76_11

def AllocBody76_13 : StackLang.HolProg 64 :=
.seq AllocBody76_7 AllocBody76_12

def AllocBody76_14 : StackLang.HolProg 64 :=
.seq AllocBody76_6 AllocBody76_13

def AllocBody76_15 : StackLang.HolProg 64 :=
.seq AllocBody76_5 AllocBody76_14

def AllocBody76_16 : StackLang.HolProg 64 :=
.seq AllocBody76_4 AllocBody76_15

def AllocBody76_17 : StackLang.HolProg 64 :=
.seq AllocBody76_3 AllocBody76_16

def AllocBody76_18 : StackLang.HolProg 64 :=
.seq AllocBody76_2 AllocBody76_17

def AllocBody76_19 : StackLang.HolProg 64 :=
.seq AllocBody76_1 AllocBody76_18

def AllocBody76_20 : StackLang.HolProg 64 :=
.seq AllocBody76_0 AllocBody76_19

def Alloc76 : Nat × StackLang.HolProg 64 := (76, AllocBody76_20)
theorem Alloc76_eq : StackAlloc.progComp (76, raw76) = Alloc76 := by
  kernel_rfl
#print axioms Alloc76_eq
end InitECandidate.Proofs.BackendStages
