import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed856
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody856_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody856_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody856_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody856_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 4#64)

def NamedBody856_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody856_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody856_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody856_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody856_8 : StackLang.HolProg 64 :=
.seq NamedBody856_6 NamedBody856_7

def NamedBody856_9 : StackLang.HolProg 64 :=
.seq NamedBody856_5 NamedBody856_8

def NamedBody856_10 : StackLang.HolProg 64 :=
.seq NamedBody856_4 NamedBody856_9

def NamedBody856_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody856_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody856_10 NamedBody856_11

def NamedBody856_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody856_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody856_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody856_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody856_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody856_18 : StackLang.HolProg 64 :=
.seq NamedBody856_16 NamedBody856_17

def NamedBody856_19 : StackLang.HolProg 64 :=
.seq NamedBody856_15 NamedBody856_18

def NamedBody856_20 : StackLang.HolProg 64 :=
.seq NamedBody856_14 NamedBody856_19

def NamedBody856_21 : StackLang.HolProg 64 :=
.seq NamedBody856_13 NamedBody856_20

def NamedBody856_22 : StackLang.HolProg 64 :=
.seq NamedBody856_12 NamedBody856_21

def NamedBody856_23 : StackLang.HolProg 64 :=
.seq NamedBody856_3 NamedBody856_22

def NamedBody856_24 : StackLang.HolProg 64 :=
.seq NamedBody856_2 NamedBody856_23

def NamedBody856_25 : StackLang.HolProg 64 :=
.seq NamedBody856_1 NamedBody856_24

def NamedBody856_26 : StackLang.HolProg 64 :=
.seq NamedBody856_0 NamedBody856_25

def Named856 : Nat × StackLang.HolProg 64 := (856, NamedBody856_26)
theorem Named856_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed856 = Named856 := by
  kernel_rfl
#print axioms Named856_eq
end InitECandidate.Proofs.BackendStages
