import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed679
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody679_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody679_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody679_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody679_3 : StackLang.HolProg 64 :=
.seq NamedBody679_1 NamedBody679_2

def NamedBody679_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody679_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody679_3 NamedBody679_4

def NamedBody679_6 : StackLang.HolProg 64 :=
.seq NamedBody679_0 NamedBody679_5

def NamedBody679_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody679_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody679_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody679_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody679_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody679_12 : StackLang.HolProg 64 :=
.seq NamedBody679_10 NamedBody679_11

def NamedBody679_13 : StackLang.HolProg 64 :=
.seq NamedBody679_9 NamedBody679_12

def NamedBody679_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody679_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2793#64)

def NamedBody679_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody679_17 : StackLang.HolProg 64 :=
.seq NamedBody679_15 NamedBody679_16

def NamedBody679_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody679_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody679_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody679_21 : StackLang.HolProg 64 :=
.seq NamedBody679_19 NamedBody679_20

def NamedBody679_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody679_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody679_21 NamedBody679_22

def NamedBody679_24 : StackLang.HolProg 64 :=
.seq NamedBody679_18 NamedBody679_23

def NamedBody679_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody679_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody679_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 679 3

def NamedBody679_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody679_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody679_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody679_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody679_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody679_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody679_34 : StackLang.HolProg 64 :=
.seq NamedBody679_32 NamedBody679_33

def NamedBody679_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody679_36 : StackLang.HolProg 64 :=
.seq NamedBody679_34 NamedBody679_35

def NamedBody679_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody679_38 : StackLang.HolProg 64 :=
.seq NamedBody679_36 NamedBody679_37

def NamedBody679_39 : StackLang.HolProg 64 :=
.seq NamedBody679_31 NamedBody679_38

def NamedBody679_40 : StackLang.HolProg 64 :=
.seq NamedBody679_30 NamedBody679_39

def NamedBody679_41 : StackLang.HolProg 64 :=
.seq NamedBody679_29 NamedBody679_40

def NamedBody679_42 : StackLang.HolProg 64 :=
.seq NamedBody679_28 NamedBody679_41

def NamedBody679_43 : StackLang.HolProg 64 :=
.seq NamedBody679_27 NamedBody679_42

def NamedBody679_44 : StackLang.HolProg 64 :=
.seq NamedBody679_26 NamedBody679_43

def NamedBody679_45 : StackLang.HolProg 64 :=
.seq NamedBody679_25 NamedBody679_44

def NamedBody679_46 : StackLang.HolProg 64 :=
.seq NamedBody679_24 NamedBody679_45

def NamedBody679_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody679_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody679_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody679_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody679_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody679_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody679_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody679_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody679_55 : StackLang.HolProg 64 :=
.seq NamedBody679_53 NamedBody679_54

def NamedBody679_56 : StackLang.HolProg 64 :=
.seq NamedBody679_52 NamedBody679_55

def NamedBody679_57 : StackLang.HolProg 64 :=
.seq NamedBody679_51 NamedBody679_56

def NamedBody679_58 : StackLang.HolProg 64 :=
.seq NamedBody679_50 NamedBody679_57

def NamedBody679_59 : StackLang.HolProg 64 :=
.seq NamedBody679_49 NamedBody679_58

def NamedBody679_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody679_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody679_62 : StackLang.HolProg 64 :=
.seq NamedBody679_60 NamedBody679_61

def NamedBody679_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody679_64 : StackLang.HolProg 64 :=
.seq NamedBody679_62 NamedBody679_63

def NamedBody679_65 : StackLang.HolProg 64 :=
.call (some (NamedBody679_59, 1, 679, 2)) (Sum.inl 78) (some (NamedBody679_64, 679, 3))

def NamedBody679_66 : StackLang.HolProg 64 :=
.seq NamedBody679_48 NamedBody679_65

def NamedBody679_67 : StackLang.HolProg 64 :=
.seq NamedBody679_47 NamedBody679_66

def NamedBody679_68 : StackLang.HolProg 64 :=
.seq NamedBody679_46 NamedBody679_67

def NamedBody679_69 : StackLang.HolProg 64 :=
.seq NamedBody679_17 NamedBody679_68

def NamedBody679_70 : StackLang.HolProg 64 :=
.seq NamedBody679_14 NamedBody679_69

def NamedBody679_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody679_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody679_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 15230403791020821917#64)

def NamedBody679_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody679_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody679_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 754611498739239741#64)

def NamedBody679_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody679_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody679_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 7381016538464732716#64)

def NamedBody679_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody679_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def NamedBody679_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1011752739694698287#64)

def NamedBody679_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody679_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def NamedBody679_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody679_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody679_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody679_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody679_89 : StackLang.HolProg 64 :=
.seq NamedBody679_87 NamedBody679_88

def NamedBody679_90 : StackLang.HolProg 64 :=
.seq NamedBody679_86 NamedBody679_89

def NamedBody679_91 : StackLang.HolProg 64 :=
.seq NamedBody679_85 NamedBody679_90

def NamedBody679_92 : StackLang.HolProg 64 :=
.seq NamedBody679_84 NamedBody679_91

def NamedBody679_93 : StackLang.HolProg 64 :=
.seq NamedBody679_83 NamedBody679_92

def NamedBody679_94 : StackLang.HolProg 64 :=
.seq NamedBody679_82 NamedBody679_93

def NamedBody679_95 : StackLang.HolProg 64 :=
.seq NamedBody679_81 NamedBody679_94

def NamedBody679_96 : StackLang.HolProg 64 :=
.seq NamedBody679_80 NamedBody679_95

def NamedBody679_97 : StackLang.HolProg 64 :=
.seq NamedBody679_79 NamedBody679_96

def NamedBody679_98 : StackLang.HolProg 64 :=
.seq NamedBody679_78 NamedBody679_97

def NamedBody679_99 : StackLang.HolProg 64 :=
.seq NamedBody679_77 NamedBody679_98

def NamedBody679_100 : StackLang.HolProg 64 :=
.seq NamedBody679_76 NamedBody679_99

def NamedBody679_101 : StackLang.HolProg 64 :=
.seq NamedBody679_75 NamedBody679_100

def NamedBody679_102 : StackLang.HolProg 64 :=
.seq NamedBody679_74 NamedBody679_101

def NamedBody679_103 : StackLang.HolProg 64 :=
.seq NamedBody679_73 NamedBody679_102

def NamedBody679_104 : StackLang.HolProg 64 :=
.seq NamedBody679_72 NamedBody679_103

def NamedBody679_105 : StackLang.HolProg 64 :=
.seq NamedBody679_71 NamedBody679_104

def NamedBody679_106 : StackLang.HolProg 64 :=
.seq NamedBody679_70 NamedBody679_105

def NamedBody679_107 : StackLang.HolProg 64 :=
.seq NamedBody679_13 NamedBody679_106

def NamedBody679_108 : StackLang.HolProg 64 :=
.seq NamedBody679_8 NamedBody679_107

def NamedBody679_109 : StackLang.HolProg 64 :=
.seq NamedBody679_7 NamedBody679_108

def NamedBody679_110 : StackLang.HolProg 64 :=
.seq NamedBody679_6 NamedBody679_109

def Named679 : Nat × StackLang.HolProg 64 := (679, NamedBody679_110)
theorem Named679_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed679 = Named679 := by
  kernel_rfl
#print axioms Named679_eq
end InitECandidate.Proofs.BackendStages
