import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed92
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody92_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody92_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody92_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody92_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody92_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody92_5 : StackLang.HolProg 64 :=
.seq NamedBody92_3 NamedBody92_4

def NamedBody92_6 : StackLang.HolProg 64 :=
.seq NamedBody92_2 NamedBody92_5

def NamedBody92_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody92_8 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody92_6 NamedBody92_7

def NamedBody92_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody92_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody92_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody92_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody92_13 : StackLang.HolProg 64 :=
.seq NamedBody92_11 NamedBody92_12

def NamedBody92_14 : StackLang.HolProg 64 :=
.seq NamedBody92_10 NamedBody92_13

def NamedBody92_15 : StackLang.HolProg 64 :=
.seq NamedBody92_9 NamedBody92_14

def NamedBody92_16 : StackLang.HolProg 64 :=
.seq NamedBody92_8 NamedBody92_15

def NamedBody92_17 : StackLang.HolProg 64 :=
.seq NamedBody92_1 NamedBody92_16

def NamedBody92_18 : StackLang.HolProg 64 :=
.seq NamedBody92_0 NamedBody92_17

def Named92 : Nat × StackLang.HolProg 64 := (92, NamedBody92_18)
theorem Named92_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed92 = Named92 := by
  kernel_rfl
#print axioms Named92_eq
end InitECandidate.Proofs.BackendStages
