import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw820
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody820_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody820_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody820_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 128#64)

def AllocBody820_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody820_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody820_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 524#64)

def AllocBody820_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody820_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody820_8 : StackLang.HolProg 64 :=
.seq AllocBody820_6 AllocBody820_7

def AllocBody820_9 : StackLang.HolProg 64 :=
.seq AllocBody820_5 AllocBody820_8

def AllocBody820_10 : StackLang.HolProg 64 :=
.seq AllocBody820_4 AllocBody820_9

def AllocBody820_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody820_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody820_10 AllocBody820_11

def AllocBody820_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody820_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody820_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody820_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def AllocBody820_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody820_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody820_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody820_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody820_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def AllocBody820_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551216#64))

def AllocBody820_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody820_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody820_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody820_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody820_27 : StackLang.HolProg 64 :=
.seq AllocBody820_25 AllocBody820_26

def AllocBody820_28 : StackLang.HolProg 64 :=
.seq AllocBody820_24 AllocBody820_27

def AllocBody820_29 : StackLang.HolProg 64 :=
.seq AllocBody820_23 AllocBody820_28

def AllocBody820_30 : StackLang.HolProg 64 :=
.seq AllocBody820_22 AllocBody820_29

def AllocBody820_31 : StackLang.HolProg 64 :=
.seq AllocBody820_21 AllocBody820_30

def AllocBody820_32 : StackLang.HolProg 64 :=
.seq AllocBody820_20 AllocBody820_31

def AllocBody820_33 : StackLang.HolProg 64 :=
.seq AllocBody820_19 AllocBody820_32

def AllocBody820_34 : StackLang.HolProg 64 :=
.seq AllocBody820_18 AllocBody820_33

def AllocBody820_35 : StackLang.HolProg 64 :=
.seq AllocBody820_17 AllocBody820_34

def AllocBody820_36 : StackLang.HolProg 64 :=
.seq AllocBody820_16 AllocBody820_35

def AllocBody820_37 : StackLang.HolProg 64 :=
.seq AllocBody820_15 AllocBody820_36

def AllocBody820_38 : StackLang.HolProg 64 :=
.seq AllocBody820_14 AllocBody820_37

def AllocBody820_39 : StackLang.HolProg 64 :=
.seq AllocBody820_13 AllocBody820_38

def AllocBody820_40 : StackLang.HolProg 64 :=
.seq AllocBody820_12 AllocBody820_39

def AllocBody820_41 : StackLang.HolProg 64 :=
.seq AllocBody820_3 AllocBody820_40

def AllocBody820_42 : StackLang.HolProg 64 :=
.seq AllocBody820_2 AllocBody820_41

def AllocBody820_43 : StackLang.HolProg 64 :=
.seq AllocBody820_1 AllocBody820_42

def AllocBody820_44 : StackLang.HolProg 64 :=
.seq AllocBody820_0 AllocBody820_43

def Alloc820 : Nat × StackLang.HolProg 64 := (820, AllocBody820_44)
theorem Alloc820_eq : StackAlloc.progComp (820, raw820) = Alloc820 := by
  kernel_rfl
#print axioms Alloc820_eq
end InitECandidate.Proofs.BackendStages
