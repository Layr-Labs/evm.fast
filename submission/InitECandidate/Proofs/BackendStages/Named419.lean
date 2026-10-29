import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed419
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody419_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody419_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody419_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody419_3 : StackLang.HolProg 64 :=
.seq NamedBody419_1 NamedBody419_2

def NamedBody419_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody419_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody419_3 NamedBody419_4

def NamedBody419_6 : StackLang.HolProg 64 :=
.seq NamedBody419_0 NamedBody419_5

def NamedBody419_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody419_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody419_9 : StackLang.HolProg 64 :=
.seq NamedBody419_7 NamedBody419_8

def NamedBody419_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody419_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody419_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody419_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551432#64))

def NamedBody419_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody419_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody419_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody419_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1247#64)

def NamedBody419_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody419_19 : StackLang.HolProg 64 :=
.seq NamedBody419_17 NamedBody419_18

def NamedBody419_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody419_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody419_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody419_23 : StackLang.HolProg 64 :=
.seq NamedBody419_21 NamedBody419_22

def NamedBody419_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody419_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody419_23 NamedBody419_24

def NamedBody419_26 : StackLang.HolProg 64 :=
.seq NamedBody419_20 NamedBody419_25

def NamedBody419_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody419_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody419_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 419 3

def NamedBody419_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody419_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody419_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody419_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody419_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody419_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody419_36 : StackLang.HolProg 64 :=
.seq NamedBody419_34 NamedBody419_35

def NamedBody419_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody419_38 : StackLang.HolProg 64 :=
.seq NamedBody419_36 NamedBody419_37

def NamedBody419_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody419_40 : StackLang.HolProg 64 :=
.seq NamedBody419_38 NamedBody419_39

def NamedBody419_41 : StackLang.HolProg 64 :=
.seq NamedBody419_33 NamedBody419_40

def NamedBody419_42 : StackLang.HolProg 64 :=
.seq NamedBody419_32 NamedBody419_41

def NamedBody419_43 : StackLang.HolProg 64 :=
.seq NamedBody419_31 NamedBody419_42

def NamedBody419_44 : StackLang.HolProg 64 :=
.seq NamedBody419_30 NamedBody419_43

def NamedBody419_45 : StackLang.HolProg 64 :=
.seq NamedBody419_29 NamedBody419_44

def NamedBody419_46 : StackLang.HolProg 64 :=
.seq NamedBody419_28 NamedBody419_45

def NamedBody419_47 : StackLang.HolProg 64 :=
.seq NamedBody419_27 NamedBody419_46

def NamedBody419_48 : StackLang.HolProg 64 :=
.seq NamedBody419_26 NamedBody419_47

def NamedBody419_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody419_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody419_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody419_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody419_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody419_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody419_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody419_56 : StackLang.HolProg 64 :=
.seq NamedBody419_54 NamedBody419_55

def NamedBody419_57 : StackLang.HolProg 64 :=
.seq NamedBody419_53 NamedBody419_56

def NamedBody419_58 : StackLang.HolProg 64 :=
.seq NamedBody419_52 NamedBody419_57

def NamedBody419_59 : StackLang.HolProg 64 :=
.seq NamedBody419_51 NamedBody419_58

def NamedBody419_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody419_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody419_62 : StackLang.HolProg 64 :=
.seq NamedBody419_60 NamedBody419_61

def NamedBody419_63 : StackLang.HolProg 64 :=
.call (some (NamedBody419_59, 1, 419, 2)) (Sum.inl 388) (some (NamedBody419_62, 419, 3))

def NamedBody419_64 : StackLang.HolProg 64 :=
.seq NamedBody419_50 NamedBody419_63

def NamedBody419_65 : StackLang.HolProg 64 :=
.seq NamedBody419_49 NamedBody419_64

def NamedBody419_66 : StackLang.HolProg 64 :=
.seq NamedBody419_48 NamedBody419_65

def NamedBody419_67 : StackLang.HolProg 64 :=
.seq NamedBody419_19 NamedBody419_66

def NamedBody419_68 : StackLang.HolProg 64 :=
.seq NamedBody419_16 NamedBody419_67

def NamedBody419_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody419_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody419_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody419_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody419_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody419_74 : StackLang.HolProg 64 :=
.seq NamedBody419_72 NamedBody419_73

def NamedBody419_75 : StackLang.HolProg 64 :=
.seq NamedBody419_71 NamedBody419_74

def NamedBody419_76 : StackLang.HolProg 64 :=
.seq NamedBody419_70 NamedBody419_75

def NamedBody419_77 : StackLang.HolProg 64 :=
.seq NamedBody419_69 NamedBody419_76

def NamedBody419_78 : StackLang.HolProg 64 :=
.seq NamedBody419_68 NamedBody419_77

def NamedBody419_79 : StackLang.HolProg 64 :=
.seq NamedBody419_15 NamedBody419_78

def NamedBody419_80 : StackLang.HolProg 64 :=
.seq NamedBody419_14 NamedBody419_79

def NamedBody419_81 : StackLang.HolProg 64 :=
.seq NamedBody419_13 NamedBody419_80

def NamedBody419_82 : StackLang.HolProg 64 :=
.seq NamedBody419_12 NamedBody419_81

def NamedBody419_83 : StackLang.HolProg 64 :=
.seq NamedBody419_11 NamedBody419_82

def NamedBody419_84 : StackLang.HolProg 64 :=
.seq NamedBody419_10 NamedBody419_83

def NamedBody419_85 : StackLang.HolProg 64 :=
.seq NamedBody419_9 NamedBody419_84

def NamedBody419_86 : StackLang.HolProg 64 :=
.seq NamedBody419_6 NamedBody419_85

def Named419 : Nat × StackLang.HolProg 64 := (419, NamedBody419_86)
theorem Named419_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed419 = Named419 := by
  kernel_rfl
#print axioms Named419_eq
end InitECandidate.Proofs.BackendStages
