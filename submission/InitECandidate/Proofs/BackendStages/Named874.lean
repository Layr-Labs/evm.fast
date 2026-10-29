import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed874
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody874_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody874_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody874_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody874_3 : StackLang.HolProg 64 :=
.seq NamedBody874_1 NamedBody874_2

def NamedBody874_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody874_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody874_3 NamedBody874_4

def NamedBody874_6 : StackLang.HolProg 64 :=
.seq NamedBody874_0 NamedBody874_5

def NamedBody874_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody874_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody874_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4600#64)

def NamedBody874_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody874_11 : StackLang.HolProg 64 :=
.seq NamedBody874_9 NamedBody874_10

def NamedBody874_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody874_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody874_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody874_15 : StackLang.HolProg 64 :=
.seq NamedBody874_13 NamedBody874_14

def NamedBody874_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody874_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody874_15 NamedBody874_16

def NamedBody874_18 : StackLang.HolProg 64 :=
.seq NamedBody874_12 NamedBody874_17

def NamedBody874_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody874_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody874_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 874 3

def NamedBody874_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody874_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody874_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody874_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody874_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody874_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody874_28 : StackLang.HolProg 64 :=
.seq NamedBody874_26 NamedBody874_27

def NamedBody874_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody874_30 : StackLang.HolProg 64 :=
.seq NamedBody874_28 NamedBody874_29

def NamedBody874_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody874_32 : StackLang.HolProg 64 :=
.seq NamedBody874_30 NamedBody874_31

def NamedBody874_33 : StackLang.HolProg 64 :=
.seq NamedBody874_25 NamedBody874_32

def NamedBody874_34 : StackLang.HolProg 64 :=
.seq NamedBody874_24 NamedBody874_33

def NamedBody874_35 : StackLang.HolProg 64 :=
.seq NamedBody874_23 NamedBody874_34

def NamedBody874_36 : StackLang.HolProg 64 :=
.seq NamedBody874_22 NamedBody874_35

def NamedBody874_37 : StackLang.HolProg 64 :=
.seq NamedBody874_21 NamedBody874_36

def NamedBody874_38 : StackLang.HolProg 64 :=
.seq NamedBody874_20 NamedBody874_37

def NamedBody874_39 : StackLang.HolProg 64 :=
.seq NamedBody874_19 NamedBody874_38

def NamedBody874_40 : StackLang.HolProg 64 :=
.seq NamedBody874_18 NamedBody874_39

def NamedBody874_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody874_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody874_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody874_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody874_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody874_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody874_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody874_48 : StackLang.HolProg 64 :=
.seq NamedBody874_46 NamedBody874_47

def NamedBody874_49 : StackLang.HolProg 64 :=
.seq NamedBody874_45 NamedBody874_48

def NamedBody874_50 : StackLang.HolProg 64 :=
.seq NamedBody874_44 NamedBody874_49

def NamedBody874_51 : StackLang.HolProg 64 :=
.seq NamedBody874_43 NamedBody874_50

def NamedBody874_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody874_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody874_54 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody874_55 : StackLang.HolProg 64 :=
.seq NamedBody874_53 NamedBody874_54

def NamedBody874_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody874_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody874_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody874_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2688614470#64)

def NamedBody874_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 1
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64)

def NamedBody874_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def NamedBody874_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody874_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody874_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 9#64)

def NamedBody874_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody874_66 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody874_67 : StackLang.HolProg 64 :=
.seq NamedBody874_65 NamedBody874_66

def NamedBody874_68 : StackLang.HolProg 64 :=
.seq NamedBody874_64 NamedBody874_67

def NamedBody874_69 : StackLang.HolProg 64 :=
.seq NamedBody874_63 NamedBody874_68

def NamedBody874_70 : StackLang.HolProg 64 :=
.seq NamedBody874_62 NamedBody874_69

def NamedBody874_71 : StackLang.HolProg 64 :=
.seq NamedBody874_61 NamedBody874_70

def NamedBody874_72 : StackLang.HolProg 64 :=
.seq NamedBody874_60 NamedBody874_71

def NamedBody874_73 : StackLang.HolProg 64 :=
.seq NamedBody874_59 NamedBody874_72

def NamedBody874_74 : StackLang.HolProg 64 :=
.seq NamedBody874_58 NamedBody874_73

def NamedBody874_75 : StackLang.HolProg 64 :=
.seq NamedBody874_57 NamedBody874_74

def NamedBody874_76 : StackLang.HolProg 64 :=
.seq NamedBody874_56 NamedBody874_75

def NamedBody874_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64) NamedBody874_55 NamedBody874_76

def NamedBody874_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody874_79 : StackLang.HolProg 64 :=
.seq NamedBody874_77 NamedBody874_78

def NamedBody874_80 : StackLang.HolProg 64 :=
.seq NamedBody874_52 NamedBody874_79

def NamedBody874_81 : StackLang.HolProg 64 :=
.call (some (NamedBody874_51, 1, 874, 2)) (Sum.inl 873) (some (NamedBody874_80, 874, 3))

def NamedBody874_82 : StackLang.HolProg 64 :=
.seq NamedBody874_42 NamedBody874_81

def NamedBody874_83 : StackLang.HolProg 64 :=
.seq NamedBody874_41 NamedBody874_82

def NamedBody874_84 : StackLang.HolProg 64 :=
.seq NamedBody874_40 NamedBody874_83

def NamedBody874_85 : StackLang.HolProg 64 :=
.seq NamedBody874_11 NamedBody874_84

def NamedBody874_86 : StackLang.HolProg 64 :=
.seq NamedBody874_8 NamedBody874_85

def NamedBody874_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody874_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody874_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody874_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody874_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody874_92 : StackLang.HolProg 64 :=
.seq NamedBody874_90 NamedBody874_91

def NamedBody874_93 : StackLang.HolProg 64 :=
.seq NamedBody874_89 NamedBody874_92

def NamedBody874_94 : StackLang.HolProg 64 :=
.seq NamedBody874_88 NamedBody874_93

def NamedBody874_95 : StackLang.HolProg 64 :=
.seq NamedBody874_87 NamedBody874_94

def NamedBody874_96 : StackLang.HolProg 64 :=
.seq NamedBody874_86 NamedBody874_95

def NamedBody874_97 : StackLang.HolProg 64 :=
.seq NamedBody874_7 NamedBody874_96

def NamedBody874_98 : StackLang.HolProg 64 :=
.seq NamedBody874_6 NamedBody874_97

def Named874 : Nat × StackLang.HolProg 64 := (874, NamedBody874_98)
theorem Named874_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed874 = Named874 := by
  kernel_rfl
#print axioms Named874_eq
end InitECandidate.Proofs.BackendStages
