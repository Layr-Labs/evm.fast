import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw819
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody819_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody819_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody819_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 128#64)

def AllocBody819_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody819_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody819_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 519#64)

def AllocBody819_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody819_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody819_8 : StackLang.HolProg 64 :=
.seq AllocBody819_6 AllocBody819_7

def AllocBody819_9 : StackLang.HolProg 64 :=
.seq AllocBody819_5 AllocBody819_8

def AllocBody819_10 : StackLang.HolProg 64 :=
.seq AllocBody819_4 AllocBody819_9

def AllocBody819_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody819_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody819_10 AllocBody819_11

def AllocBody819_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody819_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody819_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody819_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody819_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody819_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody819_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody819_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def AllocBody819_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551216#64))

def AllocBody819_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody819_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody819_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody819_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody819_26 : StackLang.HolProg 64 :=
.seq AllocBody819_24 AllocBody819_25

def AllocBody819_27 : StackLang.HolProg 64 :=
.seq AllocBody819_23 AllocBody819_26

def AllocBody819_28 : StackLang.HolProg 64 :=
.seq AllocBody819_22 AllocBody819_27

def AllocBody819_29 : StackLang.HolProg 64 :=
.seq AllocBody819_21 AllocBody819_28

def AllocBody819_30 : StackLang.HolProg 64 :=
.seq AllocBody819_20 AllocBody819_29

def AllocBody819_31 : StackLang.HolProg 64 :=
.seq AllocBody819_19 AllocBody819_30

def AllocBody819_32 : StackLang.HolProg 64 :=
.seq AllocBody819_18 AllocBody819_31

def AllocBody819_33 : StackLang.HolProg 64 :=
.seq AllocBody819_17 AllocBody819_32

def AllocBody819_34 : StackLang.HolProg 64 :=
.seq AllocBody819_16 AllocBody819_33

def AllocBody819_35 : StackLang.HolProg 64 :=
.seq AllocBody819_15 AllocBody819_34

def AllocBody819_36 : StackLang.HolProg 64 :=
.seq AllocBody819_14 AllocBody819_35

def AllocBody819_37 : StackLang.HolProg 64 :=
.seq AllocBody819_13 AllocBody819_36

def AllocBody819_38 : StackLang.HolProg 64 :=
.seq AllocBody819_12 AllocBody819_37

def AllocBody819_39 : StackLang.HolProg 64 :=
.seq AllocBody819_3 AllocBody819_38

def AllocBody819_40 : StackLang.HolProg 64 :=
.seq AllocBody819_2 AllocBody819_39

def AllocBody819_41 : StackLang.HolProg 64 :=
.seq AllocBody819_1 AllocBody819_40

def AllocBody819_42 : StackLang.HolProg 64 :=
.seq AllocBody819_0 AllocBody819_41

def Alloc819 : Nat × StackLang.HolProg 64 := (819, AllocBody819_42)
theorem Alloc819_eq : StackAlloc.progComp (819, raw819) = Alloc819 := by
  kernel_rfl
#print axioms Alloc819_eq
end InitECandidate.Proofs.BackendStages
