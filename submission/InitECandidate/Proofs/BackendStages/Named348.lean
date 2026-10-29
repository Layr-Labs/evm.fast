import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed348
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody348_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody348_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody348_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody348_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody348_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody348_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody348_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 32#64))

def NamedBody348_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody348_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 40#64))

def NamedBody348_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody348_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody348_11 : StackLang.HolProg 64 :=
.seq NamedBody348_9 NamedBody348_10

def NamedBody348_12 : StackLang.HolProg 64 :=
.seq NamedBody348_8 NamedBody348_11

def NamedBody348_13 : StackLang.HolProg 64 :=
.seq NamedBody348_7 NamedBody348_12

def NamedBody348_14 : StackLang.HolProg 64 :=
.seq NamedBody348_6 NamedBody348_13

def NamedBody348_15 : StackLang.HolProg 64 :=
.seq NamedBody348_5 NamedBody348_14

def NamedBody348_16 : StackLang.HolProg 64 :=
.seq NamedBody348_4 NamedBody348_15

def NamedBody348_17 : StackLang.HolProg 64 :=
.seq NamedBody348_3 NamedBody348_16

def NamedBody348_18 : StackLang.HolProg 64 :=
.seq NamedBody348_2 NamedBody348_17

def NamedBody348_19 : StackLang.HolProg 64 :=
.seq NamedBody348_1 NamedBody348_18

def NamedBody348_20 : StackLang.HolProg 64 :=
.seq NamedBody348_0 NamedBody348_19

def Named348 : Nat × StackLang.HolProg 64 := (348, NamedBody348_20)
theorem Named348_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed348 = Named348 := by
  kernel_rfl
#print axioms Named348_eq
end InitECandidate.Proofs.BackendStages
