import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed413
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody413_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody413_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody413_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody413_3 : StackLang.HolProg 64 :=
.seq NamedBody413_1 NamedBody413_2

def NamedBody413_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody413_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody413_3 NamedBody413_4

def NamedBody413_6 : StackLang.HolProg 64 :=
.seq NamedBody413_0 NamedBody413_5

def NamedBody413_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody413_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody413_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1233#64)

def NamedBody413_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody413_11 : StackLang.HolProg 64 :=
.seq NamedBody413_9 NamedBody413_10

def NamedBody413_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody413_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody413_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody413_15 : StackLang.HolProg 64 :=
.seq NamedBody413_13 NamedBody413_14

def NamedBody413_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody413_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody413_15 NamedBody413_16

def NamedBody413_18 : StackLang.HolProg 64 :=
.seq NamedBody413_12 NamedBody413_17

def NamedBody413_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody413_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody413_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 413 3

def NamedBody413_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody413_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody413_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody413_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody413_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody413_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody413_28 : StackLang.HolProg 64 :=
.seq NamedBody413_26 NamedBody413_27

def NamedBody413_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody413_30 : StackLang.HolProg 64 :=
.seq NamedBody413_28 NamedBody413_29

def NamedBody413_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody413_32 : StackLang.HolProg 64 :=
.seq NamedBody413_30 NamedBody413_31

def NamedBody413_33 : StackLang.HolProg 64 :=
.seq NamedBody413_25 NamedBody413_32

def NamedBody413_34 : StackLang.HolProg 64 :=
.seq NamedBody413_24 NamedBody413_33

def NamedBody413_35 : StackLang.HolProg 64 :=
.seq NamedBody413_23 NamedBody413_34

def NamedBody413_36 : StackLang.HolProg 64 :=
.seq NamedBody413_22 NamedBody413_35

def NamedBody413_37 : StackLang.HolProg 64 :=
.seq NamedBody413_21 NamedBody413_36

def NamedBody413_38 : StackLang.HolProg 64 :=
.seq NamedBody413_20 NamedBody413_37

def NamedBody413_39 : StackLang.HolProg 64 :=
.seq NamedBody413_19 NamedBody413_38

def NamedBody413_40 : StackLang.HolProg 64 :=
.seq NamedBody413_18 NamedBody413_39

def NamedBody413_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody413_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody413_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody413_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody413_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody413_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody413_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody413_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody413_49 : StackLang.HolProg 64 :=
.seq NamedBody413_47 NamedBody413_48

def NamedBody413_50 : StackLang.HolProg 64 :=
.seq NamedBody413_46 NamedBody413_49

def NamedBody413_51 : StackLang.HolProg 64 :=
.seq NamedBody413_45 NamedBody413_50

def NamedBody413_52 : StackLang.HolProg 64 :=
.seq NamedBody413_44 NamedBody413_51

def NamedBody413_53 : StackLang.HolProg 64 :=
.seq NamedBody413_43 NamedBody413_52

def NamedBody413_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody413_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody413_56 : StackLang.HolProg 64 :=
.seq NamedBody413_54 NamedBody413_55

def NamedBody413_57 : StackLang.HolProg 64 :=
.call (some (NamedBody413_53, 1, 413, 2)) (Sum.inl 406) (some (NamedBody413_56, 413, 3))

def NamedBody413_58 : StackLang.HolProg 64 :=
.seq NamedBody413_42 NamedBody413_57

def NamedBody413_59 : StackLang.HolProg 64 :=
.seq NamedBody413_41 NamedBody413_58

def NamedBody413_60 : StackLang.HolProg 64 :=
.seq NamedBody413_40 NamedBody413_59

def NamedBody413_61 : StackLang.HolProg 64 :=
.seq NamedBody413_11 NamedBody413_60

def NamedBody413_62 : StackLang.HolProg 64 :=
.seq NamedBody413_8 NamedBody413_61

def NamedBody413_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody413_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody413_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody413_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody413_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody413_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody413_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody413_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody413_71 : StackLang.HolProg 64 :=
.seq NamedBody413_69 NamedBody413_70

def NamedBody413_72 : StackLang.HolProg 64 :=
.seq NamedBody413_68 NamedBody413_71

def NamedBody413_73 : StackLang.HolProg 64 :=
.seq NamedBody413_67 NamedBody413_72

def NamedBody413_74 : StackLang.HolProg 64 :=
.seq NamedBody413_66 NamedBody413_73

def NamedBody413_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody413_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody413_74 NamedBody413_75

def NamedBody413_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody413_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody413_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody413_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody413_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody413_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody413_83 : StackLang.HolProg 64 :=
.seq NamedBody413_81 NamedBody413_82

def NamedBody413_84 : StackLang.HolProg 64 :=
.seq NamedBody413_80 NamedBody413_83

def NamedBody413_85 : StackLang.HolProg 64 :=
.seq NamedBody413_79 NamedBody413_84

def NamedBody413_86 : StackLang.HolProg 64 :=
.seq NamedBody413_78 NamedBody413_85

def NamedBody413_87 : StackLang.HolProg 64 :=
.seq NamedBody413_77 NamedBody413_86

def NamedBody413_88 : StackLang.HolProg 64 :=
.seq NamedBody413_76 NamedBody413_87

def NamedBody413_89 : StackLang.HolProg 64 :=
.seq NamedBody413_65 NamedBody413_88

def NamedBody413_90 : StackLang.HolProg 64 :=
.seq NamedBody413_64 NamedBody413_89

def NamedBody413_91 : StackLang.HolProg 64 :=
.seq NamedBody413_63 NamedBody413_90

def NamedBody413_92 : StackLang.HolProg 64 :=
.seq NamedBody413_62 NamedBody413_91

def NamedBody413_93 : StackLang.HolProg 64 :=
.seq NamedBody413_7 NamedBody413_92

def NamedBody413_94 : StackLang.HolProg 64 :=
.seq NamedBody413_6 NamedBody413_93

def Named413 : Nat × StackLang.HolProg 64 := (413, NamedBody413_94)
theorem Named413_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed413 = Named413 := by
  kernel_rfl
#print axioms Named413_eq
end InitECandidate.Proofs.BackendStages
