import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed681
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody681_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody681_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody681_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody681_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody681_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody681_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody681_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody681_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody681_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 676) none

def NamedBody681_9 : StackLang.HolProg 64 :=
.seq NamedBody681_7 NamedBody681_8

def NamedBody681_10 : StackLang.HolProg 64 :=
.seq NamedBody681_6 NamedBody681_9

def NamedBody681_11 : StackLang.HolProg 64 :=
.seq NamedBody681_5 NamedBody681_10

def NamedBody681_12 : StackLang.HolProg 64 :=
.seq NamedBody681_4 NamedBody681_11

def NamedBody681_13 : StackLang.HolProg 64 :=
.seq NamedBody681_3 NamedBody681_12

def NamedBody681_14 : StackLang.HolProg 64 :=
.seq NamedBody681_2 NamedBody681_13

def NamedBody681_15 : StackLang.HolProg 64 :=
.seq NamedBody681_1 NamedBody681_14

def NamedBody681_16 : StackLang.HolProg 64 :=
.seq NamedBody681_0 NamedBody681_15

def Named681 : Nat × StackLang.HolProg 64 := (681, NamedBody681_16)
theorem Named681_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed681 = Named681 := by
  kernel_rfl
#print axioms Named681_eq
end InitECandidate.Proofs.BackendStages
