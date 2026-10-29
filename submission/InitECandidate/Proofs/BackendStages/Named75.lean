import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed75
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody75_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody75_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody75_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody75_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody75_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody75_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551592#64))

def NamedBody75_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody75_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody75_8 : StackLang.HolProg 64 :=
.seq NamedBody75_6 NamedBody75_7

def NamedBody75_9 : StackLang.HolProg 64 :=
.seq NamedBody75_5 NamedBody75_8

def NamedBody75_10 : StackLang.HolProg 64 :=
.seq NamedBody75_4 NamedBody75_9

def NamedBody75_11 : StackLang.HolProg 64 :=
.seq NamedBody75_3 NamedBody75_10

def NamedBody75_12 : StackLang.HolProg 64 :=
.seq NamedBody75_2 NamedBody75_11

def NamedBody75_13 : StackLang.HolProg 64 :=
.seq NamedBody75_1 NamedBody75_12

def NamedBody75_14 : StackLang.HolProg 64 :=
.seq NamedBody75_0 NamedBody75_13

def Named75 : Nat × StackLang.HolProg 64 := (75, NamedBody75_14)
theorem Named75_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed75 = Named75 := by
  kernel_rfl
#print axioms Named75_eq
end InitECandidate.Proofs.BackendStages
