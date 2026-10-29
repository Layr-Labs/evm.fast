import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed323
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody323_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody323_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody323_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody323_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody323_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody323_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody323_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody323_7 : StackLang.HolProg 64 :=
.seq NamedBody323_5 NamedBody323_6

def NamedBody323_8 : StackLang.HolProg 64 :=
.seq NamedBody323_4 NamedBody323_7

def NamedBody323_9 : StackLang.HolProg 64 :=
.seq NamedBody323_3 NamedBody323_8

def NamedBody323_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody323_11 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody323_9 NamedBody323_10

def NamedBody323_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody323_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody323_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody323_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody323_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody323_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody323_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody323_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody323_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody323_21 : StackLang.HolProg 64 :=
.seq NamedBody323_19 NamedBody323_20

def NamedBody323_22 : StackLang.HolProg 64 :=
.seq NamedBody323_18 NamedBody323_21

def NamedBody323_23 : StackLang.HolProg 64 :=
.seq NamedBody323_17 NamedBody323_22

def NamedBody323_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody323_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody323_23 NamedBody323_24

def NamedBody323_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody323_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody323_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody323_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 8#64))

def NamedBody323_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody323_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody323_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody323_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody323_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody323_35 : StackLang.HolProg 64 :=
.seq NamedBody323_33 NamedBody323_34

def NamedBody323_36 : StackLang.HolProg 64 :=
.seq NamedBody323_32 NamedBody323_35

def NamedBody323_37 : StackLang.HolProg 64 :=
.seq NamedBody323_31 NamedBody323_36

def NamedBody323_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody323_39 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody323_37 NamedBody323_38

def NamedBody323_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody323_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody323_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody323_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody323_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody323_45 : StackLang.HolProg 64 :=
.seq NamedBody323_43 NamedBody323_44

def NamedBody323_46 : StackLang.HolProg 64 :=
.seq NamedBody323_42 NamedBody323_45

def NamedBody323_47 : StackLang.HolProg 64 :=
.seq NamedBody323_41 NamedBody323_46

def NamedBody323_48 : StackLang.HolProg 64 :=
.seq NamedBody323_40 NamedBody323_47

def NamedBody323_49 : StackLang.HolProg 64 :=
.seq NamedBody323_39 NamedBody323_48

def NamedBody323_50 : StackLang.HolProg 64 :=
.seq NamedBody323_30 NamedBody323_49

def NamedBody323_51 : StackLang.HolProg 64 :=
.seq NamedBody323_29 NamedBody323_50

def NamedBody323_52 : StackLang.HolProg 64 :=
.seq NamedBody323_28 NamedBody323_51

def NamedBody323_53 : StackLang.HolProg 64 :=
.seq NamedBody323_27 NamedBody323_52

def NamedBody323_54 : StackLang.HolProg 64 :=
.seq NamedBody323_26 NamedBody323_53

def NamedBody323_55 : StackLang.HolProg 64 :=
.seq NamedBody323_25 NamedBody323_54

def NamedBody323_56 : StackLang.HolProg 64 :=
.seq NamedBody323_16 NamedBody323_55

def NamedBody323_57 : StackLang.HolProg 64 :=
.seq NamedBody323_15 NamedBody323_56

def NamedBody323_58 : StackLang.HolProg 64 :=
.seq NamedBody323_14 NamedBody323_57

def NamedBody323_59 : StackLang.HolProg 64 :=
.seq NamedBody323_13 NamedBody323_58

def NamedBody323_60 : StackLang.HolProg 64 :=
.seq NamedBody323_12 NamedBody323_59

def NamedBody323_61 : StackLang.HolProg 64 :=
.seq NamedBody323_11 NamedBody323_60

def NamedBody323_62 : StackLang.HolProg 64 :=
.seq NamedBody323_2 NamedBody323_61

def NamedBody323_63 : StackLang.HolProg 64 :=
.seq NamedBody323_1 NamedBody323_62

def NamedBody323_64 : StackLang.HolProg 64 :=
.seq NamedBody323_0 NamedBody323_63

def Named323 : Nat × StackLang.HolProg 64 := (323, NamedBody323_64)
theorem Named323_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed323 = Named323 := by
  kernel_rfl
#print axioms Named323_eq
end InitECandidate.Proofs.BackendStages
