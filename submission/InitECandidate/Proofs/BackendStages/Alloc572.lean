import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw572
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody572_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody572_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody572_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody572_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody572_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody572_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody572_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def AllocBody572_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody572_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody572_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody572_10 : StackLang.HolProg 64 :=
.seq AllocBody572_8 AllocBody572_9

def AllocBody572_11 : StackLang.HolProg 64 :=
.seq AllocBody572_7 AllocBody572_10

def AllocBody572_12 : StackLang.HolProg 64 :=
.seq AllocBody572_6 AllocBody572_11

def AllocBody572_13 : StackLang.HolProg 64 :=
.seq AllocBody572_5 AllocBody572_12

def AllocBody572_14 : StackLang.HolProg 64 :=
.seq AllocBody572_4 AllocBody572_13

def AllocBody572_15 : StackLang.HolProg 64 :=
.seq AllocBody572_3 AllocBody572_14

def AllocBody572_16 : StackLang.HolProg 64 :=
.seq AllocBody572_2 AllocBody572_15

def AllocBody572_17 : StackLang.HolProg 64 :=
.seq AllocBody572_1 AllocBody572_16

def AllocBody572_18 : StackLang.HolProg 64 :=
.seq AllocBody572_0 AllocBody572_17

def Alloc572 : Nat × StackLang.HolProg 64 := (572, AllocBody572_18)
theorem Alloc572_eq : StackAlloc.progComp (572, raw572) = Alloc572 := by
  kernel_rfl
#print axioms Alloc572_eq
end InitECandidate.Proofs.BackendStages
