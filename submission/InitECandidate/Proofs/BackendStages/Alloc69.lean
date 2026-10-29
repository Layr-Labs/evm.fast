import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw69
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody69_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody69_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody69_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody69_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody69_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody69_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551608#64))

def AllocBody69_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody69_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody69_8 : StackLang.HolProg 64 :=
.seq AllocBody69_6 AllocBody69_7

def AllocBody69_9 : StackLang.HolProg 64 :=
.seq AllocBody69_5 AllocBody69_8

def AllocBody69_10 : StackLang.HolProg 64 :=
.seq AllocBody69_4 AllocBody69_9

def AllocBody69_11 : StackLang.HolProg 64 :=
.seq AllocBody69_3 AllocBody69_10

def AllocBody69_12 : StackLang.HolProg 64 :=
.seq AllocBody69_2 AllocBody69_11

def AllocBody69_13 : StackLang.HolProg 64 :=
.seq AllocBody69_1 AllocBody69_12

def AllocBody69_14 : StackLang.HolProg 64 :=
.seq AllocBody69_0 AllocBody69_13

def Alloc69 : Nat × StackLang.HolProg 64 := (69, AllocBody69_14)
theorem Alloc69_eq : StackAlloc.progComp (69, raw69) = Alloc69 := by
  kernel_rfl
#print axioms Alloc69_eq
end InitECandidate.Proofs.BackendStages
