import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify855
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body871_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "state_fresh_tx" []

def body871_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.global "vm_system_address")

def body871_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "target")

def body871_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 48#64]))

def body871_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.const 30000000#64)

def body871_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 97920#64, Flapjack.Exp.const 16#64])

def body871_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.global "be")

def body871_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "te")

def body871_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.global "vm_system_address")

def body871_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "target")

def body871_10 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "target")

def body871_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.const 30000000#64)

def body871_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 97920#64, Flapjack.Exp.const 16#64])

def body871_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "data")

def body871_14 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "data_n")

def body871_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "target")

def body871_16 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "code"))

def body871_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "code"))

def body871_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 152#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "aa")

def body871_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ak")

def body871_20 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body871_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "incorporate_tx_into_block" []

def body871_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "system_ret",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 40#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "system_ret_n"]

def body871_23 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "system_ret")

def body871_24 : Prog (BitVec 64) :=
.seq body871_22 body871_23

def body871_25 : Prog (BitVec 64) :=
.decCall ("system_ret") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "system_ret_n", Flapjack.Exp.const 8#64]]) body871_24

def body871_26 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "system_ret_n")) body871_25 body871_20

def body871_27 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "scratch_release" [Flapjack.Exp.var Flapjack.VarKind.local "system_mark"]

def body871_28 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "frame_mem_release"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 88#64])]

def body871_29 : Prog (BitVec 64) :=
.seq body871_27 body871_28

def body871_30 : Prog (BitVec 64) :=
.seq body871_26 body871_29

def body871_31 : Prog (BitVec 64) :=
.dec ("system_ret_n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 48#64])) body871_30

def body871_32 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "system_mark") (Flapjack.Exp.const 0#64)) body871_31 body871_20

def body871_33 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "out")

def body871_34 : Prog (BitVec 64) :=
.seq body871_32 body871_33

def body871_35 : Prog (BitVec 64) :=
.dec ("system_mark") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 80#64])) body871_34

def body871_36 : Prog (BitVec 64) :=
.seq body871_21 body871_35

def body871_37 : Prog (BitVec 64) :=
.seq body871_20 body871_36

def body871_38 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("process_message_call") ([Flapjack.Exp.var Flapjack.VarKind.local "m"]) body871_37

def body871_39 : Prog (BitVec 64) :=
.seq body871_20 body871_38

def body871_40 : Prog (BitVec 64) :=
.seq body871_19 body871_39

def body871_41 : Prog (BitVec 64) :=
.decCall ("ak") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 52#64, Flapjack.Exp.const 8#64]) body871_40

def body871_42 : Prog (BitVec 64) :=
.seq body871_18 body871_41

def body871_43 : Prog (BitVec 64) :=
.decCall ("aa") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 20#64, Flapjack.Exp.const 8#64]) body871_42

def body871_44 : Prog (BitVec 64) :=
.seq body871_17 body871_43

def body871_45 : Prog (BitVec 64) :=
.seq body871_16 body871_44

def body871_46 : Prog (BitVec 64) :=
.seq body871_15 body871_45

def body871_47 : Prog (BitVec 64) :=
.seq body871_14 body871_46

def body871_48 : Prog (BitVec 64) :=
.seq body871_13 body871_47

def body871_49 : Prog (BitVec 64) :=
.seq body871_12 body871_48

def body871_50 : Prog (BitVec 64) :=
.seq body871_11 body871_49

def body871_51 : Prog (BitVec 64) :=
.seq body871_10 body871_50

def body871_52 : Prog (BitVec 64) :=
.seq body871_9 body871_51

def body871_53 : Prog (BitVec 64) :=
.seq body871_8 body871_52

def body871_54 : Prog (BitVec 64) :=
.seq body871_7 body871_53

def body871_55 : Prog (BitVec 64) :=
.seq body871_6 body871_54

def body871_56 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.one) ("msg_new") ([]) body871_55

def body871_57 : Prog (BitVec 64) :=
.seq body871_5 body871_56

def body871_58 : Prog (BitVec 64) :=
.seq body871_4 body871_57

def body871_59 : Prog (BitVec 64) :=
.seq body871_3 body871_58

def body871_60 : Prog (BitVec 64) :=
.seq body871_2 body871_59

def body871_61 : Prog (BitVec 64) :=
.seq body871_1 body871_60

