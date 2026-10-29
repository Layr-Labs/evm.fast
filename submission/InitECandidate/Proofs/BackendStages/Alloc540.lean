import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw540
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody540_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody540_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody540_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody540_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody540_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody540_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody540_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody540_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody540_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody540_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody540_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 56#64))

def AllocBody540_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody540_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody540_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 48#64))

def AllocBody540_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody540_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody540_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody540_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody540_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody540_19 : StackLang.HolProg 64 :=
.seq AllocBody540_17 AllocBody540_18

def AllocBody540_20 : StackLang.HolProg 64 :=
.seq AllocBody540_16 AllocBody540_19

def AllocBody540_21 : StackLang.HolProg 64 :=
.seq AllocBody540_15 AllocBody540_20

def AllocBody540_22 : StackLang.HolProg 64 :=
.seq AllocBody540_14 AllocBody540_21

def AllocBody540_23 : StackLang.HolProg 64 :=
.seq AllocBody540_13 AllocBody540_22

def AllocBody540_24 : StackLang.HolProg 64 :=
.seq AllocBody540_12 AllocBody540_23

def AllocBody540_25 : StackLang.HolProg 64 :=
.seq AllocBody540_11 AllocBody540_24

def AllocBody540_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody540_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody540_25 AllocBody540_26

def AllocBody540_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody540_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody540_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody540_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody540_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody540_33 : StackLang.HolProg 64 :=
.seq AllocBody540_31 AllocBody540_32

def AllocBody540_34 : StackLang.HolProg 64 :=
.seq AllocBody540_30 AllocBody540_33

def AllocBody540_35 : StackLang.HolProg 64 :=
.seq AllocBody540_29 AllocBody540_34

def AllocBody540_36 : StackLang.HolProg 64 :=
.seq AllocBody540_28 AllocBody540_35

def AllocBody540_37 : StackLang.HolProg 64 :=
.seq AllocBody540_27 AllocBody540_36

def AllocBody540_38 : StackLang.HolProg 64 :=
.seq AllocBody540_10 AllocBody540_37

def AllocBody540_39 : StackLang.HolProg 64 :=
.seq AllocBody540_9 AllocBody540_38

def AllocBody540_40 : StackLang.HolProg 64 :=
.seq AllocBody540_8 AllocBody540_39

def AllocBody540_41 : StackLang.HolProg 64 :=
.seq AllocBody540_7 AllocBody540_40

def AllocBody540_42 : StackLang.HolProg 64 :=
.seq AllocBody540_6 AllocBody540_41

def AllocBody540_43 : StackLang.HolProg 64 :=
.seq AllocBody540_5 AllocBody540_42

def AllocBody540_44 : StackLang.HolProg 64 :=
.seq AllocBody540_4 AllocBody540_43

def AllocBody540_45 : StackLang.HolProg 64 :=
.seq AllocBody540_3 AllocBody540_44

def AllocBody540_46 : StackLang.HolProg 64 :=
.seq AllocBody540_2 AllocBody540_45

def AllocBody540_47 : StackLang.HolProg 64 :=
.seq AllocBody540_1 AllocBody540_46

def AllocBody540_48 : StackLang.HolProg 64 :=
.seq AllocBody540_0 AllocBody540_47

def Alloc540 : Nat × StackLang.HolProg 64 := (540, AllocBody540_48)
theorem Alloc540_eq : StackAlloc.progComp (540, raw540) = Alloc540 := by
  kernel_rfl
#print axioms Alloc540_eq
end InitECandidate.Proofs.BackendStages
