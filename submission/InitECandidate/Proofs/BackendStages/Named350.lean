import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed350
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody350_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody350_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody350_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 160#64))

def NamedBody350_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody350_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 168#64))

def NamedBody350_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody350_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 176#64))

def NamedBody350_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody350_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 184#64))

def NamedBody350_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody350_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody350_11 : StackLang.HolProg 64 :=
.seq NamedBody350_9 NamedBody350_10

def NamedBody350_12 : StackLang.HolProg 64 :=
.seq NamedBody350_8 NamedBody350_11

def NamedBody350_13 : StackLang.HolProg 64 :=
.seq NamedBody350_7 NamedBody350_12

def NamedBody350_14 : StackLang.HolProg 64 :=
.seq NamedBody350_6 NamedBody350_13

def NamedBody350_15 : StackLang.HolProg 64 :=
.seq NamedBody350_5 NamedBody350_14

def NamedBody350_16 : StackLang.HolProg 64 :=
.seq NamedBody350_4 NamedBody350_15

def NamedBody350_17 : StackLang.HolProg 64 :=
.seq NamedBody350_3 NamedBody350_16

def NamedBody350_18 : StackLang.HolProg 64 :=
.seq NamedBody350_2 NamedBody350_17

def NamedBody350_19 : StackLang.HolProg 64 :=
.seq NamedBody350_1 NamedBody350_18

def NamedBody350_20 : StackLang.HolProg 64 :=
.seq NamedBody350_0 NamedBody350_19

def Named350 : Nat × StackLang.HolProg 64 := (350, NamedBody350_20)
theorem Named350_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed350 = Named350 := by
  kernel_rfl
#print axioms Named350_eq
end InitECandidate.Proofs.BackendStages
