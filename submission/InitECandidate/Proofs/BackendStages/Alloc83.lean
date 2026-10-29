import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw83
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody83_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody83_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody83_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody83_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody83_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody83_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody83_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody83_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody83_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody83_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody83_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody83_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody83_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody83_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody83_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody83_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody83_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody83_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody83_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody83_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody83_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody83_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody83_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody83_23 : StackLang.HolProg 64 :=
.seq AllocBody83_21 AllocBody83_22

def AllocBody83_24 : StackLang.HolProg 64 :=
.seq AllocBody83_20 AllocBody83_23

def AllocBody83_25 : StackLang.HolProg 64 :=
.seq AllocBody83_19 AllocBody83_24

def AllocBody83_26 : StackLang.HolProg 64 :=
.seq AllocBody83_18 AllocBody83_25

def AllocBody83_27 : StackLang.HolProg 64 :=
.seq AllocBody83_17 AllocBody83_26

def AllocBody83_28 : StackLang.HolProg 64 :=
.seq AllocBody83_16 AllocBody83_27

def AllocBody83_29 : StackLang.HolProg 64 :=
.seq AllocBody83_15 AllocBody83_28

def AllocBody83_30 : StackLang.HolProg 64 :=
.seq AllocBody83_14 AllocBody83_29

def AllocBody83_31 : StackLang.HolProg 64 :=
.seq AllocBody83_13 AllocBody83_30

def AllocBody83_32 : StackLang.HolProg 64 :=
.seq AllocBody83_12 AllocBody83_31

def AllocBody83_33 : StackLang.HolProg 64 :=
.seq AllocBody83_11 AllocBody83_32

def AllocBody83_34 : StackLang.HolProg 64 :=
.seq AllocBody83_10 AllocBody83_33

def AllocBody83_35 : StackLang.HolProg 64 :=
.seq AllocBody83_9 AllocBody83_34

def AllocBody83_36 : StackLang.HolProg 64 :=
.seq AllocBody83_8 AllocBody83_35

def AllocBody83_37 : StackLang.HolProg 64 :=
.seq AllocBody83_7 AllocBody83_36

def AllocBody83_38 : StackLang.HolProg 64 :=
.seq AllocBody83_6 AllocBody83_37

def AllocBody83_39 : StackLang.HolProg 64 :=
.seq AllocBody83_5 AllocBody83_38

def AllocBody83_40 : StackLang.HolProg 64 :=
.seq AllocBody83_4 AllocBody83_39

def AllocBody83_41 : StackLang.HolProg 64 :=
.seq AllocBody83_3 AllocBody83_40

def AllocBody83_42 : StackLang.HolProg 64 :=
.seq AllocBody83_2 AllocBody83_41

def AllocBody83_43 : StackLang.HolProg 64 :=
.seq AllocBody83_1 AllocBody83_42

def AllocBody83_44 : StackLang.HolProg 64 :=
.seq AllocBody83_0 AllocBody83_43

def Alloc83 : Nat × StackLang.HolProg 64 := (83, AllocBody83_44)
theorem Alloc83_eq : StackAlloc.progComp (83, raw83) = Alloc83 := by
  kernel_rfl
#print axioms Alloc83_eq
end InitECandidate.Proofs.BackendStages
