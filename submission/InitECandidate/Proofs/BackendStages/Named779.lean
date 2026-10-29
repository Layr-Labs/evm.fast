import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed779
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody779_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody779_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody779_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def NamedBody779_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody779_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody779_5 : StackLang.HolProg 64 :=
.call none (Sum.inl 732) none

def NamedBody779_6 : StackLang.HolProg 64 :=
.seq NamedBody779_4 NamedBody779_5

def NamedBody779_7 : StackLang.HolProg 64 :=
.seq NamedBody779_3 NamedBody779_6

def NamedBody779_8 : StackLang.HolProg 64 :=
.seq NamedBody779_2 NamedBody779_7

def NamedBody779_9 : StackLang.HolProg 64 :=
.seq NamedBody779_1 NamedBody779_8

def NamedBody779_10 : StackLang.HolProg 64 :=
.seq NamedBody779_0 NamedBody779_9

def Named779 : Nat × StackLang.HolProg 64 := (779, NamedBody779_10)
theorem Named779_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed779 = Named779 := by
  kernel_rfl
#print axioms Named779_eq
end InitECandidate.Proofs.BackendStages
