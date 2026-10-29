import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed356
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody356_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody356_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody356_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 264#64))

def NamedBody356_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 17#64)))

def NamedBody356_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody356_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody356_6 : StackLang.HolProg 64 :=
.seq NamedBody356_4 NamedBody356_5

def NamedBody356_7 : StackLang.HolProg 64 :=
.seq NamedBody356_3 NamedBody356_6

def NamedBody356_8 : StackLang.HolProg 64 :=
.seq NamedBody356_2 NamedBody356_7

def NamedBody356_9 : StackLang.HolProg 64 :=
.seq NamedBody356_1 NamedBody356_8

def NamedBody356_10 : StackLang.HolProg 64 :=
.seq NamedBody356_0 NamedBody356_9

def Named356 : Nat × StackLang.HolProg 64 := (356, NamedBody356_10)
theorem Named356_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed356 = Named356 := by
  kernel_rfl
#print axioms Named356_eq
end InitECandidate.Proofs.BackendStages
