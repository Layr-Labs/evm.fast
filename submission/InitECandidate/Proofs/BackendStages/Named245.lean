import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed245
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody245_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody245_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody245_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody245_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody245_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody245_5 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody245_6 : StackLang.HolProg 64 :=
.seq NamedBody245_4 NamedBody245_5

def NamedBody245_7 : StackLang.HolProg 64 :=
.seq NamedBody245_3 NamedBody245_6

def NamedBody245_8 : StackLang.HolProg 64 :=
.seq NamedBody245_2 NamedBody245_7

def NamedBody245_9 : StackLang.HolProg 64 :=
.seq NamedBody245_1 NamedBody245_8

def NamedBody245_10 : StackLang.HolProg 64 :=
.seq NamedBody245_0 NamedBody245_9

def Named245 : Nat × StackLang.HolProg 64 := (245, NamedBody245_10)
theorem Named245_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed245 = Named245 := by
  kernel_rfl
#print axioms Named245_eq
end InitECandidate.Proofs.BackendStages
