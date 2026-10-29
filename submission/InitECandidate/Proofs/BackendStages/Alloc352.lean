import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw352
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody352_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody352_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody352_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 320#64))

def AllocBody352_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody352_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 328#64))

def AllocBody352_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody352_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 336#64))

def AllocBody352_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody352_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 344#64))

def AllocBody352_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody352_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody352_11 : StackLang.HolProg 64 :=
.seq AllocBody352_9 AllocBody352_10

def AllocBody352_12 : StackLang.HolProg 64 :=
.seq AllocBody352_8 AllocBody352_11

def AllocBody352_13 : StackLang.HolProg 64 :=
.seq AllocBody352_7 AllocBody352_12

def AllocBody352_14 : StackLang.HolProg 64 :=
.seq AllocBody352_6 AllocBody352_13

def AllocBody352_15 : StackLang.HolProg 64 :=
.seq AllocBody352_5 AllocBody352_14

def AllocBody352_16 : StackLang.HolProg 64 :=
.seq AllocBody352_4 AllocBody352_15

def AllocBody352_17 : StackLang.HolProg 64 :=
.seq AllocBody352_3 AllocBody352_16

def AllocBody352_18 : StackLang.HolProg 64 :=
.seq AllocBody352_2 AllocBody352_17

def AllocBody352_19 : StackLang.HolProg 64 :=
.seq AllocBody352_1 AllocBody352_18

def AllocBody352_20 : StackLang.HolProg 64 :=
.seq AllocBody352_0 AllocBody352_19

def Alloc352 : Nat × StackLang.HolProg 64 := (352, AllocBody352_20)
theorem Alloc352_eq : StackAlloc.progComp (352, raw352) = Alloc352 := by
  kernel_rfl
#print axioms Alloc352_eq
end InitECandidate.Proofs.BackendStages
