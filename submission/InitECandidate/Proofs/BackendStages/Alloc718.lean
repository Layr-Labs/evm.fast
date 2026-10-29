import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw718
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody718_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody718_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody718_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def AllocBody718_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody718_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody718_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody718_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody718_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def AllocBody718_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody718_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody718_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody718_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody718_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def AllocBody718_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody718_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody718_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody718_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody718_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def AllocBody718_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody718_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody718_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody718_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody718_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def AllocBody718_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody718_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody718_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody718_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody718_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody718_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody718_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody718_30 : StackLang.HolProg 64 :=
.seq AllocBody718_28 AllocBody718_29

def AllocBody718_31 : StackLang.HolProg 64 :=
.seq AllocBody718_27 AllocBody718_30

def AllocBody718_32 : StackLang.HolProg 64 :=
.seq AllocBody718_26 AllocBody718_31

def AllocBody718_33 : StackLang.HolProg 64 :=
.seq AllocBody718_25 AllocBody718_32

def AllocBody718_34 : StackLang.HolProg 64 :=
.seq AllocBody718_24 AllocBody718_33

def AllocBody718_35 : StackLang.HolProg 64 :=
.seq AllocBody718_23 AllocBody718_34

def AllocBody718_36 : StackLang.HolProg 64 :=
.seq AllocBody718_22 AllocBody718_35

def AllocBody718_37 : StackLang.HolProg 64 :=
.seq AllocBody718_21 AllocBody718_36

def AllocBody718_38 : StackLang.HolProg 64 :=
.seq AllocBody718_20 AllocBody718_37

def AllocBody718_39 : StackLang.HolProg 64 :=
.seq AllocBody718_19 AllocBody718_38

def AllocBody718_40 : StackLang.HolProg 64 :=
.seq AllocBody718_18 AllocBody718_39

def AllocBody718_41 : StackLang.HolProg 64 :=
.seq AllocBody718_17 AllocBody718_40

def AllocBody718_42 : StackLang.HolProg 64 :=
.seq AllocBody718_16 AllocBody718_41

def AllocBody718_43 : StackLang.HolProg 64 :=
.seq AllocBody718_15 AllocBody718_42

def AllocBody718_44 : StackLang.HolProg 64 :=
.seq AllocBody718_14 AllocBody718_43

def AllocBody718_45 : StackLang.HolProg 64 :=
.seq AllocBody718_13 AllocBody718_44

def AllocBody718_46 : StackLang.HolProg 64 :=
.seq AllocBody718_12 AllocBody718_45

def AllocBody718_47 : StackLang.HolProg 64 :=
.seq AllocBody718_11 AllocBody718_46

def AllocBody718_48 : StackLang.HolProg 64 :=
.seq AllocBody718_10 AllocBody718_47

def AllocBody718_49 : StackLang.HolProg 64 :=
.seq AllocBody718_9 AllocBody718_48

def AllocBody718_50 : StackLang.HolProg 64 :=
.seq AllocBody718_8 AllocBody718_49

def AllocBody718_51 : StackLang.HolProg 64 :=
.seq AllocBody718_7 AllocBody718_50

def AllocBody718_52 : StackLang.HolProg 64 :=
.seq AllocBody718_6 AllocBody718_51

def AllocBody718_53 : StackLang.HolProg 64 :=
.seq AllocBody718_5 AllocBody718_52

def AllocBody718_54 : StackLang.HolProg 64 :=
.seq AllocBody718_4 AllocBody718_53

def AllocBody718_55 : StackLang.HolProg 64 :=
.seq AllocBody718_3 AllocBody718_54

def AllocBody718_56 : StackLang.HolProg 64 :=
.seq AllocBody718_2 AllocBody718_55

def AllocBody718_57 : StackLang.HolProg 64 :=
.seq AllocBody718_1 AllocBody718_56

def AllocBody718_58 : StackLang.HolProg 64 :=
.seq AllocBody718_0 AllocBody718_57

def Alloc718 : Nat × StackLang.HolProg 64 := (718, AllocBody718_58)
theorem Alloc718_eq : StackAlloc.progComp (718, raw718) = Alloc718 := by
  kernel_rfl
#print axioms Alloc718_eq
end InitECandidate.Proofs.BackendStages
