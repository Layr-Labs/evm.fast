import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw486
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody486_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody486_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody486_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody486_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody486_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody486_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody486_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody486_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody486_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody486_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody486_10 : StackLang.HolProg 64 :=
.seq AllocBody486_8 AllocBody486_9

def AllocBody486_11 : StackLang.HolProg 64 :=
.seq AllocBody486_7 AllocBody486_10

def AllocBody486_12 : StackLang.HolProg 64 :=
.seq AllocBody486_6 AllocBody486_11

def AllocBody486_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody486_14 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody486_12 AllocBody486_13

def AllocBody486_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody486_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody486_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody486_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody486_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody486_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody486_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody486_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 56#64))

def AllocBody486_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody486_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody486_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody486_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody486_27 : StackLang.HolProg 64 :=
.seq AllocBody486_25 AllocBody486_26

def AllocBody486_28 : StackLang.HolProg 64 :=
.seq AllocBody486_24 AllocBody486_27

def AllocBody486_29 : StackLang.HolProg 64 :=
.seq AllocBody486_23 AllocBody486_28

def AllocBody486_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody486_31 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody486_29 AllocBody486_30

def AllocBody486_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody486_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody486_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody486_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 80#64))

def AllocBody486_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody486_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def AllocBody486_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody486_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody486_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody486_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody486_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody486_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def AllocBody486_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody486_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody486_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody486_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody486_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody486_49 : StackLang.HolProg 64 :=
.seq AllocBody486_47 AllocBody486_48

def AllocBody486_50 : StackLang.HolProg 64 :=
.seq AllocBody486_46 AllocBody486_49

def AllocBody486_51 : StackLang.HolProg 64 :=
.seq AllocBody486_45 AllocBody486_50

def AllocBody486_52 : StackLang.HolProg 64 :=
.seq AllocBody486_44 AllocBody486_51

def AllocBody486_53 : StackLang.HolProg 64 :=
.seq AllocBody486_43 AllocBody486_52

def AllocBody486_54 : StackLang.HolProg 64 :=
.seq AllocBody486_42 AllocBody486_53

def AllocBody486_55 : StackLang.HolProg 64 :=
.seq AllocBody486_41 AllocBody486_54

def AllocBody486_56 : StackLang.HolProg 64 :=
.seq AllocBody486_40 AllocBody486_55

def AllocBody486_57 : StackLang.HolProg 64 :=
.seq AllocBody486_39 AllocBody486_56

def AllocBody486_58 : StackLang.HolProg 64 :=
.seq AllocBody486_38 AllocBody486_57

def AllocBody486_59 : StackLang.HolProg 64 :=
.seq AllocBody486_37 AllocBody486_58

def AllocBody486_60 : StackLang.HolProg 64 :=
.seq AllocBody486_36 AllocBody486_59

def AllocBody486_61 : StackLang.HolProg 64 :=
.seq AllocBody486_35 AllocBody486_60

def AllocBody486_62 : StackLang.HolProg 64 :=
.seq AllocBody486_34 AllocBody486_61

def AllocBody486_63 : StackLang.HolProg 64 :=
.seq AllocBody486_33 AllocBody486_62

def AllocBody486_64 : StackLang.HolProg 64 :=
.seq AllocBody486_32 AllocBody486_63

def AllocBody486_65 : StackLang.HolProg 64 :=
.seq AllocBody486_31 AllocBody486_64

def AllocBody486_66 : StackLang.HolProg 64 :=
.seq AllocBody486_22 AllocBody486_65

def AllocBody486_67 : StackLang.HolProg 64 :=
.seq AllocBody486_21 AllocBody486_66

def AllocBody486_68 : StackLang.HolProg 64 :=
.seq AllocBody486_20 AllocBody486_67

def AllocBody486_69 : StackLang.HolProg 64 :=
.seq AllocBody486_19 AllocBody486_68

def AllocBody486_70 : StackLang.HolProg 64 :=
.seq AllocBody486_18 AllocBody486_69

def AllocBody486_71 : StackLang.HolProg 64 :=
.seq AllocBody486_17 AllocBody486_70

def AllocBody486_72 : StackLang.HolProg 64 :=
.seq AllocBody486_16 AllocBody486_71

def AllocBody486_73 : StackLang.HolProg 64 :=
.seq AllocBody486_15 AllocBody486_72

def AllocBody486_74 : StackLang.HolProg 64 :=
.seq AllocBody486_14 AllocBody486_73

def AllocBody486_75 : StackLang.HolProg 64 :=
.seq AllocBody486_5 AllocBody486_74

def AllocBody486_76 : StackLang.HolProg 64 :=
.seq AllocBody486_4 AllocBody486_75

def AllocBody486_77 : StackLang.HolProg 64 :=
.seq AllocBody486_3 AllocBody486_76

def AllocBody486_78 : StackLang.HolProg 64 :=
.seq AllocBody486_2 AllocBody486_77

def AllocBody486_79 : StackLang.HolProg 64 :=
.seq AllocBody486_1 AllocBody486_78

def AllocBody486_80 : StackLang.HolProg 64 :=
.seq AllocBody486_0 AllocBody486_79

def Alloc486 : Nat × StackLang.HolProg 64 := (486, AllocBody486_80)
theorem Alloc486_eq : StackAlloc.progComp (486, raw486) = Alloc486 := by
  kernel_rfl
#print axioms Alloc486_eq
end InitECandidate.Proofs.BackendStages
