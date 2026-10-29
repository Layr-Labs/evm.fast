import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed493
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody493_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody493_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody493_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody493_3 : StackLang.HolProg 64 :=
.seq NamedBody493_1 NamedBody493_2

def NamedBody493_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody493_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody493_3 NamedBody493_4

def NamedBody493_6 : StackLang.HolProg 64 :=
.seq NamedBody493_0 NamedBody493_5

def NamedBody493_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody493_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody493_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody493_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody493_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody493_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 168#64))

def NamedBody493_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody493_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody493_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1540#64)

def NamedBody493_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody493_17 : StackLang.HolProg 64 :=
.seq NamedBody493_15 NamedBody493_16

def NamedBody493_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody493_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody493_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody493_21 : StackLang.HolProg 64 :=
.seq NamedBody493_19 NamedBody493_20

def NamedBody493_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody493_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody493_21 NamedBody493_22

def NamedBody493_24 : StackLang.HolProg 64 :=
.seq NamedBody493_18 NamedBody493_23

def NamedBody493_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody493_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody493_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 493 3

def NamedBody493_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody493_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody493_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody493_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody493_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody493_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody493_34 : StackLang.HolProg 64 :=
.seq NamedBody493_32 NamedBody493_33

def NamedBody493_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody493_36 : StackLang.HolProg 64 :=
.seq NamedBody493_34 NamedBody493_35

def NamedBody493_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody493_38 : StackLang.HolProg 64 :=
.seq NamedBody493_36 NamedBody493_37

def NamedBody493_39 : StackLang.HolProg 64 :=
.seq NamedBody493_31 NamedBody493_38

def NamedBody493_40 : StackLang.HolProg 64 :=
.seq NamedBody493_30 NamedBody493_39

def NamedBody493_41 : StackLang.HolProg 64 :=
.seq NamedBody493_29 NamedBody493_40

def NamedBody493_42 : StackLang.HolProg 64 :=
.seq NamedBody493_28 NamedBody493_41

def NamedBody493_43 : StackLang.HolProg 64 :=
.seq NamedBody493_27 NamedBody493_42

def NamedBody493_44 : StackLang.HolProg 64 :=
.seq NamedBody493_26 NamedBody493_43

def NamedBody493_45 : StackLang.HolProg 64 :=
.seq NamedBody493_25 NamedBody493_44

def NamedBody493_46 : StackLang.HolProg 64 :=
.seq NamedBody493_24 NamedBody493_45

def NamedBody493_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody493_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody493_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody493_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody493_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody493_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody493_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody493_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody493_55 : StackLang.HolProg 64 :=
.seq NamedBody493_53 NamedBody493_54

def NamedBody493_56 : StackLang.HolProg 64 :=
.seq NamedBody493_52 NamedBody493_55

def NamedBody493_57 : StackLang.HolProg 64 :=
.seq NamedBody493_51 NamedBody493_56

def NamedBody493_58 : StackLang.HolProg 64 :=
.seq NamedBody493_50 NamedBody493_57

def NamedBody493_59 : StackLang.HolProg 64 :=
.seq NamedBody493_49 NamedBody493_58

def NamedBody493_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody493_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody493_62 : StackLang.HolProg 64 :=
.seq NamedBody493_60 NamedBody493_61

def NamedBody493_63 : StackLang.HolProg 64 :=
.call (some (NamedBody493_59, 1, 493, 2)) (Sum.inl 187) (some (NamedBody493_62, 493, 3))

def NamedBody493_64 : StackLang.HolProg 64 :=
.seq NamedBody493_48 NamedBody493_63

def NamedBody493_65 : StackLang.HolProg 64 :=
.seq NamedBody493_47 NamedBody493_64

def NamedBody493_66 : StackLang.HolProg 64 :=
.seq NamedBody493_46 NamedBody493_65

def NamedBody493_67 : StackLang.HolProg 64 :=
.seq NamedBody493_17 NamedBody493_66

def NamedBody493_68 : StackLang.HolProg 64 :=
.seq NamedBody493_14 NamedBody493_67

def NamedBody493_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody493_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody493_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody493_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody493_73 : StackLang.HolProg 64 :=
.seq NamedBody493_71 NamedBody493_72

def NamedBody493_74 : StackLang.HolProg 64 :=
.seq NamedBody493_70 NamedBody493_73

def NamedBody493_75 : StackLang.HolProg 64 :=
.seq NamedBody493_69 NamedBody493_74

def NamedBody493_76 : StackLang.HolProg 64 :=
.seq NamedBody493_68 NamedBody493_75

def NamedBody493_77 : StackLang.HolProg 64 :=
.seq NamedBody493_13 NamedBody493_76

def NamedBody493_78 : StackLang.HolProg 64 :=
.seq NamedBody493_12 NamedBody493_77

def NamedBody493_79 : StackLang.HolProg 64 :=
.seq NamedBody493_11 NamedBody493_78

def NamedBody493_80 : StackLang.HolProg 64 :=
.seq NamedBody493_10 NamedBody493_79

def NamedBody493_81 : StackLang.HolProg 64 :=
.seq NamedBody493_9 NamedBody493_80

def NamedBody493_82 : StackLang.HolProg 64 :=
.seq NamedBody493_8 NamedBody493_81

def NamedBody493_83 : StackLang.HolProg 64 :=
.seq NamedBody493_7 NamedBody493_82

def NamedBody493_84 : StackLang.HolProg 64 :=
.seq NamedBody493_6 NamedBody493_83

def Named493 : Nat × StackLang.HolProg 64 := (493, NamedBody493_84)
theorem Named493_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed493 = Named493 := by
  kernel_rfl
#print axioms Named493_eq
end InitECandidate.Proofs.BackendStages
