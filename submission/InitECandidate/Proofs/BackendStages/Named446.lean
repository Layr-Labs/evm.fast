import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed446
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody446_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody446_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody446_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody446_3 : StackLang.HolProg 64 :=
.seq NamedBody446_1 NamedBody446_2

def NamedBody446_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody446_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody446_3 NamedBody446_4

def NamedBody446_6 : StackLang.HolProg 64 :=
.seq NamedBody446_0 NamedBody446_5

def NamedBody446_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody446_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody446_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1345#64)

def NamedBody446_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody446_11 : StackLang.HolProg 64 :=
.seq NamedBody446_9 NamedBody446_10

def NamedBody446_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody446_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody446_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody446_15 : StackLang.HolProg 64 :=
.seq NamedBody446_13 NamedBody446_14

def NamedBody446_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody446_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody446_15 NamedBody446_16

def NamedBody446_18 : StackLang.HolProg 64 :=
.seq NamedBody446_12 NamedBody446_17

def NamedBody446_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody446_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody446_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 446 3

def NamedBody446_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody446_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody446_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody446_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody446_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody446_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody446_28 : StackLang.HolProg 64 :=
.seq NamedBody446_26 NamedBody446_27

def NamedBody446_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody446_30 : StackLang.HolProg 64 :=
.seq NamedBody446_28 NamedBody446_29

def NamedBody446_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody446_32 : StackLang.HolProg 64 :=
.seq NamedBody446_30 NamedBody446_31

def NamedBody446_33 : StackLang.HolProg 64 :=
.seq NamedBody446_25 NamedBody446_32

def NamedBody446_34 : StackLang.HolProg 64 :=
.seq NamedBody446_24 NamedBody446_33

def NamedBody446_35 : StackLang.HolProg 64 :=
.seq NamedBody446_23 NamedBody446_34

def NamedBody446_36 : StackLang.HolProg 64 :=
.seq NamedBody446_22 NamedBody446_35

def NamedBody446_37 : StackLang.HolProg 64 :=
.seq NamedBody446_21 NamedBody446_36

def NamedBody446_38 : StackLang.HolProg 64 :=
.seq NamedBody446_20 NamedBody446_37

def NamedBody446_39 : StackLang.HolProg 64 :=
.seq NamedBody446_19 NamedBody446_38

def NamedBody446_40 : StackLang.HolProg 64 :=
.seq NamedBody446_18 NamedBody446_39

def NamedBody446_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody446_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody446_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody446_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody446_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody446_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody446_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody446_48 : StackLang.HolProg 64 :=
.seq NamedBody446_46 NamedBody446_47

def NamedBody446_49 : StackLang.HolProg 64 :=
.seq NamedBody446_45 NamedBody446_48

def NamedBody446_50 : StackLang.HolProg 64 :=
.seq NamedBody446_44 NamedBody446_49

def NamedBody446_51 : StackLang.HolProg 64 :=
.seq NamedBody446_43 NamedBody446_50

def NamedBody446_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody446_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody446_54 : StackLang.HolProg 64 :=
.seq NamedBody446_52 NamedBody446_53

def NamedBody446_55 : StackLang.HolProg 64 :=
.call (some (NamedBody446_51, 1, 446, 2)) (Sum.inl 439) (some (NamedBody446_54, 446, 3))

def NamedBody446_56 : StackLang.HolProg 64 :=
.seq NamedBody446_42 NamedBody446_55

def NamedBody446_57 : StackLang.HolProg 64 :=
.seq NamedBody446_41 NamedBody446_56

def NamedBody446_58 : StackLang.HolProg 64 :=
.seq NamedBody446_40 NamedBody446_57

def NamedBody446_59 : StackLang.HolProg 64 :=
.seq NamedBody446_11 NamedBody446_58

def NamedBody446_60 : StackLang.HolProg 64 :=
.seq NamedBody446_8 NamedBody446_59

def NamedBody446_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody446_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody446_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody446_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody446_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody446_66 : StackLang.HolProg 64 :=
.seq NamedBody446_64 NamedBody446_65

def NamedBody446_67 : StackLang.HolProg 64 :=
.seq NamedBody446_63 NamedBody446_66

def NamedBody446_68 : StackLang.HolProg 64 :=
.seq NamedBody446_62 NamedBody446_67

def NamedBody446_69 : StackLang.HolProg 64 :=
.seq NamedBody446_61 NamedBody446_68

def NamedBody446_70 : StackLang.HolProg 64 :=
.seq NamedBody446_60 NamedBody446_69

def NamedBody446_71 : StackLang.HolProg 64 :=
.seq NamedBody446_7 NamedBody446_70

def NamedBody446_72 : StackLang.HolProg 64 :=
.seq NamedBody446_6 NamedBody446_71

def Named446 : Nat × StackLang.HolProg 64 := (446, NamedBody446_72)
theorem Named446_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed446 = Named446 := by
  kernel_rfl
#print axioms Named446_eq
end InitECandidate.Proofs.BackendStages
