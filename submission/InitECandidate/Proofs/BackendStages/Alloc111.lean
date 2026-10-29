import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw111
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody111_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody111_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody111_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody111_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody111_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody111_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody111_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody111_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody111_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody111_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody111_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody111_11 : StackLang.HolProg 64 :=
.seq AllocBody111_9 AllocBody111_10

def AllocBody111_12 : StackLang.HolProg 64 :=
.seq AllocBody111_8 AllocBody111_11

def AllocBody111_13 : StackLang.HolProg 64 :=
.seq AllocBody111_7 AllocBody111_12

def AllocBody111_14 : StackLang.HolProg 64 :=
.seq AllocBody111_6 AllocBody111_13

def AllocBody111_15 : StackLang.HolProg 64 :=
.seq AllocBody111_5 AllocBody111_14

def AllocBody111_16 : StackLang.HolProg 64 :=
.seq AllocBody111_4 AllocBody111_15

def AllocBody111_17 : StackLang.HolProg 64 :=
.seq AllocBody111_3 AllocBody111_16

def AllocBody111_18 : StackLang.HolProg 64 :=
.seq AllocBody111_2 AllocBody111_17

def AllocBody111_19 : StackLang.HolProg 64 :=
.seq AllocBody111_1 AllocBody111_18

def AllocBody111_20 : StackLang.HolProg 64 :=
.seq AllocBody111_0 AllocBody111_19

def Alloc111 : Nat × StackLang.HolProg 64 := (111, AllocBody111_20)
theorem Alloc111_eq : StackAlloc.progComp (111, raw111) = Alloc111 := by
  kernel_rfl
#print axioms Alloc111_eq
end InitECandidate.Proofs.BackendStages
