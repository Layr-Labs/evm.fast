import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw75
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody75_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody75_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody75_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody75_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody75_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody75_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551592#64))

def AllocBody75_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody75_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody75_8 : StackLang.HolProg 64 :=
.seq AllocBody75_6 AllocBody75_7

def AllocBody75_9 : StackLang.HolProg 64 :=
.seq AllocBody75_5 AllocBody75_8

def AllocBody75_10 : StackLang.HolProg 64 :=
.seq AllocBody75_4 AllocBody75_9

def AllocBody75_11 : StackLang.HolProg 64 :=
.seq AllocBody75_3 AllocBody75_10

def AllocBody75_12 : StackLang.HolProg 64 :=
.seq AllocBody75_2 AllocBody75_11

def AllocBody75_13 : StackLang.HolProg 64 :=
.seq AllocBody75_1 AllocBody75_12

def AllocBody75_14 : StackLang.HolProg 64 :=
.seq AllocBody75_0 AllocBody75_13

def Alloc75 : Nat × StackLang.HolProg 64 := (75, AllocBody75_14)
theorem Alloc75_eq : StackAlloc.progComp (75, raw75) = Alloc75 := by
  kernel_rfl
#print axioms Alloc75_eq
end InitECandidate.Proofs.BackendStages
