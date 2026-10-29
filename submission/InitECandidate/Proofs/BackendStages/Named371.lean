import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed371
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody371_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody371_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody371_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody371_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1#64)

def NamedBody371_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody371_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody371_6 : StackLang.HolProg 64 :=
.call none (Sum.inl 370) none

def NamedBody371_7 : StackLang.HolProg 64 :=
.seq NamedBody371_5 NamedBody371_6

def NamedBody371_8 : StackLang.HolProg 64 :=
.seq NamedBody371_4 NamedBody371_7

def NamedBody371_9 : StackLang.HolProg 64 :=
.seq NamedBody371_3 NamedBody371_8

def NamedBody371_10 : StackLang.HolProg 64 :=
.seq NamedBody371_2 NamedBody371_9

def NamedBody371_11 : StackLang.HolProg 64 :=
.seq NamedBody371_1 NamedBody371_10

def NamedBody371_12 : StackLang.HolProg 64 :=
.seq NamedBody371_0 NamedBody371_11

def Named371 : Nat × StackLang.HolProg 64 := (371, NamedBody371_12)
theorem Named371_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed371 = Named371 := by
  kernel_rfl
#print axioms Named371_eq
end InitECandidate.Proofs.BackendStages
