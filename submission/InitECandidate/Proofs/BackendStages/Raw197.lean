import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function197
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody197_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody197_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody197_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody197_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody197_4 : StackLang.HolProg 64 :=
.seq rawBody197_2 rawBody197_3

def rawBody197_5 : StackLang.HolProg 64 :=
.seq rawBody197_1 rawBody197_4

def rawBody197_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def rawBody197_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody197_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody197_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody197_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody197_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody197_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def rawBody197_13 : StackLang.HolProg 64 :=
.seq rawBody197_11 rawBody197_12

def rawBody197_14 : StackLang.HolProg 64 :=
.seq rawBody197_10 rawBody197_13

def rawBody197_15 : StackLang.HolProg 64 :=
.seq rawBody197_9 rawBody197_14

def rawBody197_16 : StackLang.HolProg 64 :=
.seq rawBody197_8 rawBody197_15

def rawBody197_17 : StackLang.HolProg 64 :=
.seq rawBody197_7 rawBody197_16

def rawBody197_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody197_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody197_17 rawBody197_18

def rawBody197_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody197_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody197_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody197_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody197_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody197_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 48#64))

def rawBody197_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody197_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody197_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody197_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def rawBody197_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody197_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody197_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody197_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 32#64))

def rawBody197_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody197_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody197_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody197_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody197_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 40#64))

def rawBody197_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody197_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody197_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody197_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody197_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def rawBody197_44 : StackLang.HolProg 64 :=
.seq rawBody197_42 rawBody197_43

def rawBody197_45 : StackLang.HolProg 64 :=
.seq rawBody197_41 rawBody197_44

def rawBody197_46 : StackLang.HolProg 64 :=
.seq rawBody197_40 rawBody197_45

def rawBody197_47 : StackLang.HolProg 64 :=
.seq rawBody197_39 rawBody197_46

def rawBody197_48 : StackLang.HolProg 64 :=
.seq rawBody197_38 rawBody197_47

def rawBody197_49 : StackLang.HolProg 64 :=
.seq rawBody197_37 rawBody197_48

def rawBody197_50 : StackLang.HolProg 64 :=
.seq rawBody197_36 rawBody197_49

def rawBody197_51 : StackLang.HolProg 64 :=
.seq rawBody197_35 rawBody197_50

def rawBody197_52 : StackLang.HolProg 64 :=
.seq rawBody197_34 rawBody197_51

def rawBody197_53 : StackLang.HolProg 64 :=
.seq rawBody197_33 rawBody197_52

def rawBody197_54 : StackLang.HolProg 64 :=
.seq rawBody197_32 rawBody197_53

def rawBody197_55 : StackLang.HolProg 64 :=
.seq rawBody197_31 rawBody197_54

def rawBody197_56 : StackLang.HolProg 64 :=
.seq rawBody197_30 rawBody197_55

def rawBody197_57 : StackLang.HolProg 64 :=
.seq rawBody197_29 rawBody197_56

def rawBody197_58 : StackLang.HolProg 64 :=
.seq rawBody197_28 rawBody197_57

def rawBody197_59 : StackLang.HolProg 64 :=
.seq rawBody197_27 rawBody197_58

def rawBody197_60 : StackLang.HolProg 64 :=
.seq rawBody197_26 rawBody197_59

def rawBody197_61 : StackLang.HolProg 64 :=
.seq rawBody197_25 rawBody197_60

def rawBody197_62 : StackLang.HolProg 64 :=
.seq rawBody197_24 rawBody197_61

def rawBody197_63 : StackLang.HolProg 64 :=
.seq rawBody197_23 rawBody197_62

def rawBody197_64 : StackLang.HolProg 64 :=
.seq rawBody197_22 rawBody197_63

def rawBody197_65 : StackLang.HolProg 64 :=
.seq rawBody197_21 rawBody197_64

def rawBody197_66 : StackLang.HolProg 64 :=
.seq rawBody197_20 rawBody197_65

def rawBody197_67 : StackLang.HolProg 64 :=
.seq rawBody197_19 rawBody197_66

def rawBody197_68 : StackLang.HolProg 64 :=
.seq rawBody197_6 rawBody197_67

def rawBody197_69 : StackLang.HolProg 64 :=
.seq rawBody197_5 rawBody197_68

def rawBody197_70 : StackLang.HolProg 64 :=
.seq rawBody197_0 rawBody197_69

def raw197 : StackLang.HolProg 64 := rawBody197_70
theorem raw197_eq : StackRawCall.compTop RawInfo.rawInfo (function197 (.list [])).1 = raw197 := by
  kernel_rfl
#print axioms raw197_eq
end InitECandidate.Proofs.BackendStages
