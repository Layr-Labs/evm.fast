import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed877
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody877_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody877_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody877_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody877_3 : StackLang.HolProg 64 :=
.seq NamedBody877_1 NamedBody877_2

def NamedBody877_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody877_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody877_3 NamedBody877_4

def NamedBody877_6 : StackLang.HolProg 64 :=
.seq NamedBody877_0 NamedBody877_5

def NamedBody877_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody877_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1#64)

def NamedBody877_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody877_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody877_11 : StackLang.HolProg 64 :=
.seq NamedBody877_9 NamedBody877_10

def NamedBody877_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody877_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4603#64)

def NamedBody877_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody877_15 : StackLang.HolProg 64 :=
.seq NamedBody877_13 NamedBody877_14

def NamedBody877_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody877_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody877_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody877_19 : StackLang.HolProg 64 :=
.seq NamedBody877_17 NamedBody877_18

def NamedBody877_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody877_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody877_19 NamedBody877_20

def NamedBody877_22 : StackLang.HolProg 64 :=
.seq NamedBody877_16 NamedBody877_21

def NamedBody877_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody877_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody877_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 877 3

def NamedBody877_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody877_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody877_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody877_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody877_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody877_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody877_32 : StackLang.HolProg 64 :=
.seq NamedBody877_30 NamedBody877_31

def NamedBody877_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody877_34 : StackLang.HolProg 64 :=
.seq NamedBody877_32 NamedBody877_33

def NamedBody877_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody877_36 : StackLang.HolProg 64 :=
.seq NamedBody877_34 NamedBody877_35

def NamedBody877_37 : StackLang.HolProg 64 :=
.seq NamedBody877_29 NamedBody877_36

def NamedBody877_38 : StackLang.HolProg 64 :=
.seq NamedBody877_28 NamedBody877_37

def NamedBody877_39 : StackLang.HolProg 64 :=
.seq NamedBody877_27 NamedBody877_38

def NamedBody877_40 : StackLang.HolProg 64 :=
.seq NamedBody877_26 NamedBody877_39

def NamedBody877_41 : StackLang.HolProg 64 :=
.seq NamedBody877_25 NamedBody877_40

def NamedBody877_42 : StackLang.HolProg 64 :=
.seq NamedBody877_24 NamedBody877_41

def NamedBody877_43 : StackLang.HolProg 64 :=
.seq NamedBody877_23 NamedBody877_42

def NamedBody877_44 : StackLang.HolProg 64 :=
.seq NamedBody877_22 NamedBody877_43

def NamedBody877_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody877_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody877_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody877_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody877_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody877_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody877_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody877_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody877_53 : StackLang.HolProg 64 :=
.seq NamedBody877_51 NamedBody877_52

def NamedBody877_54 : StackLang.HolProg 64 :=
.seq NamedBody877_50 NamedBody877_53

def NamedBody877_55 : StackLang.HolProg 64 :=
.seq NamedBody877_49 NamedBody877_54

def NamedBody877_56 : StackLang.HolProg 64 :=
.seq NamedBody877_48 NamedBody877_55

def NamedBody877_57 : StackLang.HolProg 64 :=
.seq NamedBody877_47 NamedBody877_56

def NamedBody877_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody877_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody877_60 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody877_61 : StackLang.HolProg 64 :=
.seq NamedBody877_59 NamedBody877_60

def NamedBody877_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody877_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody877_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody877_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody877_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody877_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody877_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551080#64)))

def NamedBody877_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody877_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody877_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody877_72 : StackLang.HolProg 64 :=
.seq NamedBody877_70 NamedBody877_71

def NamedBody877_73 : StackLang.HolProg 64 :=
.seq NamedBody877_69 NamedBody877_72

def NamedBody877_74 : StackLang.HolProg 64 :=
.seq NamedBody877_68 NamedBody877_73

def NamedBody877_75 : StackLang.HolProg 64 :=
.seq NamedBody877_67 NamedBody877_74

def NamedBody877_76 : StackLang.HolProg 64 :=
.seq NamedBody877_66 NamedBody877_75

def NamedBody877_77 : StackLang.HolProg 64 :=
.seq NamedBody877_65 NamedBody877_76

def NamedBody877_78 : StackLang.HolProg 64 :=
.seq NamedBody877_64 NamedBody877_77

def NamedBody877_79 : StackLang.HolProg 64 :=
.seq NamedBody877_63 NamedBody877_78

def NamedBody877_80 : StackLang.HolProg 64 :=
.seq NamedBody877_62 NamedBody877_79

def NamedBody877_81 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64) NamedBody877_61 NamedBody877_80

def NamedBody877_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody877_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody877_84 : StackLang.HolProg 64 :=
.seq NamedBody877_82 NamedBody877_83

def NamedBody877_85 : StackLang.HolProg 64 :=
.seq NamedBody877_81 NamedBody877_84

def NamedBody877_86 : StackLang.HolProg 64 :=
.seq NamedBody877_58 NamedBody877_85

def NamedBody877_87 : StackLang.HolProg 64 :=
.call (some (NamedBody877_57, 1, 877, 2)) (Sum.inl 876) (some (NamedBody877_86, 877, 3))

def NamedBody877_88 : StackLang.HolProg 64 :=
.seq NamedBody877_46 NamedBody877_87

def NamedBody877_89 : StackLang.HolProg 64 :=
.seq NamedBody877_45 NamedBody877_88

def NamedBody877_90 : StackLang.HolProg 64 :=
.seq NamedBody877_44 NamedBody877_89

def NamedBody877_91 : StackLang.HolProg 64 :=
.seq NamedBody877_15 NamedBody877_90

def NamedBody877_92 : StackLang.HolProg 64 :=
.seq NamedBody877_12 NamedBody877_91

def NamedBody877_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody877_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody877_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody877_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody877_97 : StackLang.HolProg 64 :=
.seq NamedBody877_95 NamedBody877_96

def NamedBody877_98 : StackLang.HolProg 64 :=
.seq NamedBody877_94 NamedBody877_97

def NamedBody877_99 : StackLang.HolProg 64 :=
.seq NamedBody877_93 NamedBody877_98

def NamedBody877_100 : StackLang.HolProg 64 :=
.seq NamedBody877_92 NamedBody877_99

def NamedBody877_101 : StackLang.HolProg 64 :=
.seq NamedBody877_11 NamedBody877_100

def NamedBody877_102 : StackLang.HolProg 64 :=
.seq NamedBody877_8 NamedBody877_101

def NamedBody877_103 : StackLang.HolProg 64 :=
.seq NamedBody877_7 NamedBody877_102

def NamedBody877_104 : StackLang.HolProg 64 :=
.seq NamedBody877_6 NamedBody877_103

def Named877 : Nat × StackLang.HolProg 64 := (877, NamedBody877_104)
theorem Named877_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed877 = Named877 := by
  kernel_rfl
#print axioms Named877_eq
end InitECandidate.Proofs.BackendStages
