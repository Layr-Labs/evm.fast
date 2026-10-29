import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed463
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody463_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody463_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody463_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody463_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody463_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody463_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 18446744073709551615#64)

def NamedBody463_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody463_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody463_8 : StackLang.HolProg 64 :=
.seq NamedBody463_6 NamedBody463_7

def NamedBody463_9 : StackLang.HolProg 64 :=
.seq NamedBody463_5 NamedBody463_8

def NamedBody463_10 : StackLang.HolProg 64 :=
.seq NamedBody463_4 NamedBody463_9

def NamedBody463_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody463_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody463_10 NamedBody463_11

def NamedBody463_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody463_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody463_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody463_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody463_17 : StackLang.HolProg 64 :=
.seq NamedBody463_15 NamedBody463_16

def NamedBody463_18 : StackLang.HolProg 64 :=
.seq NamedBody463_14 NamedBody463_17

def NamedBody463_19 : StackLang.HolProg 64 :=
.seq NamedBody463_13 NamedBody463_18

def NamedBody463_20 : StackLang.HolProg 64 :=
.seq NamedBody463_12 NamedBody463_19

def NamedBody463_21 : StackLang.HolProg 64 :=
.seq NamedBody463_3 NamedBody463_20

def NamedBody463_22 : StackLang.HolProg 64 :=
.seq NamedBody463_2 NamedBody463_21

def NamedBody463_23 : StackLang.HolProg 64 :=
.seq NamedBody463_1 NamedBody463_22

def NamedBody463_24 : StackLang.HolProg 64 :=
.seq NamedBody463_0 NamedBody463_23

def Named463 : Nat × StackLang.HolProg 64 := (463, NamedBody463_24)
theorem Named463_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed463 = Named463 := by
  kernel_rfl
#print axioms Named463_eq
end InitECandidate.Proofs.BackendStages
