import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed93
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody93_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody93_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody93_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody93_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody93_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody93_5 : StackLang.HolProg 64 :=
.seq NamedBody93_3 NamedBody93_4

def NamedBody93_6 : StackLang.HolProg 64 :=
.seq NamedBody93_2 NamedBody93_5

def NamedBody93_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody93_8 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody93_6 NamedBody93_7

def NamedBody93_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody93_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody93_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody93_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody93_13 : StackLang.HolProg 64 :=
.seq NamedBody93_11 NamedBody93_12

def NamedBody93_14 : StackLang.HolProg 64 :=
.seq NamedBody93_10 NamedBody93_13

def NamedBody93_15 : StackLang.HolProg 64 :=
.seq NamedBody93_9 NamedBody93_14

def NamedBody93_16 : StackLang.HolProg 64 :=
.seq NamedBody93_8 NamedBody93_15

def NamedBody93_17 : StackLang.HolProg 64 :=
.seq NamedBody93_1 NamedBody93_16

def NamedBody93_18 : StackLang.HolProg 64 :=
.seq NamedBody93_0 NamedBody93_17

def Named93 : Nat × StackLang.HolProg 64 := (93, NamedBody93_18)
theorem Named93_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed93 = Named93 := by
  kernel_rfl
#print axioms Named93_eq
end InitECandidate.Proofs.BackendStages
