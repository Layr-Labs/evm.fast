import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed369
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody369_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody369_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody369_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody369_3 : StackLang.HolProg 64 :=
.seq NamedBody369_1 NamedBody369_2

def NamedBody369_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody369_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody369_3 NamedBody369_4

def NamedBody369_6 : StackLang.HolProg 64 :=
.seq NamedBody369_0 NamedBody369_5

def NamedBody369_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody369_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody369_9 : StackLang.HolProg 64 :=
.seq NamedBody369_7 NamedBody369_8

def NamedBody369_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 384#64))

def NamedBody369_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody369_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 392#64))

def NamedBody369_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody369_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody369_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1084#64)

def NamedBody369_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody369_17 : StackLang.HolProg 64 :=
.seq NamedBody369_15 NamedBody369_16

def NamedBody369_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody369_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody369_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody369_21 : StackLang.HolProg 64 :=
.seq NamedBody369_19 NamedBody369_20

def NamedBody369_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody369_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody369_21 NamedBody369_22

def NamedBody369_24 : StackLang.HolProg 64 :=
.seq NamedBody369_18 NamedBody369_23

def NamedBody369_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody369_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody369_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 369 3

def NamedBody369_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody369_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody369_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody369_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody369_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody369_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody369_34 : StackLang.HolProg 64 :=
.seq NamedBody369_32 NamedBody369_33

def NamedBody369_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody369_36 : StackLang.HolProg 64 :=
.seq NamedBody369_34 NamedBody369_35

def NamedBody369_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody369_38 : StackLang.HolProg 64 :=
.seq NamedBody369_36 NamedBody369_37

def NamedBody369_39 : StackLang.HolProg 64 :=
.seq NamedBody369_31 NamedBody369_38

def NamedBody369_40 : StackLang.HolProg 64 :=
.seq NamedBody369_30 NamedBody369_39

def NamedBody369_41 : StackLang.HolProg 64 :=
.seq NamedBody369_29 NamedBody369_40

def NamedBody369_42 : StackLang.HolProg 64 :=
.seq NamedBody369_28 NamedBody369_41

def NamedBody369_43 : StackLang.HolProg 64 :=
.seq NamedBody369_27 NamedBody369_42

def NamedBody369_44 : StackLang.HolProg 64 :=
.seq NamedBody369_26 NamedBody369_43

def NamedBody369_45 : StackLang.HolProg 64 :=
.seq NamedBody369_25 NamedBody369_44

def NamedBody369_46 : StackLang.HolProg 64 :=
.seq NamedBody369_24 NamedBody369_45

def NamedBody369_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody369_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody369_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody369_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody369_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody369_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody369_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody369_54 : StackLang.HolProg 64 :=
.seq NamedBody369_52 NamedBody369_53

def NamedBody369_55 : StackLang.HolProg 64 :=
.seq NamedBody369_51 NamedBody369_54

def NamedBody369_56 : StackLang.HolProg 64 :=
.seq NamedBody369_50 NamedBody369_55

def NamedBody369_57 : StackLang.HolProg 64 :=
.seq NamedBody369_49 NamedBody369_56

def NamedBody369_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody369_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody369_60 : StackLang.HolProg 64 :=
.seq NamedBody369_58 NamedBody369_59

def NamedBody369_61 : StackLang.HolProg 64 :=
.call (some (NamedBody369_57, 1, 369, 2)) (Sum.inl 158) (some (NamedBody369_60, 369, 3))

def NamedBody369_62 : StackLang.HolProg 64 :=
.seq NamedBody369_48 NamedBody369_61

def NamedBody369_63 : StackLang.HolProg 64 :=
.seq NamedBody369_47 NamedBody369_62

def NamedBody369_64 : StackLang.HolProg 64 :=
.seq NamedBody369_46 NamedBody369_63

def NamedBody369_65 : StackLang.HolProg 64 :=
.seq NamedBody369_17 NamedBody369_64

def NamedBody369_66 : StackLang.HolProg 64 :=
.seq NamedBody369_14 NamedBody369_65

def NamedBody369_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody369_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody369_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody369_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody369_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody369_72 : StackLang.HolProg 64 :=
.seq NamedBody369_70 NamedBody369_71

def NamedBody369_73 : StackLang.HolProg 64 :=
.seq NamedBody369_69 NamedBody369_72

def NamedBody369_74 : StackLang.HolProg 64 :=
.seq NamedBody369_68 NamedBody369_73

def NamedBody369_75 : StackLang.HolProg 64 :=
.seq NamedBody369_67 NamedBody369_74

def NamedBody369_76 : StackLang.HolProg 64 :=
.seq NamedBody369_66 NamedBody369_75

def NamedBody369_77 : StackLang.HolProg 64 :=
.seq NamedBody369_13 NamedBody369_76

def NamedBody369_78 : StackLang.HolProg 64 :=
.seq NamedBody369_12 NamedBody369_77

def NamedBody369_79 : StackLang.HolProg 64 :=
.seq NamedBody369_11 NamedBody369_78

def NamedBody369_80 : StackLang.HolProg 64 :=
.seq NamedBody369_10 NamedBody369_79

def NamedBody369_81 : StackLang.HolProg 64 :=
.seq NamedBody369_9 NamedBody369_80

def NamedBody369_82 : StackLang.HolProg 64 :=
.seq NamedBody369_6 NamedBody369_81

def Named369 : Nat × StackLang.HolProg 64 := (369, NamedBody369_82)
theorem Named369_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed369 = Named369 := by
  kernel_rfl
#print axioms Named369_eq
end InitECandidate.Proofs.BackendStages
