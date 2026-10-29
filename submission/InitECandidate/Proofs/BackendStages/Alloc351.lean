import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw351
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody351_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody351_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody351_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 192#64))

def AllocBody351_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody351_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 200#64))

def AllocBody351_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody351_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody351_7 : StackLang.HolProg 64 :=
.seq AllocBody351_5 AllocBody351_6

def AllocBody351_8 : StackLang.HolProg 64 :=
.seq AllocBody351_4 AllocBody351_7

def AllocBody351_9 : StackLang.HolProg 64 :=
.seq AllocBody351_3 AllocBody351_8

def AllocBody351_10 : StackLang.HolProg 64 :=
.seq AllocBody351_2 AllocBody351_9

def AllocBody351_11 : StackLang.HolProg 64 :=
.seq AllocBody351_1 AllocBody351_10

def AllocBody351_12 : StackLang.HolProg 64 :=
.seq AllocBody351_0 AllocBody351_11

def Alloc351 : Nat × StackLang.HolProg 64 := (351, AllocBody351_12)
theorem Alloc351_eq : StackAlloc.progComp (351, raw351) = Alloc351 := by
  kernel_rfl
#print axioms Alloc351_eq
end InitECandidate.Proofs.BackendStages
