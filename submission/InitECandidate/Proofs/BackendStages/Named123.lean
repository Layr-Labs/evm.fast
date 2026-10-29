import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed123
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody123_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody123_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody123_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def NamedBody123_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody123_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 32#64)

def NamedBody123_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody123_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody123_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody123_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody123_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody123_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody123_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody123_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody123_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody123_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody123_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody123_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody123_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody123_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody123_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody123_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody123_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody123_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody123_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 1#64)

def NamedBody123_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody123_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody123_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody123_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody123_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody123_29 : StackLang.HolProg 64 :=
.seq NamedBody123_27 NamedBody123_28

def NamedBody123_30 : StackLang.HolProg 64 :=
.seq NamedBody123_26 NamedBody123_29

def NamedBody123_31 : StackLang.HolProg 64 :=
.seq NamedBody123_25 NamedBody123_30

def NamedBody123_32 : StackLang.HolProg 64 :=
.seq NamedBody123_24 NamedBody123_31

def NamedBody123_33 : StackLang.HolProg 64 :=
.seq NamedBody123_23 NamedBody123_32

def NamedBody123_34 : StackLang.HolProg 64 :=
.seq NamedBody123_22 NamedBody123_33

def NamedBody123_35 : StackLang.HolProg 64 :=
.seq NamedBody123_21 NamedBody123_34

def NamedBody123_36 : StackLang.HolProg 64 :=
.seq NamedBody123_20 NamedBody123_35

def NamedBody123_37 : StackLang.HolProg 64 :=
.seq NamedBody123_19 NamedBody123_36

def NamedBody123_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody123_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody123_40 : StackLang.HolProg 64 :=
.seq NamedBody123_38 NamedBody123_39

def NamedBody123_41 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody123_37 NamedBody123_40

def NamedBody123_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody123_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody123_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody123_45 : StackLang.HolProg 64 :=
.seq NamedBody123_43 NamedBody123_44

def NamedBody123_46 : StackLang.HolProg 64 :=
.seq NamedBody123_42 NamedBody123_45

def NamedBody123_47 : StackLang.HolProg 64 :=
.seq NamedBody123_41 NamedBody123_46

def NamedBody123_48 : StackLang.HolProg 64 :=
.seq NamedBody123_18 NamedBody123_47

def NamedBody123_49 : StackLang.HolProg 64 :=
.seq NamedBody123_17 NamedBody123_48

def NamedBody123_50 : StackLang.HolProg 64 :=
.seq NamedBody123_16 NamedBody123_49

def NamedBody123_51 : StackLang.HolProg 64 :=
.seq NamedBody123_15 NamedBody123_50

def NamedBody123_52 : StackLang.HolProg 64 :=
.seq NamedBody123_14 NamedBody123_51

def NamedBody123_53 : StackLang.HolProg 64 :=
.seq NamedBody123_13 NamedBody123_52

def NamedBody123_54 : StackLang.HolProg 64 :=
.seq NamedBody123_12 NamedBody123_53

def NamedBody123_55 : StackLang.HolProg 64 :=
.seq NamedBody123_11 NamedBody123_54

def NamedBody123_56 : StackLang.HolProg 64 :=
.seq NamedBody123_10 NamedBody123_55

def NamedBody123_57 : StackLang.HolProg 64 :=
.seq NamedBody123_9 NamedBody123_56

def NamedBody123_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody123_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody123_60 : StackLang.HolProg 64 :=
.seq NamedBody123_58 NamedBody123_59

def NamedBody123_61 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) NamedBody123_57 NamedBody123_60

def NamedBody123_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody123_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody123_64 : StackLang.HolProg 64 :=
.seq NamedBody123_62 NamedBody123_63

def NamedBody123_65 : StackLang.HolProg 64 :=
.seq NamedBody123_61 NamedBody123_64

def NamedBody123_66 : StackLang.HolProg 64 :=
.seq NamedBody123_8 NamedBody123_65

def NamedBody123_67 : StackLang.HolProg 64 :=
.seq NamedBody123_7 NamedBody123_66

def NamedBody123_68 : StackLang.HolProg 64 :=
.loop NamedBody123_67

def NamedBody123_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody123_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody123_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody123_72 : StackLang.HolProg 64 :=
.seq NamedBody123_70 NamedBody123_71

def NamedBody123_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody123_74 : StackLang.HolProg 64 :=
.seq NamedBody123_72 NamedBody123_73

def NamedBody123_75 : StackLang.HolProg 64 :=
.seq NamedBody123_69 NamedBody123_74

def NamedBody123_76 : StackLang.HolProg 64 :=
.seq NamedBody123_68 NamedBody123_75

def NamedBody123_77 : StackLang.HolProg 64 :=
.seq NamedBody123_6 NamedBody123_76

def NamedBody123_78 : StackLang.HolProg 64 :=
.seq NamedBody123_5 NamedBody123_77

def NamedBody123_79 : StackLang.HolProg 64 :=
.seq NamedBody123_4 NamedBody123_78

def NamedBody123_80 : StackLang.HolProg 64 :=
.seq NamedBody123_3 NamedBody123_79

def NamedBody123_81 : StackLang.HolProg 64 :=
.seq NamedBody123_2 NamedBody123_80

def NamedBody123_82 : StackLang.HolProg 64 :=
.seq NamedBody123_1 NamedBody123_81

def NamedBody123_83 : StackLang.HolProg 64 :=
.seq NamedBody123_0 NamedBody123_82

def Named123 : Nat × StackLang.HolProg 64 := (123, NamedBody123_83)
theorem Named123_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed123 = Named123 := by
  kernel_rfl
#print axioms Named123_eq
end InitECandidate.Proofs.BackendStages
