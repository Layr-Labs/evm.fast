import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw72
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody72_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody72_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody72_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody72_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody72_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody72_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551584#64))

def AllocBody72_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody72_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody72_8 : StackLang.HolProg 64 :=
.seq AllocBody72_6 AllocBody72_7

def AllocBody72_9 : StackLang.HolProg 64 :=
.seq AllocBody72_5 AllocBody72_8

def AllocBody72_10 : StackLang.HolProg 64 :=
.seq AllocBody72_4 AllocBody72_9

def AllocBody72_11 : StackLang.HolProg 64 :=
.seq AllocBody72_3 AllocBody72_10

def AllocBody72_12 : StackLang.HolProg 64 :=
.seq AllocBody72_2 AllocBody72_11

def AllocBody72_13 : StackLang.HolProg 64 :=
.seq AllocBody72_1 AllocBody72_12

def AllocBody72_14 : StackLang.HolProg 64 :=
.seq AllocBody72_0 AllocBody72_13

def Alloc72 : Nat × StackLang.HolProg 64 := (72, AllocBody72_14)
theorem Alloc72_eq : StackAlloc.progComp (72, raw72) = Alloc72 := by
  kernel_rfl
#print axioms Alloc72_eq
end InitECandidate.Proofs.BackendStages
