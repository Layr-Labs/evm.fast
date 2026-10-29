import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw67
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody67_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody67_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody67_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody67_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody67_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody67_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def AllocBody67_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.currHeap

def AllocBody67_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody67_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody67_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody67_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551592#64)))

def AllocBody67_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2965299200#64)

def AllocBody67_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody67_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody67_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody67_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551584#64)))

def AllocBody67_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 2952790016#64)

def AllocBody67_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody67_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody67_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody67_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody67_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody67_22 : StackLang.HolProg 64 :=
.seq AllocBody67_20 AllocBody67_21

def AllocBody67_23 : StackLang.HolProg 64 :=
.seq AllocBody67_19 AllocBody67_22

def AllocBody67_24 : StackLang.HolProg 64 :=
.seq AllocBody67_18 AllocBody67_23

def AllocBody67_25 : StackLang.HolProg 64 :=
.seq AllocBody67_17 AllocBody67_24

def AllocBody67_26 : StackLang.HolProg 64 :=
.seq AllocBody67_16 AllocBody67_25

def AllocBody67_27 : StackLang.HolProg 64 :=
.seq AllocBody67_15 AllocBody67_26

def AllocBody67_28 : StackLang.HolProg 64 :=
.seq AllocBody67_14 AllocBody67_27

def AllocBody67_29 : StackLang.HolProg 64 :=
.seq AllocBody67_13 AllocBody67_28

def AllocBody67_30 : StackLang.HolProg 64 :=
.seq AllocBody67_12 AllocBody67_29

def AllocBody67_31 : StackLang.HolProg 64 :=
.seq AllocBody67_11 AllocBody67_30

def AllocBody67_32 : StackLang.HolProg 64 :=
.seq AllocBody67_10 AllocBody67_31

def AllocBody67_33 : StackLang.HolProg 64 :=
.seq AllocBody67_9 AllocBody67_32

def AllocBody67_34 : StackLang.HolProg 64 :=
.seq AllocBody67_8 AllocBody67_33

def AllocBody67_35 : StackLang.HolProg 64 :=
.seq AllocBody67_7 AllocBody67_34

def AllocBody67_36 : StackLang.HolProg 64 :=
.seq AllocBody67_6 AllocBody67_35

def AllocBody67_37 : StackLang.HolProg 64 :=
.seq AllocBody67_5 AllocBody67_36

def AllocBody67_38 : StackLang.HolProg 64 :=
.seq AllocBody67_4 AllocBody67_37

def AllocBody67_39 : StackLang.HolProg 64 :=
.seq AllocBody67_3 AllocBody67_38

def AllocBody67_40 : StackLang.HolProg 64 :=
.seq AllocBody67_2 AllocBody67_39

def AllocBody67_41 : StackLang.HolProg 64 :=
.seq AllocBody67_1 AllocBody67_40

def AllocBody67_42 : StackLang.HolProg 64 :=
.seq AllocBody67_0 AllocBody67_41

def Alloc67 : Nat × StackLang.HolProg 64 := (67, AllocBody67_42)
theorem Alloc67_eq : StackAlloc.progComp (67, raw67) = Alloc67 := by
  kernel_rfl
#print axioms Alloc67_eq
end InitECandidate.Proofs.BackendStages
