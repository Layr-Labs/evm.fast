import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw123
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody123_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody123_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody123_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody123_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody123_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 32#64)

def AllocBody123_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody123_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody123_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody123_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody123_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody123_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody123_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody123_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody123_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody123_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody123_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody123_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody123_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody123_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody123_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody123_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody123_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody123_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody123_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 1#64)

def AllocBody123_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody123_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody123_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody123_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody123_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody123_29 : StackLang.HolProg 64 :=
.seq AllocBody123_27 AllocBody123_28

def AllocBody123_30 : StackLang.HolProg 64 :=
.seq AllocBody123_26 AllocBody123_29

def AllocBody123_31 : StackLang.HolProg 64 :=
.seq AllocBody123_25 AllocBody123_30

def AllocBody123_32 : StackLang.HolProg 64 :=
.seq AllocBody123_24 AllocBody123_31

def AllocBody123_33 : StackLang.HolProg 64 :=
.seq AllocBody123_23 AllocBody123_32

def AllocBody123_34 : StackLang.HolProg 64 :=
.seq AllocBody123_22 AllocBody123_33

def AllocBody123_35 : StackLang.HolProg 64 :=
.seq AllocBody123_21 AllocBody123_34

def AllocBody123_36 : StackLang.HolProg 64 :=
.seq AllocBody123_20 AllocBody123_35

def AllocBody123_37 : StackLang.HolProg 64 :=
.seq AllocBody123_19 AllocBody123_36

def AllocBody123_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody123_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody123_40 : StackLang.HolProg 64 :=
.seq AllocBody123_38 AllocBody123_39

def AllocBody123_41 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody123_37 AllocBody123_40

def AllocBody123_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody123_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody123_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody123_45 : StackLang.HolProg 64 :=
.seq AllocBody123_43 AllocBody123_44

def AllocBody123_46 : StackLang.HolProg 64 :=
.seq AllocBody123_42 AllocBody123_45

def AllocBody123_47 : StackLang.HolProg 64 :=
.seq AllocBody123_41 AllocBody123_46

def AllocBody123_48 : StackLang.HolProg 64 :=
.seq AllocBody123_18 AllocBody123_47

def AllocBody123_49 : StackLang.HolProg 64 :=
.seq AllocBody123_17 AllocBody123_48

def AllocBody123_50 : StackLang.HolProg 64 :=
.seq AllocBody123_16 AllocBody123_49

def AllocBody123_51 : StackLang.HolProg 64 :=
.seq AllocBody123_15 AllocBody123_50

def AllocBody123_52 : StackLang.HolProg 64 :=
.seq AllocBody123_14 AllocBody123_51

def AllocBody123_53 : StackLang.HolProg 64 :=
.seq AllocBody123_13 AllocBody123_52

def AllocBody123_54 : StackLang.HolProg 64 :=
.seq AllocBody123_12 AllocBody123_53

def AllocBody123_55 : StackLang.HolProg 64 :=
.seq AllocBody123_11 AllocBody123_54

def AllocBody123_56 : StackLang.HolProg 64 :=
.seq AllocBody123_10 AllocBody123_55

def AllocBody123_57 : StackLang.HolProg 64 :=
.seq AllocBody123_9 AllocBody123_56

def AllocBody123_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody123_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody123_60 : StackLang.HolProg 64 :=
.seq AllocBody123_58 AllocBody123_59

def AllocBody123_61 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) AllocBody123_57 AllocBody123_60

def AllocBody123_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody123_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody123_64 : StackLang.HolProg 64 :=
.seq AllocBody123_62 AllocBody123_63

def AllocBody123_65 : StackLang.HolProg 64 :=
.seq AllocBody123_61 AllocBody123_64

def AllocBody123_66 : StackLang.HolProg 64 :=
.seq AllocBody123_8 AllocBody123_65

def AllocBody123_67 : StackLang.HolProg 64 :=
.seq AllocBody123_7 AllocBody123_66

def AllocBody123_68 : StackLang.HolProg 64 :=
.loop AllocBody123_67

def AllocBody123_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody123_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody123_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody123_72 : StackLang.HolProg 64 :=
.seq AllocBody123_70 AllocBody123_71

def AllocBody123_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody123_74 : StackLang.HolProg 64 :=
.seq AllocBody123_72 AllocBody123_73

def AllocBody123_75 : StackLang.HolProg 64 :=
.seq AllocBody123_69 AllocBody123_74

def AllocBody123_76 : StackLang.HolProg 64 :=
.seq AllocBody123_68 AllocBody123_75

def AllocBody123_77 : StackLang.HolProg 64 :=
.seq AllocBody123_6 AllocBody123_76

def AllocBody123_78 : StackLang.HolProg 64 :=
.seq AllocBody123_5 AllocBody123_77

def AllocBody123_79 : StackLang.HolProg 64 :=
.seq AllocBody123_4 AllocBody123_78

def AllocBody123_80 : StackLang.HolProg 64 :=
.seq AllocBody123_3 AllocBody123_79

def AllocBody123_81 : StackLang.HolProg 64 :=
.seq AllocBody123_2 AllocBody123_80

def AllocBody123_82 : StackLang.HolProg 64 :=
.seq AllocBody123_1 AllocBody123_81

def AllocBody123_83 : StackLang.HolProg 64 :=
.seq AllocBody123_0 AllocBody123_82

def Alloc123 : Nat × StackLang.HolProg 64 := (123, AllocBody123_83)
theorem Alloc123_eq : StackAlloc.progComp (123, raw123) = Alloc123 := by
  kernel_rfl
#print axioms Alloc123_eq
end InitECandidate.Proofs.BackendStages
