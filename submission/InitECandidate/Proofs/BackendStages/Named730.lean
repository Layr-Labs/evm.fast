import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed730
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody730_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody730_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody730_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody730_3 : StackLang.HolProg 64 :=
.seq NamedBody730_1 NamedBody730_2

def NamedBody730_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody730_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody730_3 NamedBody730_4

def NamedBody730_6 : StackLang.HolProg 64 :=
.seq NamedBody730_0 NamedBody730_5

def NamedBody730_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody730_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 96#64)

def NamedBody730_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody730_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody730_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3262#64)

def NamedBody730_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody730_13 : StackLang.HolProg 64 :=
.seq NamedBody730_11 NamedBody730_12

def NamedBody730_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody730_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody730_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody730_17 : StackLang.HolProg 64 :=
.seq NamedBody730_15 NamedBody730_16

def NamedBody730_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody730_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody730_17 NamedBody730_18

def NamedBody730_20 : StackLang.HolProg 64 :=
.seq NamedBody730_14 NamedBody730_19

def NamedBody730_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody730_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody730_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 730 3

def NamedBody730_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody730_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody730_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody730_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody730_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody730_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody730_30 : StackLang.HolProg 64 :=
.seq NamedBody730_28 NamedBody730_29

def NamedBody730_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody730_32 : StackLang.HolProg 64 :=
.seq NamedBody730_30 NamedBody730_31

def NamedBody730_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody730_34 : StackLang.HolProg 64 :=
.seq NamedBody730_32 NamedBody730_33

def NamedBody730_35 : StackLang.HolProg 64 :=
.seq NamedBody730_27 NamedBody730_34

def NamedBody730_36 : StackLang.HolProg 64 :=
.seq NamedBody730_26 NamedBody730_35

def NamedBody730_37 : StackLang.HolProg 64 :=
.seq NamedBody730_25 NamedBody730_36

def NamedBody730_38 : StackLang.HolProg 64 :=
.seq NamedBody730_24 NamedBody730_37

def NamedBody730_39 : StackLang.HolProg 64 :=
.seq NamedBody730_23 NamedBody730_38

def NamedBody730_40 : StackLang.HolProg 64 :=
.seq NamedBody730_22 NamedBody730_39

def NamedBody730_41 : StackLang.HolProg 64 :=
.seq NamedBody730_21 NamedBody730_40

def NamedBody730_42 : StackLang.HolProg 64 :=
.seq NamedBody730_20 NamedBody730_41

def NamedBody730_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody730_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody730_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody730_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody730_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody730_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody730_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody730_50 : StackLang.HolProg 64 :=
.seq NamedBody730_48 NamedBody730_49

def NamedBody730_51 : StackLang.HolProg 64 :=
.seq NamedBody730_47 NamedBody730_50

def NamedBody730_52 : StackLang.HolProg 64 :=
.seq NamedBody730_46 NamedBody730_51

def NamedBody730_53 : StackLang.HolProg 64 :=
.seq NamedBody730_45 NamedBody730_52

def NamedBody730_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody730_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody730_56 : StackLang.HolProg 64 :=
.seq NamedBody730_54 NamedBody730_55

def NamedBody730_57 : StackLang.HolProg 64 :=
.call (some (NamedBody730_53, 1, 730, 2)) (Sum.inl 78) (some (NamedBody730_56, 730, 3))

def NamedBody730_58 : StackLang.HolProg 64 :=
.seq NamedBody730_44 NamedBody730_57

def NamedBody730_59 : StackLang.HolProg 64 :=
.seq NamedBody730_43 NamedBody730_58

def NamedBody730_60 : StackLang.HolProg 64 :=
.seq NamedBody730_42 NamedBody730_59

def NamedBody730_61 : StackLang.HolProg 64 :=
.seq NamedBody730_13 NamedBody730_60

def NamedBody730_62 : StackLang.HolProg 64 :=
.seq NamedBody730_10 NamedBody730_61

def NamedBody730_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody730_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody730_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody730_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody730_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody730_68 : StackLang.HolProg 64 :=
.seq NamedBody730_66 NamedBody730_67

def NamedBody730_69 : StackLang.HolProg 64 :=
.seq NamedBody730_65 NamedBody730_68

def NamedBody730_70 : StackLang.HolProg 64 :=
.seq NamedBody730_64 NamedBody730_69

def NamedBody730_71 : StackLang.HolProg 64 :=
.seq NamedBody730_63 NamedBody730_70

def NamedBody730_72 : StackLang.HolProg 64 :=
.seq NamedBody730_62 NamedBody730_71

def NamedBody730_73 : StackLang.HolProg 64 :=
.seq NamedBody730_9 NamedBody730_72

def NamedBody730_74 : StackLang.HolProg 64 :=
.seq NamedBody730_8 NamedBody730_73

def NamedBody730_75 : StackLang.HolProg 64 :=
.seq NamedBody730_7 NamedBody730_74

def NamedBody730_76 : StackLang.HolProg 64 :=
.seq NamedBody730_6 NamedBody730_75

def Named730 : Nat × StackLang.HolProg 64 := (730, NamedBody730_76)
theorem Named730_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed730 = Named730 := by
  kernel_rfl
#print axioms Named730_eq
end InitECandidate.Proofs.BackendStages
