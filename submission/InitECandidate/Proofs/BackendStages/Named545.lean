import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed545
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody545_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody545_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody545_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody545_3 : StackLang.HolProg 64 :=
.seq NamedBody545_1 NamedBody545_2

def NamedBody545_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody545_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody545_3 NamedBody545_4

def NamedBody545_6 : StackLang.HolProg 64 :=
.seq NamedBody545_0 NamedBody545_5

def NamedBody545_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody545_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 88#64))

def NamedBody545_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 8#64)

def NamedBody545_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody545_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody545_12 : StackLang.HolProg 64 :=
.seq NamedBody545_10 NamedBody545_11

def NamedBody545_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody545_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1805#64)

def NamedBody545_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody545_16 : StackLang.HolProg 64 :=
.seq NamedBody545_14 NamedBody545_15

def NamedBody545_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody545_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody545_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody545_20 : StackLang.HolProg 64 :=
.seq NamedBody545_18 NamedBody545_19

def NamedBody545_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody545_22 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody545_20 NamedBody545_21

def NamedBody545_23 : StackLang.HolProg 64 :=
.seq NamedBody545_17 NamedBody545_22

def NamedBody545_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody545_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody545_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 545 3

def NamedBody545_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody545_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody545_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody545_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody545_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody545_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody545_33 : StackLang.HolProg 64 :=
.seq NamedBody545_31 NamedBody545_32

def NamedBody545_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody545_35 : StackLang.HolProg 64 :=
.seq NamedBody545_33 NamedBody545_34

def NamedBody545_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody545_37 : StackLang.HolProg 64 :=
.seq NamedBody545_35 NamedBody545_36

def NamedBody545_38 : StackLang.HolProg 64 :=
.seq NamedBody545_30 NamedBody545_37

def NamedBody545_39 : StackLang.HolProg 64 :=
.seq NamedBody545_29 NamedBody545_38

def NamedBody545_40 : StackLang.HolProg 64 :=
.seq NamedBody545_28 NamedBody545_39

def NamedBody545_41 : StackLang.HolProg 64 :=
.seq NamedBody545_27 NamedBody545_40

def NamedBody545_42 : StackLang.HolProg 64 :=
.seq NamedBody545_26 NamedBody545_41

def NamedBody545_43 : StackLang.HolProg 64 :=
.seq NamedBody545_25 NamedBody545_42

def NamedBody545_44 : StackLang.HolProg 64 :=
.seq NamedBody545_24 NamedBody545_43

def NamedBody545_45 : StackLang.HolProg 64 :=
.seq NamedBody545_23 NamedBody545_44

def NamedBody545_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody545_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody545_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody545_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody545_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody545_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody545_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody545_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody545_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody545_55 : StackLang.HolProg 64 :=
.seq NamedBody545_53 NamedBody545_54

def NamedBody545_56 : StackLang.HolProg 64 :=
.seq NamedBody545_52 NamedBody545_55

def NamedBody545_57 : StackLang.HolProg 64 :=
.seq NamedBody545_51 NamedBody545_56

def NamedBody545_58 : StackLang.HolProg 64 :=
.seq NamedBody545_50 NamedBody545_57

def NamedBody545_59 : StackLang.HolProg 64 :=
.seq NamedBody545_49 NamedBody545_58

def NamedBody545_60 : StackLang.HolProg 64 :=
.seq NamedBody545_48 NamedBody545_59

def NamedBody545_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody545_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody545_63 : StackLang.HolProg 64 :=
.seq NamedBody545_61 NamedBody545_62

def NamedBody545_64 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody545_65 : StackLang.HolProg 64 :=
.seq NamedBody545_63 NamedBody545_64

def NamedBody545_66 : StackLang.HolProg 64 :=
.call (some (NamedBody545_60, 1, 545, 2)) (Sum.inl 437) (some (NamedBody545_65, 545, 3))

def NamedBody545_67 : StackLang.HolProg 64 :=
.seq NamedBody545_47 NamedBody545_66

def NamedBody545_68 : StackLang.HolProg 64 :=
.seq NamedBody545_46 NamedBody545_67

def NamedBody545_69 : StackLang.HolProg 64 :=
.seq NamedBody545_45 NamedBody545_68

def NamedBody545_70 : StackLang.HolProg 64 :=
.seq NamedBody545_16 NamedBody545_69

def NamedBody545_71 : StackLang.HolProg 64 :=
.seq NamedBody545_13 NamedBody545_70

def NamedBody545_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody545_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody545_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody545_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody545_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody545_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody545_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody545_79 : StackLang.HolProg 64 :=
.seq NamedBody545_77 NamedBody545_78

def NamedBody545_80 : StackLang.HolProg 64 :=
.seq NamedBody545_76 NamedBody545_79

def NamedBody545_81 : StackLang.HolProg 64 :=
.seq NamedBody545_75 NamedBody545_80

def NamedBody545_82 : StackLang.HolProg 64 :=
.seq NamedBody545_74 NamedBody545_81

def NamedBody545_83 : StackLang.HolProg 64 :=
.seq NamedBody545_73 NamedBody545_82

def NamedBody545_84 : StackLang.HolProg 64 :=
.seq NamedBody545_72 NamedBody545_83

def NamedBody545_85 : StackLang.HolProg 64 :=
.seq NamedBody545_71 NamedBody545_84

def NamedBody545_86 : StackLang.HolProg 64 :=
.seq NamedBody545_12 NamedBody545_85

def NamedBody545_87 : StackLang.HolProg 64 :=
.seq NamedBody545_9 NamedBody545_86

def NamedBody545_88 : StackLang.HolProg 64 :=
.seq NamedBody545_8 NamedBody545_87

def NamedBody545_89 : StackLang.HolProg 64 :=
.seq NamedBody545_7 NamedBody545_88

def NamedBody545_90 : StackLang.HolProg 64 :=
.seq NamedBody545_6 NamedBody545_89

def Named545 : Nat × StackLang.HolProg 64 := (545, NamedBody545_90)
theorem Named545_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed545 = Named545 := by
  kernel_rfl
#print axioms Named545_eq
end InitECandidate.Proofs.BackendStages
