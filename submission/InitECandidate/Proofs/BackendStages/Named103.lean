import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed103
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody103_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody103_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody103_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def NamedBody103_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody103_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody103_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody103_6 : StackLang.HolProg 64 :=
.seq NamedBody103_4 NamedBody103_5

def NamedBody103_7 : StackLang.HolProg 64 :=
.seq NamedBody103_3 NamedBody103_6

def NamedBody103_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody103_9 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) NamedBody103_7 NamedBody103_8

def NamedBody103_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody103_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody103_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody103_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody103_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody103_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody103_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody103_17 : StackLang.HolProg 64 :=
.seq NamedBody103_15 NamedBody103_16

def NamedBody103_18 : StackLang.HolProg 64 :=
.seq NamedBody103_14 NamedBody103_17

def NamedBody103_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody103_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody103_18 NamedBody103_19

def NamedBody103_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody103_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody103_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody103_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody103_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody103_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody103_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody103_28 : StackLang.HolProg 64 :=
.seq NamedBody103_26 NamedBody103_27

def NamedBody103_29 : StackLang.HolProg 64 :=
.seq NamedBody103_25 NamedBody103_28

def NamedBody103_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody103_31 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody103_29 NamedBody103_30

def NamedBody103_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody103_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody103_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody103_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody103_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody103_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody103_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody103_39 : StackLang.HolProg 64 :=
.seq NamedBody103_37 NamedBody103_38

def NamedBody103_40 : StackLang.HolProg 64 :=
.seq NamedBody103_36 NamedBody103_39

def NamedBody103_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody103_42 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody103_40 NamedBody103_41

def NamedBody103_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody103_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody103_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody103_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody103_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody103_48 : StackLang.HolProg 64 :=
.seq NamedBody103_46 NamedBody103_47

def NamedBody103_49 : StackLang.HolProg 64 :=
.seq NamedBody103_45 NamedBody103_48

def NamedBody103_50 : StackLang.HolProg 64 :=
.seq NamedBody103_44 NamedBody103_49

def NamedBody103_51 : StackLang.HolProg 64 :=
.seq NamedBody103_43 NamedBody103_50

def NamedBody103_52 : StackLang.HolProg 64 :=
.seq NamedBody103_42 NamedBody103_51

def NamedBody103_53 : StackLang.HolProg 64 :=
.seq NamedBody103_35 NamedBody103_52

def NamedBody103_54 : StackLang.HolProg 64 :=
.seq NamedBody103_34 NamedBody103_53

def NamedBody103_55 : StackLang.HolProg 64 :=
.seq NamedBody103_33 NamedBody103_54

def NamedBody103_56 : StackLang.HolProg 64 :=
.seq NamedBody103_32 NamedBody103_55

def NamedBody103_57 : StackLang.HolProg 64 :=
.seq NamedBody103_31 NamedBody103_56

def NamedBody103_58 : StackLang.HolProg 64 :=
.seq NamedBody103_24 NamedBody103_57

def NamedBody103_59 : StackLang.HolProg 64 :=
.seq NamedBody103_23 NamedBody103_58

def NamedBody103_60 : StackLang.HolProg 64 :=
.seq NamedBody103_22 NamedBody103_59

def NamedBody103_61 : StackLang.HolProg 64 :=
.seq NamedBody103_21 NamedBody103_60

def NamedBody103_62 : StackLang.HolProg 64 :=
.seq NamedBody103_20 NamedBody103_61

def NamedBody103_63 : StackLang.HolProg 64 :=
.seq NamedBody103_13 NamedBody103_62

def NamedBody103_64 : StackLang.HolProg 64 :=
.seq NamedBody103_12 NamedBody103_63

def NamedBody103_65 : StackLang.HolProg 64 :=
.seq NamedBody103_11 NamedBody103_64

def NamedBody103_66 : StackLang.HolProg 64 :=
.seq NamedBody103_10 NamedBody103_65

def NamedBody103_67 : StackLang.HolProg 64 :=
.seq NamedBody103_9 NamedBody103_66

def NamedBody103_68 : StackLang.HolProg 64 :=
.seq NamedBody103_2 NamedBody103_67

def NamedBody103_69 : StackLang.HolProg 64 :=
.seq NamedBody103_1 NamedBody103_68

def NamedBody103_70 : StackLang.HolProg 64 :=
.seq NamedBody103_0 NamedBody103_69

def Named103 : Nat × StackLang.HolProg 64 := (103, NamedBody103_70)
theorem Named103_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed103 = Named103 := by
  kernel_rfl
#print axioms Named103_eq
end InitECandidate.Proofs.BackendStages
