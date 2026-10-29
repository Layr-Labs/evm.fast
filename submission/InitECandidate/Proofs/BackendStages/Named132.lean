import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed132
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody132_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody132_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody132_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody132_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1#64)

def NamedBody132_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody132_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody132_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody132_7 : StackLang.HolProg 64 :=
.call none (Sum.inl 118) none

def NamedBody132_8 : StackLang.HolProg 64 :=
.seq NamedBody132_6 NamedBody132_7

def NamedBody132_9 : StackLang.HolProg 64 :=
.seq NamedBody132_5 NamedBody132_8

def NamedBody132_10 : StackLang.HolProg 64 :=
.seq NamedBody132_4 NamedBody132_9

def NamedBody132_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody132_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) NamedBody132_10 NamedBody132_11

def NamedBody132_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody132_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody132_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody132_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody132_17 : StackLang.HolProg 64 :=
.seq NamedBody132_15 NamedBody132_16

def NamedBody132_18 : StackLang.HolProg 64 :=
.seq NamedBody132_14 NamedBody132_17

def NamedBody132_19 : StackLang.HolProg 64 :=
.seq NamedBody132_13 NamedBody132_18

def NamedBody132_20 : StackLang.HolProg 64 :=
.seq NamedBody132_12 NamedBody132_19

def NamedBody132_21 : StackLang.HolProg 64 :=
.seq NamedBody132_3 NamedBody132_20

def NamedBody132_22 : StackLang.HolProg 64 :=
.seq NamedBody132_2 NamedBody132_21

def NamedBody132_23 : StackLang.HolProg 64 :=
.seq NamedBody132_1 NamedBody132_22

def NamedBody132_24 : StackLang.HolProg 64 :=
.seq NamedBody132_0 NamedBody132_23

def Named132 : Nat × StackLang.HolProg 64 := (132, NamedBody132_24)
theorem Named132_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed132 = Named132 := by
  kernel_rfl
#print axioms Named132_eq
end InitECandidate.Proofs.BackendStages
