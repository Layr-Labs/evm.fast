import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed475
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody475_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody475_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody475_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody475_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody475_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody475_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 18446744073709551360#64))

def NamedBody475_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 16#64))

def NamedBody475_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody475_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody475_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody475_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody475_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody475_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody475_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody475_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody475_15 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody475_16 : StackLang.HolProg 64 :=
.seq NamedBody475_14 NamedBody475_15

def NamedBody475_17 : StackLang.HolProg 64 :=
.seq NamedBody475_13 NamedBody475_16

def NamedBody475_18 : StackLang.HolProg 64 :=
.seq NamedBody475_12 NamedBody475_17

def NamedBody475_19 : StackLang.HolProg 64 :=
.seq NamedBody475_11 NamedBody475_18

def NamedBody475_20 : StackLang.HolProg 64 :=
.seq NamedBody475_10 NamedBody475_19

def NamedBody475_21 : StackLang.HolProg 64 :=
.seq NamedBody475_9 NamedBody475_20

def NamedBody475_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody475_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody475_21 NamedBody475_22

def NamedBody475_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody475_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody475_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody475_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody475_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody475_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody475_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody475_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody475_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody475_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody475_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody475_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 18446744073709551360#64))

def NamedBody475_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody475_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody475_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody475_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody475_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody475_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 8#64))

def NamedBody475_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody475_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 16#64))

def NamedBody475_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody475_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 24#64))

def NamedBody475_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody475_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody475_48 : StackLang.HolProg 64 :=
.seq NamedBody475_46 NamedBody475_47

def NamedBody475_49 : StackLang.HolProg 64 :=
.seq NamedBody475_45 NamedBody475_48

def NamedBody475_50 : StackLang.HolProg 64 :=
.seq NamedBody475_44 NamedBody475_49

def NamedBody475_51 : StackLang.HolProg 64 :=
.seq NamedBody475_43 NamedBody475_50

def NamedBody475_52 : StackLang.HolProg 64 :=
.seq NamedBody475_42 NamedBody475_51

def NamedBody475_53 : StackLang.HolProg 64 :=
.seq NamedBody475_41 NamedBody475_52

def NamedBody475_54 : StackLang.HolProg 64 :=
.seq NamedBody475_40 NamedBody475_53

def NamedBody475_55 : StackLang.HolProg 64 :=
.seq NamedBody475_39 NamedBody475_54

def NamedBody475_56 : StackLang.HolProg 64 :=
.seq NamedBody475_38 NamedBody475_55

def NamedBody475_57 : StackLang.HolProg 64 :=
.seq NamedBody475_37 NamedBody475_56

def NamedBody475_58 : StackLang.HolProg 64 :=
.seq NamedBody475_36 NamedBody475_57

def NamedBody475_59 : StackLang.HolProg 64 :=
.seq NamedBody475_35 NamedBody475_58

def NamedBody475_60 : StackLang.HolProg 64 :=
.seq NamedBody475_34 NamedBody475_59

def NamedBody475_61 : StackLang.HolProg 64 :=
.seq NamedBody475_33 NamedBody475_60

def NamedBody475_62 : StackLang.HolProg 64 :=
.seq NamedBody475_32 NamedBody475_61

def NamedBody475_63 : StackLang.HolProg 64 :=
.seq NamedBody475_31 NamedBody475_62

def NamedBody475_64 : StackLang.HolProg 64 :=
.seq NamedBody475_30 NamedBody475_63

def NamedBody475_65 : StackLang.HolProg 64 :=
.seq NamedBody475_29 NamedBody475_64

def NamedBody475_66 : StackLang.HolProg 64 :=
.seq NamedBody475_28 NamedBody475_65

def NamedBody475_67 : StackLang.HolProg 64 :=
.seq NamedBody475_27 NamedBody475_66

def NamedBody475_68 : StackLang.HolProg 64 :=
.seq NamedBody475_26 NamedBody475_67

def NamedBody475_69 : StackLang.HolProg 64 :=
.seq NamedBody475_25 NamedBody475_68

def NamedBody475_70 : StackLang.HolProg 64 :=
.seq NamedBody475_24 NamedBody475_69

def NamedBody475_71 : StackLang.HolProg 64 :=
.seq NamedBody475_23 NamedBody475_70

def NamedBody475_72 : StackLang.HolProg 64 :=
.seq NamedBody475_8 NamedBody475_71

def NamedBody475_73 : StackLang.HolProg 64 :=
.seq NamedBody475_7 NamedBody475_72

def NamedBody475_74 : StackLang.HolProg 64 :=
.seq NamedBody475_6 NamedBody475_73

def NamedBody475_75 : StackLang.HolProg 64 :=
.seq NamedBody475_5 NamedBody475_74

def NamedBody475_76 : StackLang.HolProg 64 :=
.seq NamedBody475_4 NamedBody475_75

def NamedBody475_77 : StackLang.HolProg 64 :=
.seq NamedBody475_3 NamedBody475_76

def NamedBody475_78 : StackLang.HolProg 64 :=
.seq NamedBody475_2 NamedBody475_77

def NamedBody475_79 : StackLang.HolProg 64 :=
.seq NamedBody475_1 NamedBody475_78

def NamedBody475_80 : StackLang.HolProg 64 :=
.seq NamedBody475_0 NamedBody475_79

def Named475 : Nat × StackLang.HolProg 64 := (475, NamedBody475_80)
theorem Named475_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed475 = Named475 := by
  kernel_rfl
#print axioms Named475_eq
end InitECandidate.Proofs.BackendStages
