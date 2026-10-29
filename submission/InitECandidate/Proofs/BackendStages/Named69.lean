import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed69
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody69_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody69_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody69_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody69_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody69_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody69_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551608#64))

def NamedBody69_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody69_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody69_8 : StackLang.HolProg 64 :=
.seq NamedBody69_6 NamedBody69_7

def NamedBody69_9 : StackLang.HolProg 64 :=
.seq NamedBody69_5 NamedBody69_8

def NamedBody69_10 : StackLang.HolProg 64 :=
.seq NamedBody69_4 NamedBody69_9

def NamedBody69_11 : StackLang.HolProg 64 :=
.seq NamedBody69_3 NamedBody69_10

def NamedBody69_12 : StackLang.HolProg 64 :=
.seq NamedBody69_2 NamedBody69_11

def NamedBody69_13 : StackLang.HolProg 64 :=
.seq NamedBody69_1 NamedBody69_12

def NamedBody69_14 : StackLang.HolProg 64 :=
.seq NamedBody69_0 NamedBody69_13

def Named69 : Nat × StackLang.HolProg 64 := (69, NamedBody69_14)
theorem Named69_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed69 = Named69 := by
  kernel_rfl
#print axioms Named69_eq
end InitECandidate.Proofs.BackendStages
