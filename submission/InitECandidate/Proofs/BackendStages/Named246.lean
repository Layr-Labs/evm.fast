import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed246
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody246_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody246_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody246_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def NamedBody246_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1073741840#64)

def NamedBody246_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody246_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.load 11
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64)

def NamedBody246_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody246_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def NamedBody246_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody246_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody246_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody246_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 255#64)))

def NamedBody246_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody246_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody246_14 : StackLang.HolProg 64 :=
.seq NamedBody246_12 NamedBody246_13

def NamedBody246_15 : StackLang.HolProg 64 :=
.seq NamedBody246_11 NamedBody246_14

def NamedBody246_16 : StackLang.HolProg 64 :=
.seq NamedBody246_10 NamedBody246_15

def NamedBody246_17 : StackLang.HolProg 64 :=
.seq NamedBody246_9 NamedBody246_16

def NamedBody246_18 : StackLang.HolProg 64 :=
.seq NamedBody246_8 NamedBody246_17

def NamedBody246_19 : StackLang.HolProg 64 :=
.seq NamedBody246_7 NamedBody246_18

def NamedBody246_20 : StackLang.HolProg 64 :=
.seq NamedBody246_6 NamedBody246_19

def NamedBody246_21 : StackLang.HolProg 64 :=
.seq NamedBody246_5 NamedBody246_20

def NamedBody246_22 : StackLang.HolProg 64 :=
.seq NamedBody246_4 NamedBody246_21

def NamedBody246_23 : StackLang.HolProg 64 :=
.seq NamedBody246_3 NamedBody246_22

def NamedBody246_24 : StackLang.HolProg 64 :=
.seq NamedBody246_2 NamedBody246_23

def NamedBody246_25 : StackLang.HolProg 64 :=
.seq NamedBody246_1 NamedBody246_24

def NamedBody246_26 : StackLang.HolProg 64 :=
.seq NamedBody246_0 NamedBody246_25

def Named246 : Nat × StackLang.HolProg 64 := (246, NamedBody246_26)
theorem Named246_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed246 = Named246 := by
  kernel_rfl
#print axioms Named246_eq
end InitECandidate.Proofs.BackendStages
