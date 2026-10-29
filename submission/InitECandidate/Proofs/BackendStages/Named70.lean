import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed70
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody70_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody70_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody70_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody70_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody70_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody70_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def NamedBody70_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody70_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody70_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody70_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody70_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody70_11 : StackLang.HolProg 64 :=
.seq NamedBody70_9 NamedBody70_10

def NamedBody70_12 : StackLang.HolProg 64 :=
.seq NamedBody70_8 NamedBody70_11

def NamedBody70_13 : StackLang.HolProg 64 :=
.seq NamedBody70_7 NamedBody70_12

def NamedBody70_14 : StackLang.HolProg 64 :=
.seq NamedBody70_6 NamedBody70_13

def NamedBody70_15 : StackLang.HolProg 64 :=
.seq NamedBody70_5 NamedBody70_14

def NamedBody70_16 : StackLang.HolProg 64 :=
.seq NamedBody70_4 NamedBody70_15

def NamedBody70_17 : StackLang.HolProg 64 :=
.seq NamedBody70_3 NamedBody70_16

def NamedBody70_18 : StackLang.HolProg 64 :=
.seq NamedBody70_2 NamedBody70_17

def NamedBody70_19 : StackLang.HolProg 64 :=
.seq NamedBody70_1 NamedBody70_18

def NamedBody70_20 : StackLang.HolProg 64 :=
.seq NamedBody70_0 NamedBody70_19

def Named70 : Nat × StackLang.HolProg 64 := (70, NamedBody70_20)
theorem Named70_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed70 = Named70 := by
  kernel_rfl
#print axioms Named70_eq
end InitECandidate.Proofs.BackendStages
