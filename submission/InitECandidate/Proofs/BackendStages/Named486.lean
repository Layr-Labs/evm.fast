import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed486
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody486_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody486_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody486_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody486_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody486_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody486_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody486_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody486_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody486_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody486_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody486_10 : StackLang.HolProg 64 :=
.seq NamedBody486_8 NamedBody486_9

def NamedBody486_11 : StackLang.HolProg 64 :=
.seq NamedBody486_7 NamedBody486_10

def NamedBody486_12 : StackLang.HolProg 64 :=
.seq NamedBody486_6 NamedBody486_11

def NamedBody486_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody486_14 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody486_12 NamedBody486_13

def NamedBody486_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody486_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody486_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody486_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody486_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody486_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody486_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody486_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 56#64))

def NamedBody486_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody486_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody486_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody486_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody486_27 : StackLang.HolProg 64 :=
.seq NamedBody486_25 NamedBody486_26

def NamedBody486_28 : StackLang.HolProg 64 :=
.seq NamedBody486_24 NamedBody486_27

def NamedBody486_29 : StackLang.HolProg 64 :=
.seq NamedBody486_23 NamedBody486_28

def NamedBody486_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody486_31 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody486_29 NamedBody486_30

def NamedBody486_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody486_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody486_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody486_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 80#64))

def NamedBody486_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody486_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def NamedBody486_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody486_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody486_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody486_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody486_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody486_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody486_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody486_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody486_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody486_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody486_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody486_49 : StackLang.HolProg 64 :=
.seq NamedBody486_47 NamedBody486_48

def NamedBody486_50 : StackLang.HolProg 64 :=
.seq NamedBody486_46 NamedBody486_49

def NamedBody486_51 : StackLang.HolProg 64 :=
.seq NamedBody486_45 NamedBody486_50

def NamedBody486_52 : StackLang.HolProg 64 :=
.seq NamedBody486_44 NamedBody486_51

def NamedBody486_53 : StackLang.HolProg 64 :=
.seq NamedBody486_43 NamedBody486_52

def NamedBody486_54 : StackLang.HolProg 64 :=
.seq NamedBody486_42 NamedBody486_53

def NamedBody486_55 : StackLang.HolProg 64 :=
.seq NamedBody486_41 NamedBody486_54

def NamedBody486_56 : StackLang.HolProg 64 :=
.seq NamedBody486_40 NamedBody486_55

def NamedBody486_57 : StackLang.HolProg 64 :=
.seq NamedBody486_39 NamedBody486_56

def NamedBody486_58 : StackLang.HolProg 64 :=
.seq NamedBody486_38 NamedBody486_57

def NamedBody486_59 : StackLang.HolProg 64 :=
.seq NamedBody486_37 NamedBody486_58

def NamedBody486_60 : StackLang.HolProg 64 :=
.seq NamedBody486_36 NamedBody486_59

def NamedBody486_61 : StackLang.HolProg 64 :=
.seq NamedBody486_35 NamedBody486_60

def NamedBody486_62 : StackLang.HolProg 64 :=
.seq NamedBody486_34 NamedBody486_61

def NamedBody486_63 : StackLang.HolProg 64 :=
.seq NamedBody486_33 NamedBody486_62

def NamedBody486_64 : StackLang.HolProg 64 :=
.seq NamedBody486_32 NamedBody486_63

def NamedBody486_65 : StackLang.HolProg 64 :=
.seq NamedBody486_31 NamedBody486_64

def NamedBody486_66 : StackLang.HolProg 64 :=
.seq NamedBody486_22 NamedBody486_65

def NamedBody486_67 : StackLang.HolProg 64 :=
.seq NamedBody486_21 NamedBody486_66

def NamedBody486_68 : StackLang.HolProg 64 :=
.seq NamedBody486_20 NamedBody486_67

def NamedBody486_69 : StackLang.HolProg 64 :=
.seq NamedBody486_19 NamedBody486_68

def NamedBody486_70 : StackLang.HolProg 64 :=
.seq NamedBody486_18 NamedBody486_69

def NamedBody486_71 : StackLang.HolProg 64 :=
.seq NamedBody486_17 NamedBody486_70

def NamedBody486_72 : StackLang.HolProg 64 :=
.seq NamedBody486_16 NamedBody486_71

def NamedBody486_73 : StackLang.HolProg 64 :=
.seq NamedBody486_15 NamedBody486_72

def NamedBody486_74 : StackLang.HolProg 64 :=
.seq NamedBody486_14 NamedBody486_73

def NamedBody486_75 : StackLang.HolProg 64 :=
.seq NamedBody486_5 NamedBody486_74

def NamedBody486_76 : StackLang.HolProg 64 :=
.seq NamedBody486_4 NamedBody486_75

def NamedBody486_77 : StackLang.HolProg 64 :=
.seq NamedBody486_3 NamedBody486_76

def NamedBody486_78 : StackLang.HolProg 64 :=
.seq NamedBody486_2 NamedBody486_77

def NamedBody486_79 : StackLang.HolProg 64 :=
.seq NamedBody486_1 NamedBody486_78

def NamedBody486_80 : StackLang.HolProg 64 :=
.seq NamedBody486_0 NamedBody486_79

def Named486 : Nat × StackLang.HolProg 64 := (486, NamedBody486_80)
theorem Named486_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed486 = Named486 := by
  kernel_rfl
#print axioms Named486_eq
end InitECandidate.Proofs.BackendStages
