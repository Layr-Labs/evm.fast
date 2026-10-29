import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw390
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody390_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody390_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody390_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody390_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody390_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody390_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551600#64))

def AllocBody390_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody390_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody390_8 : StackLang.HolProg 64 :=
.seq AllocBody390_6 AllocBody390_7

def AllocBody390_9 : StackLang.HolProg 64 :=
.seq AllocBody390_5 AllocBody390_8

def AllocBody390_10 : StackLang.HolProg 64 :=
.seq AllocBody390_4 AllocBody390_9

def AllocBody390_11 : StackLang.HolProg 64 :=
.seq AllocBody390_3 AllocBody390_10

def AllocBody390_12 : StackLang.HolProg 64 :=
.seq AllocBody390_2 AllocBody390_11

def AllocBody390_13 : StackLang.HolProg 64 :=
.seq AllocBody390_1 AllocBody390_12

def AllocBody390_14 : StackLang.HolProg 64 :=
.seq AllocBody390_0 AllocBody390_13

def Alloc390 : Nat × StackLang.HolProg 64 := (390, AllocBody390_14)
theorem Alloc390_eq : StackAlloc.progComp (390, raw390) = Alloc390 := by
  kernel_rfl
#print axioms Alloc390_eq
end InitECandidate.Proofs.BackendStages
