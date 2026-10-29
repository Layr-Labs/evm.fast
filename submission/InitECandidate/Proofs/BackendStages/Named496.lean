import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed496
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody496_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody496_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody496_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody496_3 : StackLang.HolProg 64 :=
.seq NamedBody496_1 NamedBody496_2

def NamedBody496_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody496_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody496_3 NamedBody496_4

def NamedBody496_6 : StackLang.HolProg 64 :=
.seq NamedBody496_0 NamedBody496_5

def NamedBody496_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody496_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 3000#64)

def NamedBody496_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody496_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody496_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody496_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1543#64)

def NamedBody496_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody496_14 : StackLang.HolProg 64 :=
.seq NamedBody496_12 NamedBody496_13

def NamedBody496_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody496_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody496_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody496_18 : StackLang.HolProg 64 :=
.seq NamedBody496_16 NamedBody496_17

def NamedBody496_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody496_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody496_18 NamedBody496_19

def NamedBody496_21 : StackLang.HolProg 64 :=
.seq NamedBody496_15 NamedBody496_20

def NamedBody496_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody496_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody496_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 496 3

def NamedBody496_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody496_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody496_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody496_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody496_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody496_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody496_31 : StackLang.HolProg 64 :=
.seq NamedBody496_29 NamedBody496_30

def NamedBody496_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody496_33 : StackLang.HolProg 64 :=
.seq NamedBody496_31 NamedBody496_32

def NamedBody496_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody496_35 : StackLang.HolProg 64 :=
.seq NamedBody496_33 NamedBody496_34

def NamedBody496_36 : StackLang.HolProg 64 :=
.seq NamedBody496_28 NamedBody496_35

def NamedBody496_37 : StackLang.HolProg 64 :=
.seq NamedBody496_27 NamedBody496_36

def NamedBody496_38 : StackLang.HolProg 64 :=
.seq NamedBody496_26 NamedBody496_37

def NamedBody496_39 : StackLang.HolProg 64 :=
.seq NamedBody496_25 NamedBody496_38

def NamedBody496_40 : StackLang.HolProg 64 :=
.seq NamedBody496_24 NamedBody496_39

def NamedBody496_41 : StackLang.HolProg 64 :=
.seq NamedBody496_23 NamedBody496_40

def NamedBody496_42 : StackLang.HolProg 64 :=
.seq NamedBody496_22 NamedBody496_41

def NamedBody496_43 : StackLang.HolProg 64 :=
.seq NamedBody496_21 NamedBody496_42

def NamedBody496_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody496_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody496_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody496_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody496_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody496_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody496_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody496_51 : StackLang.HolProg 64 :=
.seq NamedBody496_49 NamedBody496_50

def NamedBody496_52 : StackLang.HolProg 64 :=
.seq NamedBody496_48 NamedBody496_51

def NamedBody496_53 : StackLang.HolProg 64 :=
.seq NamedBody496_47 NamedBody496_52

def NamedBody496_54 : StackLang.HolProg 64 :=
.seq NamedBody496_46 NamedBody496_53

def NamedBody496_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody496_56 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody496_57 : StackLang.HolProg 64 :=
.seq NamedBody496_55 NamedBody496_56

def NamedBody496_58 : StackLang.HolProg 64 :=
.call (some (NamedBody496_54, 1, 496, 2)) (Sum.inl 494) (some (NamedBody496_57, 496, 3))

def NamedBody496_59 : StackLang.HolProg 64 :=
.seq NamedBody496_45 NamedBody496_58

def NamedBody496_60 : StackLang.HolProg 64 :=
.seq NamedBody496_44 NamedBody496_59

def NamedBody496_61 : StackLang.HolProg 64 :=
.seq NamedBody496_43 NamedBody496_60

def NamedBody496_62 : StackLang.HolProg 64 :=
.seq NamedBody496_14 NamedBody496_61

def NamedBody496_63 : StackLang.HolProg 64 :=
.seq NamedBody496_11 NamedBody496_62

def NamedBody496_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody496_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody496_66 : StackLang.HolProg 64 :=
.seq NamedBody496_64 NamedBody496_65

def NamedBody496_67 : StackLang.HolProg 64 :=
.seq NamedBody496_63 NamedBody496_66

def NamedBody496_68 : StackLang.HolProg 64 :=
.seq NamedBody496_10 NamedBody496_67

def NamedBody496_69 : StackLang.HolProg 64 :=
.seq NamedBody496_9 NamedBody496_68

def NamedBody496_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody496_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody496_72 : StackLang.HolProg 64 :=
.seq NamedBody496_70 NamedBody496_71

def NamedBody496_73 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody496_69 NamedBody496_72

def NamedBody496_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody496_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody496_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody496_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody496_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody496_79 : StackLang.HolProg 64 :=
.seq NamedBody496_77 NamedBody496_78

def NamedBody496_80 : StackLang.HolProg 64 :=
.seq NamedBody496_76 NamedBody496_79

def NamedBody496_81 : StackLang.HolProg 64 :=
.seq NamedBody496_75 NamedBody496_80

def NamedBody496_82 : StackLang.HolProg 64 :=
.seq NamedBody496_74 NamedBody496_81

def NamedBody496_83 : StackLang.HolProg 64 :=
.seq NamedBody496_73 NamedBody496_82

def NamedBody496_84 : StackLang.HolProg 64 :=
.seq NamedBody496_8 NamedBody496_83

def NamedBody496_85 : StackLang.HolProg 64 :=
.seq NamedBody496_7 NamedBody496_84

def NamedBody496_86 : StackLang.HolProg 64 :=
.seq NamedBody496_6 NamedBody496_85

def Named496 : Nat × StackLang.HolProg 64 := (496, NamedBody496_86)
theorem Named496_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed496 = Named496 := by
  kernel_rfl
#print axioms Named496_eq
end InitECandidate.Proofs.BackendStages
