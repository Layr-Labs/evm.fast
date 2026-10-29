import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed464
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody464_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody464_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody464_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody464_3 : StackLang.HolProg 64 :=
.seq NamedBody464_1 NamedBody464_2

def NamedBody464_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody464_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody464_3 NamedBody464_4

def NamedBody464_6 : StackLang.HolProg 64 :=
.seq NamedBody464_0 NamedBody464_5

def NamedBody464_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody464_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 31#64)))

def NamedBody464_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody464_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody464_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody464_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody464_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody464_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody464_15 : StackLang.HolProg 64 :=
.seq NamedBody464_13 NamedBody464_14

def NamedBody464_16 : StackLang.HolProg 64 :=
.seq NamedBody464_12 NamedBody464_15

def NamedBody464_17 : StackLang.HolProg 64 :=
.seq NamedBody464_11 NamedBody464_16

def NamedBody464_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody464_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody464_17 NamedBody464_18

def NamedBody464_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody464_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody464_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody464_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 32#64)

def NamedBody464_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody464_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody464_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody464_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody464_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1488#64)

def NamedBody464_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody464_30 : StackLang.HolProg 64 :=
.seq NamedBody464_28 NamedBody464_29

def NamedBody464_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody464_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody464_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody464_34 : StackLang.HolProg 64 :=
.seq NamedBody464_32 NamedBody464_33

def NamedBody464_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody464_36 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody464_34 NamedBody464_35

def NamedBody464_37 : StackLang.HolProg 64 :=
.seq NamedBody464_31 NamedBody464_36

def NamedBody464_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody464_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody464_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 464 3

def NamedBody464_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody464_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody464_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody464_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody464_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody464_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody464_47 : StackLang.HolProg 64 :=
.seq NamedBody464_45 NamedBody464_46

def NamedBody464_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody464_49 : StackLang.HolProg 64 :=
.seq NamedBody464_47 NamedBody464_48

def NamedBody464_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody464_51 : StackLang.HolProg 64 :=
.seq NamedBody464_49 NamedBody464_50

def NamedBody464_52 : StackLang.HolProg 64 :=
.seq NamedBody464_44 NamedBody464_51

def NamedBody464_53 : StackLang.HolProg 64 :=
.seq NamedBody464_43 NamedBody464_52

def NamedBody464_54 : StackLang.HolProg 64 :=
.seq NamedBody464_42 NamedBody464_53

def NamedBody464_55 : StackLang.HolProg 64 :=
.seq NamedBody464_41 NamedBody464_54

def NamedBody464_56 : StackLang.HolProg 64 :=
.seq NamedBody464_40 NamedBody464_55

def NamedBody464_57 : StackLang.HolProg 64 :=
.seq NamedBody464_39 NamedBody464_56

def NamedBody464_58 : StackLang.HolProg 64 :=
.seq NamedBody464_38 NamedBody464_57

def NamedBody464_59 : StackLang.HolProg 64 :=
.seq NamedBody464_37 NamedBody464_58

def NamedBody464_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody464_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody464_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody464_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody464_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody464_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody464_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody464_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody464_68 : StackLang.HolProg 64 :=
.seq NamedBody464_66 NamedBody464_67

def NamedBody464_69 : StackLang.HolProg 64 :=
.seq NamedBody464_65 NamedBody464_68

def NamedBody464_70 : StackLang.HolProg 64 :=
.seq NamedBody464_64 NamedBody464_69

def NamedBody464_71 : StackLang.HolProg 64 :=
.seq NamedBody464_63 NamedBody464_70

def NamedBody464_72 : StackLang.HolProg 64 :=
.seq NamedBody464_62 NamedBody464_71

def NamedBody464_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody464_74 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody464_75 : StackLang.HolProg 64 :=
.seq NamedBody464_73 NamedBody464_74

def NamedBody464_76 : StackLang.HolProg 64 :=
.call (some (NamedBody464_72, 1, 464, 2)) (Sum.inl 463) (some (NamedBody464_75, 464, 3))

def NamedBody464_77 : StackLang.HolProg 64 :=
.seq NamedBody464_61 NamedBody464_76

def NamedBody464_78 : StackLang.HolProg 64 :=
.seq NamedBody464_60 NamedBody464_77

def NamedBody464_79 : StackLang.HolProg 64 :=
.seq NamedBody464_59 NamedBody464_78

def NamedBody464_80 : StackLang.HolProg 64 :=
.seq NamedBody464_30 NamedBody464_79

def NamedBody464_81 : StackLang.HolProg 64 :=
.seq NamedBody464_27 NamedBody464_80

def NamedBody464_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody464_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody464_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody464_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody464_86 : StackLang.HolProg 64 :=
.seq NamedBody464_84 NamedBody464_85

def NamedBody464_87 : StackLang.HolProg 64 :=
.seq NamedBody464_83 NamedBody464_86

def NamedBody464_88 : StackLang.HolProg 64 :=
.seq NamedBody464_82 NamedBody464_87

def NamedBody464_89 : StackLang.HolProg 64 :=
.seq NamedBody464_81 NamedBody464_88

def NamedBody464_90 : StackLang.HolProg 64 :=
.seq NamedBody464_26 NamedBody464_89

def NamedBody464_91 : StackLang.HolProg 64 :=
.seq NamedBody464_25 NamedBody464_90

def NamedBody464_92 : StackLang.HolProg 64 :=
.seq NamedBody464_24 NamedBody464_91

def NamedBody464_93 : StackLang.HolProg 64 :=
.seq NamedBody464_23 NamedBody464_92

def NamedBody464_94 : StackLang.HolProg 64 :=
.seq NamedBody464_22 NamedBody464_93

def NamedBody464_95 : StackLang.HolProg 64 :=
.seq NamedBody464_21 NamedBody464_94

def NamedBody464_96 : StackLang.HolProg 64 :=
.seq NamedBody464_20 NamedBody464_95

def NamedBody464_97 : StackLang.HolProg 64 :=
.seq NamedBody464_19 NamedBody464_96

def NamedBody464_98 : StackLang.HolProg 64 :=
.seq NamedBody464_10 NamedBody464_97

def NamedBody464_99 : StackLang.HolProg 64 :=
.seq NamedBody464_9 NamedBody464_98

def NamedBody464_100 : StackLang.HolProg 64 :=
.seq NamedBody464_8 NamedBody464_99

def NamedBody464_101 : StackLang.HolProg 64 :=
.seq NamedBody464_7 NamedBody464_100

def NamedBody464_102 : StackLang.HolProg 64 :=
.seq NamedBody464_6 NamedBody464_101

def Named464 : Nat × StackLang.HolProg 64 := (464, NamedBody464_102)
theorem Named464_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed464 = Named464 := by
  kernel_rfl
#print axioms Named464_eq
end InitECandidate.Proofs.BackendStages
