import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw86
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody86_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody86_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody86_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody86_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody86_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody86_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody86_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody86_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody86_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody86_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody86_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody86_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody86_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody86_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody86_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody86_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody86_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody86_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody86_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody86_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody86_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody86_21 : StackLang.HolProg 64 :=
.seq AllocBody86_19 AllocBody86_20

def AllocBody86_22 : StackLang.HolProg 64 :=
.seq AllocBody86_18 AllocBody86_21

def AllocBody86_23 : StackLang.HolProg 64 :=
.seq AllocBody86_17 AllocBody86_22

def AllocBody86_24 : StackLang.HolProg 64 :=
.seq AllocBody86_16 AllocBody86_23

def AllocBody86_25 : StackLang.HolProg 64 :=
.seq AllocBody86_15 AllocBody86_24

def AllocBody86_26 : StackLang.HolProg 64 :=
.seq AllocBody86_14 AllocBody86_25

def AllocBody86_27 : StackLang.HolProg 64 :=
.seq AllocBody86_13 AllocBody86_26

def AllocBody86_28 : StackLang.HolProg 64 :=
.seq AllocBody86_12 AllocBody86_27

def AllocBody86_29 : StackLang.HolProg 64 :=
.seq AllocBody86_11 AllocBody86_28

def AllocBody86_30 : StackLang.HolProg 64 :=
.seq AllocBody86_10 AllocBody86_29

def AllocBody86_31 : StackLang.HolProg 64 :=
.seq AllocBody86_9 AllocBody86_30

def AllocBody86_32 : StackLang.HolProg 64 :=
.seq AllocBody86_8 AllocBody86_31

def AllocBody86_33 : StackLang.HolProg 64 :=
.seq AllocBody86_7 AllocBody86_32

def AllocBody86_34 : StackLang.HolProg 64 :=
.seq AllocBody86_6 AllocBody86_33

def AllocBody86_35 : StackLang.HolProg 64 :=
.seq AllocBody86_5 AllocBody86_34

def AllocBody86_36 : StackLang.HolProg 64 :=
.seq AllocBody86_4 AllocBody86_35

def AllocBody86_37 : StackLang.HolProg 64 :=
.seq AllocBody86_3 AllocBody86_36

def AllocBody86_38 : StackLang.HolProg 64 :=
.seq AllocBody86_2 AllocBody86_37

def AllocBody86_39 : StackLang.HolProg 64 :=
.seq AllocBody86_1 AllocBody86_38

def AllocBody86_40 : StackLang.HolProg 64 :=
.seq AllocBody86_0 AllocBody86_39

def Alloc86 : Nat × StackLang.HolProg 64 := (86, AllocBody86_40)
theorem Alloc86_eq : StackAlloc.progComp (86, raw86) = Alloc86 := by
  kernel_rfl
#print axioms Alloc86_eq
end InitECandidate.Proofs.BackendStages
