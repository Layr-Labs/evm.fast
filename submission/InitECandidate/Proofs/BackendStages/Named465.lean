import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed465
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody465_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody465_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody465_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody465_3 : StackLang.HolProg 64 :=
.seq NamedBody465_1 NamedBody465_2

def NamedBody465_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody465_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody465_3 NamedBody465_4

def NamedBody465_6 : StackLang.HolProg 64 :=
.seq NamedBody465_0 NamedBody465_5

def NamedBody465_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody465_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody465_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1489#64)

def NamedBody465_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody465_11 : StackLang.HolProg 64 :=
.seq NamedBody465_9 NamedBody465_10

def NamedBody465_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody465_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody465_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody465_15 : StackLang.HolProg 64 :=
.seq NamedBody465_13 NamedBody465_14

def NamedBody465_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody465_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody465_15 NamedBody465_16

def NamedBody465_18 : StackLang.HolProg 64 :=
.seq NamedBody465_12 NamedBody465_17

def NamedBody465_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody465_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody465_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 465 3

def NamedBody465_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody465_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody465_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody465_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody465_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody465_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody465_28 : StackLang.HolProg 64 :=
.seq NamedBody465_26 NamedBody465_27

def NamedBody465_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody465_30 : StackLang.HolProg 64 :=
.seq NamedBody465_28 NamedBody465_29

def NamedBody465_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody465_32 : StackLang.HolProg 64 :=
.seq NamedBody465_30 NamedBody465_31

def NamedBody465_33 : StackLang.HolProg 64 :=
.seq NamedBody465_25 NamedBody465_32

def NamedBody465_34 : StackLang.HolProg 64 :=
.seq NamedBody465_24 NamedBody465_33

def NamedBody465_35 : StackLang.HolProg 64 :=
.seq NamedBody465_23 NamedBody465_34

def NamedBody465_36 : StackLang.HolProg 64 :=
.seq NamedBody465_22 NamedBody465_35

def NamedBody465_37 : StackLang.HolProg 64 :=
.seq NamedBody465_21 NamedBody465_36

def NamedBody465_38 : StackLang.HolProg 64 :=
.seq NamedBody465_20 NamedBody465_37

def NamedBody465_39 : StackLang.HolProg 64 :=
.seq NamedBody465_19 NamedBody465_38

def NamedBody465_40 : StackLang.HolProg 64 :=
.seq NamedBody465_18 NamedBody465_39

def NamedBody465_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody465_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody465_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody465_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody465_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody465_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody465_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody465_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody465_49 : StackLang.HolProg 64 :=
.seq NamedBody465_47 NamedBody465_48

def NamedBody465_50 : StackLang.HolProg 64 :=
.seq NamedBody465_46 NamedBody465_49

def NamedBody465_51 : StackLang.HolProg 64 :=
.seq NamedBody465_45 NamedBody465_50

def NamedBody465_52 : StackLang.HolProg 64 :=
.seq NamedBody465_44 NamedBody465_51

def NamedBody465_53 : StackLang.HolProg 64 :=
.seq NamedBody465_43 NamedBody465_52

def NamedBody465_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody465_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody465_56 : StackLang.HolProg 64 :=
.seq NamedBody465_54 NamedBody465_55

def NamedBody465_57 : StackLang.HolProg 64 :=
.call (some (NamedBody465_53, 1, 465, 2)) (Sum.inl 464) (some (NamedBody465_56, 465, 3))

def NamedBody465_58 : StackLang.HolProg 64 :=
.seq NamedBody465_42 NamedBody465_57

def NamedBody465_59 : StackLang.HolProg 64 :=
.seq NamedBody465_41 NamedBody465_58

def NamedBody465_60 : StackLang.HolProg 64 :=
.seq NamedBody465_40 NamedBody465_59

def NamedBody465_61 : StackLang.HolProg 64 :=
.seq NamedBody465_11 NamedBody465_60

def NamedBody465_62 : StackLang.HolProg 64 :=
.seq NamedBody465_8 NamedBody465_61

def NamedBody465_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody465_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody465_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody465_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody465_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody465_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody465_69 : StackLang.HolProg 64 :=
.seq NamedBody465_67 NamedBody465_68

def NamedBody465_70 : StackLang.HolProg 64 :=
.seq NamedBody465_66 NamedBody465_69

def NamedBody465_71 : StackLang.HolProg 64 :=
.seq NamedBody465_65 NamedBody465_70

def NamedBody465_72 : StackLang.HolProg 64 :=
.seq NamedBody465_64 NamedBody465_71

def NamedBody465_73 : StackLang.HolProg 64 :=
.seq NamedBody465_63 NamedBody465_72

def NamedBody465_74 : StackLang.HolProg 64 :=
.seq NamedBody465_62 NamedBody465_73

def NamedBody465_75 : StackLang.HolProg 64 :=
.seq NamedBody465_7 NamedBody465_74

def NamedBody465_76 : StackLang.HolProg 64 :=
.seq NamedBody465_6 NamedBody465_75

def Named465 : Nat × StackLang.HolProg 64 := (465, NamedBody465_76)
theorem Named465_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed465 = Named465 := by
  kernel_rfl
#print axioms Named465_eq
end InitECandidate.Proofs.BackendStages
