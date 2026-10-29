import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify893
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body909_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "state_fresh_tx" []

def body909_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.global "vm_system_address")

def body909_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "target")

def body909_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 48#64]))

def body909_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.const 30000000#64)

def body909_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 97920#64, Flapjack.Exp.const 16#64])

def body909_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.global "be")

def body909_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "te")

def body909_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.global "vm_system_address")

def body909_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "target")

def body909_10 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "target")

def body909_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.const 30000000#64)

def body909_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 97920#64, Flapjack.Exp.const 16#64])

def body909_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "data")

def body909_14 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "data_n")

def body909_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "target")

def body909_16 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "code"))

def body909_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "code"))

def body909_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 152#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "aa")

def body909_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ak")

def body909_20 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body909_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "incorporate_tx_into_block" []

def body909_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "system_ret",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 40#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "system_ret_n"]

def body909_23 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "system_ret")

def body909_24 : Prog (BitVec 64) :=
.seq body909_22 body909_23

def body909_25 : Prog (BitVec 64) :=
.decCall ("system_ret") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "system_ret_n", Flapjack.Exp.const 8#64]]) body909_24

def body909_26 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "system_ret_n")) body909_25 body909_20

def body909_27 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "scratch_release" [Flapjack.Exp.var Flapjack.VarKind.local "system_mark"]

def body909_28 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "frame_mem_release"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 88#64])]

def body909_29 : Prog (BitVec 64) :=
.seq body909_27 body909_28

def body909_30 : Prog (BitVec 64) :=
.seq body909_26 body909_29

def body909_31 : Prog (BitVec 64) :=
.dec ("system_ret_n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 48#64])) body909_30

def body909_32 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "system_mark") (Flapjack.Exp.const 0#64)) body909_31 body909_20

def body909_33 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "out")

def body909_34 : Prog (BitVec 64) :=
.seq body909_32 body909_33

def body909_35 : Prog (BitVec 64) :=
.dec ("system_mark") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 80#64])) body909_34

def body909_36 : Prog (BitVec 64) :=
.seq body909_21 body909_35

def body909_37 : Prog (BitVec 64) :=
.seq body909_20 body909_36

def body909_38 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("process_message_call") ([Flapjack.Exp.var Flapjack.VarKind.local "m"]) body909_37

def body909_39 : Prog (BitVec 64) :=
.seq body909_20 body909_38

def body909_40 : Prog (BitVec 64) :=
.seq body909_19 body909_39

def body909_41 : Prog (BitVec 64) :=
.decCall ("ak") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 52#64, Flapjack.Exp.const 8#64]) body909_40

def body909_42 : Prog (BitVec 64) :=
.seq body909_18 body909_41

def body909_43 : Prog (BitVec 64) :=
.decCall ("aa") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 20#64, Flapjack.Exp.const 8#64]) body909_42

def body909_44 : Prog (BitVec 64) :=
.seq body909_17 body909_43

def body909_45 : Prog (BitVec 64) :=
.seq body909_16 body909_44

def body909_46 : Prog (BitVec 64) :=
.seq body909_15 body909_45

def body909_47 : Prog (BitVec 64) :=
.seq body909_14 body909_46

def body909_48 : Prog (BitVec 64) :=
.seq body909_13 body909_47

def body909_49 : Prog (BitVec 64) :=
.seq body909_12 body909_48

def body909_50 : Prog (BitVec 64) :=
.seq body909_11 body909_49

def body909_51 : Prog (BitVec 64) :=
.seq body909_10 body909_50

def body909_52 : Prog (BitVec 64) :=
.seq body909_9 body909_51

def body909_53 : Prog (BitVec 64) :=
.seq body909_8 body909_52

def body909_54 : Prog (BitVec 64) :=
.seq body909_7 body909_53

def body909_55 : Prog (BitVec 64) :=
.seq body909_6 body909_54

def body909_56 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.one) ("msg_new") ([]) body909_55

def body909_57 : Prog (BitVec 64) :=
.seq body909_5 body909_56

def body909_58 : Prog (BitVec 64) :=
.seq body909_4 body909_57

def body909_59 : Prog (BitVec 64) :=
.seq body909_3 body909_58

def body909_60 : Prog (BitVec 64) :=
.seq body909_2 body909_59

def body909_61 : Prog (BitVec 64) :=
.seq body909_1 body909_60

def body909_62 : Prog (BitVec 64) :=
.decCall ("te") (Flapjack.Shape.one) ("te_new") ([]) body909_61

