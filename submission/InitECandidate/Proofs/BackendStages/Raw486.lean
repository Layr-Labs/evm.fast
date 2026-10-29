import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function486
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody486_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody486_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody486_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody486_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody486_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody486_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody486_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody486_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody486_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody486_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody486_10 : StackLang.HolProg 64 :=
.seq rawBody486_8 rawBody486_9

def rawBody486_11 : StackLang.HolProg 64 :=
.seq rawBody486_7 rawBody486_10

def rawBody486_12 : StackLang.HolProg 64 :=
.seq rawBody486_6 rawBody486_11

def rawBody486_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody486_14 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody486_12 rawBody486_13

def rawBody486_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody486_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody486_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody486_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody486_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody486_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody486_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody486_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 56#64))

def rawBody486_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody486_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody486_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody486_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody486_27 : StackLang.HolProg 64 :=
.seq rawBody486_25 rawBody486_26

def rawBody486_28 : StackLang.HolProg 64 :=
.seq rawBody486_24 rawBody486_27

def rawBody486_29 : StackLang.HolProg 64 :=
.seq rawBody486_23 rawBody486_28

def rawBody486_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody486_31 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody486_29 rawBody486_30

def rawBody486_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody486_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody486_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody486_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 80#64))

def rawBody486_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody486_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def rawBody486_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody486_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody486_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody486_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody486_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody486_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def rawBody486_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody486_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody486_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody486_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody486_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody486_49 : StackLang.HolProg 64 :=
.seq rawBody486_47 rawBody486_48

def rawBody486_50 : StackLang.HolProg 64 :=
.seq rawBody486_46 rawBody486_49

def rawBody486_51 : StackLang.HolProg 64 :=
.seq rawBody486_45 rawBody486_50

def rawBody486_52 : StackLang.HolProg 64 :=
.seq rawBody486_44 rawBody486_51

def rawBody486_53 : StackLang.HolProg 64 :=
.seq rawBody486_43 rawBody486_52

def rawBody486_54 : StackLang.HolProg 64 :=
.seq rawBody486_42 rawBody486_53

def rawBody486_55 : StackLang.HolProg 64 :=
.seq rawBody486_41 rawBody486_54

def rawBody486_56 : StackLang.HolProg 64 :=
.seq rawBody486_40 rawBody486_55

def rawBody486_57 : StackLang.HolProg 64 :=
.seq rawBody486_39 rawBody486_56

def rawBody486_58 : StackLang.HolProg 64 :=
.seq rawBody486_38 rawBody486_57

def rawBody486_59 : StackLang.HolProg 64 :=
.seq rawBody486_37 rawBody486_58

def rawBody486_60 : StackLang.HolProg 64 :=
.seq rawBody486_36 rawBody486_59

def rawBody486_61 : StackLang.HolProg 64 :=
.seq rawBody486_35 rawBody486_60

def rawBody486_62 : StackLang.HolProg 64 :=
.seq rawBody486_34 rawBody486_61

def rawBody486_63 : StackLang.HolProg 64 :=
.seq rawBody486_33 rawBody486_62

def rawBody486_64 : StackLang.HolProg 64 :=
.seq rawBody486_32 rawBody486_63

def rawBody486_65 : StackLang.HolProg 64 :=
.seq rawBody486_31 rawBody486_64

def rawBody486_66 : StackLang.HolProg 64 :=
.seq rawBody486_22 rawBody486_65

def rawBody486_67 : StackLang.HolProg 64 :=
.seq rawBody486_21 rawBody486_66

def rawBody486_68 : StackLang.HolProg 64 :=
.seq rawBody486_20 rawBody486_67

def rawBody486_69 : StackLang.HolProg 64 :=
.seq rawBody486_19 rawBody486_68

def rawBody486_70 : StackLang.HolProg 64 :=
.seq rawBody486_18 rawBody486_69

def rawBody486_71 : StackLang.HolProg 64 :=
.seq rawBody486_17 rawBody486_70

def rawBody486_72 : StackLang.HolProg 64 :=
.seq rawBody486_16 rawBody486_71

def rawBody486_73 : StackLang.HolProg 64 :=
.seq rawBody486_15 rawBody486_72

def rawBody486_74 : StackLang.HolProg 64 :=
.seq rawBody486_14 rawBody486_73

def rawBody486_75 : StackLang.HolProg 64 :=
.seq rawBody486_5 rawBody486_74

def rawBody486_76 : StackLang.HolProg 64 :=
.seq rawBody486_4 rawBody486_75

def rawBody486_77 : StackLang.HolProg 64 :=
.seq rawBody486_3 rawBody486_76

def rawBody486_78 : StackLang.HolProg 64 :=
.seq rawBody486_2 rawBody486_77

def rawBody486_79 : StackLang.HolProg 64 :=
.seq rawBody486_1 rawBody486_78

def rawBody486_80 : StackLang.HolProg 64 :=
.seq rawBody486_0 rawBody486_79

def raw486 : StackLang.HolProg 64 := rawBody486_80
theorem raw486_eq : StackRawCall.compTop RawInfo.rawInfo (function486 (.list [])).1 = raw486 := by
  kernel_rfl
#print axioms raw486_eq
end InitECandidate.Proofs.BackendStages
