import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed175
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody175_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody175_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody175_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody175_3 : StackLang.HolProg 64 :=
.seq NamedBody175_1 NamedBody175_2

def NamedBody175_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody175_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody175_3 NamedBody175_4

def NamedBody175_6 : StackLang.HolProg 64 :=
.seq NamedBody175_0 NamedBody175_5

def NamedBody175_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody175_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 55#64)

def NamedBody175_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody175_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody175_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody175_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody175_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody175_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody175_15 : StackLang.HolProg 64 :=
.seq NamedBody175_13 NamedBody175_14

def NamedBody175_16 : StackLang.HolProg 64 :=
.seq NamedBody175_12 NamedBody175_15

def NamedBody175_17 : StackLang.HolProg 64 :=
.seq NamedBody175_11 NamedBody175_16

def NamedBody175_18 : StackLang.HolProg 64 :=
.seq NamedBody175_10 NamedBody175_17

def NamedBody175_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody175_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody175_18 NamedBody175_19

def NamedBody175_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody175_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody175_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody175_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody175_25 : StackLang.HolProg 64 :=
.seq NamedBody175_23 NamedBody175_24

def NamedBody175_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody175_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 196#64)

def NamedBody175_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody175_29 : StackLang.HolProg 64 :=
.seq NamedBody175_27 NamedBody175_28

def NamedBody175_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody175_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody175_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody175_33 : StackLang.HolProg 64 :=
.seq NamedBody175_31 NamedBody175_32

def NamedBody175_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody175_35 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody175_33 NamedBody175_34

def NamedBody175_36 : StackLang.HolProg 64 :=
.seq NamedBody175_30 NamedBody175_35

def NamedBody175_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody175_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody175_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 175 3

def NamedBody175_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody175_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody175_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody175_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody175_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody175_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody175_46 : StackLang.HolProg 64 :=
.seq NamedBody175_44 NamedBody175_45

def NamedBody175_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody175_48 : StackLang.HolProg 64 :=
.seq NamedBody175_46 NamedBody175_47

def NamedBody175_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody175_50 : StackLang.HolProg 64 :=
.seq NamedBody175_48 NamedBody175_49

def NamedBody175_51 : StackLang.HolProg 64 :=
.seq NamedBody175_43 NamedBody175_50

def NamedBody175_52 : StackLang.HolProg 64 :=
.seq NamedBody175_42 NamedBody175_51

def NamedBody175_53 : StackLang.HolProg 64 :=
.seq NamedBody175_41 NamedBody175_52

def NamedBody175_54 : StackLang.HolProg 64 :=
.seq NamedBody175_40 NamedBody175_53

def NamedBody175_55 : StackLang.HolProg 64 :=
.seq NamedBody175_39 NamedBody175_54

def NamedBody175_56 : StackLang.HolProg 64 :=
.seq NamedBody175_38 NamedBody175_55

def NamedBody175_57 : StackLang.HolProg 64 :=
.seq NamedBody175_37 NamedBody175_56

def NamedBody175_58 : StackLang.HolProg 64 :=
.seq NamedBody175_36 NamedBody175_57

def NamedBody175_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody175_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody175_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody175_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody175_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody175_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody175_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody175_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody175_67 : StackLang.HolProg 64 :=
.seq NamedBody175_65 NamedBody175_66

def NamedBody175_68 : StackLang.HolProg 64 :=
.seq NamedBody175_64 NamedBody175_67

def NamedBody175_69 : StackLang.HolProg 64 :=
.seq NamedBody175_63 NamedBody175_68

def NamedBody175_70 : StackLang.HolProg 64 :=
.seq NamedBody175_62 NamedBody175_69

def NamedBody175_71 : StackLang.HolProg 64 :=
.seq NamedBody175_61 NamedBody175_70

def NamedBody175_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody175_73 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody175_74 : StackLang.HolProg 64 :=
.seq NamedBody175_72 NamedBody175_73

def NamedBody175_75 : StackLang.HolProg 64 :=
.call (some (NamedBody175_71, 1, 175, 2)) (Sum.inl 172) (some (NamedBody175_74, 175, 3))

def NamedBody175_76 : StackLang.HolProg 64 :=
.seq NamedBody175_60 NamedBody175_75

def NamedBody175_77 : StackLang.HolProg 64 :=
.seq NamedBody175_59 NamedBody175_76

def NamedBody175_78 : StackLang.HolProg 64 :=
.seq NamedBody175_58 NamedBody175_77

def NamedBody175_79 : StackLang.HolProg 64 :=
.seq NamedBody175_29 NamedBody175_78

def NamedBody175_80 : StackLang.HolProg 64 :=
.seq NamedBody175_26 NamedBody175_79

def NamedBody175_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody175_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody175_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody175_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody175_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody175_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody175_87 : StackLang.HolProg 64 :=
.seq NamedBody175_85 NamedBody175_86

def NamedBody175_88 : StackLang.HolProg 64 :=
.seq NamedBody175_84 NamedBody175_87

def NamedBody175_89 : StackLang.HolProg 64 :=
.seq NamedBody175_83 NamedBody175_88

def NamedBody175_90 : StackLang.HolProg 64 :=
.seq NamedBody175_82 NamedBody175_89

def NamedBody175_91 : StackLang.HolProg 64 :=
.seq NamedBody175_81 NamedBody175_90

def NamedBody175_92 : StackLang.HolProg 64 :=
.seq NamedBody175_80 NamedBody175_91

def NamedBody175_93 : StackLang.HolProg 64 :=
.seq NamedBody175_25 NamedBody175_92

def NamedBody175_94 : StackLang.HolProg 64 :=
.seq NamedBody175_22 NamedBody175_93

def NamedBody175_95 : StackLang.HolProg 64 :=
.seq NamedBody175_21 NamedBody175_94

def NamedBody175_96 : StackLang.HolProg 64 :=
.seq NamedBody175_20 NamedBody175_95

def NamedBody175_97 : StackLang.HolProg 64 :=
.seq NamedBody175_9 NamedBody175_96

def NamedBody175_98 : StackLang.HolProg 64 :=
.seq NamedBody175_8 NamedBody175_97

def NamedBody175_99 : StackLang.HolProg 64 :=
.seq NamedBody175_7 NamedBody175_98

def NamedBody175_100 : StackLang.HolProg 64 :=
.seq NamedBody175_6 NamedBody175_99

def Named175 : Nat × StackLang.HolProg 64 := (175, NamedBody175_100)
theorem Named175_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed175 = Named175 := by
  kernel_rfl
#print axioms Named175_eq
end InitECandidate.Proofs.BackendStages