def body909_63 : Prog (BitVec 64) :=
.decCall ("code") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("ext_code_of") ([Flapjack.Exp.var Flapjack.VarKind.local "target"]) body909_62

def body909_64 : Prog (BitVec 64) :=
.seq body909_0 body909_63

def body909_65 : Prog (BitVec 64) :=
.seq body909_1 body909_2

def body909_66 : Prog (BitVec 64) :=
.seq body909_65 body909_3

def body909_67 : Prog (BitVec 64) :=
.seq body909_66 body909_4

def body909_68 : Prog (BitVec 64) :=
.seq body909_67 body909_5

def body909_69 : Prog (BitVec 64) :=
.seq body909_6 body909_7

def body909_70 : Prog (BitVec 64) :=
.seq body909_69 body909_8

def body909_71 : Prog (BitVec 64) :=
.seq body909_70 body909_9

def body909_72 : Prog (BitVec 64) :=
.seq body909_71 body909_10

def body909_73 : Prog (BitVec 64) :=
.seq body909_72 body909_11

def body909_74 : Prog (BitVec 64) :=
.seq body909_73 body909_12

def body909_75 : Prog (BitVec 64) :=
.seq body909_74 body909_13

def body909_76 : Prog (BitVec 64) :=
.seq body909_75 body909_14

def body909_77 : Prog (BitVec 64) :=
.seq body909_76 body909_15

def body909_78 : Prog (BitVec 64) :=
.seq body909_77 body909_16

def body909_79 : Prog (BitVec 64) :=
.seq body909_78 body909_17

def body909_80 : Prog (BitVec 64) :=
.seq body909_26 body909_27

def body909_81 : Prog (BitVec 64) :=
.seq body909_80 body909_28

def body909_82 : Prog (BitVec 64) :=
.dec ("system_ret_n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 48#64])) body909_81

def body909_83 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "system_mark") (Flapjack.Exp.const 0#64)) body909_82 body909_20

def body909_84 : Prog (BitVec 64) :=
.seq body909_83 body909_33

def body909_85 : Prog (BitVec 64) :=
.dec ("system_mark") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 80#64])) body909_84

def body909_86 : Prog (BitVec 64) :=
.seq body909_21 body909_85

def body909_87 : Prog (BitVec 64) :=
.decCall ("out") (Flapjack.Shape.one) ("process_message_call") ([Flapjack.Exp.var Flapjack.VarKind.local "m"]) body909_86

def body909_88 : Prog (BitVec 64) :=
.seq body909_19 body909_87

def body909_89 : Prog (BitVec 64) :=
.decCall ("ak") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 52#64, Flapjack.Exp.const 8#64]) body909_88

def body909_90 : Prog (BitVec 64) :=
.seq body909_18 body909_89

def body909_91 : Prog (BitVec 64) :=
.decCall ("aa") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 20#64, Flapjack.Exp.const 8#64]) body909_90

def body909_92 : Prog (BitVec 64) :=
.seq body909_79 body909_91

def body909_93 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.one) ("msg_new") ([]) body909_92

def body909_94 : Prog (BitVec 64) :=
.seq body909_68 body909_93

def body909_95 : Prog (BitVec 64) :=
.decCall ("te") (Flapjack.Shape.one) ("te_new") ([]) body909_94

def body909_96 : Prog (BitVec 64) :=
.decCall ("code") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("ext_code_of") ([Flapjack.Exp.var Flapjack.VarKind.local "target"]) body909_95

def body909_97 : Prog (BitVec 64) :=
.seq body909_0 body909_96

def originalData909 : Decl (BitVec 64) :=
.function { name := "process_unchecked_system_transaction", inline := false, exported := false, params := [("target", Flapjack.Shape.one), ("data", Flapjack.Shape.one), ("data_n", Flapjack.Shape.one)], body := body909_64, returnShape := (Flapjack.Shape.one) }
def simplifiedData909 : Decl (BitVec 64) :=
.function { name := "process_unchecked_system_transaction", inline := false, exported := false, params := [("target", Flapjack.Shape.one), ("data", Flapjack.Shape.one), ("data_n", Flapjack.Shape.one)], body := body909_97, returnShape := (Flapjack.Shape.one) }
def original909 := Pancake.PanLang.declToHOL originalData909
def simplified909 := Pancake.PanLang.declToHOL simplifiedData909
end InitECandidate.Proofs.FrontendStages.Declarations
