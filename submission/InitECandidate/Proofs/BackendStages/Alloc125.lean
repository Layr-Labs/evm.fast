import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw125
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody125_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody125_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody125_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody125_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody125_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody125_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody125_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody125_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody125_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody125_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody125_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody125_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody125_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody125_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody125_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def AllocBody125_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody125_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody125_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def AllocBody125_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody125_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody125_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 56#64))

def AllocBody125_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody125_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody125_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 48#64))

def AllocBody125_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody125_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody125_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody125_27 : StackLang.HolProg 64 :=
.seq AllocBody125_25 AllocBody125_26

def AllocBody125_28 : StackLang.HolProg 64 :=
.seq AllocBody125_24 AllocBody125_27

def AllocBody125_29 : StackLang.HolProg 64 :=
.seq AllocBody125_23 AllocBody125_28

def AllocBody125_30 : StackLang.HolProg 64 :=
.seq AllocBody125_22 AllocBody125_29

def AllocBody125_31 : StackLang.HolProg 64 :=
.seq AllocBody125_21 AllocBody125_30

def AllocBody125_32 : StackLang.HolProg 64 :=
.seq AllocBody125_20 AllocBody125_31

def AllocBody125_33 : StackLang.HolProg 64 :=
.seq AllocBody125_19 AllocBody125_32

def AllocBody125_34 : StackLang.HolProg 64 :=
.seq AllocBody125_18 AllocBody125_33

def AllocBody125_35 : StackLang.HolProg 64 :=
.seq AllocBody125_17 AllocBody125_34

def AllocBody125_36 : StackLang.HolProg 64 :=
.seq AllocBody125_16 AllocBody125_35

def AllocBody125_37 : StackLang.HolProg 64 :=
.seq AllocBody125_15 AllocBody125_36

def AllocBody125_38 : StackLang.HolProg 64 :=
.seq AllocBody125_14 AllocBody125_37

def AllocBody125_39 : StackLang.HolProg 64 :=
.seq AllocBody125_13 AllocBody125_38

def AllocBody125_40 : StackLang.HolProg 64 :=
.seq AllocBody125_12 AllocBody125_39

def AllocBody125_41 : StackLang.HolProg 64 :=
.seq AllocBody125_11 AllocBody125_40

def AllocBody125_42 : StackLang.HolProg 64 :=
.seq AllocBody125_10 AllocBody125_41

def AllocBody125_43 : StackLang.HolProg 64 :=
.seq AllocBody125_9 AllocBody125_42

def AllocBody125_44 : StackLang.HolProg 64 :=
.seq AllocBody125_8 AllocBody125_43

def AllocBody125_45 : StackLang.HolProg 64 :=
.seq AllocBody125_7 AllocBody125_44

def AllocBody125_46 : StackLang.HolProg 64 :=
.seq AllocBody125_6 AllocBody125_45

def AllocBody125_47 : StackLang.HolProg 64 :=
.seq AllocBody125_5 AllocBody125_46

def AllocBody125_48 : StackLang.HolProg 64 :=
.seq AllocBody125_4 AllocBody125_47

def AllocBody125_49 : StackLang.HolProg 64 :=
.seq AllocBody125_3 AllocBody125_48

def AllocBody125_50 : StackLang.HolProg 64 :=
.seq AllocBody125_2 AllocBody125_49

def AllocBody125_51 : StackLang.HolProg 64 :=
.seq AllocBody125_1 AllocBody125_50

def AllocBody125_52 : StackLang.HolProg 64 :=
.seq AllocBody125_0 AllocBody125_51

def Alloc125 : Nat × StackLang.HolProg 64 := (125, AllocBody125_52)
theorem Alloc125_eq : StackAlloc.progComp (125, raw125) = Alloc125 := by
  kernel_rfl
#print axioms Alloc125_eq
end InitECandidate.Proofs.BackendStages
