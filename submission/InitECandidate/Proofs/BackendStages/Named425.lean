import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed425
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody425_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody425_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody425_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody425_3 : StackLang.HolProg 64 :=
.seq NamedBody425_1 NamedBody425_2

def NamedBody425_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody425_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody425_3 NamedBody425_4

def NamedBody425_6 : StackLang.HolProg 64 :=
.seq NamedBody425_0 NamedBody425_5

def NamedBody425_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody425_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody425_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody425_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody425_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551432#64))

def NamedBody425_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 56#64))

def NamedBody425_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody425_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1#64)

def NamedBody425_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody425_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody425_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1268#64)

def NamedBody425_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody425_19 : StackLang.HolProg 64 :=
.seq NamedBody425_17 NamedBody425_18

def NamedBody425_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody425_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody425_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody425_23 : StackLang.HolProg 64 :=
.seq NamedBody425_21 NamedBody425_22

def NamedBody425_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody425_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody425_23 NamedBody425_24

def NamedBody425_26 : StackLang.HolProg 64 :=
.seq NamedBody425_20 NamedBody425_25

def NamedBody425_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody425_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody425_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 425 3

def NamedBody425_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody425_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody425_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody425_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody425_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody425_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody425_36 : StackLang.HolProg 64 :=
.seq NamedBody425_34 NamedBody425_35

def NamedBody425_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody425_38 : StackLang.HolProg 64 :=
.seq NamedBody425_36 NamedBody425_37

def NamedBody425_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody425_40 : StackLang.HolProg 64 :=
.seq NamedBody425_38 NamedBody425_39

def NamedBody425_41 : StackLang.HolProg 64 :=
.seq NamedBody425_33 NamedBody425_40

def NamedBody425_42 : StackLang.HolProg 64 :=
.seq NamedBody425_32 NamedBody425_41

def NamedBody425_43 : StackLang.HolProg 64 :=
.seq NamedBody425_31 NamedBody425_42

def NamedBody425_44 : StackLang.HolProg 64 :=
.seq NamedBody425_30 NamedBody425_43

def NamedBody425_45 : StackLang.HolProg 64 :=
.seq NamedBody425_29 NamedBody425_44

def NamedBody425_46 : StackLang.HolProg 64 :=
.seq NamedBody425_28 NamedBody425_45

def NamedBody425_47 : StackLang.HolProg 64 :=
.seq NamedBody425_27 NamedBody425_46

def NamedBody425_48 : StackLang.HolProg 64 :=
.seq NamedBody425_26 NamedBody425_47

def NamedBody425_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody425_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody425_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody425_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody425_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody425_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody425_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody425_56 : StackLang.HolProg 64 :=
.seq NamedBody425_54 NamedBody425_55

def NamedBody425_57 : StackLang.HolProg 64 :=
.seq NamedBody425_53 NamedBody425_56

def NamedBody425_58 : StackLang.HolProg 64 :=
.seq NamedBody425_52 NamedBody425_57

def NamedBody425_59 : StackLang.HolProg 64 :=
.seq NamedBody425_51 NamedBody425_58

def NamedBody425_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody425_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody425_62 : StackLang.HolProg 64 :=
.seq NamedBody425_60 NamedBody425_61

def NamedBody425_63 : StackLang.HolProg 64 :=
.call (some (NamedBody425_59, 1, 425, 2)) (Sum.inl 192) (some (NamedBody425_62, 425, 3))

def NamedBody425_64 : StackLang.HolProg 64 :=
.seq NamedBody425_50 NamedBody425_63

def NamedBody425_65 : StackLang.HolProg 64 :=
.seq NamedBody425_49 NamedBody425_64

def NamedBody425_66 : StackLang.HolProg 64 :=
.seq NamedBody425_48 NamedBody425_65

def NamedBody425_67 : StackLang.HolProg 64 :=
.seq NamedBody425_19 NamedBody425_66

def NamedBody425_68 : StackLang.HolProg 64 :=
.seq NamedBody425_16 NamedBody425_67

def NamedBody425_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody425_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody425_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody425_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody425_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody425_74 : StackLang.HolProg 64 :=
.seq NamedBody425_72 NamedBody425_73

def NamedBody425_75 : StackLang.HolProg 64 :=
.seq NamedBody425_71 NamedBody425_74

def NamedBody425_76 : StackLang.HolProg 64 :=
.seq NamedBody425_70 NamedBody425_75

def NamedBody425_77 : StackLang.HolProg 64 :=
.seq NamedBody425_69 NamedBody425_76

def NamedBody425_78 : StackLang.HolProg 64 :=
.seq NamedBody425_68 NamedBody425_77

def NamedBody425_79 : StackLang.HolProg 64 :=
.seq NamedBody425_15 NamedBody425_78

def NamedBody425_80 : StackLang.HolProg 64 :=
.seq NamedBody425_14 NamedBody425_79

def NamedBody425_81 : StackLang.HolProg 64 :=
.seq NamedBody425_13 NamedBody425_80

def NamedBody425_82 : StackLang.HolProg 64 :=
.seq NamedBody425_12 NamedBody425_81

def NamedBody425_83 : StackLang.HolProg 64 :=
.seq NamedBody425_11 NamedBody425_82

def NamedBody425_84 : StackLang.HolProg 64 :=
.seq NamedBody425_10 NamedBody425_83

def NamedBody425_85 : StackLang.HolProg 64 :=
.seq NamedBody425_9 NamedBody425_84

def NamedBody425_86 : StackLang.HolProg 64 :=
.seq NamedBody425_8 NamedBody425_85

def NamedBody425_87 : StackLang.HolProg 64 :=
.seq NamedBody425_7 NamedBody425_86

def NamedBody425_88 : StackLang.HolProg 64 :=
.seq NamedBody425_6 NamedBody425_87

def Named425 : Nat × StackLang.HolProg 64 := (425, NamedBody425_88)
theorem Named425_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed425 = Named425 := by
  kernel_rfl
#print axioms Named425_eq
end InitECandidate.Proofs.BackendStages
