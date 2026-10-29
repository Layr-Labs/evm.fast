import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed394
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody394_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody394_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody394_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody394_3 : StackLang.HolProg 64 :=
.seq NamedBody394_1 NamedBody394_2

def NamedBody394_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody394_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody394_3 NamedBody394_4

def NamedBody394_6 : StackLang.HolProg 64 :=
.seq NamedBody394_0 NamedBody394_5

def NamedBody394_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody394_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody394_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody394_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody394_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551480#64))

def NamedBody394_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody394_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody394_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody394_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody394_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody394_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody394_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody394_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1172#64)

def NamedBody394_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody394_21 : StackLang.HolProg 64 :=
.seq NamedBody394_19 NamedBody394_20

def NamedBody394_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody394_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody394_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody394_25 : StackLang.HolProg 64 :=
.seq NamedBody394_23 NamedBody394_24

def NamedBody394_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody394_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody394_25 NamedBody394_26

def NamedBody394_28 : StackLang.HolProg 64 :=
.seq NamedBody394_22 NamedBody394_27

def NamedBody394_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody394_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody394_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 394 3

def NamedBody394_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody394_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody394_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody394_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody394_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody394_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody394_38 : StackLang.HolProg 64 :=
.seq NamedBody394_36 NamedBody394_37

def NamedBody394_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody394_40 : StackLang.HolProg 64 :=
.seq NamedBody394_38 NamedBody394_39

def NamedBody394_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody394_42 : StackLang.HolProg 64 :=
.seq NamedBody394_40 NamedBody394_41

def NamedBody394_43 : StackLang.HolProg 64 :=
.seq NamedBody394_35 NamedBody394_42

def NamedBody394_44 : StackLang.HolProg 64 :=
.seq NamedBody394_34 NamedBody394_43

def NamedBody394_45 : StackLang.HolProg 64 :=
.seq NamedBody394_33 NamedBody394_44

def NamedBody394_46 : StackLang.HolProg 64 :=
.seq NamedBody394_32 NamedBody394_45

def NamedBody394_47 : StackLang.HolProg 64 :=
.seq NamedBody394_31 NamedBody394_46

def NamedBody394_48 : StackLang.HolProg 64 :=
.seq NamedBody394_30 NamedBody394_47

def NamedBody394_49 : StackLang.HolProg 64 :=
.seq NamedBody394_29 NamedBody394_48

def NamedBody394_50 : StackLang.HolProg 64 :=
.seq NamedBody394_28 NamedBody394_49

def NamedBody394_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody394_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody394_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody394_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody394_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody394_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody394_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody394_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody394_59 : StackLang.HolProg 64 :=
.seq NamedBody394_57 NamedBody394_58

def NamedBody394_60 : StackLang.HolProg 64 :=
.seq NamedBody394_56 NamedBody394_59

def NamedBody394_61 : StackLang.HolProg 64 :=
.seq NamedBody394_55 NamedBody394_60

def NamedBody394_62 : StackLang.HolProg 64 :=
.seq NamedBody394_54 NamedBody394_61

def NamedBody394_63 : StackLang.HolProg 64 :=
.seq NamedBody394_53 NamedBody394_62

def NamedBody394_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody394_65 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody394_66 : StackLang.HolProg 64 :=
.seq NamedBody394_64 NamedBody394_65

def NamedBody394_67 : StackLang.HolProg 64 :=
.call (some (NamedBody394_63, 1, 394, 2)) (Sum.inl 393) (some (NamedBody394_66, 394, 3))

def NamedBody394_68 : StackLang.HolProg 64 :=
.seq NamedBody394_52 NamedBody394_67

def NamedBody394_69 : StackLang.HolProg 64 :=
.seq NamedBody394_51 NamedBody394_68

def NamedBody394_70 : StackLang.HolProg 64 :=
.seq NamedBody394_50 NamedBody394_69

def NamedBody394_71 : StackLang.HolProg 64 :=
.seq NamedBody394_21 NamedBody394_70

def NamedBody394_72 : StackLang.HolProg 64 :=
.seq NamedBody394_18 NamedBody394_71

def NamedBody394_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody394_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody394_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody394_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody394_77 : StackLang.HolProg 64 :=
.seq NamedBody394_75 NamedBody394_76

def NamedBody394_78 : StackLang.HolProg 64 :=
.seq NamedBody394_74 NamedBody394_77

def NamedBody394_79 : StackLang.HolProg 64 :=
.seq NamedBody394_73 NamedBody394_78

def NamedBody394_80 : StackLang.HolProg 64 :=
.seq NamedBody394_72 NamedBody394_79

def NamedBody394_81 : StackLang.HolProg 64 :=
.seq NamedBody394_17 NamedBody394_80

def NamedBody394_82 : StackLang.HolProg 64 :=
.seq NamedBody394_16 NamedBody394_81

def NamedBody394_83 : StackLang.HolProg 64 :=
.seq NamedBody394_15 NamedBody394_82

def NamedBody394_84 : StackLang.HolProg 64 :=
.seq NamedBody394_14 NamedBody394_83

def NamedBody394_85 : StackLang.HolProg 64 :=
.seq NamedBody394_13 NamedBody394_84

def NamedBody394_86 : StackLang.HolProg 64 :=
.seq NamedBody394_12 NamedBody394_85

def NamedBody394_87 : StackLang.HolProg 64 :=
.seq NamedBody394_11 NamedBody394_86

def NamedBody394_88 : StackLang.HolProg 64 :=
.seq NamedBody394_10 NamedBody394_87

def NamedBody394_89 : StackLang.HolProg 64 :=
.seq NamedBody394_9 NamedBody394_88

def NamedBody394_90 : StackLang.HolProg 64 :=
.seq NamedBody394_8 NamedBody394_89

def NamedBody394_91 : StackLang.HolProg 64 :=
.seq NamedBody394_7 NamedBody394_90

def NamedBody394_92 : StackLang.HolProg 64 :=
.seq NamedBody394_6 NamedBody394_91

def Named394 : Nat × StackLang.HolProg 64 := (394, NamedBody394_92)
theorem Named394_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed394 = Named394 := by
  kernel_rfl
#print axioms Named394_eq
end InitECandidate.Proofs.BackendStages
