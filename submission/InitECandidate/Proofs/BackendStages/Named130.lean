import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed130
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody130_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody130_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody130_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody130_3 : StackLang.HolProg 64 :=
.seq NamedBody130_1 NamedBody130_2

def NamedBody130_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody130_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody130_3 NamedBody130_4

def NamedBody130_6 : StackLang.HolProg 64 :=
.seq NamedBody130_0 NamedBody130_5

def NamedBody130_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody130_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody130_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 82#64)

def NamedBody130_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody130_11 : StackLang.HolProg 64 :=
.seq NamedBody130_9 NamedBody130_10

def NamedBody130_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody130_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody130_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody130_15 : StackLang.HolProg 64 :=
.seq NamedBody130_13 NamedBody130_14

def NamedBody130_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody130_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody130_15 NamedBody130_16

def NamedBody130_18 : StackLang.HolProg 64 :=
.seq NamedBody130_12 NamedBody130_17

def NamedBody130_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody130_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody130_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 130 3

def NamedBody130_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody130_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody130_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody130_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody130_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody130_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody130_28 : StackLang.HolProg 64 :=
.seq NamedBody130_26 NamedBody130_27

def NamedBody130_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody130_30 : StackLang.HolProg 64 :=
.seq NamedBody130_28 NamedBody130_29

def NamedBody130_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody130_32 : StackLang.HolProg 64 :=
.seq NamedBody130_30 NamedBody130_31

def NamedBody130_33 : StackLang.HolProg 64 :=
.seq NamedBody130_25 NamedBody130_32

def NamedBody130_34 : StackLang.HolProg 64 :=
.seq NamedBody130_24 NamedBody130_33

def NamedBody130_35 : StackLang.HolProg 64 :=
.seq NamedBody130_23 NamedBody130_34

def NamedBody130_36 : StackLang.HolProg 64 :=
.seq NamedBody130_22 NamedBody130_35

def NamedBody130_37 : StackLang.HolProg 64 :=
.seq NamedBody130_21 NamedBody130_36

def NamedBody130_38 : StackLang.HolProg 64 :=
.seq NamedBody130_20 NamedBody130_37

def NamedBody130_39 : StackLang.HolProg 64 :=
.seq NamedBody130_19 NamedBody130_38

def NamedBody130_40 : StackLang.HolProg 64 :=
.seq NamedBody130_18 NamedBody130_39

def NamedBody130_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody130_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody130_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody130_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody130_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody130_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody130_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody130_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody130_49 : StackLang.HolProg 64 :=
.seq NamedBody130_47 NamedBody130_48

def NamedBody130_50 : StackLang.HolProg 64 :=
.seq NamedBody130_46 NamedBody130_49

def NamedBody130_51 : StackLang.HolProg 64 :=
.seq NamedBody130_45 NamedBody130_50

def NamedBody130_52 : StackLang.HolProg 64 :=
.seq NamedBody130_44 NamedBody130_51

def NamedBody130_53 : StackLang.HolProg 64 :=
.seq NamedBody130_43 NamedBody130_52

def NamedBody130_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody130_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody130_56 : StackLang.HolProg 64 :=
.seq NamedBody130_54 NamedBody130_55

def NamedBody130_57 : StackLang.HolProg 64 :=
.call (some (NamedBody130_53, 1, 130, 2)) (Sum.inl 129) (some (NamedBody130_56, 130, 3))

def NamedBody130_58 : StackLang.HolProg 64 :=
.seq NamedBody130_42 NamedBody130_57

def NamedBody130_59 : StackLang.HolProg 64 :=
.seq NamedBody130_41 NamedBody130_58

def NamedBody130_60 : StackLang.HolProg 64 :=
.seq NamedBody130_40 NamedBody130_59

def NamedBody130_61 : StackLang.HolProg 64 :=
.seq NamedBody130_11 NamedBody130_60

def NamedBody130_62 : StackLang.HolProg 64 :=
.seq NamedBody130_8 NamedBody130_61

def NamedBody130_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody130_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody130_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody130_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody130_67 : StackLang.HolProg 64 :=
.seq NamedBody130_65 NamedBody130_66

def NamedBody130_68 : StackLang.HolProg 64 :=
.seq NamedBody130_64 NamedBody130_67

def NamedBody130_69 : StackLang.HolProg 64 :=
.seq NamedBody130_63 NamedBody130_68

def NamedBody130_70 : StackLang.HolProg 64 :=
.seq NamedBody130_62 NamedBody130_69

def NamedBody130_71 : StackLang.HolProg 64 :=
.seq NamedBody130_7 NamedBody130_70

def NamedBody130_72 : StackLang.HolProg 64 :=
.seq NamedBody130_6 NamedBody130_71

def Named130 : Nat × StackLang.HolProg 64 := (130, NamedBody130_72)
theorem Named130_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed130 = Named130 := by
  kernel_rfl
#print axioms Named130_eq
end InitECandidate.Proofs.BackendStages
