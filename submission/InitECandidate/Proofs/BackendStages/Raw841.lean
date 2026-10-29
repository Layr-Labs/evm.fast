import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function841
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody841_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody841_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody841_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody841_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody841_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody841_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 16#64)

def rawBody841_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody841_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody841_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody841_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody841_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody841_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody841_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody841_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody841_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody841_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody841_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody841_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 16#64))

def rawBody841_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 33#64)

def rawBody841_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody841_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody841_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody841_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 32#64))

def rawBody841_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody841_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody841_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody841_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody841_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def rawBody841_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody841_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody841_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody841_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody841_32 : StackLang.HolProg 64 :=
.seq rawBody841_30 rawBody841_31

def rawBody841_33 : StackLang.HolProg 64 :=
.seq rawBody841_29 rawBody841_32

def rawBody841_34 : StackLang.HolProg 64 :=
.seq rawBody841_28 rawBody841_33

def rawBody841_35 : StackLang.HolProg 64 :=
.seq rawBody841_27 rawBody841_34

def rawBody841_36 : StackLang.HolProg 64 :=
.seq rawBody841_26 rawBody841_35

def rawBody841_37 : StackLang.HolProg 64 :=
.seq rawBody841_25 rawBody841_36

def rawBody841_38 : StackLang.HolProg 64 :=
.seq rawBody841_24 rawBody841_37

def rawBody841_39 : StackLang.HolProg 64 :=
.seq rawBody841_23 rawBody841_38

def rawBody841_40 : StackLang.HolProg 64 :=
.seq rawBody841_22 rawBody841_39

def rawBody841_41 : StackLang.HolProg 64 :=
.seq rawBody841_21 rawBody841_40

def rawBody841_42 : StackLang.HolProg 64 :=
.seq rawBody841_20 rawBody841_41

def rawBody841_43 : StackLang.HolProg 64 :=
.seq rawBody841_19 rawBody841_42

def rawBody841_44 : StackLang.HolProg 64 :=
.seq rawBody841_18 rawBody841_43

def rawBody841_45 : StackLang.HolProg 64 :=
.seq rawBody841_17 rawBody841_44

def rawBody841_46 : StackLang.HolProg 64 :=
.seq rawBody841_16 rawBody841_45

def rawBody841_47 : StackLang.HolProg 64 :=
.seq rawBody841_15 rawBody841_46

def rawBody841_48 : StackLang.HolProg 64 :=
.seq rawBody841_14 rawBody841_47

def rawBody841_49 : StackLang.HolProg 64 :=
.seq rawBody841_13 rawBody841_48

def rawBody841_50 : StackLang.HolProg 64 :=
.seq rawBody841_12 rawBody841_49

def rawBody841_51 : StackLang.HolProg 64 :=
.seq rawBody841_11 rawBody841_50

def rawBody841_52 : StackLang.HolProg 64 :=
.seq rawBody841_10 rawBody841_51

def rawBody841_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody841_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody841_55 : StackLang.HolProg 64 :=
.seq rawBody841_53 rawBody841_54

def rawBody841_56 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) rawBody841_52 rawBody841_55

def rawBody841_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody841_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody841_59 : StackLang.HolProg 64 :=
.seq rawBody841_57 rawBody841_58

def rawBody841_60 : StackLang.HolProg 64 :=
.seq rawBody841_56 rawBody841_59

def rawBody841_61 : StackLang.HolProg 64 :=
.seq rawBody841_9 rawBody841_60

def rawBody841_62 : StackLang.HolProg 64 :=
.loop rawBody841_61

def rawBody841_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody841_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody841_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def rawBody841_66 : StackLang.HolProg 64 :=
.seq rawBody841_64 rawBody841_65

def rawBody841_67 : StackLang.HolProg 64 :=
.seq rawBody841_63 rawBody841_66

def rawBody841_68 : StackLang.HolProg 64 :=
.seq rawBody841_62 rawBody841_67

def rawBody841_69 : StackLang.HolProg 64 :=
.seq rawBody841_8 rawBody841_68

def rawBody841_70 : StackLang.HolProg 64 :=
.seq rawBody841_7 rawBody841_69

def rawBody841_71 : StackLang.HolProg 64 :=
.seq rawBody841_6 rawBody841_70

def rawBody841_72 : StackLang.HolProg 64 :=
.seq rawBody841_5 rawBody841_71

def rawBody841_73 : StackLang.HolProg 64 :=
.seq rawBody841_4 rawBody841_72

def rawBody841_74 : StackLang.HolProg 64 :=
.seq rawBody841_3 rawBody841_73

def rawBody841_75 : StackLang.HolProg 64 :=
.seq rawBody841_2 rawBody841_74

def rawBody841_76 : StackLang.HolProg 64 :=
.seq rawBody841_1 rawBody841_75

def rawBody841_77 : StackLang.HolProg 64 :=
.seq rawBody841_0 rawBody841_76

def raw841 : StackLang.HolProg 64 := rawBody841_77
theorem raw841_eq : StackRawCall.compTop RawInfo.rawInfo (function841 (.list [])).1 = raw841 := by
  kernel_rfl
#print axioms raw841_eq
end InitECandidate.Proofs.BackendStages
