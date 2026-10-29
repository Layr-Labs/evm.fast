import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed181
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody181_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody181_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody181_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody181_3 : StackLang.HolProg 64 :=
.seq NamedBody181_1 NamedBody181_2

def NamedBody181_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody181_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody181_3 NamedBody181_4

def NamedBody181_6 : StackLang.HolProg 64 :=
.seq NamedBody181_0 NamedBody181_5

def NamedBody181_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody181_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 128#64)

def NamedBody181_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody181_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody181_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody181_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody181_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody181_14 : StackLang.HolProg 64 :=
.seq NamedBody181_12 NamedBody181_13

def NamedBody181_15 : StackLang.HolProg 64 :=
.seq NamedBody181_11 NamedBody181_14

def NamedBody181_16 : StackLang.HolProg 64 :=
.seq NamedBody181_10 NamedBody181_15

def NamedBody181_17 : StackLang.HolProg 64 :=
.seq NamedBody181_9 NamedBody181_16

def NamedBody181_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody181_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody181_17 NamedBody181_18

def NamedBody181_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody181_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody181_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody181_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody181_24 : StackLang.HolProg 64 :=
.seq NamedBody181_22 NamedBody181_23

def NamedBody181_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody181_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 202#64)

def NamedBody181_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody181_28 : StackLang.HolProg 64 :=
.seq NamedBody181_26 NamedBody181_27

def NamedBody181_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody181_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody181_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody181_32 : StackLang.HolProg 64 :=
.seq NamedBody181_30 NamedBody181_31

def NamedBody181_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody181_34 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody181_32 NamedBody181_33

def NamedBody181_35 : StackLang.HolProg 64 :=
.seq NamedBody181_29 NamedBody181_34

def NamedBody181_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody181_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody181_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 181 3

def NamedBody181_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody181_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody181_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody181_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody181_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody181_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody181_45 : StackLang.HolProg 64 :=
.seq NamedBody181_43 NamedBody181_44

def NamedBody181_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody181_47 : StackLang.HolProg 64 :=
.seq NamedBody181_45 NamedBody181_46

def NamedBody181_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody181_49 : StackLang.HolProg 64 :=
.seq NamedBody181_47 NamedBody181_48

def NamedBody181_50 : StackLang.HolProg 64 :=
.seq NamedBody181_42 NamedBody181_49

def NamedBody181_51 : StackLang.HolProg 64 :=
.seq NamedBody181_41 NamedBody181_50

def NamedBody181_52 : StackLang.HolProg 64 :=
.seq NamedBody181_40 NamedBody181_51

def NamedBody181_53 : StackLang.HolProg 64 :=
.seq NamedBody181_39 NamedBody181_52

def NamedBody181_54 : StackLang.HolProg 64 :=
.seq NamedBody181_38 NamedBody181_53

def NamedBody181_55 : StackLang.HolProg 64 :=
.seq NamedBody181_37 NamedBody181_54

def NamedBody181_56 : StackLang.HolProg 64 :=
.seq NamedBody181_36 NamedBody181_55

def NamedBody181_57 : StackLang.HolProg 64 :=
.seq NamedBody181_35 NamedBody181_56

def NamedBody181_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody181_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody181_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody181_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody181_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody181_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody181_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody181_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody181_66 : StackLang.HolProg 64 :=
.seq NamedBody181_64 NamedBody181_65

def NamedBody181_67 : StackLang.HolProg 64 :=
.seq NamedBody181_63 NamedBody181_66

def NamedBody181_68 : StackLang.HolProg 64 :=
.seq NamedBody181_62 NamedBody181_67

def NamedBody181_69 : StackLang.HolProg 64 :=
.seq NamedBody181_61 NamedBody181_68

def NamedBody181_70 : StackLang.HolProg 64 :=
.seq NamedBody181_60 NamedBody181_69

def NamedBody181_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody181_72 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody181_73 : StackLang.HolProg 64 :=
.seq NamedBody181_71 NamedBody181_72

def NamedBody181_74 : StackLang.HolProg 64 :=
.call (some (NamedBody181_70, 1, 181, 2)) (Sum.inl 172) (some (NamedBody181_73, 181, 3))

def NamedBody181_75 : StackLang.HolProg 64 :=
.seq NamedBody181_59 NamedBody181_74

def NamedBody181_76 : StackLang.HolProg 64 :=
.seq NamedBody181_58 NamedBody181_75

def NamedBody181_77 : StackLang.HolProg 64 :=
.seq NamedBody181_57 NamedBody181_76

def NamedBody181_78 : StackLang.HolProg 64 :=
.seq NamedBody181_28 NamedBody181_77

def NamedBody181_79 : StackLang.HolProg 64 :=
.seq NamedBody181_25 NamedBody181_78

def NamedBody181_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody181_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody181_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody181_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody181_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody181_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody181_86 : StackLang.HolProg 64 :=
.seq NamedBody181_84 NamedBody181_85

def NamedBody181_87 : StackLang.HolProg 64 :=
.seq NamedBody181_83 NamedBody181_86

def NamedBody181_88 : StackLang.HolProg 64 :=
.seq NamedBody181_82 NamedBody181_87

def NamedBody181_89 : StackLang.HolProg 64 :=
.seq NamedBody181_81 NamedBody181_88

def NamedBody181_90 : StackLang.HolProg 64 :=
.seq NamedBody181_80 NamedBody181_89

def NamedBody181_91 : StackLang.HolProg 64 :=
.seq NamedBody181_79 NamedBody181_90

def NamedBody181_92 : StackLang.HolProg 64 :=
.seq NamedBody181_24 NamedBody181_91

def NamedBody181_93 : StackLang.HolProg 64 :=
.seq NamedBody181_21 NamedBody181_92

def NamedBody181_94 : StackLang.HolProg 64 :=
.seq NamedBody181_20 NamedBody181_93

def NamedBody181_95 : StackLang.HolProg 64 :=
.seq NamedBody181_19 NamedBody181_94

def NamedBody181_96 : StackLang.HolProg 64 :=
.seq NamedBody181_8 NamedBody181_95

def NamedBody181_97 : StackLang.HolProg 64 :=
.seq NamedBody181_7 NamedBody181_96

def NamedBody181_98 : StackLang.HolProg 64 :=
.seq NamedBody181_6 NamedBody181_97

def Named181 : Nat × StackLang.HolProg 64 := (181, NamedBody181_98)
theorem Named181_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed181 = Named181 := by
  kernel_rfl
#print axioms Named181_eq
end InitECandidate.Proofs.BackendStages
