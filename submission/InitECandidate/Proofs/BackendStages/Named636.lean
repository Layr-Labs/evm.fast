import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed636
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody636_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody636_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody636_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody636_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody636_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody636_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody636_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody636_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody636_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody636_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody636_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 7 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody636_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody636_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody636_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 8 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody636_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody636_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody636_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody636_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody636_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody636_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody636_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody636_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody636_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody636_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody636_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody636_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 13 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody636_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 255#64)))

def NamedBody636_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody636_28 : StackLang.HolProg 64 :=
.seq NamedBody636_26 NamedBody636_27

def NamedBody636_29 : StackLang.HolProg 64 :=
.seq NamedBody636_25 NamedBody636_28

def NamedBody636_30 : StackLang.HolProg 64 :=
.seq NamedBody636_24 NamedBody636_29

def NamedBody636_31 : StackLang.HolProg 64 :=
.seq NamedBody636_23 NamedBody636_30

def NamedBody636_32 : StackLang.HolProg 64 :=
.seq NamedBody636_22 NamedBody636_31

def NamedBody636_33 : StackLang.HolProg 64 :=
.seq NamedBody636_21 NamedBody636_32

def NamedBody636_34 : StackLang.HolProg 64 :=
.seq NamedBody636_20 NamedBody636_33

def NamedBody636_35 : StackLang.HolProg 64 :=
.seq NamedBody636_19 NamedBody636_34

def NamedBody636_36 : StackLang.HolProg 64 :=
.seq NamedBody636_18 NamedBody636_35

def NamedBody636_37 : StackLang.HolProg 64 :=
.seq NamedBody636_17 NamedBody636_36

def NamedBody636_38 : StackLang.HolProg 64 :=
.seq NamedBody636_16 NamedBody636_37

def NamedBody636_39 : StackLang.HolProg 64 :=
.seq NamedBody636_15 NamedBody636_38

def NamedBody636_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody636_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody636_42 : StackLang.HolProg 64 :=
.seq NamedBody636_40 NamedBody636_41

def NamedBody636_43 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody636_39 NamedBody636_42

def NamedBody636_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody636_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody636_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody636_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody636_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def NamedBody636_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody636_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody636_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody636_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody636_53 : StackLang.HolProg 64 :=
.seq NamedBody636_51 NamedBody636_52

def NamedBody636_54 : StackLang.HolProg 64 :=
.seq NamedBody636_50 NamedBody636_53

def NamedBody636_55 : StackLang.HolProg 64 :=
.seq NamedBody636_49 NamedBody636_54

def NamedBody636_56 : StackLang.HolProg 64 :=
.seq NamedBody636_48 NamedBody636_55

def NamedBody636_57 : StackLang.HolProg 64 :=
.seq NamedBody636_47 NamedBody636_56

def NamedBody636_58 : StackLang.HolProg 64 :=
.seq NamedBody636_46 NamedBody636_57

def NamedBody636_59 : StackLang.HolProg 64 :=
.seq NamedBody636_45 NamedBody636_58

def NamedBody636_60 : StackLang.HolProg 64 :=
.seq NamedBody636_44 NamedBody636_59

def NamedBody636_61 : StackLang.HolProg 64 :=
.seq NamedBody636_43 NamedBody636_60

def NamedBody636_62 : StackLang.HolProg 64 :=
.seq NamedBody636_14 NamedBody636_61

def NamedBody636_63 : StackLang.HolProg 64 :=
.seq NamedBody636_13 NamedBody636_62

def NamedBody636_64 : StackLang.HolProg 64 :=
.seq NamedBody636_12 NamedBody636_63

def NamedBody636_65 : StackLang.HolProg 64 :=
.seq NamedBody636_11 NamedBody636_64

def NamedBody636_66 : StackLang.HolProg 64 :=
.seq NamedBody636_10 NamedBody636_65

def NamedBody636_67 : StackLang.HolProg 64 :=
.seq NamedBody636_9 NamedBody636_66

def NamedBody636_68 : StackLang.HolProg 64 :=
.seq NamedBody636_8 NamedBody636_67

def NamedBody636_69 : StackLang.HolProg 64 :=
.seq NamedBody636_7 NamedBody636_68

def NamedBody636_70 : StackLang.HolProg 64 :=
.seq NamedBody636_6 NamedBody636_69

def NamedBody636_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody636_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody636_73 : StackLang.HolProg 64 :=
.seq NamedBody636_71 NamedBody636_72

def NamedBody636_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) NamedBody636_70 NamedBody636_73

def NamedBody636_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody636_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody636_77 : StackLang.HolProg 64 :=
.seq NamedBody636_75 NamedBody636_76

def NamedBody636_78 : StackLang.HolProg 64 :=
.seq NamedBody636_74 NamedBody636_77

def NamedBody636_79 : StackLang.HolProg 64 :=
.seq NamedBody636_5 NamedBody636_78

def NamedBody636_80 : StackLang.HolProg 64 :=
.loop NamedBody636_79

def NamedBody636_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody636_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody636_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody636_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody636_85 : StackLang.HolProg 64 :=
.seq NamedBody636_83 NamedBody636_84

def NamedBody636_86 : StackLang.HolProg 64 :=
.seq NamedBody636_82 NamedBody636_85

def NamedBody636_87 : StackLang.HolProg 64 :=
.seq NamedBody636_81 NamedBody636_86

def NamedBody636_88 : StackLang.HolProg 64 :=
.seq NamedBody636_80 NamedBody636_87

def NamedBody636_89 : StackLang.HolProg 64 :=
.seq NamedBody636_4 NamedBody636_88

def NamedBody636_90 : StackLang.HolProg 64 :=
.seq NamedBody636_3 NamedBody636_89

def NamedBody636_91 : StackLang.HolProg 64 :=
.seq NamedBody636_2 NamedBody636_90

def NamedBody636_92 : StackLang.HolProg 64 :=
.seq NamedBody636_1 NamedBody636_91

def NamedBody636_93 : StackLang.HolProg 64 :=
.seq NamedBody636_0 NamedBody636_92

def Named636 : Nat × StackLang.HolProg 64 := (636, NamedBody636_93)
theorem Named636_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed636 = Named636 := by
  kernel_rfl
#print axioms Named636_eq
end InitECandidate.Proofs.BackendStages
