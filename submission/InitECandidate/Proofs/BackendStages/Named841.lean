import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed841
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody841_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody841_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody841_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody841_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody841_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody841_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 16#64)

def NamedBody841_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody841_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody841_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody841_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody841_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody841_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody841_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody841_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody841_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody841_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody841_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody841_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 16#64))

def NamedBody841_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 33#64)

def NamedBody841_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody841_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody841_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody841_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 32#64))

def NamedBody841_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody841_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody841_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody841_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody841_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody841_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody841_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody841_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody841_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody841_32 : StackLang.HolProg 64 :=
.seq NamedBody841_30 NamedBody841_31

def NamedBody841_33 : StackLang.HolProg 64 :=
.seq NamedBody841_29 NamedBody841_32

def NamedBody841_34 : StackLang.HolProg 64 :=
.seq NamedBody841_28 NamedBody841_33

def NamedBody841_35 : StackLang.HolProg 64 :=
.seq NamedBody841_27 NamedBody841_34

def NamedBody841_36 : StackLang.HolProg 64 :=
.seq NamedBody841_26 NamedBody841_35

def NamedBody841_37 : StackLang.HolProg 64 :=
.seq NamedBody841_25 NamedBody841_36

def NamedBody841_38 : StackLang.HolProg 64 :=
.seq NamedBody841_24 NamedBody841_37

def NamedBody841_39 : StackLang.HolProg 64 :=
.seq NamedBody841_23 NamedBody841_38

def NamedBody841_40 : StackLang.HolProg 64 :=
.seq NamedBody841_22 NamedBody841_39

def NamedBody841_41 : StackLang.HolProg 64 :=
.seq NamedBody841_21 NamedBody841_40

def NamedBody841_42 : StackLang.HolProg 64 :=
.seq NamedBody841_20 NamedBody841_41

def NamedBody841_43 : StackLang.HolProg 64 :=
.seq NamedBody841_19 NamedBody841_42

def NamedBody841_44 : StackLang.HolProg 64 :=
.seq NamedBody841_18 NamedBody841_43

def NamedBody841_45 : StackLang.HolProg 64 :=
.seq NamedBody841_17 NamedBody841_44

def NamedBody841_46 : StackLang.HolProg 64 :=
.seq NamedBody841_16 NamedBody841_45

def NamedBody841_47 : StackLang.HolProg 64 :=
.seq NamedBody841_15 NamedBody841_46

def NamedBody841_48 : StackLang.HolProg 64 :=
.seq NamedBody841_14 NamedBody841_47

def NamedBody841_49 : StackLang.HolProg 64 :=
.seq NamedBody841_13 NamedBody841_48

def NamedBody841_50 : StackLang.HolProg 64 :=
.seq NamedBody841_12 NamedBody841_49

def NamedBody841_51 : StackLang.HolProg 64 :=
.seq NamedBody841_11 NamedBody841_50

def NamedBody841_52 : StackLang.HolProg 64 :=
.seq NamedBody841_10 NamedBody841_51

def NamedBody841_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody841_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody841_55 : StackLang.HolProg 64 :=
.seq NamedBody841_53 NamedBody841_54

def NamedBody841_56 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) NamedBody841_52 NamedBody841_55

def NamedBody841_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody841_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody841_59 : StackLang.HolProg 64 :=
.seq NamedBody841_57 NamedBody841_58

def NamedBody841_60 : StackLang.HolProg 64 :=
.seq NamedBody841_56 NamedBody841_59

def NamedBody841_61 : StackLang.HolProg 64 :=
.seq NamedBody841_9 NamedBody841_60

def NamedBody841_62 : StackLang.HolProg 64 :=
.loop NamedBody841_61

def NamedBody841_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody841_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody841_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def NamedBody841_66 : StackLang.HolProg 64 :=
.seq NamedBody841_64 NamedBody841_65

def NamedBody841_67 : StackLang.HolProg 64 :=
.seq NamedBody841_63 NamedBody841_66

def NamedBody841_68 : StackLang.HolProg 64 :=
.seq NamedBody841_62 NamedBody841_67

def NamedBody841_69 : StackLang.HolProg 64 :=
.seq NamedBody841_8 NamedBody841_68

def NamedBody841_70 : StackLang.HolProg 64 :=
.seq NamedBody841_7 NamedBody841_69

def NamedBody841_71 : StackLang.HolProg 64 :=
.seq NamedBody841_6 NamedBody841_70

def NamedBody841_72 : StackLang.HolProg 64 :=
.seq NamedBody841_5 NamedBody841_71

def NamedBody841_73 : StackLang.HolProg 64 :=
.seq NamedBody841_4 NamedBody841_72

def NamedBody841_74 : StackLang.HolProg 64 :=
.seq NamedBody841_3 NamedBody841_73

def NamedBody841_75 : StackLang.HolProg 64 :=
.seq NamedBody841_2 NamedBody841_74

def NamedBody841_76 : StackLang.HolProg 64 :=
.seq NamedBody841_1 NamedBody841_75

def NamedBody841_77 : StackLang.HolProg 64 :=
.seq NamedBody841_0 NamedBody841_76

def Named841 : Nat × StackLang.HolProg 64 := (841, NamedBody841_77)
theorem Named841_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed841 = Named841 := by
  kernel_rfl
#print axioms Named841_eq
end InitECandidate.Proofs.BackendStages
