import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw491
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody491_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody491_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody491_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody491_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody491_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody491_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody491_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def AllocBody491_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody491_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody491_9 : StackLang.HolProg 64 :=
.seq AllocBody491_7 AllocBody491_8

def AllocBody491_10 : StackLang.HolProg 64 :=
.seq AllocBody491_6 AllocBody491_9

def AllocBody491_11 : StackLang.HolProg 64 :=
.seq AllocBody491_5 AllocBody491_10

def AllocBody491_12 : StackLang.HolProg 64 :=
.seq AllocBody491_4 AllocBody491_11

def AllocBody491_13 : StackLang.HolProg 64 :=
.seq AllocBody491_3 AllocBody491_12

def AllocBody491_14 : StackLang.HolProg 64 :=
.seq AllocBody491_2 AllocBody491_13

def AllocBody491_15 : StackLang.HolProg 64 :=
.seq AllocBody491_1 AllocBody491_14

def AllocBody491_16 : StackLang.HolProg 64 :=
.seq AllocBody491_0 AllocBody491_15

def Alloc491 : Nat × StackLang.HolProg 64 := (491, AllocBody491_16)
theorem Alloc491_eq : StackAlloc.progComp (491, raw491) = Alloc491 := by
  kernel_rfl
#print axioms Alloc491_eq
end InitECandidate.Proofs.BackendStages
