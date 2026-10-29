import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw356
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody356_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody356_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody356_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 264#64))

def AllocBody356_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 17#64)))

def AllocBody356_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody356_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody356_6 : StackLang.HolProg 64 :=
.seq AllocBody356_4 AllocBody356_5

def AllocBody356_7 : StackLang.HolProg 64 :=
.seq AllocBody356_3 AllocBody356_6

def AllocBody356_8 : StackLang.HolProg 64 :=
.seq AllocBody356_2 AllocBody356_7

def AllocBody356_9 : StackLang.HolProg 64 :=
.seq AllocBody356_1 AllocBody356_8

def AllocBody356_10 : StackLang.HolProg 64 :=
.seq AllocBody356_0 AllocBody356_9

def Alloc356 : Nat × StackLang.HolProg 64 := (356, AllocBody356_10)
theorem Alloc356_eq : StackAlloc.progComp (356, raw356) = Alloc356 := by
  kernel_rfl
#print axioms Alloc356_eq
end InitECandidate.Proofs.BackendStages
