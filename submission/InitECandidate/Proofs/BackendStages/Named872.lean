import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed872
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody872_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody872_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody872_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody872_3 : StackLang.HolProg 64 :=
.seq NamedBody872_1 NamedBody872_2

def NamedBody872_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody872_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody872_3 NamedBody872_4

def NamedBody872_6 : StackLang.HolProg 64 :=
.seq NamedBody872_0 NamedBody872_5

def NamedBody872_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody872_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody872_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4598#64)

def NamedBody872_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody872_11 : StackLang.HolProg 64 :=
.seq NamedBody872_9 NamedBody872_10

def NamedBody872_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody872_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody872_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody872_15 : StackLang.HolProg 64 :=
.seq NamedBody872_13 NamedBody872_14

def NamedBody872_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody872_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody872_15 NamedBody872_16

def NamedBody872_18 : StackLang.HolProg 64 :=
.seq NamedBody872_12 NamedBody872_17

def NamedBody872_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody872_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody872_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 872 3

def NamedBody872_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody872_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody872_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody872_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody872_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody872_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody872_28 : StackLang.HolProg 64 :=
.seq NamedBody872_26 NamedBody872_27

def NamedBody872_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody872_30 : StackLang.HolProg 64 :=
.seq NamedBody872_28 NamedBody872_29

def NamedBody872_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody872_32 : StackLang.HolProg 64 :=
.seq NamedBody872_30 NamedBody872_31

def NamedBody872_33 : StackLang.HolProg 64 :=
.seq NamedBody872_25 NamedBody872_32

def NamedBody872_34 : StackLang.HolProg 64 :=
.seq NamedBody872_24 NamedBody872_33

def NamedBody872_35 : StackLang.HolProg 64 :=
.seq NamedBody872_23 NamedBody872_34

def NamedBody872_36 : StackLang.HolProg 64 :=
.seq NamedBody872_22 NamedBody872_35

def NamedBody872_37 : StackLang.HolProg 64 :=
.seq NamedBody872_21 NamedBody872_36

def NamedBody872_38 : StackLang.HolProg 64 :=
.seq NamedBody872_20 NamedBody872_37

def NamedBody872_39 : StackLang.HolProg 64 :=
.seq NamedBody872_19 NamedBody872_38

def NamedBody872_40 : StackLang.HolProg 64 :=
.seq NamedBody872_18 NamedBody872_39

def NamedBody872_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody872_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody872_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody872_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody872_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody872_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody872_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody872_48 : StackLang.HolProg 64 :=
.seq NamedBody872_46 NamedBody872_47

def NamedBody872_49 : StackLang.HolProg 64 :=
.seq NamedBody872_45 NamedBody872_48

def NamedBody872_50 : StackLang.HolProg 64 :=
.seq NamedBody872_44 NamedBody872_49

def NamedBody872_51 : StackLang.HolProg 64 :=
.seq NamedBody872_43 NamedBody872_50

def NamedBody872_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody872_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody872_54 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody872_55 : StackLang.HolProg 64 :=
.seq NamedBody872_53 NamedBody872_54

def NamedBody872_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody872_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody872_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody872_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2688614470#64)

def NamedBody872_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 1
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64)

def NamedBody872_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def NamedBody872_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody872_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody872_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 9#64)

def NamedBody872_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody872_66 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody872_67 : StackLang.HolProg 64 :=
.seq NamedBody872_65 NamedBody872_66

def NamedBody872_68 : StackLang.HolProg 64 :=
.seq NamedBody872_64 NamedBody872_67

def NamedBody872_69 : StackLang.HolProg 64 :=
.seq NamedBody872_63 NamedBody872_68

def NamedBody872_70 : StackLang.HolProg 64 :=
.seq NamedBody872_62 NamedBody872_69

def NamedBody872_71 : StackLang.HolProg 64 :=
.seq NamedBody872_61 NamedBody872_70

def NamedBody872_72 : StackLang.HolProg 64 :=
.seq NamedBody872_60 NamedBody872_71

def NamedBody872_73 : StackLang.HolProg 64 :=
.seq NamedBody872_59 NamedBody872_72

def NamedBody872_74 : StackLang.HolProg 64 :=
.seq NamedBody872_58 NamedBody872_73

def NamedBody872_75 : StackLang.HolProg 64 :=
.seq NamedBody872_57 NamedBody872_74

def NamedBody872_76 : StackLang.HolProg 64 :=
.seq NamedBody872_56 NamedBody872_75

def NamedBody872_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) NamedBody872_55 NamedBody872_76

def NamedBody872_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody872_79 : StackLang.HolProg 64 :=
.seq NamedBody872_77 NamedBody872_78

def NamedBody872_80 : StackLang.HolProg 64 :=
.seq NamedBody872_52 NamedBody872_79

def NamedBody872_81 : StackLang.HolProg 64 :=
.call (some (NamedBody872_51, 1, 872, 2)) (Sum.inl 871) (some (NamedBody872_80, 872, 3))

def NamedBody872_82 : StackLang.HolProg 64 :=
.seq NamedBody872_42 NamedBody872_81

def NamedBody872_83 : StackLang.HolProg 64 :=
.seq NamedBody872_41 NamedBody872_82

def NamedBody872_84 : StackLang.HolProg 64 :=
.seq NamedBody872_40 NamedBody872_83

def NamedBody872_85 : StackLang.HolProg 64 :=
.seq NamedBody872_11 NamedBody872_84

def NamedBody872_86 : StackLang.HolProg 64 :=
.seq NamedBody872_8 NamedBody872_85

def NamedBody872_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody872_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody872_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody872_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody872_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody872_92 : StackLang.HolProg 64 :=
.seq NamedBody872_90 NamedBody872_91

def NamedBody872_93 : StackLang.HolProg 64 :=
.seq NamedBody872_89 NamedBody872_92

def NamedBody872_94 : StackLang.HolProg 64 :=
.seq NamedBody872_88 NamedBody872_93

def NamedBody872_95 : StackLang.HolProg 64 :=
.seq NamedBody872_87 NamedBody872_94

def NamedBody872_96 : StackLang.HolProg 64 :=
.seq NamedBody872_86 NamedBody872_95

def NamedBody872_97 : StackLang.HolProg 64 :=
.seq NamedBody872_7 NamedBody872_96

def NamedBody872_98 : StackLang.HolProg 64 :=
.seq NamedBody872_6 NamedBody872_97

def Named872 : Nat × StackLang.HolProg 64 := (872, NamedBody872_98)
theorem Named872_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed872 = Named872 := by
  kernel_rfl
#print axioms Named872_eq
end InitECandidate.Proofs.BackendStages
