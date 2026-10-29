import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed434
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody434_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody434_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody434_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody434_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody434_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody434_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 18446744073709551440#64))

def NamedBody434_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 56#64))

def NamedBody434_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody434_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody434_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody434_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody434_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 1#64)

def NamedBody434_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody434_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody434_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody434_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 18446744073709551440#64))

def NamedBody434_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody434_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody434_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody434_19 : StackLang.HolProg 64 :=
.seq NamedBody434_17 NamedBody434_18

def NamedBody434_20 : StackLang.HolProg 64 :=
.seq NamedBody434_16 NamedBody434_19

def NamedBody434_21 : StackLang.HolProg 64 :=
.seq NamedBody434_15 NamedBody434_20

def NamedBody434_22 : StackLang.HolProg 64 :=
.seq NamedBody434_14 NamedBody434_21

def NamedBody434_23 : StackLang.HolProg 64 :=
.seq NamedBody434_13 NamedBody434_22

def NamedBody434_24 : StackLang.HolProg 64 :=
.seq NamedBody434_12 NamedBody434_23

def NamedBody434_25 : StackLang.HolProg 64 :=
.seq NamedBody434_11 NamedBody434_24

def NamedBody434_26 : StackLang.HolProg 64 :=
.seq NamedBody434_10 NamedBody434_25

def NamedBody434_27 : StackLang.HolProg 64 :=
.seq NamedBody434_9 NamedBody434_26

def NamedBody434_28 : StackLang.HolProg 64 :=
.seq NamedBody434_8 NamedBody434_27

def NamedBody434_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody434_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody434_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 64#64))

def NamedBody434_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody434_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody434_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody434_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody434_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody434_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody434_38 : StackLang.HolProg 64 :=
.seq NamedBody434_36 NamedBody434_37

def NamedBody434_39 : StackLang.HolProg 64 :=
.seq NamedBody434_35 NamedBody434_38

def NamedBody434_40 : StackLang.HolProg 64 :=
.seq NamedBody434_34 NamedBody434_39

def NamedBody434_41 : StackLang.HolProg 64 :=
.seq NamedBody434_33 NamedBody434_40

def NamedBody434_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody434_43 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody434_41 NamedBody434_42

def NamedBody434_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody434_45 : StackLang.HolProg 64 :=
.seq NamedBody434_43 NamedBody434_44

def NamedBody434_46 : StackLang.HolProg 64 :=
.seq NamedBody434_32 NamedBody434_45

def NamedBody434_47 : StackLang.HolProg 64 :=
.seq NamedBody434_31 NamedBody434_46

def NamedBody434_48 : StackLang.HolProg 64 :=
.seq NamedBody434_30 NamedBody434_47

def NamedBody434_49 : StackLang.HolProg 64 :=
.seq NamedBody434_29 NamedBody434_48

def NamedBody434_50 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) NamedBody434_28 NamedBody434_49

def NamedBody434_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody434_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody434_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody434_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody434_55 : StackLang.HolProg 64 :=
.seq NamedBody434_53 NamedBody434_54

def NamedBody434_56 : StackLang.HolProg 64 :=
.seq NamedBody434_52 NamedBody434_55

def NamedBody434_57 : StackLang.HolProg 64 :=
.seq NamedBody434_51 NamedBody434_56

def NamedBody434_58 : StackLang.HolProg 64 :=
.seq NamedBody434_50 NamedBody434_57

def NamedBody434_59 : StackLang.HolProg 64 :=
.seq NamedBody434_7 NamedBody434_58

def NamedBody434_60 : StackLang.HolProg 64 :=
.seq NamedBody434_6 NamedBody434_59

def NamedBody434_61 : StackLang.HolProg 64 :=
.seq NamedBody434_5 NamedBody434_60

def NamedBody434_62 : StackLang.HolProg 64 :=
.seq NamedBody434_4 NamedBody434_61

def NamedBody434_63 : StackLang.HolProg 64 :=
.seq NamedBody434_3 NamedBody434_62

def NamedBody434_64 : StackLang.HolProg 64 :=
.seq NamedBody434_2 NamedBody434_63

def NamedBody434_65 : StackLang.HolProg 64 :=
.seq NamedBody434_1 NamedBody434_64

def NamedBody434_66 : StackLang.HolProg 64 :=
.seq NamedBody434_0 NamedBody434_65

def Named434 : Nat × StackLang.HolProg 64 := (434, NamedBody434_66)
theorem Named434_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed434 = Named434 := by
  kernel_rfl
#print axioms Named434_eq
end InitECandidate.Proofs.BackendStages
