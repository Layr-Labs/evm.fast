import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed473
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody473_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody473_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody473_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 112#64))

def NamedBody473_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody473_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 192#64))

def NamedBody473_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody473_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 48#64))

def NamedBody473_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody473_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 72#64))

def NamedBody473_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody473_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody473_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody473_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody473_13 : StackLang.HolProg 64 :=
.seq NamedBody473_11 NamedBody473_12

def NamedBody473_14 : StackLang.HolProg 64 :=
.seq NamedBody473_10 NamedBody473_13

def NamedBody473_15 : StackLang.HolProg 64 :=
.seq NamedBody473_9 NamedBody473_14

def NamedBody473_16 : StackLang.HolProg 64 :=
.seq NamedBody473_8 NamedBody473_15

def NamedBody473_17 : StackLang.HolProg 64 :=
.seq NamedBody473_7 NamedBody473_16

def NamedBody473_18 : StackLang.HolProg 64 :=
.seq NamedBody473_6 NamedBody473_17

def NamedBody473_19 : StackLang.HolProg 64 :=
.seq NamedBody473_5 NamedBody473_18

def NamedBody473_20 : StackLang.HolProg 64 :=
.seq NamedBody473_4 NamedBody473_19

def NamedBody473_21 : StackLang.HolProg 64 :=
.seq NamedBody473_3 NamedBody473_20

def NamedBody473_22 : StackLang.HolProg 64 :=
.seq NamedBody473_2 NamedBody473_21

def NamedBody473_23 : StackLang.HolProg 64 :=
.seq NamedBody473_1 NamedBody473_22

def NamedBody473_24 : StackLang.HolProg 64 :=
.seq NamedBody473_0 NamedBody473_23

def Named473 : Nat × StackLang.HolProg 64 := (473, NamedBody473_24)
theorem Named473_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed473 = Named473 := by
  kernel_rfl
#print axioms Named473_eq
end InitECandidate.Proofs.BackendStages
