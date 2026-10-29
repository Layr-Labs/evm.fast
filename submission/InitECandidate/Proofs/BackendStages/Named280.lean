import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed280
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody280_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody280_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody280_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody280_3 : StackLang.HolProg 64 :=
.seq NamedBody280_1 NamedBody280_2

def NamedBody280_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody280_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody280_3 NamedBody280_4

def NamedBody280_6 : StackLang.HolProg 64 :=
.seq NamedBody280_0 NamedBody280_5

def NamedBody280_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody280_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 11684671#64)

def NamedBody280_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody280_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody280_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody280_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 744#64)

def NamedBody280_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody280_14 : StackLang.HolProg 64 :=
.seq NamedBody280_12 NamedBody280_13

def NamedBody280_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody280_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody280_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody280_18 : StackLang.HolProg 64 :=
.seq NamedBody280_16 NamedBody280_17

def NamedBody280_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody280_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody280_18 NamedBody280_19

def NamedBody280_21 : StackLang.HolProg 64 :=
.seq NamedBody280_15 NamedBody280_20

def NamedBody280_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody280_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody280_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 280 3

def NamedBody280_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody280_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody280_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody280_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody280_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody280_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody280_31 : StackLang.HolProg 64 :=
.seq NamedBody280_29 NamedBody280_30

def NamedBody280_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody280_33 : StackLang.HolProg 64 :=
.seq NamedBody280_31 NamedBody280_32

def NamedBody280_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody280_35 : StackLang.HolProg 64 :=
.seq NamedBody280_33 NamedBody280_34

def NamedBody280_36 : StackLang.HolProg 64 :=
.seq NamedBody280_28 NamedBody280_35

def NamedBody280_37 : StackLang.HolProg 64 :=
.seq NamedBody280_27 NamedBody280_36

def NamedBody280_38 : StackLang.HolProg 64 :=
.seq NamedBody280_26 NamedBody280_37

def NamedBody280_39 : StackLang.HolProg 64 :=
.seq NamedBody280_25 NamedBody280_38

def NamedBody280_40 : StackLang.HolProg 64 :=
.seq NamedBody280_24 NamedBody280_39

def NamedBody280_41 : StackLang.HolProg 64 :=
.seq NamedBody280_23 NamedBody280_40

def NamedBody280_42 : StackLang.HolProg 64 :=
.seq NamedBody280_22 NamedBody280_41

def NamedBody280_43 : StackLang.HolProg 64 :=
.seq NamedBody280_21 NamedBody280_42

def NamedBody280_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody280_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody280_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody280_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody280_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody280_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody280_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody280_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody280_52 : StackLang.HolProg 64 :=
.seq NamedBody280_50 NamedBody280_51

def NamedBody280_53 : StackLang.HolProg 64 :=
.seq NamedBody280_49 NamedBody280_52

def NamedBody280_54 : StackLang.HolProg 64 :=
.seq NamedBody280_48 NamedBody280_53

def NamedBody280_55 : StackLang.HolProg 64 :=
.seq NamedBody280_47 NamedBody280_54

def NamedBody280_56 : StackLang.HolProg 64 :=
.seq NamedBody280_46 NamedBody280_55

def NamedBody280_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody280_58 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody280_59 : StackLang.HolProg 64 :=
.seq NamedBody280_57 NamedBody280_58

def NamedBody280_60 : StackLang.HolProg 64 :=
.call (some (NamedBody280_56, 1, 280, 2)) (Sum.inl 279) (some (NamedBody280_59, 280, 3))

def NamedBody280_61 : StackLang.HolProg 64 :=
.seq NamedBody280_45 NamedBody280_60

def NamedBody280_62 : StackLang.HolProg 64 :=
.seq NamedBody280_44 NamedBody280_61

def NamedBody280_63 : StackLang.HolProg 64 :=
.seq NamedBody280_43 NamedBody280_62

def NamedBody280_64 : StackLang.HolProg 64 :=
.seq NamedBody280_14 NamedBody280_63

def NamedBody280_65 : StackLang.HolProg 64 :=
.seq NamedBody280_11 NamedBody280_64

def NamedBody280_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody280_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody280_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody280_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody280_70 : StackLang.HolProg 64 :=
.seq NamedBody280_68 NamedBody280_69

def NamedBody280_71 : StackLang.HolProg 64 :=
.seq NamedBody280_67 NamedBody280_70

def NamedBody280_72 : StackLang.HolProg 64 :=
.seq NamedBody280_66 NamedBody280_71

def NamedBody280_73 : StackLang.HolProg 64 :=
.seq NamedBody280_65 NamedBody280_72

def NamedBody280_74 : StackLang.HolProg 64 :=
.seq NamedBody280_10 NamedBody280_73

def NamedBody280_75 : StackLang.HolProg 64 :=
.seq NamedBody280_9 NamedBody280_74

def NamedBody280_76 : StackLang.HolProg 64 :=
.seq NamedBody280_8 NamedBody280_75

def NamedBody280_77 : StackLang.HolProg 64 :=
.seq NamedBody280_7 NamedBody280_76

def NamedBody280_78 : StackLang.HolProg 64 :=
.seq NamedBody280_6 NamedBody280_77

def Named280 : Nat × StackLang.HolProg 64 := (280, NamedBody280_78)
theorem Named280_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed280 = Named280 := by
  kernel_rfl
#print axioms Named280_eq
end InitECandidate.Proofs.BackendStages
