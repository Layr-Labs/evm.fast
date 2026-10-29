import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed96
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody96_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody96_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody96_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody96_3 : StackLang.HolProg 64 :=
.seq NamedBody96_1 NamedBody96_2

def NamedBody96_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody96_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody96_3 NamedBody96_4

def NamedBody96_6 : StackLang.HolProg 64 :=
.seq NamedBody96_0 NamedBody96_5

def NamedBody96_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody96_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody96_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 42#64)

def NamedBody96_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody96_11 : StackLang.HolProg 64 :=
.seq NamedBody96_9 NamedBody96_10

def NamedBody96_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody96_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody96_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody96_15 : StackLang.HolProg 64 :=
.seq NamedBody96_13 NamedBody96_14

def NamedBody96_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody96_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody96_15 NamedBody96_16

def NamedBody96_18 : StackLang.HolProg 64 :=
.seq NamedBody96_12 NamedBody96_17

def NamedBody96_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody96_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody96_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 96 3

def NamedBody96_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody96_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody96_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody96_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody96_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody96_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody96_28 : StackLang.HolProg 64 :=
.seq NamedBody96_26 NamedBody96_27

def NamedBody96_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody96_30 : StackLang.HolProg 64 :=
.seq NamedBody96_28 NamedBody96_29

def NamedBody96_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody96_32 : StackLang.HolProg 64 :=
.seq NamedBody96_30 NamedBody96_31

def NamedBody96_33 : StackLang.HolProg 64 :=
.seq NamedBody96_25 NamedBody96_32

def NamedBody96_34 : StackLang.HolProg 64 :=
.seq NamedBody96_24 NamedBody96_33

def NamedBody96_35 : StackLang.HolProg 64 :=
.seq NamedBody96_23 NamedBody96_34

def NamedBody96_36 : StackLang.HolProg 64 :=
.seq NamedBody96_22 NamedBody96_35

def NamedBody96_37 : StackLang.HolProg 64 :=
.seq NamedBody96_21 NamedBody96_36

def NamedBody96_38 : StackLang.HolProg 64 :=
.seq NamedBody96_20 NamedBody96_37

def NamedBody96_39 : StackLang.HolProg 64 :=
.seq NamedBody96_19 NamedBody96_38

def NamedBody96_40 : StackLang.HolProg 64 :=
.seq NamedBody96_18 NamedBody96_39

def NamedBody96_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody96_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody96_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody96_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody96_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody96_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody96_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody96_48 : StackLang.HolProg 64 :=
.seq NamedBody96_46 NamedBody96_47

def NamedBody96_49 : StackLang.HolProg 64 :=
.seq NamedBody96_45 NamedBody96_48

def NamedBody96_50 : StackLang.HolProg 64 :=
.seq NamedBody96_44 NamedBody96_49

def NamedBody96_51 : StackLang.HolProg 64 :=
.seq NamedBody96_43 NamedBody96_50

def NamedBody96_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody96_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody96_54 : StackLang.HolProg 64 :=
.seq NamedBody96_52 NamedBody96_53

def NamedBody96_55 : StackLang.HolProg 64 :=
.call (some (NamedBody96_51, 1, 96, 2)) (Sum.inl 94) (some (NamedBody96_54, 96, 3))

def NamedBody96_56 : StackLang.HolProg 64 :=
.seq NamedBody96_42 NamedBody96_55

def NamedBody96_57 : StackLang.HolProg 64 :=
.seq NamedBody96_41 NamedBody96_56

def NamedBody96_58 : StackLang.HolProg 64 :=
.seq NamedBody96_40 NamedBody96_57

def NamedBody96_59 : StackLang.HolProg 64 :=
.seq NamedBody96_11 NamedBody96_58

def NamedBody96_60 : StackLang.HolProg 64 :=
.seq NamedBody96_8 NamedBody96_59

def NamedBody96_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody96_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody96_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody96_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody96_65 : StackLang.HolProg 64 :=
.seq NamedBody96_63 NamedBody96_64

def NamedBody96_66 : StackLang.HolProg 64 :=
.seq NamedBody96_62 NamedBody96_65

def NamedBody96_67 : StackLang.HolProg 64 :=
.seq NamedBody96_61 NamedBody96_66

def NamedBody96_68 : StackLang.HolProg 64 :=
.seq NamedBody96_60 NamedBody96_67

def NamedBody96_69 : StackLang.HolProg 64 :=
.seq NamedBody96_7 NamedBody96_68

def NamedBody96_70 : StackLang.HolProg 64 :=
.seq NamedBody96_6 NamedBody96_69

def Named96 : Nat × StackLang.HolProg 64 := (96, NamedBody96_70)
theorem Named96_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed96 = Named96 := by
  kernel_rfl
#print axioms Named96_eq
end InitECandidate.Proofs.BackendStages
