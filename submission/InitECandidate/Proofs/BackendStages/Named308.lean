import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed308
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody308_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody308_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody308_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody308_3 : StackLang.HolProg 64 :=
.seq NamedBody308_1 NamedBody308_2

def NamedBody308_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody308_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody308_3 NamedBody308_4

def NamedBody308_6 : StackLang.HolProg 64 :=
.seq NamedBody308_0 NamedBody308_5

def NamedBody308_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody308_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 16#64)

def NamedBody308_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody308_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody308_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody308_12 : StackLang.HolProg 64 :=
.seq NamedBody308_10 NamedBody308_11

def NamedBody308_13 : StackLang.HolProg 64 :=
.seq NamedBody308_9 NamedBody308_12

def NamedBody308_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody308_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 849#64)

def NamedBody308_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody308_17 : StackLang.HolProg 64 :=
.seq NamedBody308_15 NamedBody308_16

def NamedBody308_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody308_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody308_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody308_21 : StackLang.HolProg 64 :=
.seq NamedBody308_19 NamedBody308_20

def NamedBody308_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody308_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody308_21 NamedBody308_22

def NamedBody308_24 : StackLang.HolProg 64 :=
.seq NamedBody308_18 NamedBody308_23

def NamedBody308_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody308_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody308_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 308 3

def NamedBody308_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody308_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody308_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody308_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody308_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody308_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody308_34 : StackLang.HolProg 64 :=
.seq NamedBody308_32 NamedBody308_33

def NamedBody308_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody308_36 : StackLang.HolProg 64 :=
.seq NamedBody308_34 NamedBody308_35

def NamedBody308_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody308_38 : StackLang.HolProg 64 :=
.seq NamedBody308_36 NamedBody308_37

def NamedBody308_39 : StackLang.HolProg 64 :=
.seq NamedBody308_31 NamedBody308_38

def NamedBody308_40 : StackLang.HolProg 64 :=
.seq NamedBody308_30 NamedBody308_39

def NamedBody308_41 : StackLang.HolProg 64 :=
.seq NamedBody308_29 NamedBody308_40

def NamedBody308_42 : StackLang.HolProg 64 :=
.seq NamedBody308_28 NamedBody308_41

def NamedBody308_43 : StackLang.HolProg 64 :=
.seq NamedBody308_27 NamedBody308_42

def NamedBody308_44 : StackLang.HolProg 64 :=
.seq NamedBody308_26 NamedBody308_43

def NamedBody308_45 : StackLang.HolProg 64 :=
.seq NamedBody308_25 NamedBody308_44

def NamedBody308_46 : StackLang.HolProg 64 :=
.seq NamedBody308_24 NamedBody308_45

def NamedBody308_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody308_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody308_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody308_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody308_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody308_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody308_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody308_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody308_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody308_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody308_57 : StackLang.HolProg 64 :=
.seq NamedBody308_55 NamedBody308_56

def NamedBody308_58 : StackLang.HolProg 64 :=
.seq NamedBody308_54 NamedBody308_57

def NamedBody308_59 : StackLang.HolProg 64 :=
.seq NamedBody308_53 NamedBody308_58

def NamedBody308_60 : StackLang.HolProg 64 :=
.seq NamedBody308_52 NamedBody308_59

def NamedBody308_61 : StackLang.HolProg 64 :=
.seq NamedBody308_51 NamedBody308_60

def NamedBody308_62 : StackLang.HolProg 64 :=
.seq NamedBody308_50 NamedBody308_61

def NamedBody308_63 : StackLang.HolProg 64 :=
.seq NamedBody308_49 NamedBody308_62

def NamedBody308_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody308_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody308_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody308_67 : StackLang.HolProg 64 :=
.seq NamedBody308_65 NamedBody308_66

def NamedBody308_68 : StackLang.HolProg 64 :=
.seq NamedBody308_64 NamedBody308_67

def NamedBody308_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody308_70 : StackLang.HolProg 64 :=
.seq NamedBody308_68 NamedBody308_69

def NamedBody308_71 : StackLang.HolProg 64 :=
.call (some (NamedBody308_63, 1, 308, 2)) (Sum.inl 68) (some (NamedBody308_70, 308, 3))

def NamedBody308_72 : StackLang.HolProg 64 :=
.seq NamedBody308_48 NamedBody308_71

def NamedBody308_73 : StackLang.HolProg 64 :=
.seq NamedBody308_47 NamedBody308_72

def NamedBody308_74 : StackLang.HolProg 64 :=
.seq NamedBody308_46 NamedBody308_73

def NamedBody308_75 : StackLang.HolProg 64 :=
.seq NamedBody308_17 NamedBody308_74

def NamedBody308_76 : StackLang.HolProg 64 :=
.seq NamedBody308_14 NamedBody308_75

def NamedBody308_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody308_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody308_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody308_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody308_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody308_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody308_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody308_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody308_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody308_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def NamedBody308_87 : StackLang.HolProg 64 :=
.seq NamedBody308_85 NamedBody308_86

def NamedBody308_88 : StackLang.HolProg 64 :=
.seq NamedBody308_84 NamedBody308_87

def NamedBody308_89 : StackLang.HolProg 64 :=
.seq NamedBody308_83 NamedBody308_88

def NamedBody308_90 : StackLang.HolProg 64 :=
.seq NamedBody308_82 NamedBody308_89

def NamedBody308_91 : StackLang.HolProg 64 :=
.seq NamedBody308_81 NamedBody308_90

def NamedBody308_92 : StackLang.HolProg 64 :=
.seq NamedBody308_80 NamedBody308_91

def NamedBody308_93 : StackLang.HolProg 64 :=
.seq NamedBody308_79 NamedBody308_92

def NamedBody308_94 : StackLang.HolProg 64 :=
.seq NamedBody308_78 NamedBody308_93

def NamedBody308_95 : StackLang.HolProg 64 :=
.seq NamedBody308_77 NamedBody308_94

def NamedBody308_96 : StackLang.HolProg 64 :=
.seq NamedBody308_76 NamedBody308_95

def NamedBody308_97 : StackLang.HolProg 64 :=
.seq NamedBody308_13 NamedBody308_96

def NamedBody308_98 : StackLang.HolProg 64 :=
.seq NamedBody308_8 NamedBody308_97

def NamedBody308_99 : StackLang.HolProg 64 :=
.seq NamedBody308_7 NamedBody308_98

def NamedBody308_100 : StackLang.HolProg 64 :=
.seq NamedBody308_6 NamedBody308_99

def Named308 : Nat × StackLang.HolProg 64 := (308, NamedBody308_100)
theorem Named308_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed308 = Named308 := by
  kernel_rfl
#print axioms Named308_eq
end InitECandidate.Proofs.BackendStages
