import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed396
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody396_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody396_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody396_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody396_3 : StackLang.HolProg 64 :=
.seq NamedBody396_1 NamedBody396_2

def NamedBody396_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody396_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody396_3 NamedBody396_4

def NamedBody396_6 : StackLang.HolProg 64 :=
.seq NamedBody396_0 NamedBody396_5

def NamedBody396_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody396_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody396_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody396_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody396_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551440#64))

def NamedBody396_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 72#64))

def NamedBody396_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody396_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1#64)

def NamedBody396_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody396_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody396_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1175#64)

def NamedBody396_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody396_19 : StackLang.HolProg 64 :=
.seq NamedBody396_17 NamedBody396_18

def NamedBody396_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody396_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody396_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody396_23 : StackLang.HolProg 64 :=
.seq NamedBody396_21 NamedBody396_22

def NamedBody396_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody396_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody396_23 NamedBody396_24

def NamedBody396_26 : StackLang.HolProg 64 :=
.seq NamedBody396_20 NamedBody396_25

def NamedBody396_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody396_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody396_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 396 3

def NamedBody396_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody396_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody396_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody396_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody396_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody396_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody396_36 : StackLang.HolProg 64 :=
.seq NamedBody396_34 NamedBody396_35

def NamedBody396_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody396_38 : StackLang.HolProg 64 :=
.seq NamedBody396_36 NamedBody396_37

def NamedBody396_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody396_40 : StackLang.HolProg 64 :=
.seq NamedBody396_38 NamedBody396_39

def NamedBody396_41 : StackLang.HolProg 64 :=
.seq NamedBody396_33 NamedBody396_40

def NamedBody396_42 : StackLang.HolProg 64 :=
.seq NamedBody396_32 NamedBody396_41

def NamedBody396_43 : StackLang.HolProg 64 :=
.seq NamedBody396_31 NamedBody396_42

def NamedBody396_44 : StackLang.HolProg 64 :=
.seq NamedBody396_30 NamedBody396_43

def NamedBody396_45 : StackLang.HolProg 64 :=
.seq NamedBody396_29 NamedBody396_44

def NamedBody396_46 : StackLang.HolProg 64 :=
.seq NamedBody396_28 NamedBody396_45

def NamedBody396_47 : StackLang.HolProg 64 :=
.seq NamedBody396_27 NamedBody396_46

def NamedBody396_48 : StackLang.HolProg 64 :=
.seq NamedBody396_26 NamedBody396_47

def NamedBody396_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody396_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody396_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody396_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody396_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody396_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody396_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody396_56 : StackLang.HolProg 64 :=
.seq NamedBody396_54 NamedBody396_55

def NamedBody396_57 : StackLang.HolProg 64 :=
.seq NamedBody396_53 NamedBody396_56

def NamedBody396_58 : StackLang.HolProg 64 :=
.seq NamedBody396_52 NamedBody396_57

def NamedBody396_59 : StackLang.HolProg 64 :=
.seq NamedBody396_51 NamedBody396_58

def NamedBody396_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody396_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody396_62 : StackLang.HolProg 64 :=
.seq NamedBody396_60 NamedBody396_61

def NamedBody396_63 : StackLang.HolProg 64 :=
.call (some (NamedBody396_59, 1, 396, 2)) (Sum.inl 192) (some (NamedBody396_62, 396, 3))

def NamedBody396_64 : StackLang.HolProg 64 :=
.seq NamedBody396_50 NamedBody396_63

def NamedBody396_65 : StackLang.HolProg 64 :=
.seq NamedBody396_49 NamedBody396_64

def NamedBody396_66 : StackLang.HolProg 64 :=
.seq NamedBody396_48 NamedBody396_65

def NamedBody396_67 : StackLang.HolProg 64 :=
.seq NamedBody396_19 NamedBody396_66

def NamedBody396_68 : StackLang.HolProg 64 :=
.seq NamedBody396_16 NamedBody396_67

def NamedBody396_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody396_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody396_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody396_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody396_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody396_74 : StackLang.HolProg 64 :=
.seq NamedBody396_72 NamedBody396_73

def NamedBody396_75 : StackLang.HolProg 64 :=
.seq NamedBody396_71 NamedBody396_74

def NamedBody396_76 : StackLang.HolProg 64 :=
.seq NamedBody396_70 NamedBody396_75

def NamedBody396_77 : StackLang.HolProg 64 :=
.seq NamedBody396_69 NamedBody396_76

def NamedBody396_78 : StackLang.HolProg 64 :=
.seq NamedBody396_68 NamedBody396_77

def NamedBody396_79 : StackLang.HolProg 64 :=
.seq NamedBody396_15 NamedBody396_78

def NamedBody396_80 : StackLang.HolProg 64 :=
.seq NamedBody396_14 NamedBody396_79

def NamedBody396_81 : StackLang.HolProg 64 :=
.seq NamedBody396_13 NamedBody396_80

def NamedBody396_82 : StackLang.HolProg 64 :=
.seq NamedBody396_12 NamedBody396_81

def NamedBody396_83 : StackLang.HolProg 64 :=
.seq NamedBody396_11 NamedBody396_82

def NamedBody396_84 : StackLang.HolProg 64 :=
.seq NamedBody396_10 NamedBody396_83

def NamedBody396_85 : StackLang.HolProg 64 :=
.seq NamedBody396_9 NamedBody396_84

def NamedBody396_86 : StackLang.HolProg 64 :=
.seq NamedBody396_8 NamedBody396_85

def NamedBody396_87 : StackLang.HolProg 64 :=
.seq NamedBody396_7 NamedBody396_86

def NamedBody396_88 : StackLang.HolProg 64 :=
.seq NamedBody396_6 NamedBody396_87

def Named396 : Nat × StackLang.HolProg 64 := (396, NamedBody396_88)
theorem Named396_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed396 = Named396 := by
  kernel_rfl
#print axioms Named396_eq
end InitECandidate.Proofs.BackendStages
