import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed111
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody111_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody111_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody111_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody111_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody111_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody111_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody111_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody111_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody111_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody111_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody111_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody111_11 : StackLang.HolProg 64 :=
.seq NamedBody111_9 NamedBody111_10

def NamedBody111_12 : StackLang.HolProg 64 :=
.seq NamedBody111_8 NamedBody111_11

def NamedBody111_13 : StackLang.HolProg 64 :=
.seq NamedBody111_7 NamedBody111_12

def NamedBody111_14 : StackLang.HolProg 64 :=
.seq NamedBody111_6 NamedBody111_13

def NamedBody111_15 : StackLang.HolProg 64 :=
.seq NamedBody111_5 NamedBody111_14

def NamedBody111_16 : StackLang.HolProg 64 :=
.seq NamedBody111_4 NamedBody111_15

def NamedBody111_17 : StackLang.HolProg 64 :=
.seq NamedBody111_3 NamedBody111_16

def NamedBody111_18 : StackLang.HolProg 64 :=
.seq NamedBody111_2 NamedBody111_17

def NamedBody111_19 : StackLang.HolProg 64 :=
.seq NamedBody111_1 NamedBody111_18

def NamedBody111_20 : StackLang.HolProg 64 :=
.seq NamedBody111_0 NamedBody111_19

def Named111 : Nat × StackLang.HolProg 64 := (111, NamedBody111_20)
theorem Named111_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed111 = Named111 := by
  kernel_rfl
#print axioms Named111_eq
end InitECandidate.Proofs.BackendStages
