import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed286
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody286_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody286_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody286_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody286_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 5#64)

def NamedBody286_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody286_5 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody286_6 : StackLang.HolProg 64 :=
.seq NamedBody286_4 NamedBody286_5

def NamedBody286_7 : StackLang.HolProg 64 :=
.seq NamedBody286_3 NamedBody286_6

def NamedBody286_8 : StackLang.HolProg 64 :=
.seq NamedBody286_2 NamedBody286_7

def NamedBody286_9 : StackLang.HolProg 64 :=
.seq NamedBody286_1 NamedBody286_8

def NamedBody286_10 : StackLang.HolProg 64 :=
.seq NamedBody286_0 NamedBody286_9

def Named286 : Nat × StackLang.HolProg 64 := (286, NamedBody286_10)
theorem Named286_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed286 = Named286 := by
  kernel_rfl
#print axioms Named286_eq
end InitECandidate.Proofs.BackendStages
