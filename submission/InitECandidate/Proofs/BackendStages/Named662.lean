import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed662
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody662_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody662_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody662_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 493319470278259999#64)

def NamedBody662_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 5164255478447964150#64)

def NamedBody662_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 13107472804851548667#64)

def NamedBody662_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 17522657719365597833#64)

def NamedBody662_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody662_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody662_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 661) none

def NamedBody662_9 : StackLang.HolProg 64 :=
.seq NamedBody662_7 NamedBody662_8

def NamedBody662_10 : StackLang.HolProg 64 :=
.seq NamedBody662_6 NamedBody662_9

def NamedBody662_11 : StackLang.HolProg 64 :=
.seq NamedBody662_5 NamedBody662_10

def NamedBody662_12 : StackLang.HolProg 64 :=
.seq NamedBody662_4 NamedBody662_11

def NamedBody662_13 : StackLang.HolProg 64 :=
.seq NamedBody662_3 NamedBody662_12

def NamedBody662_14 : StackLang.HolProg 64 :=
.seq NamedBody662_2 NamedBody662_13

def NamedBody662_15 : StackLang.HolProg 64 :=
.seq NamedBody662_1 NamedBody662_14

def NamedBody662_16 : StackLang.HolProg 64 :=
.seq NamedBody662_0 NamedBody662_15

def Named662 : Nat × StackLang.HolProg 64 := (662, NamedBody662_16)
theorem Named662_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed662 = Named662 := by
  kernel_rfl
#print axioms Named662_eq
end InitECandidate.Proofs.BackendStages
