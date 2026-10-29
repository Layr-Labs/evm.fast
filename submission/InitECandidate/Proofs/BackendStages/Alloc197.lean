import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw197
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody197_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody197_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody197_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody197_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody197_4 : StackLang.HolProg 64 :=
.seq AllocBody197_2 AllocBody197_3

def AllocBody197_5 : StackLang.HolProg 64 :=
.seq AllocBody197_1 AllocBody197_4

def AllocBody197_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def AllocBody197_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody197_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody197_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody197_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody197_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody197_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def AllocBody197_13 : StackLang.HolProg 64 :=
.seq AllocBody197_11 AllocBody197_12

def AllocBody197_14 : StackLang.HolProg 64 :=
.seq AllocBody197_10 AllocBody197_13

def AllocBody197_15 : StackLang.HolProg 64 :=
.seq AllocBody197_9 AllocBody197_14

def AllocBody197_16 : StackLang.HolProg 64 :=
.seq AllocBody197_8 AllocBody197_15

def AllocBody197_17 : StackLang.HolProg 64 :=
.seq AllocBody197_7 AllocBody197_16

def AllocBody197_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody197_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody197_17 AllocBody197_18

def AllocBody197_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody197_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody197_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody197_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody197_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody197_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 48#64))

def AllocBody197_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody197_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody197_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody197_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def AllocBody197_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody197_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody197_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody197_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 32#64))

def AllocBody197_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody197_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody197_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody197_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody197_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 40#64))

def AllocBody197_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody197_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody197_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody197_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody197_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def AllocBody197_44 : StackLang.HolProg 64 :=
.seq AllocBody197_42 AllocBody197_43

def AllocBody197_45 : StackLang.HolProg 64 :=
.seq AllocBody197_41 AllocBody197_44

def AllocBody197_46 : StackLang.HolProg 64 :=
.seq AllocBody197_40 AllocBody197_45

def AllocBody197_47 : StackLang.HolProg 64 :=
.seq AllocBody197_39 AllocBody197_46

def AllocBody197_48 : StackLang.HolProg 64 :=
.seq AllocBody197_38 AllocBody197_47

def AllocBody197_49 : StackLang.HolProg 64 :=
.seq AllocBody197_37 AllocBody197_48

def AllocBody197_50 : StackLang.HolProg 64 :=
.seq AllocBody197_36 AllocBody197_49

def AllocBody197_51 : StackLang.HolProg 64 :=
.seq AllocBody197_35 AllocBody197_50

def AllocBody197_52 : StackLang.HolProg 64 :=
.seq AllocBody197_34 AllocBody197_51

def AllocBody197_53 : StackLang.HolProg 64 :=
.seq AllocBody197_33 AllocBody197_52

def AllocBody197_54 : StackLang.HolProg 64 :=
.seq AllocBody197_32 AllocBody197_53

def AllocBody197_55 : StackLang.HolProg 64 :=
.seq AllocBody197_31 AllocBody197_54

def AllocBody197_56 : StackLang.HolProg 64 :=
.seq AllocBody197_30 AllocBody197_55

def AllocBody197_57 : StackLang.HolProg 64 :=
.seq AllocBody197_29 AllocBody197_56

def AllocBody197_58 : StackLang.HolProg 64 :=
.seq AllocBody197_28 AllocBody197_57

def AllocBody197_59 : StackLang.HolProg 64 :=
.seq AllocBody197_27 AllocBody197_58

def AllocBody197_60 : StackLang.HolProg 64 :=
.seq AllocBody197_26 AllocBody197_59

def AllocBody197_61 : StackLang.HolProg 64 :=
.seq AllocBody197_25 AllocBody197_60

def AllocBody197_62 : StackLang.HolProg 64 :=
.seq AllocBody197_24 AllocBody197_61

def AllocBody197_63 : StackLang.HolProg 64 :=
.seq AllocBody197_23 AllocBody197_62

def AllocBody197_64 : StackLang.HolProg 64 :=
.seq AllocBody197_22 AllocBody197_63

def AllocBody197_65 : StackLang.HolProg 64 :=
.seq AllocBody197_21 AllocBody197_64

def AllocBody197_66 : StackLang.HolProg 64 :=
.seq AllocBody197_20 AllocBody197_65

def AllocBody197_67 : StackLang.HolProg 64 :=
.seq AllocBody197_19 AllocBody197_66

def AllocBody197_68 : StackLang.HolProg 64 :=
.seq AllocBody197_6 AllocBody197_67

def AllocBody197_69 : StackLang.HolProg 64 :=
.seq AllocBody197_5 AllocBody197_68

def AllocBody197_70 : StackLang.HolProg 64 :=
.seq AllocBody197_0 AllocBody197_69

def Alloc197 : Nat × StackLang.HolProg 64 := (197, AllocBody197_70)
theorem Alloc197_eq : StackAlloc.progComp (197, raw197) = Alloc197 := by
  kernel_rfl
#print axioms Alloc197_eq
end InitECandidate.Proofs.BackendStages
