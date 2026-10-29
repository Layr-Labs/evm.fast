import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed374
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody374_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody374_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody374_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody374_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1#64)

def NamedBody374_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody374_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody374_6 : StackLang.HolProg 64 :=
.call none (Sum.inl 370) none

def NamedBody374_7 : StackLang.HolProg 64 :=
.seq NamedBody374_5 NamedBody374_6

def NamedBody374_8 : StackLang.HolProg 64 :=
.seq NamedBody374_4 NamedBody374_7

def NamedBody374_9 : StackLang.HolProg 64 :=
.seq NamedBody374_3 NamedBody374_8

def NamedBody374_10 : StackLang.HolProg 64 :=
.seq NamedBody374_2 NamedBody374_9

def NamedBody374_11 : StackLang.HolProg 64 :=
.seq NamedBody374_1 NamedBody374_10

def NamedBody374_12 : StackLang.HolProg 64 :=
.seq NamedBody374_0 NamedBody374_11

def Named374 : Nat × StackLang.HolProg 64 := (374, NamedBody374_12)
theorem Named374_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed374 = Named374 := by
  kernel_rfl
#print axioms Named374_eq
end InitECandidate.Proofs.BackendStages
