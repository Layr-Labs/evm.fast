import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed73
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody73_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody73_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody73_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody73_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody73_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody73_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551584#64)))

def NamedBody73_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody73_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody73_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody73_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody73_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody73_11 : StackLang.HolProg 64 :=
.seq NamedBody73_9 NamedBody73_10

def NamedBody73_12 : StackLang.HolProg 64 :=
.seq NamedBody73_8 NamedBody73_11

def NamedBody73_13 : StackLang.HolProg 64 :=
.seq NamedBody73_7 NamedBody73_12

def NamedBody73_14 : StackLang.HolProg 64 :=
.seq NamedBody73_6 NamedBody73_13

def NamedBody73_15 : StackLang.HolProg 64 :=
.seq NamedBody73_5 NamedBody73_14

def NamedBody73_16 : StackLang.HolProg 64 :=
.seq NamedBody73_4 NamedBody73_15

def NamedBody73_17 : StackLang.HolProg 64 :=
.seq NamedBody73_3 NamedBody73_16

def NamedBody73_18 : StackLang.HolProg 64 :=
.seq NamedBody73_2 NamedBody73_17

def NamedBody73_19 : StackLang.HolProg 64 :=
.seq NamedBody73_1 NamedBody73_18

def NamedBody73_20 : StackLang.HolProg 64 :=
.seq NamedBody73_0 NamedBody73_19

def Named73 : Nat × StackLang.HolProg 64 := (73, NamedBody73_20)
theorem Named73_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed73 = Named73 := by
  kernel_rfl
#print axioms Named73_eq
end InitECandidate.Proofs.BackendStages
