import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed80
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody80_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody80_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody80_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody80_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody80_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody80_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody80_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody80_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody80_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody80_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody80_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody80_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody80_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody80_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody80_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody80_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody80_16 : StackLang.HolProg 64 :=
.seq NamedBody80_14 NamedBody80_15

def NamedBody80_17 : StackLang.HolProg 64 :=
.seq NamedBody80_13 NamedBody80_16

def NamedBody80_18 : StackLang.HolProg 64 :=
.seq NamedBody80_12 NamedBody80_17

def NamedBody80_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody80_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) NamedBody80_18 NamedBody80_19

def NamedBody80_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody80_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody80_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody80_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody80_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody80_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody80_27 : StackLang.HolProg 64 :=
.seq NamedBody80_25 NamedBody80_26

def NamedBody80_28 : StackLang.HolProg 64 :=
.seq NamedBody80_24 NamedBody80_27

def NamedBody80_29 : StackLang.HolProg 64 :=
.seq NamedBody80_23 NamedBody80_28

def NamedBody80_30 : StackLang.HolProg 64 :=
.seq NamedBody80_22 NamedBody80_29

def NamedBody80_31 : StackLang.HolProg 64 :=
.seq NamedBody80_21 NamedBody80_30

def NamedBody80_32 : StackLang.HolProg 64 :=
.seq NamedBody80_20 NamedBody80_31

def NamedBody80_33 : StackLang.HolProg 64 :=
.seq NamedBody80_11 NamedBody80_32

def NamedBody80_34 : StackLang.HolProg 64 :=
.seq NamedBody80_10 NamedBody80_33

def NamedBody80_35 : StackLang.HolProg 64 :=
.seq NamedBody80_9 NamedBody80_34

def NamedBody80_36 : StackLang.HolProg 64 :=
.seq NamedBody80_8 NamedBody80_35

def NamedBody80_37 : StackLang.HolProg 64 :=
.seq NamedBody80_7 NamedBody80_36

def NamedBody80_38 : StackLang.HolProg 64 :=
.seq NamedBody80_6 NamedBody80_37

def NamedBody80_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody80_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody80_41 : StackLang.HolProg 64 :=
.seq NamedBody80_39 NamedBody80_40

def NamedBody80_42 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody80_38 NamedBody80_41

def NamedBody80_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody80_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody80_45 : StackLang.HolProg 64 :=
.seq NamedBody80_43 NamedBody80_44

def NamedBody80_46 : StackLang.HolProg 64 :=
.seq NamedBody80_42 NamedBody80_45

def NamedBody80_47 : StackLang.HolProg 64 :=
.seq NamedBody80_5 NamedBody80_46

def NamedBody80_48 : StackLang.HolProg 64 :=
.loop NamedBody80_47

def NamedBody80_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody80_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody80_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody80_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody80_53 : StackLang.HolProg 64 :=
.seq NamedBody80_51 NamedBody80_52

def NamedBody80_54 : StackLang.HolProg 64 :=
.seq NamedBody80_50 NamedBody80_53

def NamedBody80_55 : StackLang.HolProg 64 :=
.seq NamedBody80_49 NamedBody80_54

def NamedBody80_56 : StackLang.HolProg 64 :=
.seq NamedBody80_48 NamedBody80_55

def NamedBody80_57 : StackLang.HolProg 64 :=
.seq NamedBody80_4 NamedBody80_56

def NamedBody80_58 : StackLang.HolProg 64 :=
.seq NamedBody80_3 NamedBody80_57

def NamedBody80_59 : StackLang.HolProg 64 :=
.seq NamedBody80_2 NamedBody80_58

def NamedBody80_60 : StackLang.HolProg 64 :=
.seq NamedBody80_1 NamedBody80_59

def NamedBody80_61 : StackLang.HolProg 64 :=
.seq NamedBody80_0 NamedBody80_60

def Named80 : Nat × StackLang.HolProg 64 := (80, NamedBody80_61)
theorem Named80_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed80 = Named80 := by
  kernel_rfl
#print axioms Named80_eq
end InitECandidate.Proofs.BackendStages
