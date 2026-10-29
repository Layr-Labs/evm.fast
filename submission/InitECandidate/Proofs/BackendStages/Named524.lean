import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed524
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody524_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody524_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody524_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody524_3 : StackLang.HolProg 64 :=
.seq NamedBody524_1 NamedBody524_2

def NamedBody524_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody524_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody524_3 NamedBody524_4

def NamedBody524_6 : StackLang.HolProg 64 :=
.seq NamedBody524_0 NamedBody524_5

def NamedBody524_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody524_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody524_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody524_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody524_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody524_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 104#64)))

def NamedBody524_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody524_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody524_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody524_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody524_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody524_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody524_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1717#64)

def NamedBody524_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody524_21 : StackLang.HolProg 64 :=
.seq NamedBody524_19 NamedBody524_20

def NamedBody524_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody524_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody524_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody524_25 : StackLang.HolProg 64 :=
.seq NamedBody524_23 NamedBody524_24

def NamedBody524_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody524_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody524_25 NamedBody524_26

def NamedBody524_28 : StackLang.HolProg 64 :=
.seq NamedBody524_22 NamedBody524_27

def NamedBody524_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody524_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody524_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 524 3

def NamedBody524_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody524_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody524_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody524_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody524_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody524_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody524_38 : StackLang.HolProg 64 :=
.seq NamedBody524_36 NamedBody524_37

def NamedBody524_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody524_40 : StackLang.HolProg 64 :=
.seq NamedBody524_38 NamedBody524_39

def NamedBody524_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody524_42 : StackLang.HolProg 64 :=
.seq NamedBody524_40 NamedBody524_41

def NamedBody524_43 : StackLang.HolProg 64 :=
.seq NamedBody524_35 NamedBody524_42

def NamedBody524_44 : StackLang.HolProg 64 :=
.seq NamedBody524_34 NamedBody524_43

def NamedBody524_45 : StackLang.HolProg 64 :=
.seq NamedBody524_33 NamedBody524_44

def NamedBody524_46 : StackLang.HolProg 64 :=
.seq NamedBody524_32 NamedBody524_45

def NamedBody524_47 : StackLang.HolProg 64 :=
.seq NamedBody524_31 NamedBody524_46

def NamedBody524_48 : StackLang.HolProg 64 :=
.seq NamedBody524_30 NamedBody524_47

def NamedBody524_49 : StackLang.HolProg 64 :=
.seq NamedBody524_29 NamedBody524_48

def NamedBody524_50 : StackLang.HolProg 64 :=
.seq NamedBody524_28 NamedBody524_49

def NamedBody524_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody524_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody524_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody524_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody524_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody524_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody524_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody524_58 : StackLang.HolProg 64 :=
.seq NamedBody524_56 NamedBody524_57

def NamedBody524_59 : StackLang.HolProg 64 :=
.seq NamedBody524_55 NamedBody524_58

def NamedBody524_60 : StackLang.HolProg 64 :=
.seq NamedBody524_54 NamedBody524_59

def NamedBody524_61 : StackLang.HolProg 64 :=
.seq NamedBody524_53 NamedBody524_60

def NamedBody524_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody524_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody524_64 : StackLang.HolProg 64 :=
.seq NamedBody524_62 NamedBody524_63

def NamedBody524_65 : StackLang.HolProg 64 :=
.call (some (NamedBody524_61, 1, 524, 2)) (Sum.inl 490) (some (NamedBody524_64, 524, 3))

def NamedBody524_66 : StackLang.HolProg 64 :=
.seq NamedBody524_52 NamedBody524_65

def NamedBody524_67 : StackLang.HolProg 64 :=
.seq NamedBody524_51 NamedBody524_66

def NamedBody524_68 : StackLang.HolProg 64 :=
.seq NamedBody524_50 NamedBody524_67

def NamedBody524_69 : StackLang.HolProg 64 :=
.seq NamedBody524_21 NamedBody524_68

def NamedBody524_70 : StackLang.HolProg 64 :=
.seq NamedBody524_18 NamedBody524_69

def NamedBody524_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody524_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody524_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody524_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody524_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody524_76 : StackLang.HolProg 64 :=
.seq NamedBody524_74 NamedBody524_75

def NamedBody524_77 : StackLang.HolProg 64 :=
.seq NamedBody524_73 NamedBody524_76

def NamedBody524_78 : StackLang.HolProg 64 :=
.seq NamedBody524_72 NamedBody524_77

def NamedBody524_79 : StackLang.HolProg 64 :=
.seq NamedBody524_71 NamedBody524_78

def NamedBody524_80 : StackLang.HolProg 64 :=
.seq NamedBody524_70 NamedBody524_79

def NamedBody524_81 : StackLang.HolProg 64 :=
.seq NamedBody524_17 NamedBody524_80

def NamedBody524_82 : StackLang.HolProg 64 :=
.seq NamedBody524_16 NamedBody524_81

def NamedBody524_83 : StackLang.HolProg 64 :=
.seq NamedBody524_15 NamedBody524_82

def NamedBody524_84 : StackLang.HolProg 64 :=
.seq NamedBody524_14 NamedBody524_83

def NamedBody524_85 : StackLang.HolProg 64 :=
.seq NamedBody524_13 NamedBody524_84

def NamedBody524_86 : StackLang.HolProg 64 :=
.seq NamedBody524_12 NamedBody524_85

def NamedBody524_87 : StackLang.HolProg 64 :=
.seq NamedBody524_11 NamedBody524_86

def NamedBody524_88 : StackLang.HolProg 64 :=
.seq NamedBody524_10 NamedBody524_87

def NamedBody524_89 : StackLang.HolProg 64 :=
.seq NamedBody524_9 NamedBody524_88

def NamedBody524_90 : StackLang.HolProg 64 :=
.seq NamedBody524_8 NamedBody524_89

def NamedBody524_91 : StackLang.HolProg 64 :=
.seq NamedBody524_7 NamedBody524_90

def NamedBody524_92 : StackLang.HolProg 64 :=
.seq NamedBody524_6 NamedBody524_91

def Named524 : Nat × StackLang.HolProg 64 := (524, NamedBody524_92)
theorem Named524_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed524 = Named524 := by
  kernel_rfl
#print axioms Named524_eq
end InitECandidate.Proofs.BackendStages
