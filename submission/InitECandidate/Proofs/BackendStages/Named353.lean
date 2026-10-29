import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed353
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody353_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody353_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody353_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 352#64))

def NamedBody353_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody353_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 360#64))

def NamedBody353_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody353_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 368#64))

def NamedBody353_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody353_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 376#64))

def NamedBody353_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody353_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody353_11 : StackLang.HolProg 64 :=
.seq NamedBody353_9 NamedBody353_10

def NamedBody353_12 : StackLang.HolProg 64 :=
.seq NamedBody353_8 NamedBody353_11

def NamedBody353_13 : StackLang.HolProg 64 :=
.seq NamedBody353_7 NamedBody353_12

def NamedBody353_14 : StackLang.HolProg 64 :=
.seq NamedBody353_6 NamedBody353_13

def NamedBody353_15 : StackLang.HolProg 64 :=
.seq NamedBody353_5 NamedBody353_14

def NamedBody353_16 : StackLang.HolProg 64 :=
.seq NamedBody353_4 NamedBody353_15

def NamedBody353_17 : StackLang.HolProg 64 :=
.seq NamedBody353_3 NamedBody353_16

def NamedBody353_18 : StackLang.HolProg 64 :=
.seq NamedBody353_2 NamedBody353_17

def NamedBody353_19 : StackLang.HolProg 64 :=
.seq NamedBody353_1 NamedBody353_18

def NamedBody353_20 : StackLang.HolProg 64 :=
.seq NamedBody353_0 NamedBody353_19

def Named353 : Nat × StackLang.HolProg 64 := (353, NamedBody353_20)
theorem Named353_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed353 = Named353 := by
  kernel_rfl
#print axioms Named353_eq
end InitECandidate.Proofs.BackendStages
