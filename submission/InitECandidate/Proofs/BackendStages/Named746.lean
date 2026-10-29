import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed746
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody746_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody746_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody746_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody746_3 : StackLang.HolProg 64 :=
.seq NamedBody746_1 NamedBody746_2

def NamedBody746_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody746_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody746_3 NamedBody746_4

def NamedBody746_6 : StackLang.HolProg 64 :=
.seq NamedBody746_0 NamedBody746_5

def NamedBody746_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody746_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 288#64)

def NamedBody746_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody746_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody746_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3306#64)

def NamedBody746_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody746_13 : StackLang.HolProg 64 :=
.seq NamedBody746_11 NamedBody746_12

def NamedBody746_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody746_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody746_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody746_17 : StackLang.HolProg 64 :=
.seq NamedBody746_15 NamedBody746_16

def NamedBody746_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody746_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody746_17 NamedBody746_18

def NamedBody746_20 : StackLang.HolProg 64 :=
.seq NamedBody746_14 NamedBody746_19

def NamedBody746_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody746_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody746_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 746 3

def NamedBody746_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody746_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody746_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody746_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody746_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody746_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody746_30 : StackLang.HolProg 64 :=
.seq NamedBody746_28 NamedBody746_29

def NamedBody746_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody746_32 : StackLang.HolProg 64 :=
.seq NamedBody746_30 NamedBody746_31

def NamedBody746_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody746_34 : StackLang.HolProg 64 :=
.seq NamedBody746_32 NamedBody746_33

def NamedBody746_35 : StackLang.HolProg 64 :=
.seq NamedBody746_27 NamedBody746_34

def NamedBody746_36 : StackLang.HolProg 64 :=
.seq NamedBody746_26 NamedBody746_35

def NamedBody746_37 : StackLang.HolProg 64 :=
.seq NamedBody746_25 NamedBody746_36

def NamedBody746_38 : StackLang.HolProg 64 :=
.seq NamedBody746_24 NamedBody746_37

def NamedBody746_39 : StackLang.HolProg 64 :=
.seq NamedBody746_23 NamedBody746_38

def NamedBody746_40 : StackLang.HolProg 64 :=
.seq NamedBody746_22 NamedBody746_39

def NamedBody746_41 : StackLang.HolProg 64 :=
.seq NamedBody746_21 NamedBody746_40

def NamedBody746_42 : StackLang.HolProg 64 :=
.seq NamedBody746_20 NamedBody746_41

def NamedBody746_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody746_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody746_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody746_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody746_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody746_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody746_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody746_50 : StackLang.HolProg 64 :=
.seq NamedBody746_48 NamedBody746_49

def NamedBody746_51 : StackLang.HolProg 64 :=
.seq NamedBody746_47 NamedBody746_50

def NamedBody746_52 : StackLang.HolProg 64 :=
.seq NamedBody746_46 NamedBody746_51

def NamedBody746_53 : StackLang.HolProg 64 :=
.seq NamedBody746_45 NamedBody746_52

def NamedBody746_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody746_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody746_56 : StackLang.HolProg 64 :=
.seq NamedBody746_54 NamedBody746_55

def NamedBody746_57 : StackLang.HolProg 64 :=
.call (some (NamedBody746_53, 1, 746, 2)) (Sum.inl 77) (some (NamedBody746_56, 746, 3))

def NamedBody746_58 : StackLang.HolProg 64 :=
.seq NamedBody746_44 NamedBody746_57

def NamedBody746_59 : StackLang.HolProg 64 :=
.seq NamedBody746_43 NamedBody746_58

def NamedBody746_60 : StackLang.HolProg 64 :=
.seq NamedBody746_42 NamedBody746_59

def NamedBody746_61 : StackLang.HolProg 64 :=
.seq NamedBody746_13 NamedBody746_60

def NamedBody746_62 : StackLang.HolProg 64 :=
.seq NamedBody746_10 NamedBody746_61

def NamedBody746_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody746_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody746_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody746_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody746_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody746_68 : StackLang.HolProg 64 :=
.seq NamedBody746_66 NamedBody746_67

def NamedBody746_69 : StackLang.HolProg 64 :=
.seq NamedBody746_65 NamedBody746_68

def NamedBody746_70 : StackLang.HolProg 64 :=
.seq NamedBody746_64 NamedBody746_69

def NamedBody746_71 : StackLang.HolProg 64 :=
.seq NamedBody746_63 NamedBody746_70

def NamedBody746_72 : StackLang.HolProg 64 :=
.seq NamedBody746_62 NamedBody746_71

def NamedBody746_73 : StackLang.HolProg 64 :=
.seq NamedBody746_9 NamedBody746_72

def NamedBody746_74 : StackLang.HolProg 64 :=
.seq NamedBody746_8 NamedBody746_73

def NamedBody746_75 : StackLang.HolProg 64 :=
.seq NamedBody746_7 NamedBody746_74

def NamedBody746_76 : StackLang.HolProg 64 :=
.seq NamedBody746_6 NamedBody746_75

def Named746 : Nat × StackLang.HolProg 64 := (746, NamedBody746_76)
theorem Named746_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed746 = Named746 := by
  kernel_rfl
#print axioms Named746_eq
end InitECandidate.Proofs.BackendStages
