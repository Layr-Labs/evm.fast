import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed490
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody490_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody490_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody490_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody490_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody490_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody490_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 18446744073709551360#64))

def NamedBody490_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody490_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody490_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody490_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody490_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody490_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody490_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody490_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody490_14 : StackLang.HolProg 64 :=
.seq NamedBody490_12 NamedBody490_13

def NamedBody490_15 : StackLang.HolProg 64 :=
.seq NamedBody490_11 NamedBody490_14

def NamedBody490_16 : StackLang.HolProg 64 :=
.seq NamedBody490_10 NamedBody490_15

def NamedBody490_17 : StackLang.HolProg 64 :=
.seq NamedBody490_9 NamedBody490_16

def NamedBody490_18 : StackLang.HolProg 64 :=
.seq NamedBody490_8 NamedBody490_17

def NamedBody490_19 : StackLang.HolProg 64 :=
.seq NamedBody490_7 NamedBody490_18

def NamedBody490_20 : StackLang.HolProg 64 :=
.seq NamedBody490_6 NamedBody490_19

def NamedBody490_21 : StackLang.HolProg 64 :=
.seq NamedBody490_5 NamedBody490_20

def NamedBody490_22 : StackLang.HolProg 64 :=
.seq NamedBody490_4 NamedBody490_21

def NamedBody490_23 : StackLang.HolProg 64 :=
.seq NamedBody490_3 NamedBody490_22

def NamedBody490_24 : StackLang.HolProg 64 :=
.seq NamedBody490_2 NamedBody490_23

def NamedBody490_25 : StackLang.HolProg 64 :=
.seq NamedBody490_1 NamedBody490_24

def NamedBody490_26 : StackLang.HolProg 64 :=
.seq NamedBody490_0 NamedBody490_25

def Named490 : Nat × StackLang.HolProg 64 := (490, NamedBody490_26)
theorem Named490_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed490 = Named490 := by
  kernel_rfl
#print axioms Named490_eq
end InitECandidate.Proofs.BackendStages
