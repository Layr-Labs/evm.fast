import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw490
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody490_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody490_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody490_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody490_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody490_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def AllocBody490_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def AllocBody490_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody490_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody490_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody490_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody490_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody490_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody490_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody490_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody490_14 : StackLang.HolProg 64 :=
.seq AllocBody490_12 AllocBody490_13

def AllocBody490_15 : StackLang.HolProg 64 :=
.seq AllocBody490_11 AllocBody490_14

def AllocBody490_16 : StackLang.HolProg 64 :=
.seq AllocBody490_10 AllocBody490_15

def AllocBody490_17 : StackLang.HolProg 64 :=
.seq AllocBody490_9 AllocBody490_16

def AllocBody490_18 : StackLang.HolProg 64 :=
.seq AllocBody490_8 AllocBody490_17

def AllocBody490_19 : StackLang.HolProg 64 :=
.seq AllocBody490_7 AllocBody490_18

def AllocBody490_20 : StackLang.HolProg 64 :=
.seq AllocBody490_6 AllocBody490_19

def AllocBody490_21 : StackLang.HolProg 64 :=
.seq AllocBody490_5 AllocBody490_20

def AllocBody490_22 : StackLang.HolProg 64 :=
.seq AllocBody490_4 AllocBody490_21

def AllocBody490_23 : StackLang.HolProg 64 :=
.seq AllocBody490_3 AllocBody490_22

def AllocBody490_24 : StackLang.HolProg 64 :=
.seq AllocBody490_2 AllocBody490_23

def AllocBody490_25 : StackLang.HolProg 64 :=
.seq AllocBody490_1 AllocBody490_24

def AllocBody490_26 : StackLang.HolProg 64 :=
.seq AllocBody490_0 AllocBody490_25

def Alloc490 : Nat × StackLang.HolProg 64 := (490, AllocBody490_26)
theorem Alloc490_eq : StackAlloc.progComp (490, raw490) = Alloc490 := by
  kernel_rfl
#print axioms Alloc490_eq
end InitECandidate.Proofs.BackendStages
