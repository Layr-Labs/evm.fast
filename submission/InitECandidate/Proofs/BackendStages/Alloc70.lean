import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw70
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody70_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody70_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody70_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody70_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody70_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def AllocBody70_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def AllocBody70_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody70_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody70_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody70_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody70_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody70_11 : StackLang.HolProg 64 :=
.seq AllocBody70_9 AllocBody70_10

def AllocBody70_12 : StackLang.HolProg 64 :=
.seq AllocBody70_8 AllocBody70_11

def AllocBody70_13 : StackLang.HolProg 64 :=
.seq AllocBody70_7 AllocBody70_12

def AllocBody70_14 : StackLang.HolProg 64 :=
.seq AllocBody70_6 AllocBody70_13

def AllocBody70_15 : StackLang.HolProg 64 :=
.seq AllocBody70_5 AllocBody70_14

def AllocBody70_16 : StackLang.HolProg 64 :=
.seq AllocBody70_4 AllocBody70_15

def AllocBody70_17 : StackLang.HolProg 64 :=
.seq AllocBody70_3 AllocBody70_16

def AllocBody70_18 : StackLang.HolProg 64 :=
.seq AllocBody70_2 AllocBody70_17

def AllocBody70_19 : StackLang.HolProg 64 :=
.seq AllocBody70_1 AllocBody70_18

def AllocBody70_20 : StackLang.HolProg 64 :=
.seq AllocBody70_0 AllocBody70_19

def Alloc70 : Nat × StackLang.HolProg 64 := (70, AllocBody70_20)
theorem Alloc70_eq : StackAlloc.progComp (70, raw70) = Alloc70 := by
  kernel_rfl
#print axioms Alloc70_eq
end InitECandidate.Proofs.BackendStages
