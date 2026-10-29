import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed98
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody98_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody98_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody98_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody98_3 : StackLang.HolProg 64 :=
.seq NamedBody98_1 NamedBody98_2

def NamedBody98_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody98_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody98_3 NamedBody98_4

def NamedBody98_6 : StackLang.HolProg 64 :=
.seq NamedBody98_0 NamedBody98_5

def NamedBody98_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody98_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody98_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody98_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody98_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551576#64))

def NamedBody98_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody98_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody98_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 640#64)

def NamedBody98_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody98_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody98_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 43#64)

def NamedBody98_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody98_19 : StackLang.HolProg 64 :=
.seq NamedBody98_17 NamedBody98_18

def NamedBody98_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody98_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody98_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody98_23 : StackLang.HolProg 64 :=
.seq NamedBody98_21 NamedBody98_22

def NamedBody98_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody98_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody98_23 NamedBody98_24

def NamedBody98_26 : StackLang.HolProg 64 :=
.seq NamedBody98_20 NamedBody98_25

def NamedBody98_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody98_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody98_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 98 3

def NamedBody98_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody98_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody98_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody98_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody98_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody98_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody98_36 : StackLang.HolProg 64 :=
.seq NamedBody98_34 NamedBody98_35

def NamedBody98_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody98_38 : StackLang.HolProg 64 :=
.seq NamedBody98_36 NamedBody98_37

def NamedBody98_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody98_40 : StackLang.HolProg 64 :=
.seq NamedBody98_38 NamedBody98_39

def NamedBody98_41 : StackLang.HolProg 64 :=
.seq NamedBody98_33 NamedBody98_40

def NamedBody98_42 : StackLang.HolProg 64 :=
.seq NamedBody98_32 NamedBody98_41

def NamedBody98_43 : StackLang.HolProg 64 :=
.seq NamedBody98_31 NamedBody98_42

def NamedBody98_44 : StackLang.HolProg 64 :=
.seq NamedBody98_30 NamedBody98_43

def NamedBody98_45 : StackLang.HolProg 64 :=
.seq NamedBody98_29 NamedBody98_44

def NamedBody98_46 : StackLang.HolProg 64 :=
.seq NamedBody98_28 NamedBody98_45

def NamedBody98_47 : StackLang.HolProg 64 :=
.seq NamedBody98_27 NamedBody98_46

def NamedBody98_48 : StackLang.HolProg 64 :=
.seq NamedBody98_26 NamedBody98_47

def NamedBody98_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody98_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody98_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody98_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody98_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody98_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody98_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody98_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody98_57 : StackLang.HolProg 64 :=
.seq NamedBody98_55 NamedBody98_56

def NamedBody98_58 : StackLang.HolProg 64 :=
.seq NamedBody98_54 NamedBody98_57

def NamedBody98_59 : StackLang.HolProg 64 :=
.seq NamedBody98_53 NamedBody98_58

def NamedBody98_60 : StackLang.HolProg 64 :=
.seq NamedBody98_52 NamedBody98_59

def NamedBody98_61 : StackLang.HolProg 64 :=
.seq NamedBody98_51 NamedBody98_60

def NamedBody98_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody98_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody98_64 : StackLang.HolProg 64 :=
.seq NamedBody98_62 NamedBody98_63

def NamedBody98_65 : StackLang.HolProg 64 :=
.call (some (NamedBody98_61, 1, 98, 2)) (Sum.inl 68) (some (NamedBody98_64, 98, 3))

def NamedBody98_66 : StackLang.HolProg 64 :=
.seq NamedBody98_50 NamedBody98_65

def NamedBody98_67 : StackLang.HolProg 64 :=
.seq NamedBody98_49 NamedBody98_66

def NamedBody98_68 : StackLang.HolProg 64 :=
.seq NamedBody98_48 NamedBody98_67

def NamedBody98_69 : StackLang.HolProg 64 :=
.seq NamedBody98_19 NamedBody98_68

def NamedBody98_70 : StackLang.HolProg 64 :=
.seq NamedBody98_16 NamedBody98_69

def NamedBody98_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody98_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody98_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody98_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody98_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551576#64)))

def NamedBody98_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody98_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody98_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody98_79 : StackLang.HolProg 64 :=
.seq NamedBody98_77 NamedBody98_78

def NamedBody98_80 : StackLang.HolProg 64 :=
.seq NamedBody98_76 NamedBody98_79

def NamedBody98_81 : StackLang.HolProg 64 :=
.seq NamedBody98_75 NamedBody98_80

def NamedBody98_82 : StackLang.HolProg 64 :=
.seq NamedBody98_74 NamedBody98_81

def NamedBody98_83 : StackLang.HolProg 64 :=
.seq NamedBody98_73 NamedBody98_82

def NamedBody98_84 : StackLang.HolProg 64 :=
.seq NamedBody98_72 NamedBody98_83

def NamedBody98_85 : StackLang.HolProg 64 :=
.seq NamedBody98_71 NamedBody98_84

def NamedBody98_86 : StackLang.HolProg 64 :=
.seq NamedBody98_70 NamedBody98_85

def NamedBody98_87 : StackLang.HolProg 64 :=
.seq NamedBody98_15 NamedBody98_86

def NamedBody98_88 : StackLang.HolProg 64 :=
.seq NamedBody98_14 NamedBody98_87

def NamedBody98_89 : StackLang.HolProg 64 :=
.seq NamedBody98_13 NamedBody98_88

def NamedBody98_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody98_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody98_92 : StackLang.HolProg 64 :=
.seq NamedBody98_90 NamedBody98_91

def NamedBody98_93 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody98_89 NamedBody98_92

def NamedBody98_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody98_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody98_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody98_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody98_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody98_99 : StackLang.HolProg 64 :=
.seq NamedBody98_97 NamedBody98_98

def NamedBody98_100 : StackLang.HolProg 64 :=
.seq NamedBody98_96 NamedBody98_99

def NamedBody98_101 : StackLang.HolProg 64 :=
.seq NamedBody98_95 NamedBody98_100

def NamedBody98_102 : StackLang.HolProg 64 :=
.seq NamedBody98_94 NamedBody98_101

def NamedBody98_103 : StackLang.HolProg 64 :=
.seq NamedBody98_93 NamedBody98_102

def NamedBody98_104 : StackLang.HolProg 64 :=
.seq NamedBody98_12 NamedBody98_103

def NamedBody98_105 : StackLang.HolProg 64 :=
.seq NamedBody98_11 NamedBody98_104

def NamedBody98_106 : StackLang.HolProg 64 :=
.seq NamedBody98_10 NamedBody98_105

def NamedBody98_107 : StackLang.HolProg 64 :=
.seq NamedBody98_9 NamedBody98_106

def NamedBody98_108 : StackLang.HolProg 64 :=
.seq NamedBody98_8 NamedBody98_107

def NamedBody98_109 : StackLang.HolProg 64 :=
.seq NamedBody98_7 NamedBody98_108

def NamedBody98_110 : StackLang.HolProg 64 :=
.seq NamedBody98_6 NamedBody98_109

def Named98 : Nat × StackLang.HolProg 64 := (98, NamedBody98_110)
theorem Named98_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed98 = Named98 := by
  kernel_rfl
#print axioms Named98_eq
end InitECandidate.Proofs.BackendStages
