import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed351
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody351_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody351_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody351_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 192#64))

def NamedBody351_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody351_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 200#64))

def NamedBody351_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody351_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody351_7 : StackLang.HolProg 64 :=
.seq NamedBody351_5 NamedBody351_6

def NamedBody351_8 : StackLang.HolProg 64 :=
.seq NamedBody351_4 NamedBody351_7

def NamedBody351_9 : StackLang.HolProg 64 :=
.seq NamedBody351_3 NamedBody351_8

def NamedBody351_10 : StackLang.HolProg 64 :=
.seq NamedBody351_2 NamedBody351_9

def NamedBody351_11 : StackLang.HolProg 64 :=
.seq NamedBody351_1 NamedBody351_10

def NamedBody351_12 : StackLang.HolProg 64 :=
.seq NamedBody351_0 NamedBody351_11

def Named351 : Nat × StackLang.HolProg 64 := (351, NamedBody351_12)
theorem Named351_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed351 = Named351 := by
  kernel_rfl
#print axioms Named351_eq
end InitECandidate.Proofs.BackendStages
