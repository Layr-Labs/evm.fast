import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed755
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody755_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody755_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody755_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody755_3 : StackLang.HolProg 64 :=
.seq NamedBody755_1 NamedBody755_2

def NamedBody755_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody755_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody755_3 NamedBody755_4

def NamedBody755_6 : StackLang.HolProg 64 :=
.seq NamedBody755_0 NamedBody755_5

def NamedBody755_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody755_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 576#64)

def NamedBody755_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody755_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody755_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3371#64)

def NamedBody755_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody755_13 : StackLang.HolProg 64 :=
.seq NamedBody755_11 NamedBody755_12

def NamedBody755_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody755_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody755_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody755_17 : StackLang.HolProg 64 :=
.seq NamedBody755_15 NamedBody755_16

def NamedBody755_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody755_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody755_17 NamedBody755_18

def NamedBody755_20 : StackLang.HolProg 64 :=
.seq NamedBody755_14 NamedBody755_19

def NamedBody755_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody755_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody755_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 755 3

def NamedBody755_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody755_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody755_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody755_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody755_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody755_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody755_30 : StackLang.HolProg 64 :=
.seq NamedBody755_28 NamedBody755_29

def NamedBody755_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody755_32 : StackLang.HolProg 64 :=
.seq NamedBody755_30 NamedBody755_31

def NamedBody755_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody755_34 : StackLang.HolProg 64 :=
.seq NamedBody755_32 NamedBody755_33

def NamedBody755_35 : StackLang.HolProg 64 :=
.seq NamedBody755_27 NamedBody755_34

def NamedBody755_36 : StackLang.HolProg 64 :=
.seq NamedBody755_26 NamedBody755_35

def NamedBody755_37 : StackLang.HolProg 64 :=
.seq NamedBody755_25 NamedBody755_36

def NamedBody755_38 : StackLang.HolProg 64 :=
.seq NamedBody755_24 NamedBody755_37

def NamedBody755_39 : StackLang.HolProg 64 :=
.seq NamedBody755_23 NamedBody755_38

def NamedBody755_40 : StackLang.HolProg 64 :=
.seq NamedBody755_22 NamedBody755_39

def NamedBody755_41 : StackLang.HolProg 64 :=
.seq NamedBody755_21 NamedBody755_40

def NamedBody755_42 : StackLang.HolProg 64 :=
.seq NamedBody755_20 NamedBody755_41

def NamedBody755_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody755_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody755_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody755_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody755_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody755_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody755_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody755_50 : StackLang.HolProg 64 :=
.seq NamedBody755_48 NamedBody755_49

def NamedBody755_51 : StackLang.HolProg 64 :=
.seq NamedBody755_47 NamedBody755_50

def NamedBody755_52 : StackLang.HolProg 64 :=
.seq NamedBody755_46 NamedBody755_51

def NamedBody755_53 : StackLang.HolProg 64 :=
.seq NamedBody755_45 NamedBody755_52

def NamedBody755_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody755_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody755_56 : StackLang.HolProg 64 :=
.seq NamedBody755_54 NamedBody755_55

def NamedBody755_57 : StackLang.HolProg 64 :=
.call (some (NamedBody755_53, 1, 755, 2)) (Sum.inl 77) (some (NamedBody755_56, 755, 3))

def NamedBody755_58 : StackLang.HolProg 64 :=
.seq NamedBody755_44 NamedBody755_57

def NamedBody755_59 : StackLang.HolProg 64 :=
.seq NamedBody755_43 NamedBody755_58

def NamedBody755_60 : StackLang.HolProg 64 :=
.seq NamedBody755_42 NamedBody755_59

def NamedBody755_61 : StackLang.HolProg 64 :=
.seq NamedBody755_13 NamedBody755_60

def NamedBody755_62 : StackLang.HolProg 64 :=
.seq NamedBody755_10 NamedBody755_61

def NamedBody755_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody755_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody755_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody755_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody755_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody755_68 : StackLang.HolProg 64 :=
.seq NamedBody755_66 NamedBody755_67

def NamedBody755_69 : StackLang.HolProg 64 :=
.seq NamedBody755_65 NamedBody755_68

def NamedBody755_70 : StackLang.HolProg 64 :=
.seq NamedBody755_64 NamedBody755_69

def NamedBody755_71 : StackLang.HolProg 64 :=
.seq NamedBody755_63 NamedBody755_70

def NamedBody755_72 : StackLang.HolProg 64 :=
.seq NamedBody755_62 NamedBody755_71

def NamedBody755_73 : StackLang.HolProg 64 :=
.seq NamedBody755_9 NamedBody755_72

def NamedBody755_74 : StackLang.HolProg 64 :=
.seq NamedBody755_8 NamedBody755_73

def NamedBody755_75 : StackLang.HolProg 64 :=
.seq NamedBody755_7 NamedBody755_74

def NamedBody755_76 : StackLang.HolProg 64 :=
.seq NamedBody755_6 NamedBody755_75

def Named755 : Nat × StackLang.HolProg 64 := (755, NamedBody755_76)
theorem Named755_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed755 = Named755 := by
  kernel_rfl
#print axioms Named755_eq
end InitECandidate.Proofs.BackendStages
