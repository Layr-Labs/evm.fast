import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed470
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody470_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody470_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody470_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody470_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody470_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody470_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 18446744073709551360#64))

def NamedBody470_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 64#64))

def NamedBody470_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody470_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody470_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 4#64)

def NamedBody470_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody470_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody470_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody470_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody470_14 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody470_15 : StackLang.HolProg 64 :=
.seq NamedBody470_13 NamedBody470_14

def NamedBody470_16 : StackLang.HolProg 64 :=
.seq NamedBody470_12 NamedBody470_15

def NamedBody470_17 : StackLang.HolProg 64 :=
.seq NamedBody470_11 NamedBody470_16

def NamedBody470_18 : StackLang.HolProg 64 :=
.seq NamedBody470_10 NamedBody470_17

def NamedBody470_19 : StackLang.HolProg 64 :=
.seq NamedBody470_9 NamedBody470_18

def NamedBody470_20 : StackLang.HolProg 64 :=
.seq NamedBody470_8 NamedBody470_19

def NamedBody470_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody470_22 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody470_20 NamedBody470_21

def NamedBody470_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody470_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody470_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody470_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody470_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody470_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody470_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody470_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody470_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody470_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 18446744073709551360#64))

def NamedBody470_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 184#64)))

def NamedBody470_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody470_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 184#64))

def NamedBody470_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody470_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody470_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody470_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody470_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody470_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody470_42 : StackLang.HolProg 64 :=
.seq NamedBody470_40 NamedBody470_41

def NamedBody470_43 : StackLang.HolProg 64 :=
.seq NamedBody470_39 NamedBody470_42

def NamedBody470_44 : StackLang.HolProg 64 :=
.seq NamedBody470_38 NamedBody470_43

def NamedBody470_45 : StackLang.HolProg 64 :=
.seq NamedBody470_37 NamedBody470_44

def NamedBody470_46 : StackLang.HolProg 64 :=
.seq NamedBody470_36 NamedBody470_45

def NamedBody470_47 : StackLang.HolProg 64 :=
.seq NamedBody470_35 NamedBody470_46

def NamedBody470_48 : StackLang.HolProg 64 :=
.seq NamedBody470_34 NamedBody470_47

def NamedBody470_49 : StackLang.HolProg 64 :=
.seq NamedBody470_33 NamedBody470_48

def NamedBody470_50 : StackLang.HolProg 64 :=
.seq NamedBody470_32 NamedBody470_49

def NamedBody470_51 : StackLang.HolProg 64 :=
.seq NamedBody470_31 NamedBody470_50

def NamedBody470_52 : StackLang.HolProg 64 :=
.seq NamedBody470_30 NamedBody470_51

def NamedBody470_53 : StackLang.HolProg 64 :=
.seq NamedBody470_29 NamedBody470_52

def NamedBody470_54 : StackLang.HolProg 64 :=
.seq NamedBody470_28 NamedBody470_53

def NamedBody470_55 : StackLang.HolProg 64 :=
.seq NamedBody470_27 NamedBody470_54

def NamedBody470_56 : StackLang.HolProg 64 :=
.seq NamedBody470_26 NamedBody470_55

def NamedBody470_57 : StackLang.HolProg 64 :=
.seq NamedBody470_25 NamedBody470_56

def NamedBody470_58 : StackLang.HolProg 64 :=
.seq NamedBody470_24 NamedBody470_57

def NamedBody470_59 : StackLang.HolProg 64 :=
.seq NamedBody470_23 NamedBody470_58

def NamedBody470_60 : StackLang.HolProg 64 :=
.seq NamedBody470_22 NamedBody470_59

def NamedBody470_61 : StackLang.HolProg 64 :=
.seq NamedBody470_7 NamedBody470_60

def NamedBody470_62 : StackLang.HolProg 64 :=
.seq NamedBody470_6 NamedBody470_61

def NamedBody470_63 : StackLang.HolProg 64 :=
.seq NamedBody470_5 NamedBody470_62

def NamedBody470_64 : StackLang.HolProg 64 :=
.seq NamedBody470_4 NamedBody470_63

def NamedBody470_65 : StackLang.HolProg 64 :=
.seq NamedBody470_3 NamedBody470_64

def NamedBody470_66 : StackLang.HolProg 64 :=
.seq NamedBody470_2 NamedBody470_65

def NamedBody470_67 : StackLang.HolProg 64 :=
.seq NamedBody470_1 NamedBody470_66

def NamedBody470_68 : StackLang.HolProg 64 :=
.seq NamedBody470_0 NamedBody470_67

def Named470 : Nat × StackLang.HolProg 64 := (470, NamedBody470_68)
theorem Named470_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed470 = Named470 := by
  kernel_rfl
#print axioms Named470_eq
end InitECandidate.Proofs.BackendStages