def body871_62 : Prog (BitVec 64) :=
.decCall ("te") (Flapjack.Shape.one) ("te_new") ([]) body871_61

def body871_63 : Prog (BitVec 64) :=
.decCall ("code") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("ext_code_of") ([Flapjack.Exp.var Flapjack.VarKind.local "target"]) body871_62

def body871_64 : Prog (BitVec 64) :=
.seq body871_0 body871_63

def body871_65 : Prog (BitVec 64) :=
.seq body871_1 body871_2

def body871_66 : Prog (BitVec 64) :=
.seq body871_65 body871_3

def body871_67 : Prog (BitVec 64) :=
.seq body871_66 body871_4

def body871_68 : Prog (BitVec 64) :=
.seq body871_67 body871_5

def body871_69 : Prog (BitVec 64) :=
.seq body871_6 body871_7

def body871_70 : Prog (BitVec 64) :=
.seq body871_69 body871_8

def body871_71 : Prog (BitVec 64) :=
.seq body871_70 body871_9

def body871_72 : Prog (BitVec 64) :=
.seq body871_71 body871_10

def body871_73 : Prog (BitVec 64) :=
.seq body871_72 body871_11

def body871_74 : Prog (BitVec 64) :=
.seq body871_73 body871_12

def body871_75 : Prog (BitVec 64) :=
.seq body871_74 body871_13

def body871_76 : Prog (BitVec 64) :=
.seq body871_75 body871_14

def body871_77 : Prog (BitVec 64) :=
.seq body871_76 body871_15

def body871_78 : Prog (BitVec 64) :=
.seq body871_77 body871_16

def body871_79 : Prog (BitVec 64) :=
.seq body871_78 body871_17

def body871_80 : Prog (BitVec 64) :=
.seq body871_26 body871_27

def body871_81 : Prog (BitVec 64) :=
.seq body871_80 body871_28

def body871_82 : Prog (BitVec 64) :=
.dec ("system_ret_n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 48#64])) body871_81

def body871_83 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "system_mark") (Flapjack.Exp.const 0#64)) body871_82 body871_20

def body871_84 : Prog (BitVec 64) :=
.seq body871_83 body871_33

def body871_85 : Prog (BitVec 64) :=
.dec ("system_mark") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 80#64])) body871_84

def body871_86 : Prog (BitVec 64) :=
.seq body871_21 body871_85

def body871_87 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("process_message_call") ([Flapjack.Exp.var Flapjack.VarKind.local "m"]) body871_86

def body871_88 : Prog (BitVec 64) :=
.seq body871_19 body871_87

def body871_89 : Prog (BitVec 64) :=
.decCall ("ak") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 52#64, Flapjack.Exp.const 8#64]) body871_88

def body871_90 : Prog (BitVec 64) :=
.seq body871_18 body871_89

def body871_91 : Prog (BitVec 64) :=
.decCall ("aa") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 20#64, Flapjack.Exp.const 8#64]) body871_90

def body871_92 : Prog (BitVec 64) :=
.seq body871_79 body871_91

def body871_93 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.one) ("msg_new") ([]) body871_92

def body871_94 : Prog (BitVec 64) :=
.seq body871_68 body871_93

def body871_95 : Prog (BitVec 64) :=
.decCall ("te") (Flapjack.Shape.one) ("te_new") ([]) body871_94

def body871_96 : Prog (BitVec 64) :=
.decCall ("code") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("ext_code_of") ([Flapjack.Exp.var Flapjack.VarKind.local "target"]) body871_95

def body871_97 : Prog (BitVec 64) :=
.seq body871_0 body871_96

def originalData871 : Decl (BitVec 64) :=
.function { name := "process_unchecked_system_transaction", inline := false, exported := false, params := [("target", Flapjack.Shape.one), ("data", Flapjack.Shape.one), ("data_n", Flapjack.Shape.one)], body := body871_64, returnShape := (Flapjack.Shape.one) }
def simplifiedData871 : Decl (BitVec 64) :=
.function { name := "process_unchecked_system_transaction", inline := false, exported := false, params := [("target", Flapjack.Shape.one), ("data", Flapjack.Shape.one), ("data_n", Flapjack.Shape.one)], body := body871_97, returnShape := (Flapjack.Shape.one) }
def original871 := Pancake.PanLang.declToHOL originalData871
def simplified871 := Pancake.PanLang.declToHOL simplifiedData871
end InitECandidate.Proofs.FrontendStages.Declarations
