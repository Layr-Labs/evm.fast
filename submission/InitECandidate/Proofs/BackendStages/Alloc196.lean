import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw196
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody196_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody196_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody196_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody196_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody196_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody196_5 : StackLang.HolProg 64 :=
.seq AllocBody196_3 AllocBody196_4

def AllocBody196_6 : StackLang.HolProg 64 :=
.seq AllocBody196_2 AllocBody196_5

def AllocBody196_7 : StackLang.HolProg 64 :=
.seq AllocBody196_1 AllocBody196_6

def AllocBody196_8 : StackLang.HolProg 64 :=
.seq AllocBody196_0 AllocBody196_7

def Alloc196 : Nat × StackLang.HolProg 64 := (196, AllocBody196_8)
theorem Alloc196_eq : StackAlloc.progComp (196, raw196) = Alloc196 := by
  kernel_rfl
#print axioms Alloc196_eq
end InitECandidate.Proofs.BackendStages
