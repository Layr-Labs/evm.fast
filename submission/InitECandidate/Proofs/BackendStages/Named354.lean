import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed354
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody354_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody354_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody354_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody354_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody354_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody354_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody354_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody354_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody354_8 : StackLang.HolProg 64 :=
.seq NamedBody354_6 NamedBody354_7

def NamedBody354_9 : StackLang.HolProg 64 :=
.seq NamedBody354_5 NamedBody354_8

def NamedBody354_10 : StackLang.HolProg 64 :=
.seq NamedBody354_4 NamedBody354_9

def NamedBody354_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody354_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody354_10 NamedBody354_11

def NamedBody354_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody354_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody354_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody354_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody354_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody354_18 : StackLang.HolProg 64 :=
.seq NamedBody354_16 NamedBody354_17

def NamedBody354_19 : StackLang.HolProg 64 :=
.seq NamedBody354_15 NamedBody354_18

def NamedBody354_20 : StackLang.HolProg 64 :=
.seq NamedBody354_14 NamedBody354_19

def NamedBody354_21 : StackLang.HolProg 64 :=
.seq NamedBody354_13 NamedBody354_20

def NamedBody354_22 : StackLang.HolProg 64 :=
.seq NamedBody354_12 NamedBody354_21

def NamedBody354_23 : StackLang.HolProg 64 :=
.seq NamedBody354_3 NamedBody354_22

def NamedBody354_24 : StackLang.HolProg 64 :=
.seq NamedBody354_2 NamedBody354_23

def NamedBody354_25 : StackLang.HolProg 64 :=
.seq NamedBody354_1 NamedBody354_24

def NamedBody354_26 : StackLang.HolProg 64 :=
.seq NamedBody354_0 NamedBody354_25

def Named354 : Nat × StackLang.HolProg 64 := (354, NamedBody354_26)
theorem Named354_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed354 = Named354 := by
  kernel_rfl
#print axioms Named354_eq
end InitECandidate.Proofs.BackendStages
