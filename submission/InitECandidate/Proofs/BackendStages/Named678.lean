import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed678
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody678_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody678_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody678_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody678_3 : StackLang.HolProg 64 :=
.seq NamedBody678_1 NamedBody678_2

def NamedBody678_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody678_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody678_3 NamedBody678_4

def NamedBody678_6 : StackLang.HolProg 64 :=
.seq NamedBody678_0 NamedBody678_5

def NamedBody678_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody678_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody678_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody678_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody678_11 : StackLang.HolProg 64 :=
.seq NamedBody678_9 NamedBody678_10

def NamedBody678_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody678_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2792#64)

def NamedBody678_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody678_15 : StackLang.HolProg 64 :=
.seq NamedBody678_13 NamedBody678_14

def NamedBody678_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody678_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody678_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody678_19 : StackLang.HolProg 64 :=
.seq NamedBody678_17 NamedBody678_18

def NamedBody678_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody678_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody678_19 NamedBody678_20

def NamedBody678_22 : StackLang.HolProg 64 :=
.seq NamedBody678_16 NamedBody678_21

def NamedBody678_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody678_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody678_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 678 3

def NamedBody678_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody678_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody678_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody678_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody678_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody678_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody678_32 : StackLang.HolProg 64 :=
.seq NamedBody678_30 NamedBody678_31

def NamedBody678_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody678_34 : StackLang.HolProg 64 :=
.seq NamedBody678_32 NamedBody678_33

def NamedBody678_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody678_36 : StackLang.HolProg 64 :=
.seq NamedBody678_34 NamedBody678_35

def NamedBody678_37 : StackLang.HolProg 64 :=
.seq NamedBody678_29 NamedBody678_36

def NamedBody678_38 : StackLang.HolProg 64 :=
.seq NamedBody678_28 NamedBody678_37

def NamedBody678_39 : StackLang.HolProg 64 :=
.seq NamedBody678_27 NamedBody678_38

def NamedBody678_40 : StackLang.HolProg 64 :=
.seq NamedBody678_26 NamedBody678_39

def NamedBody678_41 : StackLang.HolProg 64 :=
.seq NamedBody678_25 NamedBody678_40

def NamedBody678_42 : StackLang.HolProg 64 :=
.seq NamedBody678_24 NamedBody678_41

def NamedBody678_43 : StackLang.HolProg 64 :=
.seq NamedBody678_23 NamedBody678_42

def NamedBody678_44 : StackLang.HolProg 64 :=
.seq NamedBody678_22 NamedBody678_43

def NamedBody678_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody678_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody678_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody678_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody678_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody678_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody678_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody678_52 : StackLang.HolProg 64 :=
.seq NamedBody678_50 NamedBody678_51

def NamedBody678_53 : StackLang.HolProg 64 :=
.seq NamedBody678_49 NamedBody678_52

def NamedBody678_54 : StackLang.HolProg 64 :=
.seq NamedBody678_48 NamedBody678_53

def NamedBody678_55 : StackLang.HolProg 64 :=
.seq NamedBody678_47 NamedBody678_54

def NamedBody678_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody678_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody678_58 : StackLang.HolProg 64 :=
.seq NamedBody678_56 NamedBody678_57

def NamedBody678_59 : StackLang.HolProg 64 :=
.call (some (NamedBody678_55, 1, 678, 2)) (Sum.inl 78) (some (NamedBody678_58, 678, 3))

def NamedBody678_60 : StackLang.HolProg 64 :=
.seq NamedBody678_46 NamedBody678_59

def NamedBody678_61 : StackLang.HolProg 64 :=
.seq NamedBody678_45 NamedBody678_60

def NamedBody678_62 : StackLang.HolProg 64 :=
.seq NamedBody678_44 NamedBody678_61

def NamedBody678_63 : StackLang.HolProg 64 :=
.seq NamedBody678_15 NamedBody678_62

def NamedBody678_64 : StackLang.HolProg 64 :=
.seq NamedBody678_12 NamedBody678_63

def NamedBody678_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody678_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody678_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody678_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody678_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody678_70 : StackLang.HolProg 64 :=
.seq NamedBody678_68 NamedBody678_69

def NamedBody678_71 : StackLang.HolProg 64 :=
.seq NamedBody678_67 NamedBody678_70

def NamedBody678_72 : StackLang.HolProg 64 :=
.seq NamedBody678_66 NamedBody678_71

def NamedBody678_73 : StackLang.HolProg 64 :=
.seq NamedBody678_65 NamedBody678_72

def NamedBody678_74 : StackLang.HolProg 64 :=
.seq NamedBody678_64 NamedBody678_73

def NamedBody678_75 : StackLang.HolProg 64 :=
.seq NamedBody678_11 NamedBody678_74

def NamedBody678_76 : StackLang.HolProg 64 :=
.seq NamedBody678_8 NamedBody678_75

def NamedBody678_77 : StackLang.HolProg 64 :=
.seq NamedBody678_7 NamedBody678_76

def NamedBody678_78 : StackLang.HolProg 64 :=
.seq NamedBody678_6 NamedBody678_77

def Named678 : Nat × StackLang.HolProg 64 := (678, NamedBody678_78)
theorem Named678_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed678 = Named678 := by
  kernel_rfl
#print axioms Named678_eq
end InitECandidate.Proofs.BackendStages
