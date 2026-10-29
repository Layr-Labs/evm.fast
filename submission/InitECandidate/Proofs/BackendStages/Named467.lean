import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed467
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody467_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody467_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody467_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody467_3 : StackLang.HolProg 64 :=
.seq NamedBody467_1 NamedBody467_2

def NamedBody467_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody467_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody467_3 NamedBody467_4

def NamedBody467_6 : StackLang.HolProg 64 :=
.seq NamedBody467_0 NamedBody467_5

def NamedBody467_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody467_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 20#64)

def NamedBody467_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody467_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody467_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1493#64)

def NamedBody467_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody467_13 : StackLang.HolProg 64 :=
.seq NamedBody467_11 NamedBody467_12

def NamedBody467_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody467_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody467_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody467_17 : StackLang.HolProg 64 :=
.seq NamedBody467_15 NamedBody467_16

def NamedBody467_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody467_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody467_17 NamedBody467_18

def NamedBody467_20 : StackLang.HolProg 64 :=
.seq NamedBody467_14 NamedBody467_19

def NamedBody467_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody467_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody467_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 467 3

def NamedBody467_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody467_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody467_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody467_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody467_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody467_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody467_30 : StackLang.HolProg 64 :=
.seq NamedBody467_28 NamedBody467_29

def NamedBody467_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody467_32 : StackLang.HolProg 64 :=
.seq NamedBody467_30 NamedBody467_31

def NamedBody467_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody467_34 : StackLang.HolProg 64 :=
.seq NamedBody467_32 NamedBody467_33

def NamedBody467_35 : StackLang.HolProg 64 :=
.seq NamedBody467_27 NamedBody467_34

def NamedBody467_36 : StackLang.HolProg 64 :=
.seq NamedBody467_26 NamedBody467_35

def NamedBody467_37 : StackLang.HolProg 64 :=
.seq NamedBody467_25 NamedBody467_36

def NamedBody467_38 : StackLang.HolProg 64 :=
.seq NamedBody467_24 NamedBody467_37

def NamedBody467_39 : StackLang.HolProg 64 :=
.seq NamedBody467_23 NamedBody467_38

def NamedBody467_40 : StackLang.HolProg 64 :=
.seq NamedBody467_22 NamedBody467_39

def NamedBody467_41 : StackLang.HolProg 64 :=
.seq NamedBody467_21 NamedBody467_40

def NamedBody467_42 : StackLang.HolProg 64 :=
.seq NamedBody467_20 NamedBody467_41

def NamedBody467_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody467_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody467_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody467_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody467_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody467_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody467_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody467_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody467_51 : StackLang.HolProg 64 :=
.seq NamedBody467_49 NamedBody467_50

def NamedBody467_52 : StackLang.HolProg 64 :=
.seq NamedBody467_48 NamedBody467_51

def NamedBody467_53 : StackLang.HolProg 64 :=
.seq NamedBody467_47 NamedBody467_52

def NamedBody467_54 : StackLang.HolProg 64 :=
.seq NamedBody467_46 NamedBody467_53

def NamedBody467_55 : StackLang.HolProg 64 :=
.seq NamedBody467_45 NamedBody467_54

def NamedBody467_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody467_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody467_58 : StackLang.HolProg 64 :=
.seq NamedBody467_56 NamedBody467_57

def NamedBody467_59 : StackLang.HolProg 64 :=
.call (some (NamedBody467_55, 1, 467, 2)) (Sum.inl 146) (some (NamedBody467_58, 467, 3))

def NamedBody467_60 : StackLang.HolProg 64 :=
.seq NamedBody467_44 NamedBody467_59

def NamedBody467_61 : StackLang.HolProg 64 :=
.seq NamedBody467_43 NamedBody467_60

def NamedBody467_62 : StackLang.HolProg 64 :=
.seq NamedBody467_42 NamedBody467_61

def NamedBody467_63 : StackLang.HolProg 64 :=
.seq NamedBody467_13 NamedBody467_62

def NamedBody467_64 : StackLang.HolProg 64 :=
.seq NamedBody467_10 NamedBody467_63

def NamedBody467_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody467_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody467_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody467_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody467_69 : StackLang.HolProg 64 :=
.seq NamedBody467_67 NamedBody467_68

def NamedBody467_70 : StackLang.HolProg 64 :=
.seq NamedBody467_66 NamedBody467_69

def NamedBody467_71 : StackLang.HolProg 64 :=
.seq NamedBody467_65 NamedBody467_70

def NamedBody467_72 : StackLang.HolProg 64 :=
.seq NamedBody467_64 NamedBody467_71

def NamedBody467_73 : StackLang.HolProg 64 :=
.seq NamedBody467_9 NamedBody467_72

def NamedBody467_74 : StackLang.HolProg 64 :=
.seq NamedBody467_8 NamedBody467_73

def NamedBody467_75 : StackLang.HolProg 64 :=
.seq NamedBody467_7 NamedBody467_74

def NamedBody467_76 : StackLang.HolProg 64 :=
.seq NamedBody467_6 NamedBody467_75

def Named467 : Nat × StackLang.HolProg 64 := (467, NamedBody467_76)
theorem Named467_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed467 = Named467 := by
  kernel_rfl
#print axioms Named467_eq
end InitECandidate.Proofs.BackendStages
