import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed864
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody864_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody864_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody864_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody864_3 : StackLang.HolProg 64 :=
.seq NamedBody864_1 NamedBody864_2

def NamedBody864_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody864_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody864_3 NamedBody864_4

def NamedBody864_6 : StackLang.HolProg 64 :=
.seq NamedBody864_0 NamedBody864_5

def NamedBody864_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody864_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 5#64)

def NamedBody864_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody864_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody864_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4520#64)

def NamedBody864_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody864_13 : StackLang.HolProg 64 :=
.seq NamedBody864_11 NamedBody864_12

def NamedBody864_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody864_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody864_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody864_17 : StackLang.HolProg 64 :=
.seq NamedBody864_15 NamedBody864_16

def NamedBody864_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody864_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody864_17 NamedBody864_18

def NamedBody864_20 : StackLang.HolProg 64 :=
.seq NamedBody864_14 NamedBody864_19

def NamedBody864_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody864_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody864_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 864 3

def NamedBody864_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody864_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody864_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody864_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody864_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody864_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody864_30 : StackLang.HolProg 64 :=
.seq NamedBody864_28 NamedBody864_29

def NamedBody864_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody864_32 : StackLang.HolProg 64 :=
.seq NamedBody864_30 NamedBody864_31

def NamedBody864_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody864_34 : StackLang.HolProg 64 :=
.seq NamedBody864_32 NamedBody864_33

def NamedBody864_35 : StackLang.HolProg 64 :=
.seq NamedBody864_27 NamedBody864_34

def NamedBody864_36 : StackLang.HolProg 64 :=
.seq NamedBody864_26 NamedBody864_35

def NamedBody864_37 : StackLang.HolProg 64 :=
.seq NamedBody864_25 NamedBody864_36

def NamedBody864_38 : StackLang.HolProg 64 :=
.seq NamedBody864_24 NamedBody864_37

def NamedBody864_39 : StackLang.HolProg 64 :=
.seq NamedBody864_23 NamedBody864_38

def NamedBody864_40 : StackLang.HolProg 64 :=
.seq NamedBody864_22 NamedBody864_39

def NamedBody864_41 : StackLang.HolProg 64 :=
.seq NamedBody864_21 NamedBody864_40

def NamedBody864_42 : StackLang.HolProg 64 :=
.seq NamedBody864_20 NamedBody864_41

def NamedBody864_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody864_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody864_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody864_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody864_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody864_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody864_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody864_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody864_51 : StackLang.HolProg 64 :=
.seq NamedBody864_49 NamedBody864_50

def NamedBody864_52 : StackLang.HolProg 64 :=
.seq NamedBody864_48 NamedBody864_51

def NamedBody864_53 : StackLang.HolProg 64 :=
.seq NamedBody864_47 NamedBody864_52

def NamedBody864_54 : StackLang.HolProg 64 :=
.seq NamedBody864_46 NamedBody864_53

def NamedBody864_55 : StackLang.HolProg 64 :=
.seq NamedBody864_45 NamedBody864_54

def NamedBody864_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody864_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody864_58 : StackLang.HolProg 64 :=
.seq NamedBody864_56 NamedBody864_57

def NamedBody864_59 : StackLang.HolProg 64 :=
.call (some (NamedBody864_55, 1, 864, 2)) (Sum.inl 95) (some (NamedBody864_58, 864, 3))

def NamedBody864_60 : StackLang.HolProg 64 :=
.seq NamedBody864_44 NamedBody864_59

def NamedBody864_61 : StackLang.HolProg 64 :=
.seq NamedBody864_43 NamedBody864_60

def NamedBody864_62 : StackLang.HolProg 64 :=
.seq NamedBody864_42 NamedBody864_61

def NamedBody864_63 : StackLang.HolProg 64 :=
.seq NamedBody864_13 NamedBody864_62

def NamedBody864_64 : StackLang.HolProg 64 :=
.seq NamedBody864_10 NamedBody864_63

def NamedBody864_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody864_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody864_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody864_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody864_69 : StackLang.HolProg 64 :=
.seq NamedBody864_67 NamedBody864_68

def NamedBody864_70 : StackLang.HolProg 64 :=
.seq NamedBody864_66 NamedBody864_69

def NamedBody864_71 : StackLang.HolProg 64 :=
.seq NamedBody864_65 NamedBody864_70

def NamedBody864_72 : StackLang.HolProg 64 :=
.seq NamedBody864_64 NamedBody864_71

def NamedBody864_73 : StackLang.HolProg 64 :=
.seq NamedBody864_9 NamedBody864_72

def NamedBody864_74 : StackLang.HolProg 64 :=
.seq NamedBody864_8 NamedBody864_73

def NamedBody864_75 : StackLang.HolProg 64 :=
.seq NamedBody864_7 NamedBody864_74

def NamedBody864_76 : StackLang.HolProg 64 :=
.seq NamedBody864_6 NamedBody864_75

def Named864 : Nat × StackLang.HolProg 64 := (864, NamedBody864_76)
theorem Named864_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed864 = Named864 := by
  kernel_rfl
#print axioms Named864_eq
end InitECandidate.Proofs.BackendStages
