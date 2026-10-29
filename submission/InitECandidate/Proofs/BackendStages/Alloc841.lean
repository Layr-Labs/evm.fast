import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw841
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody841_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody841_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody841_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody841_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody841_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody841_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 16#64)

def AllocBody841_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody841_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody841_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody841_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody841_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody841_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody841_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody841_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody841_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody841_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody841_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody841_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 16#64))

def AllocBody841_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 33#64)

def AllocBody841_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody841_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody841_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody841_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 32#64))

def AllocBody841_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody841_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody841_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody841_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody841_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def AllocBody841_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody841_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody841_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody841_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody841_32 : StackLang.HolProg 64 :=
.seq AllocBody841_30 AllocBody841_31

def AllocBody841_33 : StackLang.HolProg 64 :=
.seq AllocBody841_29 AllocBody841_32

def AllocBody841_34 : StackLang.HolProg 64 :=
.seq AllocBody841_28 AllocBody841_33

def AllocBody841_35 : StackLang.HolProg 64 :=
.seq AllocBody841_27 AllocBody841_34

def AllocBody841_36 : StackLang.HolProg 64 :=
.seq AllocBody841_26 AllocBody841_35

def AllocBody841_37 : StackLang.HolProg 64 :=
.seq AllocBody841_25 AllocBody841_36

def AllocBody841_38 : StackLang.HolProg 64 :=
.seq AllocBody841_24 AllocBody841_37

def AllocBody841_39 : StackLang.HolProg 64 :=
.seq AllocBody841_23 AllocBody841_38

def AllocBody841_40 : StackLang.HolProg 64 :=
.seq AllocBody841_22 AllocBody841_39

def AllocBody841_41 : StackLang.HolProg 64 :=
.seq AllocBody841_21 AllocBody841_40

def AllocBody841_42 : StackLang.HolProg 64 :=
.seq AllocBody841_20 AllocBody841_41

def AllocBody841_43 : StackLang.HolProg 64 :=
.seq AllocBody841_19 AllocBody841_42

def AllocBody841_44 : StackLang.HolProg 64 :=
.seq AllocBody841_18 AllocBody841_43

def AllocBody841_45 : StackLang.HolProg 64 :=
.seq AllocBody841_17 AllocBody841_44

def AllocBody841_46 : StackLang.HolProg 64 :=
.seq AllocBody841_16 AllocBody841_45

def AllocBody841_47 : StackLang.HolProg 64 :=
.seq AllocBody841_15 AllocBody841_46

def AllocBody841_48 : StackLang.HolProg 64 :=
.seq AllocBody841_14 AllocBody841_47

def AllocBody841_49 : StackLang.HolProg 64 :=
.seq AllocBody841_13 AllocBody841_48

def AllocBody841_50 : StackLang.HolProg 64 :=
.seq AllocBody841_12 AllocBody841_49

def AllocBody841_51 : StackLang.HolProg 64 :=
.seq AllocBody841_11 AllocBody841_50

def AllocBody841_52 : StackLang.HolProg 64 :=
.seq AllocBody841_10 AllocBody841_51

def AllocBody841_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody841_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody841_55 : StackLang.HolProg 64 :=
.seq AllocBody841_53 AllocBody841_54

def AllocBody841_56 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) AllocBody841_52 AllocBody841_55

def AllocBody841_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody841_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody841_59 : StackLang.HolProg 64 :=
.seq AllocBody841_57 AllocBody841_58

def AllocBody841_60 : StackLang.HolProg 64 :=
.seq AllocBody841_56 AllocBody841_59

def AllocBody841_61 : StackLang.HolProg 64 :=
.seq AllocBody841_9 AllocBody841_60

def AllocBody841_62 : StackLang.HolProg 64 :=
.loop AllocBody841_61

def AllocBody841_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody841_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody841_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def AllocBody841_66 : StackLang.HolProg 64 :=
.seq AllocBody841_64 AllocBody841_65

def AllocBody841_67 : StackLang.HolProg 64 :=
.seq AllocBody841_63 AllocBody841_66

def AllocBody841_68 : StackLang.HolProg 64 :=
.seq AllocBody841_62 AllocBody841_67

def AllocBody841_69 : StackLang.HolProg 64 :=
.seq AllocBody841_8 AllocBody841_68

def AllocBody841_70 : StackLang.HolProg 64 :=
.seq AllocBody841_7 AllocBody841_69

def AllocBody841_71 : StackLang.HolProg 64 :=
.seq AllocBody841_6 AllocBody841_70

def AllocBody841_72 : StackLang.HolProg 64 :=
.seq AllocBody841_5 AllocBody841_71

def AllocBody841_73 : StackLang.HolProg 64 :=
.seq AllocBody841_4 AllocBody841_72

def AllocBody841_74 : StackLang.HolProg 64 :=
.seq AllocBody841_3 AllocBody841_73

def AllocBody841_75 : StackLang.HolProg 64 :=
.seq AllocBody841_2 AllocBody841_74

def AllocBody841_76 : StackLang.HolProg 64 :=
.seq AllocBody841_1 AllocBody841_75

def AllocBody841_77 : StackLang.HolProg 64 :=
.seq AllocBody841_0 AllocBody841_76

def Alloc841 : Nat × StackLang.HolProg 64 := (841, AllocBody841_77)
theorem Alloc841_eq : StackAlloc.progComp (841, raw841) = Alloc841 := by
  kernel_rfl
#print axioms Alloc841_eq
end InitECandidate.Proofs.BackendStages
