import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function636
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody636_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody636_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody636_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody636_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody636_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody636_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody636_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody636_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody636_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody636_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody636_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 7 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody636_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody636_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody636_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 8 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def rawBody636_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody636_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody636_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody636_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody636_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody636_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody636_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody636_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody636_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody636_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody636_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody636_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody636_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 255#64)))

def rawBody636_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody636_28 : StackLang.HolProg 64 :=
.seq rawBody636_26 rawBody636_27

def rawBody636_29 : StackLang.HolProg 64 :=
.seq rawBody636_25 rawBody636_28

def rawBody636_30 : StackLang.HolProg 64 :=
.seq rawBody636_24 rawBody636_29

def rawBody636_31 : StackLang.HolProg 64 :=
.seq rawBody636_23 rawBody636_30

def rawBody636_32 : StackLang.HolProg 64 :=
.seq rawBody636_22 rawBody636_31

def rawBody636_33 : StackLang.HolProg 64 :=
.seq rawBody636_21 rawBody636_32

def rawBody636_34 : StackLang.HolProg 64 :=
.seq rawBody636_20 rawBody636_33

def rawBody636_35 : StackLang.HolProg 64 :=
.seq rawBody636_19 rawBody636_34

def rawBody636_36 : StackLang.HolProg 64 :=
.seq rawBody636_18 rawBody636_35

def rawBody636_37 : StackLang.HolProg 64 :=
.seq rawBody636_17 rawBody636_36

def rawBody636_38 : StackLang.HolProg 64 :=
.seq rawBody636_16 rawBody636_37

def rawBody636_39 : StackLang.HolProg 64 :=
.seq rawBody636_15 rawBody636_38

def rawBody636_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody636_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody636_42 : StackLang.HolProg 64 :=
.seq rawBody636_40 rawBody636_41

def rawBody636_43 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody636_39 rawBody636_42

def rawBody636_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody636_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody636_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody636_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody636_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def rawBody636_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody636_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody636_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody636_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody636_53 : StackLang.HolProg 64 :=
.seq rawBody636_51 rawBody636_52

def rawBody636_54 : StackLang.HolProg 64 :=
.seq rawBody636_50 rawBody636_53

def rawBody636_55 : StackLang.HolProg 64 :=
.seq rawBody636_49 rawBody636_54

def rawBody636_56 : StackLang.HolProg 64 :=
.seq rawBody636_48 rawBody636_55

def rawBody636_57 : StackLang.HolProg 64 :=
.seq rawBody636_47 rawBody636_56

def rawBody636_58 : StackLang.HolProg 64 :=
.seq rawBody636_46 rawBody636_57

def rawBody636_59 : StackLang.HolProg 64 :=
.seq rawBody636_45 rawBody636_58

def rawBody636_60 : StackLang.HolProg 64 :=
.seq rawBody636_44 rawBody636_59

def rawBody636_61 : StackLang.HolProg 64 :=
.seq rawBody636_43 rawBody636_60

def rawBody636_62 : StackLang.HolProg 64 :=
.seq rawBody636_14 rawBody636_61

def rawBody636_63 : StackLang.HolProg 64 :=
.seq rawBody636_13 rawBody636_62

def rawBody636_64 : StackLang.HolProg 64 :=
.seq rawBody636_12 rawBody636_63

def rawBody636_65 : StackLang.HolProg 64 :=
.seq rawBody636_11 rawBody636_64

def rawBody636_66 : StackLang.HolProg 64 :=
.seq rawBody636_10 rawBody636_65

def rawBody636_67 : StackLang.HolProg 64 :=
.seq rawBody636_9 rawBody636_66

def rawBody636_68 : StackLang.HolProg 64 :=
.seq rawBody636_8 rawBody636_67

def rawBody636_69 : StackLang.HolProg 64 :=
.seq rawBody636_7 rawBody636_68

def rawBody636_70 : StackLang.HolProg 64 :=
.seq rawBody636_6 rawBody636_69

def rawBody636_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody636_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody636_73 : StackLang.HolProg 64 :=
.seq rawBody636_71 rawBody636_72

def rawBody636_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) rawBody636_70 rawBody636_73

def rawBody636_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody636_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody636_77 : StackLang.HolProg 64 :=
.seq rawBody636_75 rawBody636_76

def rawBody636_78 : StackLang.HolProg 64 :=
.seq rawBody636_74 rawBody636_77

def rawBody636_79 : StackLang.HolProg 64 :=
.seq rawBody636_5 rawBody636_78

def rawBody636_80 : StackLang.HolProg 64 :=
.loop rawBody636_79

def rawBody636_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody636_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody636_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody636_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody636_85 : StackLang.HolProg 64 :=
.seq rawBody636_83 rawBody636_84

def rawBody636_86 : StackLang.HolProg 64 :=
.seq rawBody636_82 rawBody636_85

def rawBody636_87 : StackLang.HolProg 64 :=
.seq rawBody636_81 rawBody636_86

def rawBody636_88 : StackLang.HolProg 64 :=
.seq rawBody636_80 rawBody636_87

def rawBody636_89 : StackLang.HolProg 64 :=
.seq rawBody636_4 rawBody636_88

def rawBody636_90 : StackLang.HolProg 64 :=
.seq rawBody636_3 rawBody636_89

def rawBody636_91 : StackLang.HolProg 64 :=
.seq rawBody636_2 rawBody636_90

def rawBody636_92 : StackLang.HolProg 64 :=
.seq rawBody636_1 rawBody636_91

def rawBody636_93 : StackLang.HolProg 64 :=
.seq rawBody636_0 rawBody636_92

def raw636 : StackLang.HolProg 64 := rawBody636_93
theorem raw636_eq : StackRawCall.compTop RawInfo.rawInfo (function636 (.list [])).1 = raw636 := by
  kernel_rfl
#print axioms raw636_eq
end InitECandidate.Proofs.BackendStages
