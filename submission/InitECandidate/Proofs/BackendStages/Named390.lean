import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed390
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody390_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody390_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody390_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody390_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody390_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody390_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551600#64))

def NamedBody390_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody390_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody390_8 : StackLang.HolProg 64 :=
.seq NamedBody390_6 NamedBody390_7

def NamedBody390_9 : StackLang.HolProg 64 :=
.seq NamedBody390_5 NamedBody390_8

def NamedBody390_10 : StackLang.HolProg 64 :=
.seq NamedBody390_4 NamedBody390_9

def NamedBody390_11 : StackLang.HolProg 64 :=
.seq NamedBody390_3 NamedBody390_10

def NamedBody390_12 : StackLang.HolProg 64 :=
.seq NamedBody390_2 NamedBody390_11

def NamedBody390_13 : StackLang.HolProg 64 :=
.seq NamedBody390_1 NamedBody390_12

def NamedBody390_14 : StackLang.HolProg 64 :=
.seq NamedBody390_0 NamedBody390_13

def Named390 : Nat × StackLang.HolProg 64 := (390, NamedBody390_14)
theorem Named390_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed390 = Named390 := by
  kernel_rfl
#print axioms Named390_eq
end InitECandidate.Proofs.BackendStages
