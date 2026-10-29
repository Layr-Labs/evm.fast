import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed855
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody855_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody855_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody855_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody855_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 3#64)

def NamedBody855_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody855_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody855_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody855_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody855_8 : StackLang.HolProg 64 :=
.seq NamedBody855_6 NamedBody855_7

def NamedBody855_9 : StackLang.HolProg 64 :=
.seq NamedBody855_5 NamedBody855_8

def NamedBody855_10 : StackLang.HolProg 64 :=
.seq NamedBody855_4 NamedBody855_9

def NamedBody855_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody855_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody855_10 NamedBody855_11

def NamedBody855_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody855_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody855_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody855_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody855_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody855_18 : StackLang.HolProg 64 :=
.seq NamedBody855_16 NamedBody855_17

def NamedBody855_19 : StackLang.HolProg 64 :=
.seq NamedBody855_15 NamedBody855_18

def NamedBody855_20 : StackLang.HolProg 64 :=
.seq NamedBody855_14 NamedBody855_19

def NamedBody855_21 : StackLang.HolProg 64 :=
.seq NamedBody855_13 NamedBody855_20

def NamedBody855_22 : StackLang.HolProg 64 :=
.seq NamedBody855_12 NamedBody855_21

def NamedBody855_23 : StackLang.HolProg 64 :=
.seq NamedBody855_3 NamedBody855_22

def NamedBody855_24 : StackLang.HolProg 64 :=
.seq NamedBody855_2 NamedBody855_23

def NamedBody855_25 : StackLang.HolProg 64 :=
.seq NamedBody855_1 NamedBody855_24

def NamedBody855_26 : StackLang.HolProg 64 :=
.seq NamedBody855_0 NamedBody855_25

def Named855 : Nat × StackLang.HolProg 64 := (855, NamedBody855_26)
theorem Named855_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed855 = Named855 := by
  kernel_rfl
#print axioms Named855_eq
end InitECandidate.Proofs.BackendStages
