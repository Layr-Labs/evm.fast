import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed273
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody273_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody273_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody273_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody273_3 : StackLang.HolProg 64 :=
.seq NamedBody273_1 NamedBody273_2

def NamedBody273_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody273_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody273_3 NamedBody273_4

def NamedBody273_6 : StackLang.HolProg 64 :=
.seq NamedBody273_0 NamedBody273_5

def NamedBody273_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody273_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody273_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody273_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody273_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody273_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody273_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 8#64))

def NamedBody273_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody273_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody273_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 660#64)

def NamedBody273_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody273_18 : StackLang.HolProg 64 :=
.seq NamedBody273_16 NamedBody273_17

def NamedBody273_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody273_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody273_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody273_22 : StackLang.HolProg 64 :=
.seq NamedBody273_20 NamedBody273_21

def NamedBody273_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody273_24 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody273_22 NamedBody273_23

def NamedBody273_25 : StackLang.HolProg 64 :=
.seq NamedBody273_19 NamedBody273_24

def NamedBody273_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody273_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody273_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 273 3

def NamedBody273_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody273_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody273_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody273_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody273_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody273_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody273_35 : StackLang.HolProg 64 :=
.seq NamedBody273_33 NamedBody273_34

def NamedBody273_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody273_37 : StackLang.HolProg 64 :=
.seq NamedBody273_35 NamedBody273_36

def NamedBody273_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody273_39 : StackLang.HolProg 64 :=
.seq NamedBody273_37 NamedBody273_38

def NamedBody273_40 : StackLang.HolProg 64 :=
.seq NamedBody273_32 NamedBody273_39

def NamedBody273_41 : StackLang.HolProg 64 :=
.seq NamedBody273_31 NamedBody273_40

def NamedBody273_42 : StackLang.HolProg 64 :=
.seq NamedBody273_30 NamedBody273_41

def NamedBody273_43 : StackLang.HolProg 64 :=
.seq NamedBody273_29 NamedBody273_42

def NamedBody273_44 : StackLang.HolProg 64 :=
.seq NamedBody273_28 NamedBody273_43

def NamedBody273_45 : StackLang.HolProg 64 :=
.seq NamedBody273_27 NamedBody273_44

def NamedBody273_46 : StackLang.HolProg 64 :=
.seq NamedBody273_26 NamedBody273_45

def NamedBody273_47 : StackLang.HolProg 64 :=
.seq NamedBody273_25 NamedBody273_46

def NamedBody273_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody273_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody273_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody273_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody273_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody273_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody273_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody273_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody273_56 : StackLang.HolProg 64 :=
.seq NamedBody273_54 NamedBody273_55

def NamedBody273_57 : StackLang.HolProg 64 :=
.seq NamedBody273_53 NamedBody273_56

def NamedBody273_58 : StackLang.HolProg 64 :=
.seq NamedBody273_52 NamedBody273_57

def NamedBody273_59 : StackLang.HolProg 64 :=
.seq NamedBody273_51 NamedBody273_58

def NamedBody273_60 : StackLang.HolProg 64 :=
.seq NamedBody273_50 NamedBody273_59

def NamedBody273_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody273_62 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody273_63 : StackLang.HolProg 64 :=
.seq NamedBody273_61 NamedBody273_62

def NamedBody273_64 : StackLang.HolProg 64 :=
.call (some (NamedBody273_60, 1, 273, 2)) (Sum.inl 161) (some (NamedBody273_63, 273, 3))

def NamedBody273_65 : StackLang.HolProg 64 :=
.seq NamedBody273_49 NamedBody273_64

def NamedBody273_66 : StackLang.HolProg 64 :=
.seq NamedBody273_48 NamedBody273_65

def NamedBody273_67 : StackLang.HolProg 64 :=
.seq NamedBody273_47 NamedBody273_66

def NamedBody273_68 : StackLang.HolProg 64 :=
.seq NamedBody273_18 NamedBody273_67

def NamedBody273_69 : StackLang.HolProg 64 :=
.seq NamedBody273_15 NamedBody273_68

def NamedBody273_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody273_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody273_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody273_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody273_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def NamedBody273_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody273_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody273_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3#64)

def NamedBody273_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody273_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody273_80 : StackLang.HolProg 64 :=
.seq NamedBody273_78 NamedBody273_79

def NamedBody273_81 : StackLang.HolProg 64 :=
.seq NamedBody273_77 NamedBody273_80

def NamedBody273_82 : StackLang.HolProg 64 :=
.seq NamedBody273_76 NamedBody273_81

def NamedBody273_83 : StackLang.HolProg 64 :=
.seq NamedBody273_75 NamedBody273_82

def NamedBody273_84 : StackLang.HolProg 64 :=
.seq NamedBody273_74 NamedBody273_83

def NamedBody273_85 : StackLang.HolProg 64 :=
.seq NamedBody273_73 NamedBody273_84

def NamedBody273_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody273_87 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody273_85 NamedBody273_86

def NamedBody273_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody273_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody273_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody273_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody273_92 : StackLang.HolProg 64 :=
.seq NamedBody273_90 NamedBody273_91

def NamedBody273_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody273_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody273_95 : StackLang.HolProg 64 :=
.seq NamedBody273_93 NamedBody273_94

def NamedBody273_96 : StackLang.HolProg 64 :=
.seq NamedBody273_92 NamedBody273_95

def NamedBody273_97 : StackLang.HolProg 64 :=
.seq NamedBody273_89 NamedBody273_96

def NamedBody273_98 : StackLang.HolProg 64 :=
.seq NamedBody273_88 NamedBody273_97

def NamedBody273_99 : StackLang.HolProg 64 :=
.seq NamedBody273_87 NamedBody273_98

def NamedBody273_100 : StackLang.HolProg 64 :=
.seq NamedBody273_72 NamedBody273_99

def NamedBody273_101 : StackLang.HolProg 64 :=
.seq NamedBody273_71 NamedBody273_100

def NamedBody273_102 : StackLang.HolProg 64 :=
.seq NamedBody273_70 NamedBody273_101

def NamedBody273_103 : StackLang.HolProg 64 :=
.seq NamedBody273_69 NamedBody273_102

def NamedBody273_104 : StackLang.HolProg 64 :=
.seq NamedBody273_14 NamedBody273_103

def NamedBody273_105 : StackLang.HolProg 64 :=
.seq NamedBody273_13 NamedBody273_104

def NamedBody273_106 : StackLang.HolProg 64 :=
.seq NamedBody273_12 NamedBody273_105

def NamedBody273_107 : StackLang.HolProg 64 :=
.seq NamedBody273_11 NamedBody273_106

def NamedBody273_108 : StackLang.HolProg 64 :=
.seq NamedBody273_10 NamedBody273_107

def NamedBody273_109 : StackLang.HolProg 64 :=
.seq NamedBody273_9 NamedBody273_108

def NamedBody273_110 : StackLang.HolProg 64 :=
.seq NamedBody273_8 NamedBody273_109

def NamedBody273_111 : StackLang.HolProg 64 :=
.seq NamedBody273_7 NamedBody273_110

def NamedBody273_112 : StackLang.HolProg 64 :=
.seq NamedBody273_6 NamedBody273_111

def Named273 : Nat × StackLang.HolProg 64 := (273, NamedBody273_112)
theorem Named273_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed273 = Named273 := by
  kernel_rfl
#print axioms Named273_eq
end InitECandidate.Proofs.BackendStages
