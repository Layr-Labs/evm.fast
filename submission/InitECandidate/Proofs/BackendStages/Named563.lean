import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed563
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody563_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody563_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody563_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody563_3 : StackLang.HolProg 64 :=
.seq NamedBody563_1 NamedBody563_2

def NamedBody563_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody563_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody563_3 NamedBody563_4

def NamedBody563_6 : StackLang.HolProg 64 :=
.seq NamedBody563_0 NamedBody563_5

def NamedBody563_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody563_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody563_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody563_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody563_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody563_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 48#64))

def NamedBody563_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody563_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 56#64))

def NamedBody563_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody563_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody563_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody563_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1928#64)

def NamedBody563_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody563_20 : StackLang.HolProg 64 :=
.seq NamedBody563_18 NamedBody563_19

def NamedBody563_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody563_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody563_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody563_24 : StackLang.HolProg 64 :=
.seq NamedBody563_22 NamedBody563_23

def NamedBody563_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody563_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody563_24 NamedBody563_25

def NamedBody563_27 : StackLang.HolProg 64 :=
.seq NamedBody563_21 NamedBody563_26

def NamedBody563_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody563_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody563_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 563 3

def NamedBody563_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody563_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody563_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody563_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody563_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody563_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody563_37 : StackLang.HolProg 64 :=
.seq NamedBody563_35 NamedBody563_36

def NamedBody563_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody563_39 : StackLang.HolProg 64 :=
.seq NamedBody563_37 NamedBody563_38

def NamedBody563_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody563_41 : StackLang.HolProg 64 :=
.seq NamedBody563_39 NamedBody563_40

def NamedBody563_42 : StackLang.HolProg 64 :=
.seq NamedBody563_34 NamedBody563_41

def NamedBody563_43 : StackLang.HolProg 64 :=
.seq NamedBody563_33 NamedBody563_42

def NamedBody563_44 : StackLang.HolProg 64 :=
.seq NamedBody563_32 NamedBody563_43

def NamedBody563_45 : StackLang.HolProg 64 :=
.seq NamedBody563_31 NamedBody563_44

def NamedBody563_46 : StackLang.HolProg 64 :=
.seq NamedBody563_30 NamedBody563_45

def NamedBody563_47 : StackLang.HolProg 64 :=
.seq NamedBody563_29 NamedBody563_46

def NamedBody563_48 : StackLang.HolProg 64 :=
.seq NamedBody563_28 NamedBody563_47

def NamedBody563_49 : StackLang.HolProg 64 :=
.seq NamedBody563_27 NamedBody563_48

def NamedBody563_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody563_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody563_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody563_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody563_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody563_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody563_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody563_57 : StackLang.HolProg 64 :=
.seq NamedBody563_55 NamedBody563_56

def NamedBody563_58 : StackLang.HolProg 64 :=
.seq NamedBody563_54 NamedBody563_57

def NamedBody563_59 : StackLang.HolProg 64 :=
.seq NamedBody563_53 NamedBody563_58

def NamedBody563_60 : StackLang.HolProg 64 :=
.seq NamedBody563_52 NamedBody563_59

def NamedBody563_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody563_62 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody563_63 : StackLang.HolProg 64 :=
.seq NamedBody563_61 NamedBody563_62

def NamedBody563_64 : StackLang.HolProg 64 :=
.call (some (NamedBody563_60, 1, 563, 2)) (Sum.inl 560) (some (NamedBody563_63, 563, 3))

def NamedBody563_65 : StackLang.HolProg 64 :=
.seq NamedBody563_51 NamedBody563_64

def NamedBody563_66 : StackLang.HolProg 64 :=
.seq NamedBody563_50 NamedBody563_65

def NamedBody563_67 : StackLang.HolProg 64 :=
.seq NamedBody563_49 NamedBody563_66

def NamedBody563_68 : StackLang.HolProg 64 :=
.seq NamedBody563_20 NamedBody563_67

def NamedBody563_69 : StackLang.HolProg 64 :=
.seq NamedBody563_17 NamedBody563_68

def NamedBody563_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody563_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody563_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody563_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody563_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody563_75 : StackLang.HolProg 64 :=
.seq NamedBody563_73 NamedBody563_74

def NamedBody563_76 : StackLang.HolProg 64 :=
.seq NamedBody563_72 NamedBody563_75

def NamedBody563_77 : StackLang.HolProg 64 :=
.seq NamedBody563_71 NamedBody563_76

def NamedBody563_78 : StackLang.HolProg 64 :=
.seq NamedBody563_70 NamedBody563_77

def NamedBody563_79 : StackLang.HolProg 64 :=
.seq NamedBody563_69 NamedBody563_78

def NamedBody563_80 : StackLang.HolProg 64 :=
.seq NamedBody563_16 NamedBody563_79

def NamedBody563_81 : StackLang.HolProg 64 :=
.seq NamedBody563_15 NamedBody563_80

def NamedBody563_82 : StackLang.HolProg 64 :=
.seq NamedBody563_14 NamedBody563_81

def NamedBody563_83 : StackLang.HolProg 64 :=
.seq NamedBody563_13 NamedBody563_82

def NamedBody563_84 : StackLang.HolProg 64 :=
.seq NamedBody563_12 NamedBody563_83

def NamedBody563_85 : StackLang.HolProg 64 :=
.seq NamedBody563_11 NamedBody563_84

def NamedBody563_86 : StackLang.HolProg 64 :=
.seq NamedBody563_10 NamedBody563_85

def NamedBody563_87 : StackLang.HolProg 64 :=
.seq NamedBody563_9 NamedBody563_86

def NamedBody563_88 : StackLang.HolProg 64 :=
.seq NamedBody563_8 NamedBody563_87

def NamedBody563_89 : StackLang.HolProg 64 :=
.seq NamedBody563_7 NamedBody563_88

def NamedBody563_90 : StackLang.HolProg 64 :=
.seq NamedBody563_6 NamedBody563_89

def Named563 : Nat × StackLang.HolProg 64 := (563, NamedBody563_90)
theorem Named563_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed563 = Named563 := by
  kernel_rfl
#print axioms Named563_eq
end InitECandidate.Proofs.BackendStages
