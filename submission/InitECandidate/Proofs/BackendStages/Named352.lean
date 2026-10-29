import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed352
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody352_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody352_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody352_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 320#64))

def NamedBody352_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody352_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 328#64))

def NamedBody352_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody352_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 336#64))

def NamedBody352_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody352_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 344#64))

def NamedBody352_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody352_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody352_11 : StackLang.HolProg 64 :=
.seq NamedBody352_9 NamedBody352_10

def NamedBody352_12 : StackLang.HolProg 64 :=
.seq NamedBody352_8 NamedBody352_11

def NamedBody352_13 : StackLang.HolProg 64 :=
.seq NamedBody352_7 NamedBody352_12

def NamedBody352_14 : StackLang.HolProg 64 :=
.seq NamedBody352_6 NamedBody352_13

def NamedBody352_15 : StackLang.HolProg 64 :=
.seq NamedBody352_5 NamedBody352_14

def NamedBody352_16 : StackLang.HolProg 64 :=
.seq NamedBody352_4 NamedBody352_15

def NamedBody352_17 : StackLang.HolProg 64 :=
.seq NamedBody352_3 NamedBody352_16

def NamedBody352_18 : StackLang.HolProg 64 :=
.seq NamedBody352_2 NamedBody352_17

def NamedBody352_19 : StackLang.HolProg 64 :=
.seq NamedBody352_1 NamedBody352_18

def NamedBody352_20 : StackLang.HolProg 64 :=
.seq NamedBody352_0 NamedBody352_19

def Named352 : Nat × StackLang.HolProg 64 := (352, NamedBody352_20)
theorem Named352_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed352 = Named352 := by
  kernel_rfl
#print axioms Named352_eq
end InitECandidate.Proofs.BackendStages
