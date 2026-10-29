import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed780
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody780_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody780_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody780_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody780_3 : StackLang.HolProg 64 :=
.seq NamedBody780_1 NamedBody780_2

def NamedBody780_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody780_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody780_3 NamedBody780_4

def NamedBody780_6 : StackLang.HolProg 64 :=
.seq NamedBody780_0 NamedBody780_5

def NamedBody780_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody780_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 288#64)

def NamedBody780_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody780_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody780_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3546#64)

def NamedBody780_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody780_13 : StackLang.HolProg 64 :=
.seq NamedBody780_11 NamedBody780_12

def NamedBody780_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody780_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody780_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody780_17 : StackLang.HolProg 64 :=
.seq NamedBody780_15 NamedBody780_16

def NamedBody780_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody780_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody780_17 NamedBody780_18

def NamedBody780_20 : StackLang.HolProg 64 :=
.seq NamedBody780_14 NamedBody780_19

def NamedBody780_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody780_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody780_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 780 3

def NamedBody780_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody780_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody780_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody780_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody780_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody780_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody780_30 : StackLang.HolProg 64 :=
.seq NamedBody780_28 NamedBody780_29

def NamedBody780_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody780_32 : StackLang.HolProg 64 :=
.seq NamedBody780_30 NamedBody780_31

def NamedBody780_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody780_34 : StackLang.HolProg 64 :=
.seq NamedBody780_32 NamedBody780_33

def NamedBody780_35 : StackLang.HolProg 64 :=
.seq NamedBody780_27 NamedBody780_34

def NamedBody780_36 : StackLang.HolProg 64 :=
.seq NamedBody780_26 NamedBody780_35

def NamedBody780_37 : StackLang.HolProg 64 :=
.seq NamedBody780_25 NamedBody780_36

def NamedBody780_38 : StackLang.HolProg 64 :=
.seq NamedBody780_24 NamedBody780_37

def NamedBody780_39 : StackLang.HolProg 64 :=
.seq NamedBody780_23 NamedBody780_38

def NamedBody780_40 : StackLang.HolProg 64 :=
.seq NamedBody780_22 NamedBody780_39

def NamedBody780_41 : StackLang.HolProg 64 :=
.seq NamedBody780_21 NamedBody780_40

def NamedBody780_42 : StackLang.HolProg 64 :=
.seq NamedBody780_20 NamedBody780_41

def NamedBody780_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody780_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody780_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody780_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody780_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody780_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody780_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody780_50 : StackLang.HolProg 64 :=
.seq NamedBody780_48 NamedBody780_49

def NamedBody780_51 : StackLang.HolProg 64 :=
.seq NamedBody780_47 NamedBody780_50

def NamedBody780_52 : StackLang.HolProg 64 :=
.seq NamedBody780_46 NamedBody780_51

def NamedBody780_53 : StackLang.HolProg 64 :=
.seq NamedBody780_45 NamedBody780_52

def NamedBody780_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody780_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody780_56 : StackLang.HolProg 64 :=
.seq NamedBody780_54 NamedBody780_55

def NamedBody780_57 : StackLang.HolProg 64 :=
.call (some (NamedBody780_53, 1, 780, 2)) (Sum.inl 77) (some (NamedBody780_56, 780, 3))

def NamedBody780_58 : StackLang.HolProg 64 :=
.seq NamedBody780_44 NamedBody780_57

def NamedBody780_59 : StackLang.HolProg 64 :=
.seq NamedBody780_43 NamedBody780_58

def NamedBody780_60 : StackLang.HolProg 64 :=
.seq NamedBody780_42 NamedBody780_59

def NamedBody780_61 : StackLang.HolProg 64 :=
.seq NamedBody780_13 NamedBody780_60

def NamedBody780_62 : StackLang.HolProg 64 :=
.seq NamedBody780_10 NamedBody780_61

def NamedBody780_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody780_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody780_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody780_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody780_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody780_68 : StackLang.HolProg 64 :=
.seq NamedBody780_66 NamedBody780_67

def NamedBody780_69 : StackLang.HolProg 64 :=
.seq NamedBody780_65 NamedBody780_68

def NamedBody780_70 : StackLang.HolProg 64 :=
.seq NamedBody780_64 NamedBody780_69

def NamedBody780_71 : StackLang.HolProg 64 :=
.seq NamedBody780_63 NamedBody780_70

def NamedBody780_72 : StackLang.HolProg 64 :=
.seq NamedBody780_62 NamedBody780_71

def NamedBody780_73 : StackLang.HolProg 64 :=
.seq NamedBody780_9 NamedBody780_72

def NamedBody780_74 : StackLang.HolProg 64 :=
.seq NamedBody780_8 NamedBody780_73

def NamedBody780_75 : StackLang.HolProg 64 :=
.seq NamedBody780_7 NamedBody780_74

def NamedBody780_76 : StackLang.HolProg 64 :=
.seq NamedBody780_6 NamedBody780_75

def Named780 : Nat × StackLang.HolProg 64 := (780, NamedBody780_76)
theorem Named780_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed780 = Named780 := by
  kernel_rfl
#print axioms Named780_eq
end InitECandidate.Proofs.BackendStages
