import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed477
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody477_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody477_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody477_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody477_3 : StackLang.HolProg 64 :=
.seq NamedBody477_1 NamedBody477_2

def NamedBody477_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody477_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody477_3 NamedBody477_4

def NamedBody477_6 : StackLang.HolProg 64 :=
.seq NamedBody477_0 NamedBody477_5

def NamedBody477_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody477_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody477_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody477_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody477_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody477_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody477_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1498#64)

def NamedBody477_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody477_15 : StackLang.HolProg 64 :=
.seq NamedBody477_13 NamedBody477_14

def NamedBody477_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody477_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody477_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody477_19 : StackLang.HolProg 64 :=
.seq NamedBody477_17 NamedBody477_18

def NamedBody477_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody477_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody477_19 NamedBody477_20

def NamedBody477_22 : StackLang.HolProg 64 :=
.seq NamedBody477_16 NamedBody477_21

def NamedBody477_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody477_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody477_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 477 3

def NamedBody477_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody477_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody477_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody477_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody477_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody477_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody477_32 : StackLang.HolProg 64 :=
.seq NamedBody477_30 NamedBody477_31

def NamedBody477_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody477_34 : StackLang.HolProg 64 :=
.seq NamedBody477_32 NamedBody477_33

def NamedBody477_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody477_36 : StackLang.HolProg 64 :=
.seq NamedBody477_34 NamedBody477_35

def NamedBody477_37 : StackLang.HolProg 64 :=
.seq NamedBody477_29 NamedBody477_36

def NamedBody477_38 : StackLang.HolProg 64 :=
.seq NamedBody477_28 NamedBody477_37

def NamedBody477_39 : StackLang.HolProg 64 :=
.seq NamedBody477_27 NamedBody477_38

def NamedBody477_40 : StackLang.HolProg 64 :=
.seq NamedBody477_26 NamedBody477_39

def NamedBody477_41 : StackLang.HolProg 64 :=
.seq NamedBody477_25 NamedBody477_40

def NamedBody477_42 : StackLang.HolProg 64 :=
.seq NamedBody477_24 NamedBody477_41

def NamedBody477_43 : StackLang.HolProg 64 :=
.seq NamedBody477_23 NamedBody477_42

def NamedBody477_44 : StackLang.HolProg 64 :=
.seq NamedBody477_22 NamedBody477_43

def NamedBody477_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody477_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody477_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody477_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody477_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody477_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody477_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody477_52 : StackLang.HolProg 64 :=
.seq NamedBody477_50 NamedBody477_51

def NamedBody477_53 : StackLang.HolProg 64 :=
.seq NamedBody477_49 NamedBody477_52

def NamedBody477_54 : StackLang.HolProg 64 :=
.seq NamedBody477_48 NamedBody477_53

def NamedBody477_55 : StackLang.HolProg 64 :=
.seq NamedBody477_47 NamedBody477_54

def NamedBody477_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody477_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody477_58 : StackLang.HolProg 64 :=
.seq NamedBody477_56 NamedBody477_57

def NamedBody477_59 : StackLang.HolProg 64 :=
.call (some (NamedBody477_55, 1, 477, 2)) (Sum.inl 476) (some (NamedBody477_58, 477, 3))

def NamedBody477_60 : StackLang.HolProg 64 :=
.seq NamedBody477_46 NamedBody477_59

def NamedBody477_61 : StackLang.HolProg 64 :=
.seq NamedBody477_45 NamedBody477_60

def NamedBody477_62 : StackLang.HolProg 64 :=
.seq NamedBody477_44 NamedBody477_61

def NamedBody477_63 : StackLang.HolProg 64 :=
.seq NamedBody477_15 NamedBody477_62

def NamedBody477_64 : StackLang.HolProg 64 :=
.seq NamedBody477_12 NamedBody477_63

def NamedBody477_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody477_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody477_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody477_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody477_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody477_70 : StackLang.HolProg 64 :=
.seq NamedBody477_68 NamedBody477_69

def NamedBody477_71 : StackLang.HolProg 64 :=
.seq NamedBody477_67 NamedBody477_70

def NamedBody477_72 : StackLang.HolProg 64 :=
.seq NamedBody477_66 NamedBody477_71

def NamedBody477_73 : StackLang.HolProg 64 :=
.seq NamedBody477_65 NamedBody477_72

def NamedBody477_74 : StackLang.HolProg 64 :=
.seq NamedBody477_64 NamedBody477_73

def NamedBody477_75 : StackLang.HolProg 64 :=
.seq NamedBody477_11 NamedBody477_74

def NamedBody477_76 : StackLang.HolProg 64 :=
.seq NamedBody477_10 NamedBody477_75

def NamedBody477_77 : StackLang.HolProg 64 :=
.seq NamedBody477_9 NamedBody477_76

def NamedBody477_78 : StackLang.HolProg 64 :=
.seq NamedBody477_8 NamedBody477_77

def NamedBody477_79 : StackLang.HolProg 64 :=
.seq NamedBody477_7 NamedBody477_78

def NamedBody477_80 : StackLang.HolProg 64 :=
.seq NamedBody477_6 NamedBody477_79

def Named477 : Nat × StackLang.HolProg 64 := (477, NamedBody477_80)
theorem Named477_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed477 = Named477 := by
  kernel_rfl
#print axioms Named477_eq
end InitECandidate.Proofs.BackendStages
