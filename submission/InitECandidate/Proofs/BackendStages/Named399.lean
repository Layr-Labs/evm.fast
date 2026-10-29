import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed399
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody399_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody399_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody399_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody399_3 : StackLang.HolProg 64 :=
.seq NamedBody399_1 NamedBody399_2

def NamedBody399_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody399_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody399_3 NamedBody399_4

def NamedBody399_6 : StackLang.HolProg 64 :=
.seq NamedBody399_0 NamedBody399_5

def NamedBody399_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody399_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody399_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1184#64)

def NamedBody399_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody399_11 : StackLang.HolProg 64 :=
.seq NamedBody399_9 NamedBody399_10

def NamedBody399_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody399_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody399_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody399_15 : StackLang.HolProg 64 :=
.seq NamedBody399_13 NamedBody399_14

def NamedBody399_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody399_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody399_15 NamedBody399_16

def NamedBody399_18 : StackLang.HolProg 64 :=
.seq NamedBody399_12 NamedBody399_17

def NamedBody399_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody399_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody399_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 399 3

def NamedBody399_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody399_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody399_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody399_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody399_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody399_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody399_28 : StackLang.HolProg 64 :=
.seq NamedBody399_26 NamedBody399_27

def NamedBody399_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody399_30 : StackLang.HolProg 64 :=
.seq NamedBody399_28 NamedBody399_29

def NamedBody399_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody399_32 : StackLang.HolProg 64 :=
.seq NamedBody399_30 NamedBody399_31

def NamedBody399_33 : StackLang.HolProg 64 :=
.seq NamedBody399_25 NamedBody399_32

def NamedBody399_34 : StackLang.HolProg 64 :=
.seq NamedBody399_24 NamedBody399_33

def NamedBody399_35 : StackLang.HolProg 64 :=
.seq NamedBody399_23 NamedBody399_34

def NamedBody399_36 : StackLang.HolProg 64 :=
.seq NamedBody399_22 NamedBody399_35

def NamedBody399_37 : StackLang.HolProg 64 :=
.seq NamedBody399_21 NamedBody399_36

def NamedBody399_38 : StackLang.HolProg 64 :=
.seq NamedBody399_20 NamedBody399_37

def NamedBody399_39 : StackLang.HolProg 64 :=
.seq NamedBody399_19 NamedBody399_38

def NamedBody399_40 : StackLang.HolProg 64 :=
.seq NamedBody399_18 NamedBody399_39

def NamedBody399_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody399_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody399_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody399_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody399_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody399_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody399_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody399_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody399_49 : StackLang.HolProg 64 :=
.seq NamedBody399_47 NamedBody399_48

def NamedBody399_50 : StackLang.HolProg 64 :=
.seq NamedBody399_46 NamedBody399_49

def NamedBody399_51 : StackLang.HolProg 64 :=
.seq NamedBody399_45 NamedBody399_50

def NamedBody399_52 : StackLang.HolProg 64 :=
.seq NamedBody399_44 NamedBody399_51

def NamedBody399_53 : StackLang.HolProg 64 :=
.seq NamedBody399_43 NamedBody399_52

def NamedBody399_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody399_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody399_56 : StackLang.HolProg 64 :=
.seq NamedBody399_54 NamedBody399_55

def NamedBody399_57 : StackLang.HolProg 64 :=
.call (some (NamedBody399_53, 1, 399, 2)) (Sum.inl 398) (some (NamedBody399_56, 399, 3))

def NamedBody399_58 : StackLang.HolProg 64 :=
.seq NamedBody399_42 NamedBody399_57

def NamedBody399_59 : StackLang.HolProg 64 :=
.seq NamedBody399_41 NamedBody399_58

def NamedBody399_60 : StackLang.HolProg 64 :=
.seq NamedBody399_40 NamedBody399_59

def NamedBody399_61 : StackLang.HolProg 64 :=
.seq NamedBody399_11 NamedBody399_60

def NamedBody399_62 : StackLang.HolProg 64 :=
.seq NamedBody399_8 NamedBody399_61

def NamedBody399_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody399_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody399_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody399_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody399_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody399_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody399_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody399_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551488#64))

def NamedBody399_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody399_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody399_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody399_74 : StackLang.HolProg 64 :=
.seq NamedBody399_72 NamedBody399_73

def NamedBody399_75 : StackLang.HolProg 64 :=
.seq NamedBody399_71 NamedBody399_74

def NamedBody399_76 : StackLang.HolProg 64 :=
.seq NamedBody399_70 NamedBody399_75

def NamedBody399_77 : StackLang.HolProg 64 :=
.seq NamedBody399_69 NamedBody399_76

def NamedBody399_78 : StackLang.HolProg 64 :=
.seq NamedBody399_68 NamedBody399_77

def NamedBody399_79 : StackLang.HolProg 64 :=
.seq NamedBody399_67 NamedBody399_78

def NamedBody399_80 : StackLang.HolProg 64 :=
.seq NamedBody399_66 NamedBody399_79

def NamedBody399_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody399_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody399_80 NamedBody399_81

def NamedBody399_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody399_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody399_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody399_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def NamedBody399_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody399_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody399_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody399_90 : StackLang.HolProg 64 :=
.seq NamedBody399_88 NamedBody399_89

def NamedBody399_91 : StackLang.HolProg 64 :=
.seq NamedBody399_87 NamedBody399_90

def NamedBody399_92 : StackLang.HolProg 64 :=
.seq NamedBody399_86 NamedBody399_91

def NamedBody399_93 : StackLang.HolProg 64 :=
.seq NamedBody399_85 NamedBody399_92

def NamedBody399_94 : StackLang.HolProg 64 :=
.seq NamedBody399_84 NamedBody399_93

def NamedBody399_95 : StackLang.HolProg 64 :=
.seq NamedBody399_83 NamedBody399_94

def NamedBody399_96 : StackLang.HolProg 64 :=
.seq NamedBody399_82 NamedBody399_95

def NamedBody399_97 : StackLang.HolProg 64 :=
.seq NamedBody399_65 NamedBody399_96

def NamedBody399_98 : StackLang.HolProg 64 :=
.seq NamedBody399_64 NamedBody399_97

def NamedBody399_99 : StackLang.HolProg 64 :=
.seq NamedBody399_63 NamedBody399_98

def NamedBody399_100 : StackLang.HolProg 64 :=
.seq NamedBody399_62 NamedBody399_99

def NamedBody399_101 : StackLang.HolProg 64 :=
.seq NamedBody399_7 NamedBody399_100

def NamedBody399_102 : StackLang.HolProg 64 :=
.seq NamedBody399_6 NamedBody399_101

def Named399 : Nat × StackLang.HolProg 64 := (399, NamedBody399_102)
theorem Named399_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed399 = Named399 := by
  kernel_rfl
#print axioms Named399_eq
end InitECandidate.Proofs.BackendStages
