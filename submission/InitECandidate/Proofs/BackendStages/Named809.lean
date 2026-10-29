import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed809
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody809_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody809_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody809_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody809_3 : StackLang.HolProg 64 :=
.seq NamedBody809_1 NamedBody809_2

def NamedBody809_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody809_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody809_3 NamedBody809_4

def NamedBody809_6 : StackLang.HolProg 64 :=
.seq NamedBody809_0 NamedBody809_5

def NamedBody809_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody809_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody809_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3986#64)

def NamedBody809_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody809_11 : StackLang.HolProg 64 :=
.seq NamedBody809_9 NamedBody809_10

def NamedBody809_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody809_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody809_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody809_15 : StackLang.HolProg 64 :=
.seq NamedBody809_13 NamedBody809_14

def NamedBody809_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody809_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody809_15 NamedBody809_16

def NamedBody809_18 : StackLang.HolProg 64 :=
.seq NamedBody809_12 NamedBody809_17

def NamedBody809_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody809_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody809_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 809 3

def NamedBody809_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody809_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody809_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody809_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody809_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody809_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody809_28 : StackLang.HolProg 64 :=
.seq NamedBody809_26 NamedBody809_27

def NamedBody809_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody809_30 : StackLang.HolProg 64 :=
.seq NamedBody809_28 NamedBody809_29

def NamedBody809_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody809_32 : StackLang.HolProg 64 :=
.seq NamedBody809_30 NamedBody809_31

def NamedBody809_33 : StackLang.HolProg 64 :=
.seq NamedBody809_25 NamedBody809_32

def NamedBody809_34 : StackLang.HolProg 64 :=
.seq NamedBody809_24 NamedBody809_33

def NamedBody809_35 : StackLang.HolProg 64 :=
.seq NamedBody809_23 NamedBody809_34

def NamedBody809_36 : StackLang.HolProg 64 :=
.seq NamedBody809_22 NamedBody809_35

def NamedBody809_37 : StackLang.HolProg 64 :=
.seq NamedBody809_21 NamedBody809_36

def NamedBody809_38 : StackLang.HolProg 64 :=
.seq NamedBody809_20 NamedBody809_37

def NamedBody809_39 : StackLang.HolProg 64 :=
.seq NamedBody809_19 NamedBody809_38

def NamedBody809_40 : StackLang.HolProg 64 :=
.seq NamedBody809_18 NamedBody809_39

def NamedBody809_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody809_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody809_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody809_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody809_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody809_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody809_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody809_48 : StackLang.HolProg 64 :=
.seq NamedBody809_46 NamedBody809_47

def NamedBody809_49 : StackLang.HolProg 64 :=
.seq NamedBody809_45 NamedBody809_48

def NamedBody809_50 : StackLang.HolProg 64 :=
.seq NamedBody809_44 NamedBody809_49

def NamedBody809_51 : StackLang.HolProg 64 :=
.seq NamedBody809_43 NamedBody809_50

def NamedBody809_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody809_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody809_54 : StackLang.HolProg 64 :=
.seq NamedBody809_52 NamedBody809_53

def NamedBody809_55 : StackLang.HolProg 64 :=
.call (some (NamedBody809_51, 1, 809, 2)) (Sum.inl 704) (some (NamedBody809_54, 809, 3))

def NamedBody809_56 : StackLang.HolProg 64 :=
.seq NamedBody809_42 NamedBody809_55

def NamedBody809_57 : StackLang.HolProg 64 :=
.seq NamedBody809_41 NamedBody809_56

def NamedBody809_58 : StackLang.HolProg 64 :=
.seq NamedBody809_40 NamedBody809_57

def NamedBody809_59 : StackLang.HolProg 64 :=
.seq NamedBody809_11 NamedBody809_58

def NamedBody809_60 : StackLang.HolProg 64 :=
.seq NamedBody809_8 NamedBody809_59

def NamedBody809_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody809_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody809_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody809_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody809_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody809_66 : StackLang.HolProg 64 :=
.seq NamedBody809_64 NamedBody809_65

def NamedBody809_67 : StackLang.HolProg 64 :=
.seq NamedBody809_63 NamedBody809_66

def NamedBody809_68 : StackLang.HolProg 64 :=
.seq NamedBody809_62 NamedBody809_67

def NamedBody809_69 : StackLang.HolProg 64 :=
.seq NamedBody809_61 NamedBody809_68

def NamedBody809_70 : StackLang.HolProg 64 :=
.seq NamedBody809_60 NamedBody809_69

def NamedBody809_71 : StackLang.HolProg 64 :=
.seq NamedBody809_7 NamedBody809_70

def NamedBody809_72 : StackLang.HolProg 64 :=
.seq NamedBody809_6 NamedBody809_71

def Named809 : Nat × StackLang.HolProg 64 := (809, NamedBody809_72)
theorem Named809_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed809 = Named809 := by
  kernel_rfl
#print axioms Named809_eq
end InitECandidate.Proofs.BackendStages
