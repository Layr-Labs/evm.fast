import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed383
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody383_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody383_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody383_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody383_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody383_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody383_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody383_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody383_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody383_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody383_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody383_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody383_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody383_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def NamedBody383_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody383_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody383_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody383_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody383_17 : StackLang.HolProg 64 :=
.seq NamedBody383_15 NamedBody383_16

def NamedBody383_18 : StackLang.HolProg 64 :=
.seq NamedBody383_14 NamedBody383_17

def NamedBody383_19 : StackLang.HolProg 64 :=
.seq NamedBody383_13 NamedBody383_18

def NamedBody383_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody383_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody383_22 : StackLang.HolProg 64 :=
.seq NamedBody383_20 NamedBody383_21

def NamedBody383_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) NamedBody383_19 NamedBody383_22

def NamedBody383_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody383_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody383_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody383_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody383_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody383_29 : StackLang.HolProg 64 :=
.seq NamedBody383_27 NamedBody383_28

def NamedBody383_30 : StackLang.HolProg 64 :=
.seq NamedBody383_26 NamedBody383_29

def NamedBody383_31 : StackLang.HolProg 64 :=
.seq NamedBody383_25 NamedBody383_30

def NamedBody383_32 : StackLang.HolProg 64 :=
.seq NamedBody383_24 NamedBody383_31

def NamedBody383_33 : StackLang.HolProg 64 :=
.seq NamedBody383_23 NamedBody383_32

def NamedBody383_34 : StackLang.HolProg 64 :=
.seq NamedBody383_12 NamedBody383_33

def NamedBody383_35 : StackLang.HolProg 64 :=
.seq NamedBody383_11 NamedBody383_34

def NamedBody383_36 : StackLang.HolProg 64 :=
.seq NamedBody383_10 NamedBody383_35

def NamedBody383_37 : StackLang.HolProg 64 :=
.seq NamedBody383_9 NamedBody383_36

def NamedBody383_38 : StackLang.HolProg 64 :=
.seq NamedBody383_8 NamedBody383_37

def NamedBody383_39 : StackLang.HolProg 64 :=
.seq NamedBody383_7 NamedBody383_38

def NamedBody383_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody383_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody383_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody383_43 : StackLang.HolProg 64 :=
.seq NamedBody383_41 NamedBody383_42

def NamedBody383_44 : StackLang.HolProg 64 :=
.seq NamedBody383_40 NamedBody383_43

def NamedBody383_45 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody383_39 NamedBody383_44

def NamedBody383_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody383_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody383_48 : StackLang.HolProg 64 :=
.seq NamedBody383_46 NamedBody383_47

def NamedBody383_49 : StackLang.HolProg 64 :=
.seq NamedBody383_45 NamedBody383_48

def NamedBody383_50 : StackLang.HolProg 64 :=
.seq NamedBody383_6 NamedBody383_49

def NamedBody383_51 : StackLang.HolProg 64 :=
.loop NamedBody383_50

def NamedBody383_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody383_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody383_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody383_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody383_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody383_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody383_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody383_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody383_60 : StackLang.HolProg 64 :=
.seq NamedBody383_58 NamedBody383_59

def NamedBody383_61 : StackLang.HolProg 64 :=
.seq NamedBody383_57 NamedBody383_60

def NamedBody383_62 : StackLang.HolProg 64 :=
.seq NamedBody383_56 NamedBody383_61

def NamedBody383_63 : StackLang.HolProg 64 :=
.seq NamedBody383_55 NamedBody383_62

def NamedBody383_64 : StackLang.HolProg 64 :=
.seq NamedBody383_54 NamedBody383_63

def NamedBody383_65 : StackLang.HolProg 64 :=
.seq NamedBody383_53 NamedBody383_64

def NamedBody383_66 : StackLang.HolProg 64 :=
.seq NamedBody383_52 NamedBody383_65

def NamedBody383_67 : StackLang.HolProg 64 :=
.seq NamedBody383_51 NamedBody383_66

def NamedBody383_68 : StackLang.HolProg 64 :=
.seq NamedBody383_5 NamedBody383_67

def NamedBody383_69 : StackLang.HolProg 64 :=
.seq NamedBody383_4 NamedBody383_68

def NamedBody383_70 : StackLang.HolProg 64 :=
.seq NamedBody383_3 NamedBody383_69

def NamedBody383_71 : StackLang.HolProg 64 :=
.seq NamedBody383_2 NamedBody383_70

def NamedBody383_72 : StackLang.HolProg 64 :=
.seq NamedBody383_1 NamedBody383_71

def NamedBody383_73 : StackLang.HolProg 64 :=
.seq NamedBody383_0 NamedBody383_72

def Named383 : Nat × StackLang.HolProg 64 := (383, NamedBody383_73)
theorem Named383_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed383 = Named383 := by
  kernel_rfl
#print axioms Named383_eq
end InitECandidate.Proofs.BackendStages
