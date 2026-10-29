import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed338
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody338_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody338_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody338_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody338_3 : StackLang.HolProg 64 :=
.seq NamedBody338_1 NamedBody338_2

def NamedBody338_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody338_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody338_3 NamedBody338_4

def NamedBody338_6 : StackLang.HolProg 64 :=
.seq NamedBody338_0 NamedBody338_5

def NamedBody338_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody338_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody338_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody338_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody338_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody338_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody338_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 8#64))

def NamedBody338_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody338_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody338_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 972#64)

def NamedBody338_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody338_18 : StackLang.HolProg 64 :=
.seq NamedBody338_16 NamedBody338_17

def NamedBody338_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody338_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody338_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody338_22 : StackLang.HolProg 64 :=
.seq NamedBody338_20 NamedBody338_21

def NamedBody338_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody338_24 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody338_22 NamedBody338_23

def NamedBody338_25 : StackLang.HolProg 64 :=
.seq NamedBody338_19 NamedBody338_24

def NamedBody338_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody338_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody338_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 338 3

def NamedBody338_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody338_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody338_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody338_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody338_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody338_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody338_35 : StackLang.HolProg 64 :=
.seq NamedBody338_33 NamedBody338_34

def NamedBody338_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody338_37 : StackLang.HolProg 64 :=
.seq NamedBody338_35 NamedBody338_36

def NamedBody338_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody338_39 : StackLang.HolProg 64 :=
.seq NamedBody338_37 NamedBody338_38

def NamedBody338_40 : StackLang.HolProg 64 :=
.seq NamedBody338_32 NamedBody338_39

def NamedBody338_41 : StackLang.HolProg 64 :=
.seq NamedBody338_31 NamedBody338_40

def NamedBody338_42 : StackLang.HolProg 64 :=
.seq NamedBody338_30 NamedBody338_41

def NamedBody338_43 : StackLang.HolProg 64 :=
.seq NamedBody338_29 NamedBody338_42

def NamedBody338_44 : StackLang.HolProg 64 :=
.seq NamedBody338_28 NamedBody338_43

def NamedBody338_45 : StackLang.HolProg 64 :=
.seq NamedBody338_27 NamedBody338_44

def NamedBody338_46 : StackLang.HolProg 64 :=
.seq NamedBody338_26 NamedBody338_45

def NamedBody338_47 : StackLang.HolProg 64 :=
.seq NamedBody338_25 NamedBody338_46

def NamedBody338_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody338_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody338_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody338_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody338_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody338_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody338_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody338_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody338_56 : StackLang.HolProg 64 :=
.seq NamedBody338_54 NamedBody338_55

def NamedBody338_57 : StackLang.HolProg 64 :=
.seq NamedBody338_53 NamedBody338_56

def NamedBody338_58 : StackLang.HolProg 64 :=
.seq NamedBody338_52 NamedBody338_57

def NamedBody338_59 : StackLang.HolProg 64 :=
.seq NamedBody338_51 NamedBody338_58

def NamedBody338_60 : StackLang.HolProg 64 :=
.seq NamedBody338_50 NamedBody338_59

def NamedBody338_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody338_62 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody338_63 : StackLang.HolProg 64 :=
.seq NamedBody338_61 NamedBody338_62

def NamedBody338_64 : StackLang.HolProg 64 :=
.call (some (NamedBody338_60, 1, 338, 2)) (Sum.inl 161) (some (NamedBody338_63, 338, 3))

def NamedBody338_65 : StackLang.HolProg 64 :=
.seq NamedBody338_49 NamedBody338_64

def NamedBody338_66 : StackLang.HolProg 64 :=
.seq NamedBody338_48 NamedBody338_65

def NamedBody338_67 : StackLang.HolProg 64 :=
.seq NamedBody338_47 NamedBody338_66

def NamedBody338_68 : StackLang.HolProg 64 :=
.seq NamedBody338_18 NamedBody338_67

def NamedBody338_69 : StackLang.HolProg 64 :=
.seq NamedBody338_15 NamedBody338_68

def NamedBody338_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody338_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody338_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody338_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody338_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 15#64)

def NamedBody338_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody338_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody338_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody338_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody338_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody338_80 : StackLang.HolProg 64 :=
.seq NamedBody338_78 NamedBody338_79

def NamedBody338_81 : StackLang.HolProg 64 :=
.seq NamedBody338_77 NamedBody338_80

def NamedBody338_82 : StackLang.HolProg 64 :=
.seq NamedBody338_76 NamedBody338_81

def NamedBody338_83 : StackLang.HolProg 64 :=
.seq NamedBody338_75 NamedBody338_82

def NamedBody338_84 : StackLang.HolProg 64 :=
.seq NamedBody338_74 NamedBody338_83

def NamedBody338_85 : StackLang.HolProg 64 :=
.seq NamedBody338_73 NamedBody338_84

def NamedBody338_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody338_87 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody338_85 NamedBody338_86

def NamedBody338_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody338_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody338_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody338_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody338_92 : StackLang.HolProg 64 :=
.seq NamedBody338_90 NamedBody338_91

def NamedBody338_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody338_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody338_95 : StackLang.HolProg 64 :=
.seq NamedBody338_93 NamedBody338_94

def NamedBody338_96 : StackLang.HolProg 64 :=
.seq NamedBody338_92 NamedBody338_95

def NamedBody338_97 : StackLang.HolProg 64 :=
.seq NamedBody338_89 NamedBody338_96

def NamedBody338_98 : StackLang.HolProg 64 :=
.seq NamedBody338_88 NamedBody338_97

def NamedBody338_99 : StackLang.HolProg 64 :=
.seq NamedBody338_87 NamedBody338_98

def NamedBody338_100 : StackLang.HolProg 64 :=
.seq NamedBody338_72 NamedBody338_99

def NamedBody338_101 : StackLang.HolProg 64 :=
.seq NamedBody338_71 NamedBody338_100

def NamedBody338_102 : StackLang.HolProg 64 :=
.seq NamedBody338_70 NamedBody338_101

def NamedBody338_103 : StackLang.HolProg 64 :=
.seq NamedBody338_69 NamedBody338_102

def NamedBody338_104 : StackLang.HolProg 64 :=
.seq NamedBody338_14 NamedBody338_103

def NamedBody338_105 : StackLang.HolProg 64 :=
.seq NamedBody338_13 NamedBody338_104

def NamedBody338_106 : StackLang.HolProg 64 :=
.seq NamedBody338_12 NamedBody338_105

def NamedBody338_107 : StackLang.HolProg 64 :=
.seq NamedBody338_11 NamedBody338_106

def NamedBody338_108 : StackLang.HolProg 64 :=
.seq NamedBody338_10 NamedBody338_107

def NamedBody338_109 : StackLang.HolProg 64 :=
.seq NamedBody338_9 NamedBody338_108

def NamedBody338_110 : StackLang.HolProg 64 :=
.seq NamedBody338_8 NamedBody338_109

def NamedBody338_111 : StackLang.HolProg 64 :=
.seq NamedBody338_7 NamedBody338_110

def NamedBody338_112 : StackLang.HolProg 64 :=
.seq NamedBody338_6 NamedBody338_111

def Named338 : Nat × StackLang.HolProg 64 := (338, NamedBody338_112)
theorem Named338_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed338 = Named338 := by
  kernel_rfl
#print axioms Named338_eq
end InitECandidate.Proofs.BackendStages
