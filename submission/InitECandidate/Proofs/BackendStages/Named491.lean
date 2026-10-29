import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed491
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody491_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody491_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody491_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody491_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody491_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody491_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody491_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 112#64))

def NamedBody491_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody491_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody491_9 : StackLang.HolProg 64 :=
.seq NamedBody491_7 NamedBody491_8

def NamedBody491_10 : StackLang.HolProg 64 :=
.seq NamedBody491_6 NamedBody491_9

def NamedBody491_11 : StackLang.HolProg 64 :=
.seq NamedBody491_5 NamedBody491_10

def NamedBody491_12 : StackLang.HolProg 64 :=
.seq NamedBody491_4 NamedBody491_11

def NamedBody491_13 : StackLang.HolProg 64 :=
.seq NamedBody491_3 NamedBody491_12

def NamedBody491_14 : StackLang.HolProg 64 :=
.seq NamedBody491_2 NamedBody491_13

def NamedBody491_15 : StackLang.HolProg 64 :=
.seq NamedBody491_1 NamedBody491_14

def NamedBody491_16 : StackLang.HolProg 64 :=
.seq NamedBody491_0 NamedBody491_15

def Named491 : Nat × StackLang.HolProg 64 := (491, NamedBody491_16)
theorem Named491_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed491 = Named491 := by
  kernel_rfl
#print axioms Named491_eq
end InitECandidate.Proofs.BackendStages
