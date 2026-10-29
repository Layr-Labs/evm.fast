import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw541
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody541_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody541_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody541_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 90#64)

def AllocBody541_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody541_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def AllocBody541_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody541_6 : StackLang.HolProg 64 :=
.seq AllocBody541_4 AllocBody541_5

def AllocBody541_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody541_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody541_9 : StackLang.HolProg 64 :=
.seq AllocBody541_7 AllocBody541_8

def AllocBody541_10 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody541_6 AllocBody541_9

def AllocBody541_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody541_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody541_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 128#64)

def AllocBody541_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def AllocBody541_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody541_16 : StackLang.HolProg 64 :=
.seq AllocBody541_14 AllocBody541_15

def AllocBody541_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody541_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody541_19 : StackLang.HolProg 64 :=
.seq AllocBody541_17 AllocBody541_18

def AllocBody541_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody541_16 AllocBody541_19

def AllocBody541_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody541_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody541_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody541_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody541_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody541_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody541_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 145#64)))

def AllocBody541_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 255#64)))

def AllocBody541_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody541_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody541_31 : StackLang.HolProg 64 :=
.seq AllocBody541_29 AllocBody541_30

def AllocBody541_32 : StackLang.HolProg 64 :=
.seq AllocBody541_28 AllocBody541_31

def AllocBody541_33 : StackLang.HolProg 64 :=
.seq AllocBody541_27 AllocBody541_32

def AllocBody541_34 : StackLang.HolProg 64 :=
.seq AllocBody541_26 AllocBody541_33

def AllocBody541_35 : StackLang.HolProg 64 :=
.seq AllocBody541_25 AllocBody541_34

def AllocBody541_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody541_37 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody541_35 AllocBody541_36

def AllocBody541_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody541_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody541_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 10#64)

def AllocBody541_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody541_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody541_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody541_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody541_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody541_46 : StackLang.HolProg 64 :=
.seq AllocBody541_44 AllocBody541_45

def AllocBody541_47 : StackLang.HolProg 64 :=
.seq AllocBody541_43 AllocBody541_46

def AllocBody541_48 : StackLang.HolProg 64 :=
.seq AllocBody541_42 AllocBody541_47

def AllocBody541_49 : StackLang.HolProg 64 :=
.seq AllocBody541_41 AllocBody541_48

def AllocBody541_50 : StackLang.HolProg 64 :=
.seq AllocBody541_40 AllocBody541_49

def AllocBody541_51 : StackLang.HolProg 64 :=
.seq AllocBody541_39 AllocBody541_50

def AllocBody541_52 : StackLang.HolProg 64 :=
.seq AllocBody541_38 AllocBody541_51

def AllocBody541_53 : StackLang.HolProg 64 :=
.seq AllocBody541_37 AllocBody541_52

def AllocBody541_54 : StackLang.HolProg 64 :=
.seq AllocBody541_24 AllocBody541_53

def AllocBody541_55 : StackLang.HolProg 64 :=
.seq AllocBody541_23 AllocBody541_54

def AllocBody541_56 : StackLang.HolProg 64 :=
.seq AllocBody541_22 AllocBody541_55

def AllocBody541_57 : StackLang.HolProg 64 :=
.seq AllocBody541_21 AllocBody541_56

def AllocBody541_58 : StackLang.HolProg 64 :=
.seq AllocBody541_20 AllocBody541_57

def AllocBody541_59 : StackLang.HolProg 64 :=
.seq AllocBody541_13 AllocBody541_58

def AllocBody541_60 : StackLang.HolProg 64 :=
.seq AllocBody541_12 AllocBody541_59

def AllocBody541_61 : StackLang.HolProg 64 :=
.seq AllocBody541_11 AllocBody541_60

def AllocBody541_62 : StackLang.HolProg 64 :=
.seq AllocBody541_10 AllocBody541_61

def AllocBody541_63 : StackLang.HolProg 64 :=
.seq AllocBody541_3 AllocBody541_62

def AllocBody541_64 : StackLang.HolProg 64 :=
.seq AllocBody541_2 AllocBody541_63

def AllocBody541_65 : StackLang.HolProg 64 :=
.seq AllocBody541_1 AllocBody541_64

def AllocBody541_66 : StackLang.HolProg 64 :=
.seq AllocBody541_0 AllocBody541_65

def Alloc541 : Nat × StackLang.HolProg 64 := (541, AllocBody541_66)
theorem Alloc541_eq : StackAlloc.progComp (541, raw541) = Alloc541 := by
  kernel_rfl
#print axioms Alloc541_eq
end InitECandidate.Proofs.BackendStages
