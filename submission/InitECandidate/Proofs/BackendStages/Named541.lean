import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed541
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody541_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody541_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody541_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 90#64)

def NamedBody541_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody541_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1#64)

def NamedBody541_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody541_6 : StackLang.HolProg 64 :=
.seq NamedBody541_4 NamedBody541_5

def NamedBody541_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody541_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody541_9 : StackLang.HolProg 64 :=
.seq NamedBody541_7 NamedBody541_8

def NamedBody541_10 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody541_6 NamedBody541_9

def NamedBody541_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody541_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody541_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 128#64)

def NamedBody541_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1#64)

def NamedBody541_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody541_16 : StackLang.HolProg 64 :=
.seq NamedBody541_14 NamedBody541_15

def NamedBody541_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody541_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody541_19 : StackLang.HolProg 64 :=
.seq NamedBody541_17 NamedBody541_18

def NamedBody541_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody541_16 NamedBody541_19

def NamedBody541_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody541_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody541_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody541_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody541_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody541_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody541_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 145#64)))

def NamedBody541_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 255#64)))

def NamedBody541_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody541_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody541_31 : StackLang.HolProg 64 :=
.seq NamedBody541_29 NamedBody541_30

def NamedBody541_32 : StackLang.HolProg 64 :=
.seq NamedBody541_28 NamedBody541_31

def NamedBody541_33 : StackLang.HolProg 64 :=
.seq NamedBody541_27 NamedBody541_32

def NamedBody541_34 : StackLang.HolProg 64 :=
.seq NamedBody541_26 NamedBody541_33

def NamedBody541_35 : StackLang.HolProg 64 :=
.seq NamedBody541_25 NamedBody541_34

def NamedBody541_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody541_37 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody541_35 NamedBody541_36

def NamedBody541_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody541_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody541_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 10#64)

def NamedBody541_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody541_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody541_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody541_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody541_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody541_46 : StackLang.HolProg 64 :=
.seq NamedBody541_44 NamedBody541_45

def NamedBody541_47 : StackLang.HolProg 64 :=
.seq NamedBody541_43 NamedBody541_46

def NamedBody541_48 : StackLang.HolProg 64 :=
.seq NamedBody541_42 NamedBody541_47

def NamedBody541_49 : StackLang.HolProg 64 :=
.seq NamedBody541_41 NamedBody541_48

def NamedBody541_50 : StackLang.HolProg 64 :=
.seq NamedBody541_40 NamedBody541_49

def NamedBody541_51 : StackLang.HolProg 64 :=
.seq NamedBody541_39 NamedBody541_50

def NamedBody541_52 : StackLang.HolProg 64 :=
.seq NamedBody541_38 NamedBody541_51

def NamedBody541_53 : StackLang.HolProg 64 :=
.seq NamedBody541_37 NamedBody541_52

def NamedBody541_54 : StackLang.HolProg 64 :=
.seq NamedBody541_24 NamedBody541_53

def NamedBody541_55 : StackLang.HolProg 64 :=
.seq NamedBody541_23 NamedBody541_54

def NamedBody541_56 : StackLang.HolProg 64 :=
.seq NamedBody541_22 NamedBody541_55

def NamedBody541_57 : StackLang.HolProg 64 :=
.seq NamedBody541_21 NamedBody541_56

def NamedBody541_58 : StackLang.HolProg 64 :=
.seq NamedBody541_20 NamedBody541_57

def NamedBody541_59 : StackLang.HolProg 64 :=
.seq NamedBody541_13 NamedBody541_58

def NamedBody541_60 : StackLang.HolProg 64 :=
.seq NamedBody541_12 NamedBody541_59

def NamedBody541_61 : StackLang.HolProg 64 :=
.seq NamedBody541_11 NamedBody541_60

def NamedBody541_62 : StackLang.HolProg 64 :=
.seq NamedBody541_10 NamedBody541_61

def NamedBody541_63 : StackLang.HolProg 64 :=
.seq NamedBody541_3 NamedBody541_62

def NamedBody541_64 : StackLang.HolProg 64 :=
.seq NamedBody541_2 NamedBody541_63

def NamedBody541_65 : StackLang.HolProg 64 :=
.seq NamedBody541_1 NamedBody541_64

def NamedBody541_66 : StackLang.HolProg 64 :=
.seq NamedBody541_0 NamedBody541_65

def Named541 : Nat × StackLang.HolProg 64 := (541, NamedBody541_66)
theorem Named541_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed541 = Named541 := by
  kernel_rfl
#print axioms Named541_eq
end InitECandidate.Proofs.BackendStages
