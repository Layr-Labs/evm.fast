import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw492
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody492_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody492_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody492_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody492_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody492_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody492_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody492_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def AllocBody492_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 144#64))

def AllocBody492_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody492_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody492_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody492_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody492_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody492_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody492_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody492_15 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody492_16 : StackLang.HolProg 64 :=
.seq AllocBody492_14 AllocBody492_15

def AllocBody492_17 : StackLang.HolProg 64 :=
.seq AllocBody492_13 AllocBody492_16

def AllocBody492_18 : StackLang.HolProg 64 :=
.seq AllocBody492_12 AllocBody492_17

def AllocBody492_19 : StackLang.HolProg 64 :=
.seq AllocBody492_11 AllocBody492_18

def AllocBody492_20 : StackLang.HolProg 64 :=
.seq AllocBody492_10 AllocBody492_19

def AllocBody492_21 : StackLang.HolProg 64 :=
.seq AllocBody492_9 AllocBody492_20

def AllocBody492_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody492_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody492_21 AllocBody492_22

def AllocBody492_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody492_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody492_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody492_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody492_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody492_29 : StackLang.HolProg 64 :=
.seq AllocBody492_27 AllocBody492_28

def AllocBody492_30 : StackLang.HolProg 64 :=
.seq AllocBody492_26 AllocBody492_29

def AllocBody492_31 : StackLang.HolProg 64 :=
.seq AllocBody492_25 AllocBody492_30

def AllocBody492_32 : StackLang.HolProg 64 :=
.seq AllocBody492_24 AllocBody492_31

def AllocBody492_33 : StackLang.HolProg 64 :=
.seq AllocBody492_23 AllocBody492_32

def AllocBody492_34 : StackLang.HolProg 64 :=
.seq AllocBody492_8 AllocBody492_33

def AllocBody492_35 : StackLang.HolProg 64 :=
.seq AllocBody492_7 AllocBody492_34

def AllocBody492_36 : StackLang.HolProg 64 :=
.seq AllocBody492_6 AllocBody492_35

def AllocBody492_37 : StackLang.HolProg 64 :=
.seq AllocBody492_5 AllocBody492_36

def AllocBody492_38 : StackLang.HolProg 64 :=
.seq AllocBody492_4 AllocBody492_37

def AllocBody492_39 : StackLang.HolProg 64 :=
.seq AllocBody492_3 AllocBody492_38

def AllocBody492_40 : StackLang.HolProg 64 :=
.seq AllocBody492_2 AllocBody492_39

def AllocBody492_41 : StackLang.HolProg 64 :=
.seq AllocBody492_1 AllocBody492_40

def AllocBody492_42 : StackLang.HolProg 64 :=
.seq AllocBody492_0 AllocBody492_41

def Alloc492 : Nat × StackLang.HolProg 64 := (492, AllocBody492_42)
theorem Alloc492_eq : StackAlloc.progComp (492, raw492) = Alloc492 := by
  kernel_rfl
#print axioms Alloc492_eq
end InitECandidate.Proofs.BackendStages
