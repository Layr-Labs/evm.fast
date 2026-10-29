import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed494
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody494_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody494_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody494_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody494_3 : StackLang.HolProg 64 :=
.seq NamedBody494_1 NamedBody494_2

def NamedBody494_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody494_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody494_3 NamedBody494_4

def NamedBody494_6 : StackLang.HolProg 64 :=
.seq NamedBody494_0 NamedBody494_5

def NamedBody494_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody494_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody494_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody494_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody494_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody494_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 168#64))

def NamedBody494_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody494_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1#64)

def NamedBody494_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody494_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody494_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1541#64)

def NamedBody494_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody494_19 : StackLang.HolProg 64 :=
.seq NamedBody494_17 NamedBody494_18

def NamedBody494_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody494_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody494_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody494_23 : StackLang.HolProg 64 :=
.seq NamedBody494_21 NamedBody494_22

def NamedBody494_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody494_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody494_23 NamedBody494_24

def NamedBody494_26 : StackLang.HolProg 64 :=
.seq NamedBody494_20 NamedBody494_25

def NamedBody494_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody494_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody494_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 494 3

def NamedBody494_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody494_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody494_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody494_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody494_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody494_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody494_36 : StackLang.HolProg 64 :=
.seq NamedBody494_34 NamedBody494_35

def NamedBody494_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody494_38 : StackLang.HolProg 64 :=
.seq NamedBody494_36 NamedBody494_37

def NamedBody494_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody494_40 : StackLang.HolProg 64 :=
.seq NamedBody494_38 NamedBody494_39

def NamedBody494_41 : StackLang.HolProg 64 :=
.seq NamedBody494_33 NamedBody494_40

def NamedBody494_42 : StackLang.HolProg 64 :=
.seq NamedBody494_32 NamedBody494_41

def NamedBody494_43 : StackLang.HolProg 64 :=
.seq NamedBody494_31 NamedBody494_42

def NamedBody494_44 : StackLang.HolProg 64 :=
.seq NamedBody494_30 NamedBody494_43

def NamedBody494_45 : StackLang.HolProg 64 :=
.seq NamedBody494_29 NamedBody494_44

def NamedBody494_46 : StackLang.HolProg 64 :=
.seq NamedBody494_28 NamedBody494_45

def NamedBody494_47 : StackLang.HolProg 64 :=
.seq NamedBody494_27 NamedBody494_46

def NamedBody494_48 : StackLang.HolProg 64 :=
.seq NamedBody494_26 NamedBody494_47

def NamedBody494_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody494_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody494_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody494_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody494_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody494_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody494_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody494_56 : StackLang.HolProg 64 :=
.seq NamedBody494_54 NamedBody494_55

def NamedBody494_57 : StackLang.HolProg 64 :=
.seq NamedBody494_53 NamedBody494_56

def NamedBody494_58 : StackLang.HolProg 64 :=
.seq NamedBody494_52 NamedBody494_57

def NamedBody494_59 : StackLang.HolProg 64 :=
.seq NamedBody494_51 NamedBody494_58

def NamedBody494_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody494_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody494_62 : StackLang.HolProg 64 :=
.seq NamedBody494_60 NamedBody494_61

def NamedBody494_63 : StackLang.HolProg 64 :=
.call (some (NamedBody494_59, 1, 494, 2)) (Sum.inl 192) (some (NamedBody494_62, 494, 3))

def NamedBody494_64 : StackLang.HolProg 64 :=
.seq NamedBody494_50 NamedBody494_63

def NamedBody494_65 : StackLang.HolProg 64 :=
.seq NamedBody494_49 NamedBody494_64

def NamedBody494_66 : StackLang.HolProg 64 :=
.seq NamedBody494_48 NamedBody494_65

def NamedBody494_67 : StackLang.HolProg 64 :=
.seq NamedBody494_19 NamedBody494_66

def NamedBody494_68 : StackLang.HolProg 64 :=
.seq NamedBody494_16 NamedBody494_67

def NamedBody494_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody494_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody494_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody494_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody494_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody494_74 : StackLang.HolProg 64 :=
.seq NamedBody494_72 NamedBody494_73

def NamedBody494_75 : StackLang.HolProg 64 :=
.seq NamedBody494_71 NamedBody494_74

def NamedBody494_76 : StackLang.HolProg 64 :=
.seq NamedBody494_70 NamedBody494_75

def NamedBody494_77 : StackLang.HolProg 64 :=
.seq NamedBody494_69 NamedBody494_76

def NamedBody494_78 : StackLang.HolProg 64 :=
.seq NamedBody494_68 NamedBody494_77

def NamedBody494_79 : StackLang.HolProg 64 :=
.seq NamedBody494_15 NamedBody494_78

def NamedBody494_80 : StackLang.HolProg 64 :=
.seq NamedBody494_14 NamedBody494_79

def NamedBody494_81 : StackLang.HolProg 64 :=
.seq NamedBody494_13 NamedBody494_80

def NamedBody494_82 : StackLang.HolProg 64 :=
.seq NamedBody494_12 NamedBody494_81

def NamedBody494_83 : StackLang.HolProg 64 :=
.seq NamedBody494_11 NamedBody494_82

def NamedBody494_84 : StackLang.HolProg 64 :=
.seq NamedBody494_10 NamedBody494_83

def NamedBody494_85 : StackLang.HolProg 64 :=
.seq NamedBody494_9 NamedBody494_84

def NamedBody494_86 : StackLang.HolProg 64 :=
.seq NamedBody494_8 NamedBody494_85

def NamedBody494_87 : StackLang.HolProg 64 :=
.seq NamedBody494_7 NamedBody494_86

def NamedBody494_88 : StackLang.HolProg 64 :=
.seq NamedBody494_6 NamedBody494_87

def Named494 : Nat × StackLang.HolProg 64 := (494, NamedBody494_88)
theorem Named494_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed494 = Named494 := by
  kernel_rfl
#print axioms Named494_eq
end InitECandidate.Proofs.BackendStages
