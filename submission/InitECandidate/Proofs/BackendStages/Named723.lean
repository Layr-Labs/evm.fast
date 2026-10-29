import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed723
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody723_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody723_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody723_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody723_3 : StackLang.HolProg 64 :=
.seq NamedBody723_1 NamedBody723_2

def NamedBody723_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody723_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody723_3 NamedBody723_4

def NamedBody723_6 : StackLang.HolProg 64 :=
.seq NamedBody723_0 NamedBody723_5

def NamedBody723_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody723_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody723_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3245#64)

def NamedBody723_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody723_11 : StackLang.HolProg 64 :=
.seq NamedBody723_9 NamedBody723_10

def NamedBody723_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody723_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody723_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody723_15 : StackLang.HolProg 64 :=
.seq NamedBody723_13 NamedBody723_14

def NamedBody723_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody723_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody723_15 NamedBody723_16

def NamedBody723_18 : StackLang.HolProg 64 :=
.seq NamedBody723_12 NamedBody723_17

def NamedBody723_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody723_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody723_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 723 3

def NamedBody723_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody723_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody723_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody723_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody723_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody723_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody723_28 : StackLang.HolProg 64 :=
.seq NamedBody723_26 NamedBody723_27

def NamedBody723_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody723_30 : StackLang.HolProg 64 :=
.seq NamedBody723_28 NamedBody723_29

def NamedBody723_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody723_32 : StackLang.HolProg 64 :=
.seq NamedBody723_30 NamedBody723_31

def NamedBody723_33 : StackLang.HolProg 64 :=
.seq NamedBody723_25 NamedBody723_32

def NamedBody723_34 : StackLang.HolProg 64 :=
.seq NamedBody723_24 NamedBody723_33

def NamedBody723_35 : StackLang.HolProg 64 :=
.seq NamedBody723_23 NamedBody723_34

def NamedBody723_36 : StackLang.HolProg 64 :=
.seq NamedBody723_22 NamedBody723_35

def NamedBody723_37 : StackLang.HolProg 64 :=
.seq NamedBody723_21 NamedBody723_36

def NamedBody723_38 : StackLang.HolProg 64 :=
.seq NamedBody723_20 NamedBody723_37

def NamedBody723_39 : StackLang.HolProg 64 :=
.seq NamedBody723_19 NamedBody723_38

def NamedBody723_40 : StackLang.HolProg 64 :=
.seq NamedBody723_18 NamedBody723_39

def NamedBody723_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody723_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody723_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody723_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody723_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody723_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody723_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody723_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody723_49 : StackLang.HolProg 64 :=
.seq NamedBody723_47 NamedBody723_48

def NamedBody723_50 : StackLang.HolProg 64 :=
.seq NamedBody723_46 NamedBody723_49

def NamedBody723_51 : StackLang.HolProg 64 :=
.seq NamedBody723_45 NamedBody723_50

def NamedBody723_52 : StackLang.HolProg 64 :=
.seq NamedBody723_44 NamedBody723_51

def NamedBody723_53 : StackLang.HolProg 64 :=
.seq NamedBody723_43 NamedBody723_52

def NamedBody723_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody723_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody723_56 : StackLang.HolProg 64 :=
.seq NamedBody723_54 NamedBody723_55

def NamedBody723_57 : StackLang.HolProg 64 :=
.call (some (NamedBody723_53, 1, 723, 2)) (Sum.inl 717) (some (NamedBody723_56, 723, 3))

def NamedBody723_58 : StackLang.HolProg 64 :=
.seq NamedBody723_42 NamedBody723_57

def NamedBody723_59 : StackLang.HolProg 64 :=
.seq NamedBody723_41 NamedBody723_58

def NamedBody723_60 : StackLang.HolProg 64 :=
.seq NamedBody723_40 NamedBody723_59

def NamedBody723_61 : StackLang.HolProg 64 :=
.seq NamedBody723_11 NamedBody723_60

def NamedBody723_62 : StackLang.HolProg 64 :=
.seq NamedBody723_8 NamedBody723_61

def NamedBody723_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody723_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody723_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody723_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody723_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody723_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody723_69 : StackLang.HolProg 64 :=
.seq NamedBody723_67 NamedBody723_68

def NamedBody723_70 : StackLang.HolProg 64 :=
.seq NamedBody723_66 NamedBody723_69

def NamedBody723_71 : StackLang.HolProg 64 :=
.seq NamedBody723_65 NamedBody723_70

def NamedBody723_72 : StackLang.HolProg 64 :=
.seq NamedBody723_64 NamedBody723_71

def NamedBody723_73 : StackLang.HolProg 64 :=
.seq NamedBody723_63 NamedBody723_72

def NamedBody723_74 : StackLang.HolProg 64 :=
.seq NamedBody723_62 NamedBody723_73

def NamedBody723_75 : StackLang.HolProg 64 :=
.seq NamedBody723_7 NamedBody723_74

def NamedBody723_76 : StackLang.HolProg 64 :=
.seq NamedBody723_6 NamedBody723_75

def Named723 : Nat × StackLang.HolProg 64 := (723, NamedBody723_76)
theorem Named723_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed723 = Named723 := by
  kernel_rfl
#print axioms Named723_eq
end InitECandidate.Proofs.BackendStages
