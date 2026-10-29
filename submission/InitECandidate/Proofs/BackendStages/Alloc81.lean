import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw81
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody81_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody81_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody81_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody81_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody81_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody81_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody81_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody81_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody81_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody81_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody81_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody81_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody81_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody81_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody81_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody81_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody81_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody81_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody81_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody81_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody81_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody81_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody81_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody81_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody81_24 : StackLang.HolProg 64 :=
.seq AllocBody81_22 AllocBody81_23

def AllocBody81_25 : StackLang.HolProg 64 :=
.seq AllocBody81_21 AllocBody81_24

def AllocBody81_26 : StackLang.HolProg 64 :=
.seq AllocBody81_20 AllocBody81_25

def AllocBody81_27 : StackLang.HolProg 64 :=
.seq AllocBody81_19 AllocBody81_26

def AllocBody81_28 : StackLang.HolProg 64 :=
.seq AllocBody81_18 AllocBody81_27

def AllocBody81_29 : StackLang.HolProg 64 :=
.seq AllocBody81_17 AllocBody81_28

def AllocBody81_30 : StackLang.HolProg 64 :=
.seq AllocBody81_16 AllocBody81_29

def AllocBody81_31 : StackLang.HolProg 64 :=
.seq AllocBody81_15 AllocBody81_30

def AllocBody81_32 : StackLang.HolProg 64 :=
.seq AllocBody81_14 AllocBody81_31

def AllocBody81_33 : StackLang.HolProg 64 :=
.seq AllocBody81_13 AllocBody81_32

def AllocBody81_34 : StackLang.HolProg 64 :=
.seq AllocBody81_12 AllocBody81_33

def AllocBody81_35 : StackLang.HolProg 64 :=
.seq AllocBody81_11 AllocBody81_34

def AllocBody81_36 : StackLang.HolProg 64 :=
.seq AllocBody81_10 AllocBody81_35

def AllocBody81_37 : StackLang.HolProg 64 :=
.seq AllocBody81_9 AllocBody81_36

def AllocBody81_38 : StackLang.HolProg 64 :=
.seq AllocBody81_8 AllocBody81_37

def AllocBody81_39 : StackLang.HolProg 64 :=
.seq AllocBody81_7 AllocBody81_38

def AllocBody81_40 : StackLang.HolProg 64 :=
.seq AllocBody81_6 AllocBody81_39

def AllocBody81_41 : StackLang.HolProg 64 :=
.seq AllocBody81_5 AllocBody81_40

def AllocBody81_42 : StackLang.HolProg 64 :=
.seq AllocBody81_4 AllocBody81_41

def AllocBody81_43 : StackLang.HolProg 64 :=
.seq AllocBody81_3 AllocBody81_42

def AllocBody81_44 : StackLang.HolProg 64 :=
.seq AllocBody81_2 AllocBody81_43

def AllocBody81_45 : StackLang.HolProg 64 :=
.seq AllocBody81_1 AllocBody81_44

def AllocBody81_46 : StackLang.HolProg 64 :=
.seq AllocBody81_0 AllocBody81_45

def Alloc81 : Nat × StackLang.HolProg 64 := (81, AllocBody81_46)
theorem Alloc81_eq : StackAlloc.progComp (81, raw81) = Alloc81 := by
  kernel_rfl
#print axioms Alloc81_eq
end InitECandidate.Proofs.BackendStages
