import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw84
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody84_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody84_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody84_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody84_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 71777214294589695#64)

def AllocBody84_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody84_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody84_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 71777214294589695#64)

def AllocBody84_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody84_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody84_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody84_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody84_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody84_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 281470681808895#64)

def AllocBody84_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody84_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody84_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 281470681808895#64)

def AllocBody84_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody84_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody84_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody84_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody84_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody84_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody84_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody84_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody84_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody84_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody84_26 : StackLang.HolProg 64 :=
.seq AllocBody84_24 AllocBody84_25

def AllocBody84_27 : StackLang.HolProg 64 :=
.seq AllocBody84_23 AllocBody84_26

def AllocBody84_28 : StackLang.HolProg 64 :=
.seq AllocBody84_22 AllocBody84_27

def AllocBody84_29 : StackLang.HolProg 64 :=
.seq AllocBody84_21 AllocBody84_28

def AllocBody84_30 : StackLang.HolProg 64 :=
.seq AllocBody84_20 AllocBody84_29

def AllocBody84_31 : StackLang.HolProg 64 :=
.seq AllocBody84_19 AllocBody84_30

def AllocBody84_32 : StackLang.HolProg 64 :=
.seq AllocBody84_18 AllocBody84_31

def AllocBody84_33 : StackLang.HolProg 64 :=
.seq AllocBody84_17 AllocBody84_32

def AllocBody84_34 : StackLang.HolProg 64 :=
.seq AllocBody84_16 AllocBody84_33

def AllocBody84_35 : StackLang.HolProg 64 :=
.seq AllocBody84_15 AllocBody84_34

def AllocBody84_36 : StackLang.HolProg 64 :=
.seq AllocBody84_14 AllocBody84_35

def AllocBody84_37 : StackLang.HolProg 64 :=
.seq AllocBody84_13 AllocBody84_36

def AllocBody84_38 : StackLang.HolProg 64 :=
.seq AllocBody84_12 AllocBody84_37

def AllocBody84_39 : StackLang.HolProg 64 :=
.seq AllocBody84_11 AllocBody84_38

def AllocBody84_40 : StackLang.HolProg 64 :=
.seq AllocBody84_10 AllocBody84_39

def AllocBody84_41 : StackLang.HolProg 64 :=
.seq AllocBody84_9 AllocBody84_40

def AllocBody84_42 : StackLang.HolProg 64 :=
.seq AllocBody84_8 AllocBody84_41

def AllocBody84_43 : StackLang.HolProg 64 :=
.seq AllocBody84_7 AllocBody84_42

def AllocBody84_44 : StackLang.HolProg 64 :=
.seq AllocBody84_6 AllocBody84_43

def AllocBody84_45 : StackLang.HolProg 64 :=
.seq AllocBody84_5 AllocBody84_44

def AllocBody84_46 : StackLang.HolProg 64 :=
.seq AllocBody84_4 AllocBody84_45

def AllocBody84_47 : StackLang.HolProg 64 :=
.seq AllocBody84_3 AllocBody84_46

def AllocBody84_48 : StackLang.HolProg 64 :=
.seq AllocBody84_2 AllocBody84_47

def AllocBody84_49 : StackLang.HolProg 64 :=
.seq AllocBody84_1 AllocBody84_48

def AllocBody84_50 : StackLang.HolProg 64 :=
.seq AllocBody84_0 AllocBody84_49

def Alloc84 : Nat × StackLang.HolProg 64 := (84, AllocBody84_50)
theorem Alloc84_eq : StackAlloc.progComp (84, raw84) = Alloc84 := by
  kernel_rfl
#print axioms Alloc84_eq
end InitECandidate.Proofs.BackendStages
