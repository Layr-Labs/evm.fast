import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed76
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody76_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody76_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody76_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody76_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody76_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody76_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551592#64)))

def NamedBody76_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody76_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody76_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody76_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody76_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody76_11 : StackLang.HolProg 64 :=
.seq NamedBody76_9 NamedBody76_10

def NamedBody76_12 : StackLang.HolProg 64 :=
.seq NamedBody76_8 NamedBody76_11

def NamedBody76_13 : StackLang.HolProg 64 :=
.seq NamedBody76_7 NamedBody76_12

def NamedBody76_14 : StackLang.HolProg 64 :=
.seq NamedBody76_6 NamedBody76_13

def NamedBody76_15 : StackLang.HolProg 64 :=
.seq NamedBody76_5 NamedBody76_14

def NamedBody76_16 : StackLang.HolProg 64 :=
.seq NamedBody76_4 NamedBody76_15

def NamedBody76_17 : StackLang.HolProg 64 :=
.seq NamedBody76_3 NamedBody76_16

def NamedBody76_18 : StackLang.HolProg 64 :=
.seq NamedBody76_2 NamedBody76_17

def NamedBody76_19 : StackLang.HolProg 64 :=
.seq NamedBody76_1 NamedBody76_18

def NamedBody76_20 : StackLang.HolProg 64 :=
.seq NamedBody76_0 NamedBody76_19

def Named76 : Nat × StackLang.HolProg 64 := (76, NamedBody76_20)
theorem Named76_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed76 = Named76 := by
  kernel_rfl
#print axioms Named76_eq
end InitECandidate.Proofs.BackendStages
